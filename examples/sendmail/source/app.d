import vibe.vibe;

import vibe.mail.smtp;

void main()
{
	auto settings = new SmtpClientSettings("smtp.isp.com", 25);
	settings.useTLS = true;
	settings.authType = SmtpAuthType.Plain;
	settings.username = "username";
	settings.password = "secret";

	auto mail = new Mail;
	mail.headers["From"] = "<user@isp.com>";
	mail.headers["To"] = "<recipient@domain.com>";
	mail.headers["Subject"] = "Testmail";
	mail.bodyText = "Hello, World!";
	sendMail(settings, mail);
}