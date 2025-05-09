@ECHO OFF

REM mailsend-go command.
REM The following is a list of all available options for mailsend-go.
REM To use an option, you need to manually add it to the active 'mailsend-go' command block below.
REM Ensure correct placement and use of the line continuation character (^) if the option
REM is not the last one in its section or before a sub-command (auth, body, etc.).

REM --- List of all available options ---

REM --- General Options ---
REM -debug                     (Prints debug messages)
REM -sub "Subject"             (Subject of the email)
REM -t "to@example.com"        (Email address(es) of the recipient(s). Required. Comma separated for multiple.)
REM -list "recipients.txt"     (File with list of email addresses. Syntax: Name, email_address per line)
REM -f "from@example.com"      (Email address of the sender. Required.)
REM -fname "Sender Name"       (Name of the sender)
REM -cc "cc@example.com"       (Carbon copy email address(es). Comma separated.)
REM -bcc "bcc@example.com"     (Blind carbon copy email address(es). Comma separated.)
REM -rt "replyto@example.com"  (Reply-to email address)
REM -smtp "smtp.server.com"    (Hostname/IP address of the SMTP server. Required.)
REM -port 587                  (Port number of the SMTP server. Default is 587 for StartTLS, 465 for SSL, 25 for plain.)
REM -domain "client.example.com" (Domain name for SMTP HELO. Default is localhost)
REM -ssl                       (Use SMTP over SSL. Default is StartTLS if not specified. Typically uses port 465)
REM -verifyCert                (Verify certificate in connection. Default is No)
REM -log "mailsend.log"        (Write log messages to this file)
REM -cs "utf-8"                (Character set for text/HTML. Default is utf-8)

REM --- Informational/Control Flags (usually run as standalone commands) ---
REM -info                      (Print info about SMTP server)
REM -ex                        (Show examples)
REM -help                      (Show this help)
REM -q                         (Quiet mode, suppress normal output)
REM -V                         (Show version and exit)

REM --- Auth Block (keyword 'auth' followed by its options) ---
REM auth
REM   -user "username"         (Username for ESMTP authentication. Required if auth is used.)
REM   -pass "password"         (Password for ESMTP authentication. Required if auth is used.)

REM --- Body Block (keyword 'body' followed by its options) ---
REM body
REM   -msg "Message content"   (Message to show as body)
REM   -file "body_file.html"   (Path of a text/HTML file to be used as body)
REM   -mime-type "text/plain"  (MIME type of the body content. Default is auto-detected. e.g. text/html)

REM --- Attachments Block (keyword 'attach' followed by its options. Repeat for multiple attachments) ---
REM attach
REM   -file "path/to/file.pdf" (Path of the attachment. Required for attach block.)
REM   -name "attachment_name.pdf" (Name of the attachment. Default is filename)
REM   -mime-type "application/pdf" (MIME-Type of the attachment. Default is auto-detected)
REM   -inline                  (Set Content-Disposition to "inline". Default is "attachment")

REM --- Custom Headers Block (keyword 'header' followed by its options. Repeat for multiple headers) ---
REM header
REM   -name "X-Custom-Name"    (Header name)
REM   -value "HeaderValue"     (Header value)

REM --- Active mailsend-go command ---
REM This is the actual command that will be executed.
REM Modify this block to add or change options based on the list above.
REM Ensure the caret (^) is at the end of a line if more parameters/blocks follow on the next line.
REM The last line of the entire mailsend-go command (before ECHO) should NOT end with a caret.

mailsend-go ^
-debug ^
-sub "Test" ^
-f "notifi@domain.tld" ^
-t "root@domain.tld" ^
-rt "replyto@domain.tld" ^
-domain "domain.tld" ^
-smtp "smtp-relay.gmail.com" ^
-port 587 ^
auth ^
-user "smtp-relay@domain.tld" ^
-pass "strongPasswordForApplication" ^
body ^
-msg "hello, world! This is a message"

