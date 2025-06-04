# Deployment Instruction

## PostgreSQL

**Windows**

1. **Download and Install PostgreSQL**

   - Go to the PostgreSQL website and download the Windows installer. [PostgreSQL: Downloads](https://www.postgresql.org/download/)
   - Run the installer. When prompted:
     - Choose an installation directory.
     - Specify a password for the postgres superuser.
     - Leave the default port set to **5432**.
     - Proceed through the remaining steps, leaving settings at their defaults unless you have a specific reason to change them.

2. **Ensure the Service Is Running**

   - Open Services (press Win+R, type `services.msc`, press Enter).
   - Find postgresql-<version> in the list.
   - Confirm its status is Running. If not, right-click and choose Start.

3. **Create a Dedicated Role and Database**

   - Open SQL Shell (psql) from the Start menu. When prompted:

     - Server [localhost]: press Enter
     - Database [postgres]: press Enter
     - Port [5432]: press Enter
     - Username [postgres]: press Enter
     - Password for user postgres: enter the password you chose during installation

   - At the `postgres=#` prompt, run:

     ```
     -- 1. Create a new login role:
     CREATE ROLE swen90017_db_user WITH LOGIN PASSWORD 'wHhV5Y5i8G9rR4lblj61e1WMNAYb4SQu';
     
     -- 2. Create a database owned by that role:
     CREATE DATABASE hrg_database OWNER swen90017_db_user;
     
     -- 3. Grant all privileges on the new database:
     GRANT ALL PRIVILEGES ON DATABASE hrg_database TO swen90017_db_user;
     ```

   - Exit psql:

     ```
     \q
     ```

4. **Verify Local Access**

   - Open a Command Prompt (cmd) or PowerShell and run:

     ```
     psql "host=localhost port=5432 dbname=hrg_database user=swen90017_db_user password=wHhV5Y5i8G9rR4lblj61e1WMNAYb4SQu"
     ```

   - If you see the `psql` prompt (e.g. `hrg_database=#`), the connection is working. Type `\q` to exit.

5. **Configure Spring Boot**
   On Teacher Side, set the following porperties:

   ```
   spring.datasource.url=jdbc:postgresql://localhost:5432/hrg_database
   spring.datasource.username=swen90017_db_user
   spring.datasource.password=wHhV5Y5i8G9rR4lblj61e1WMNAYb4SQu
   ```

   - **URL**: uses `localhost:5432` and database `hrg_database`.
   - **Username**: `swen90017_db_user`
   - **Password**: `wHhV5Y5i8G9rR4lblj61e1WMNAYb4SQu`



**macOS**

1. **Install via Homebrew**

   - If you don’t have Homebrew, install it by running in Terminal:

     ```
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
     ```

   - Install PostgreSQL:

     ```
     brew install postgresql
     ```

   - Start the service and set it to launch at login:

     ```
     brew services start postgresql
     ```

2. **Initial Access and Securing “postgres” (Optional)**

   - By default, Homebrew’s PostgreSQL creates a `postgres` role without a password. If you want to set one:

     ```
     psql postgres
     ```

     At the `postgres=#` prompt, run:

     ```
     ALTER USER postgres WITH PASSWORD 'YourStrongPasswordHere';
     \q
     ```

   - If you don’t need a password for `postgres`, you can skip that—local connections default to “trust” on UNIX sockets.

3. **Create a Dedicated Role and Database**

   - In Terminal, open the `psql` prompt as the `postgres` user:

     ```
     psql postgres
     ```

   - At `postgres=#`, run:

     ```
     -- 1. Create a new login role:
     CREATE ROLE swen90017_db_user WITH LOGIN PASSWORD 'wHhV5Y5i8G9rR4lblj61e1WMNAYb4SQu';
     
     -- 2. Create a database owned by that role:
     CREATE DATABASE hrg_database OWNER swen90017_db_user;
     
     -- 3. Grant all privileges on that database:
     GRANT ALL PRIVILEGES ON DATABASE hrg_database TO swen90017_db_user;
     ```

   - Exit psql:

     ```
     \q
     ```

4. **Verify Local Access**

   - In Terminal, run:

     ```
     psql "host=localhost port=5432 dbname=hrg_database user=swen90017_db_user password=wHhV5Y5i8G9rR4lblj61e1WMNAYb4SQu"
     ```

   - You should drop into the `psql` prompt for `hrg_database`. Type `\q` to exit.

5. **Configure Spring Boot**
   On Teacher Side, set the following porperties:

   ```
   spring.datasource.url=jdbc:postgresql://localhost:5432/hrg_database
   spring.datasource.username=swen90017_db_user
   spring.datasource.password=wHhV5Y5i8G9rR4lblj61e1WMNAYb4SQu
   ```