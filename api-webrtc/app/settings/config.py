import os
import configparser


cfg = configparser.ConfigParser()
cfg.read('./env.ini')


#=========================================================================
#                          PROJECT INFORMATION 
#=========================================================================
PROJECT = cfg['project']
PROJECT_NAME = PROJECT['name']
ENVIRONMENT = PROJECT['environment']

API = cfg['api']
API_PORT = API.getint('port')
API_HOST = API['host']

CLIENT = cfg['client']
CLIENT_PORT = CLIENT.getint('port')
CLIENT_HOST = CLIENT['host']

SOCKET = cfg['socket']
SOCKET_PORT = SOCKET.getint('port')
SOCKET_HOST = SOCKET['host']

#=========================================================================
#                          DATABASE INFORMATION 
#=========================================================================
DATABASE = cfg['database']
SQLALCHEMY_DATABASE_URL = "{type}://{user}:{pw}@{host}:{port}/{db_name}" \
    .format(
        type = DATABASE['type'],
        user = DATABASE['user'],
        pw = DATABASE['pass'],
        host = DATABASE['host'],
        port = DATABASE['port'],
        db_name = DATABASE['database'],
    )
DATABASE_SCHEMA = DATABASE['schema']


#=========================================================================
#                          AUTHENTICATE INFORMATION 
#=========================================================================
AUTHENTICATE = cfg['authenticate']
ENCODE_TYPE = AUTHENTICATE['encode']
DIGEST = AUTHENTICATE['digest']    
ALGORITHM = AUTHENTICATE['algorithm']
ROUNDS = AUTHENTICATE.getint('rounds')
SALT_SIZE = AUTHENTICATE.getint('salt_size')
SALT = bytes(AUTHENTICATE['salt'], "utf-8").decode('unicode_escape')
ACCESS_TOKEN_EXPIRE_MINUTES = AUTHENTICATE.getint('access_expire')
FRESH_TOKEN_EXPIRE_MINUTES = AUTHENTICATE.getint('fresh_expire')
SECRET_KEY = AUTHENTICATE['secret_key'] 