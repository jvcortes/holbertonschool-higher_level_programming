-- Converts the 'hbtn_0c_0' database charset into utf8mb4, collate utf8mb4_unicode_ci.
ALTER DATABASE hbtn_0c_0 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ALTER TABLE first_table CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ALTER TABLE first_table MODIFY name VARACHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
