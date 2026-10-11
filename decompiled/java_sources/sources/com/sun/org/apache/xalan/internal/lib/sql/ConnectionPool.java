package com.sun.org.apache.xalan.internal.lib.sql;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/* loaded from: classes10.dex */
public interface ConnectionPool {
    void freeUnused();

    Connection getConnection() throws SQLException;

    boolean hasActiveConnections();

    boolean isEnabled();

    void releaseConnection(Connection connection) throws SQLException;

    void releaseConnectionOnError(Connection connection) throws SQLException;

    void setDriver(String str);

    void setMinConnections(int i);

    void setPassword(String str);

    void setPoolEnabled(boolean z);

    void setProtocol(Properties properties);

    void setURL(String str);

    void setUser(String str);

    boolean testConnection();
}
