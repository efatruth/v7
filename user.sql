
create DATABASE 0301865919_VERK7;
USE 0301865919_Verk7;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dsg_prufa`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE  `Users` (
  `userName` varchar(30) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `PassWD` varchar(32) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

import pymysql.cursors

# Connect to the database
connection = pymysql.connect(host='tsuts.tskoli.is',
                             user='0301865919',
                             password='mypassword',
                             db=0301865919_VERK7,
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
try:
    with connection.cursor() as cursor:
        # Create a new record
        sql = "INSERT INTO `users` (`userName`, `passWD`, `name`) VALUES (%s, %s)"
        cursor.execute(sql, ('webmaster@python.org', 'very-secret'))

    # connection is not autocommit by default. So you must commit to save
    # your changes.
    connection.commit()

    with connection.cursor() as cursor:
        # Read a single record
        sql = "SELECT `id`, `password` FROM `users` WHERE `email`=%s"
        cursor.execute(sql, ('webmaster@python.org',))
        result = cursor.fetchone()
        print(result)
finally:
    connection.close()


--
-- Dumping data for table `user`
--

INSERT INTO `Users` (`userName`, `passWD`, `name`) VALUES
('admin', '1234', 'name'),
('daniel', '4321','name');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

select * from Users 
