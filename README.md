# aws-rds-oracle-mysql-ee-5.7-cis-baseline

InSpec profile testing secure configuration of AWS RDS MYSQL Server Enterprise version 5.7.

## Description

This InSpec compliance profile is a collection of automated tests for secure configuration of the AWS RDS MYSQL Server Enterprise version 5.7.

InSpec is an open-source run-time framework and rule language used to specify compliance, security, and policy requirements for testing any node in your infrastructure.

## Requirements

- [ruby](https://www.ruby-lang.org/en/) version 2.4  or greater
- [InSpec](http://inspec.io/) version 3.x or greater
    - Install via ruby gem: `gem install inspec`

## Usage
InSpec makes it easy to run tests wherever you need. More options listed here: [InSpec cli](http://inspec.io/docs/reference/cli/)

The following attributes must be configured in an attributes file for the profile to run correctly. More information about InSpec attributes can be found in the [InSpec Profile Documentation](https://www.inspec.io/docs/reference/profiles/).

```
# Description of attribute
attribute-name: default-value

# Username for MySQL DB Server
user: null

# Password for MySQL DB Server
password: null

# Hostname of MySQL DB Server
host: null


# Port number of MySQL DB Server
port: 49789

# List of MySQL database users
mysql_users: []

# Set to true if the MySQL server has a slave configured
is_mysql_server_slave_configured: false

# List of MySQL administrative users
mysql_administrative_users: []

# List of MySQL users allows to modify or create data structures
mysql_users_allowed_modify_or_create: []
```
## Note

It is assumed that the password complexity plugin: validate_password.so is installed, otherwise control 7.6 will fail

### Run with remote profile:
You may choose to run the profile via a remote url, this has the advantage of always being up to date.
The disadvantage is you may wish to modify controls, which is only possible when downloaded.
Also, the remote profile is unintuitive for passing in attributes, which modify the default values of the profile.
``` bash
inspec exec https://github.com/mitre/aws-rds-oracle-mysql-ee-5.7-cis-baseline.git
```

Another option is to download the profile then run it, this allows you to edit specific instructions and view the profile code.
``` bash
# Clone Inspec Profile
$ git clone https://github.com/mitre/aws-rds-oracle-mysql-ee-5.7-cis-baseline.git

# Run profile locally (assuming you have not changed directories since cloning)
# This will display compliance level at the prompt, and generate a JSON file 
# for export called output.json
$ inspec exec aws-rds-oracle-mysql-ee-5.7-cis-baseline --attrs attributes.yml --reporter cli json:output.json

# Run profile with custom settings defined in attributes.yml against the target 
# server example.com. 
$ inspec exec aws-rds-oracle-mysql-ee-5.7-cis-baseline -t ssh://user@password:example.com --attrs attributes.yml --reporter cli json:output.json

# Run profile with: custom attributes, ssh keyed into a custom target, and sudo.
$ inspec exec aws-rds-oracle-mysql-ee-5.7-cis-baseline -t ssh://user@hostname -i /path/to/key --sudo --attrs attributes.yml --reporter cli json:output.json
```


## Contributors + Kudos

- Aaron Lippold
- The MITRE InSpec Team

## License and Author

### Authors
- Author:: Alicia Sturtevant

### License  

* This project is licensed under the terms of the Apache license 2.0 (apache-2.0)

### NOTICE  

© 2018 The MITRE Corporation.  

Approved for Public Release; Distribution Unlimited. Case Number 18-3678.  

## NOTICE  

MITRE hereby grants express written permission to use, reproduce, distribute, modify, and otherwise leverage this software to the extent permitted by the licensed terms provided in the [LICENSE.md](../LICENSE.md) file included with this project.

### NOTICE  

This software was produced for the U. S. Government under Contract Number HHSM-500-2012-00008I, and is subject to Federal Acquisition Regulation Clause 52.227-14, Rights in Data-General.  

No other use other than that granted to the U. S. Government, or to those acting on behalf of the U. S. Government under that Clause is authorized without the express written permission of The MITRE Corporation. 

For further information, please contact The MITRE Corporation, Contracts Management Office, 7515 Colshire Drive, McLean, VA  22102-7539, (703) 983-6000.  

## NOTICE  

CIS Benchmarks are published by the Center for Internet Security (CIS), see: https://www.cisecurity.org/cis-benchmarks/.   
