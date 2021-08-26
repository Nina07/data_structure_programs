require 'csv'

class CsvReader
    @@file_path = "/home/niyanta/Desktop/jira-discoveryinc_sprint.csv"

    def csv_writer
        headers = ["Issue key", "Issue id", "Issue Type", "Assignee", "Status", "Created", "Updated"]
        CSV.open("sprint_report_#{DateTime.now.strftime('%y-%m-%d_%H:%M')}", "wb") do |csv|
            csv << headers
            CSV.foreach(@@file_path, headers: true) do |row|
                csv << headers.map {|col| row[col]}
            end
        end
    end

    def generate_html_output
        file = File.new("sprint_report_#{DateTime.now.strftime('%y-%m-%d_%H:%M')}.html", "w+")
        csv_table = CSV.table(@@file_path)

        file.write <<-EOF
                <HTML>
                <HEAD>
                    <h2>Sprint report for #{csv_table[:project_name].uniq.first}</h2></br>
                </HEAD>
                <BODY>
                    <DIV class='header'>Issue counts for the sprint</div></br>
                    <table border="1">
                        <tr>
                            <th style="padding: 5px;">Stories</th>
                            <th style="padding: 5px;">Bugs</th>
                            <th style="padding: 5px;">Others</th>
                        </tr>
                        <tr>
                            <td style="padding: 5px;">#{csv_table[:issue_type].count {|type| type == "Story"}}</td>
                            <td style="padding: 5px;">#{csv_table[:issue_type].count {|type| type == "Bug"}}</td>
                            <td style="padding: 5px;"> #{csv_table[:issue_type].count {|type| type != "Story" && type != "Bug"}}</td>
                        </tr>
                    </table>
                </BODY></HTML>
            EOF
    end
end

c = CsvReader.new
# c.csv_writer
c.generate_html_output