# helps to read or write or update the files using python


# Server Configuration File

#vi server.conf

# # Network Settings
# PORT=9000
# MAX_CONNECTIONS=600
# TIMEOUT = 30

# # Security Settings
# SSL_ENABLED = true
# SSL_CERT = /path/to/certificate.pem

# # Logging Settings
# LOG_LEVEL = INFO
# LOG_FILE = /var/log/server.log

# # Other Settings
# ENABLE_FEATURE_X = true

### If we want to add or update a file variables ###

def server_config_update(file_path, key, value):
    with open(file_path, "r") as file:
        lines = file.readlines()

    with open(file_path, "w") as file:
        for line in lines:
            if key in line:
                file.write(key + "=" + value + "\n")
            else:
                file.write(line)
        
server_config_update("./server.conf", "PORT", "9000" ) #9000 will changes at variable port 