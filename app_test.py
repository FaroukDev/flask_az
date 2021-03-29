import unittest
from unittest.mock import MagicMock, Mock, patch
from minimock import Mock
from myDb import DB
from app import send_message
import smtplib


class TestDb(unittest.TestCase):
    def test_read(self):
        mock_connect = MagicMock()
        mock_cursor = MagicMock()
        mock_connect.connect.return_value,
        mock_cursor.cursor.return_value,
        mock_cursor.fetchall.return_value = ["test"]
        result = DB.getData(mock_connect)
        print("ok", result)
    
    def test_mail_sender(self):
        ssl_conn = Mock('smtplib.SMTP')
        ssl_conn.mock_returns = Mock('smtp_connection')
        sender = 'equinox92@live.fr'
        receiver = 'extramilessimplon@gmail.com'
            #msg['Subject'] = 'subject'
        message = 'hello mate how are you?'
        s = ssl_conn('localhost')
        s.ssl_conn.sendmail(sender, receiver, message)
        s.ssl_conn.quit()
        print("ok")

if __name__ == "__main__":
    unittest.main()