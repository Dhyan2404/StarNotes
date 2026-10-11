package com.sun.org.apache.xalan.internal.lib.sql;

import java.sql.Connection;
import java.sql.SQLException;

/* loaded from: classes10.dex */
public class PooledConnection {
    private Connection connection;
    private boolean inuse = false;

    public PooledConnection(Connection connection) {
        this.connection = null;
        if (connection != null) {
            this.connection = connection;
        }
    }

    public void close() {
        try {
            this.connection.close();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public Connection getConnection() {
        return this.connection;
    }

    public boolean inUse() {
        return this.inuse;
    }

    public void setInUse(boolean z) {
        this.inuse = z;
    }
}
