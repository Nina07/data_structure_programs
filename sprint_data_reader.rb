require 'csv'

class CsvReader
    @@file_path = "/home/niyanta/Desktop/jira-discoveryinc_sprint.csv"

    def csv_writer
        headers = ["Issue key", "Issue id", "Issue Type", "Assignee", "Status", "Created", "Updated"]
        CSV.open("sprint_report_#{DateTime.now.strftime('%y-%m-%d_%H:%M').csv}", "wb") do |csv|
            csv << headers
            CSV.foreach(@@file_path, headers: true) do |row|
                csv << headers.map {|col| row[col]}
            end
        end
    end

    def generate_html_output
        file = File.new("sprint_report_#{DateTime.now.strftime('%y-%m-%d_%H:%M')}.html", "w+")
        csv_table = CSV.table(@@file_path)
        headers = ["Issue key", "Issue id", "Issue Type", "Assignee", "Status", "Created", "Updated"]

        CSV.foreach(@@file_path, headers: true) do |row|
            file.write <<-EOF
                    <HTML>
                    <HEAD>
                        <h2>Sprint report for #{csv_table[:project_name].uniq.first}</h2>
                    </HEAD>
                    <BODY>
                        <h4>Total issue count:</h4>
                        <p>Story: #{csv_table[:issue_type].count {|type| type == "Story"}}, Bug: #{csv_table[:issue_type].count {|type| type == "Bug"}}, Others: #{csv_table[:issue_type].count {|type| type != "Story" && type != "Bug"}}</p>
                        <table border="1">
                            <tr>
                                <th style="padding: 5px;">#{headers[0]}</th>
                                <th style="padding: 5px;">#{headers[1]}</th>
                                <th style="padding: 5px;">#{headers[2]}</th>
                                <th style="padding: 5px;">#{headers[3]}</th>
                                <th style="padding: 5px;">#{headers[4]}</th>
                            </tr>
                            
                            <tr>
                                <td style="padding: 5px;">#{headers.map {|col| row[col]}}</td>
                                <td style="padding: 5px;">#{headers.map {|col| row[col]}}</td>
                                <td style="padding: 5px;">#{headers.map {|col| row[col]}}</td>
                                <td style="padding: 5px;">#{headers.map {|col| row[col]}}</td>
                                <td style="padding: 5px;">#{headers.map {|col| row[col]}}</td>
                            </tr>
                        </table>
                    </BODY></HTML>
                EOF
        end
    end
end

c = CsvReader.new
c.csv_writer
# c.generate_html_output