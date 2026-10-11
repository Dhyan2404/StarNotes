package com.sun.org.apache.xalan.internal.lib.sql;

import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/* loaded from: classes10.dex */
public class JNDIConnectionPool implements ConnectionPool {
    private Method getConnection;
    private Method getConnectionWithArgs;
    protected Object jdbcSource;
    protected String jndiPath;
    protected String pwd;
    protected String user;

    public JNDIConnectionPool() {
        this.jdbcSource = null;
        this.getConnectionWithArgs = null;
        this.getConnection = null;
        this.jndiPath = null;
        this.user = null;
        this.pwd = null;
    }

    public void findDatasource() throws NamingException {
        try {
            Object lookup = new InitialContext().lookup(this.jndiPath);
            this.jdbcSource = lookup;
            this.getConnectionWithArgs = lookup.getClass().getDeclaredMethod("getConnection", String.class, String.class);
            this.getConnection = this.jdbcSource.getClass().getDeclaredMethod("getConnection", new Class[0]);
        } catch (NoSuchMethodException e) {
            throw new NamingException("Unable to resolve JNDI DataSource - " + e);
        } catch (NamingException e2) {
            throw e2;
        }
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void freeUnused() {
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public Connection getConnection() throws SQLException {
        if (this.jdbcSource == null) {
            try {
                findDatasource();
            } catch (NamingException e) {
                throw new SQLException("Could not create jndi context for " + this.jndiPath + " - " + e.getLocalizedMessage());
            }
        }
        try {
            String str = this.user;
            if (str == null && this.pwd == null) {
                return (Connection) this.getConnection.invoke(this.jdbcSource, new Object[0]);
            }
            return (Connection) this.getConnectionWithArgs.invoke(this.jdbcSource, str, this.pwd);
        } catch (Exception e2) {
            throw new SQLException("Could not create jndi connection for " + this.jndiPath + " - " + e2.getLocalizedMessage());
        }
    }

    public String getJndiPath() {
        return this.jndiPath;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public boolean hasActiveConnections() {
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public boolean isEnabled() {
        return true;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void releaseConnection(Connection connection) throws SQLException {
        connection.close();
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void releaseConnectionOnError(Connection connection) throws SQLException {
        connection.close();
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setDriver(String str) {
        throw new Error("This method is not supported. All connection information is handled by the JDBC datasource provider");
    }

    public void setJndiPath(String str) {
        this.jndiPath = str;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setMinConnections(int i) {
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setPassword(String str) {
        if (str != null) {
            str = str.trim();
        }
        if (str != null && str.length() == 0) {
            str = null;
        }
        this.pwd = str;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setPoolEnabled(boolean z) {
        if (z) {
            return;
        }
        this.jdbcSource = null;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setProtocol(Properties properties) {
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setURL(String str) {
        throw new Error("This method is not supported. All connection information is handled by the JDBC datasource provider");
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setUser(String str) {
        if (str != null) {
            str = str.trim();
        }
        if (str != null && str.length() == 0) {
            str = null;
        }
        this.user = str;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public boolean testConnection() {
        if (this.jdbcSource != null) {
            return true;
        }
        try {
            findDatasource();
            return true;
        } catch (NamingException unused) {
            return false;
        }
    }

    public JNDIConnectionPool(String str) {
        this.jdbcSource = null;
        this.getConnectionWithArgs = null;
        this.getConnection = null;
        this.jndiPath = null;
        this.user = null;
        this.pwd = null;
        this.jndiPath = str.trim();
    }
}
