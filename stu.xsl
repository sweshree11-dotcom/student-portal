
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
        <head>
            <title>Student Details</title>
            <style>
                body {
                    font-family: Arial;
                    background-color: lightblue;
                    padding: 20px;
                }

                table {
                    border-collapse: collapse;
                    background-color: white;
                    width: 80%;
                }

                th, td {
                    border: 1px solid black;
                    padding: 10px;
                    text-align: left;
                }

                th {
                    background-color: lightgray;
                }
            </style>
        </head>

        <body>
            <h2>Student Details</h2>

            <table>
                <tr>
                    <th>Roll No</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Email</th>
                </tr>

                <xsl:for-each select="students/student">
                    <tr>
                        <td><xsl:value-of select="rollno"/></td>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="department"/></td>
                        <td><xsl:value-of select="email"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
