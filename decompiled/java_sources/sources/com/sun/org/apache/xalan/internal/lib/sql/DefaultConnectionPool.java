package com.sun.org.apache.xalan.internal.lib.sql;

import com.sun.org.apache.xalan.internal.lib.sql.ObjectFactory;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Properties;
import java.util.Vector;

/* loaded from: classes10.dex */
public class DefaultConnectionPool implements ConnectionPool {
    private static final boolean DEBUG = false;
    private Driver m_Driver = null;
    private String m_driver = new String("");
    private String m_url = new String("");
    private int m_PoolMinSize = 1;
    private Properties m_ConnectionProtocol = new Properties();
    private Vector m_pool = new Vector();
    private boolean m_IsActive = false;

    private void addConnection(PooledConnection pooledConnection) {
        this.m_pool.addElement(pooledConnection);
    }

    private Connection createConnection() throws SQLException {
        return this.m_Driver.connect(this.m_url, this.m_ConnectionProtocol);
    }

    public void finalize() throws Throwable {
        for (int i = 0; i < this.m_pool.size(); i++) {
            PooledConnection pooledConnection = (PooledConnection) this.m_pool.elementAt(i);
            if (pooledConnection.inUse()) {
                try {
                    Thread.sleep(30000L);
                    pooledConnection.close();
                } catch (InterruptedException unused) {
                }
            } else {
                pooledConnection.close();
            }
        }
        super.finalize();
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void freeUnused() {
        Iterator it2 = this.m_pool.iterator();
        while (it2.hasNext()) {
            PooledConnection pooledConnection = (PooledConnection) it2.next();
            if (!pooledConnection.inUse()) {
                pooledConnection.close();
                it2.remove();
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public synchronized Connection getConnection() throws IllegalArgumentException, SQLException {
        if (this.m_pool.size() < this.m_PoolMinSize) {
            initializePool();
        }
        for (int i = 0; i < this.m_pool.size(); i++) {
            PooledConnection pooledConnection = (PooledConnection) this.m_pool.elementAt(i);
            if (!pooledConnection.inUse()) {
                pooledConnection.setInUse(true);
                return pooledConnection.getConnection();
            }
        }
        PooledConnection pooledConnection2 = new PooledConnection(createConnection());
        pooledConnection2.setInUse(true);
        this.m_pool.addElement(pooledConnection2);
        return pooledConnection2.getConnection();
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public boolean hasActiveConnections() {
        return this.m_pool.size() > 0;
    }

    public synchronized void initializePool() throws IllegalArgumentException, SQLException {
        String str = this.m_driver;
        if (str == null) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_NO_DRIVER_NAME_SPECIFIED", null));
        }
        if (this.m_url == null) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_NO_URL_SPECIFIED", null));
        }
        if (this.m_PoolMinSize < 1) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_POOLSIZE_LESS_THAN_ONE", null));
        }
        try {
            Driver driver = (Driver) ObjectFactory.newInstance(str, ObjectFactory.findClassLoader(), true);
            this.m_Driver = driver;
            DriverManager.registerDriver(driver);
            if (!this.m_IsActive) {
                return;
            }
            do {
                Connection createConnection = createConnection();
                if (createConnection != null) {
                    addConnection(new PooledConnection(createConnection));
                }
            } while (this.m_pool.size() < this.m_PoolMinSize);
        } catch (ObjectFactory.ConfigurationError unused) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_INVALID_DRIVER_NAME", null));
        } catch (Exception unused2) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_INVALID_DRIVER_NAME", null));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public boolean isEnabled() {
        return this.m_IsActive;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public synchronized void releaseConnection(Connection connection) throws SQLException {
        int i = 0;
        while (true) {
            if (i >= this.m_pool.size()) {
                break;
            }
            PooledConnection pooledConnection = (PooledConnection) this.m_pool.elementAt(i);
            if (pooledConnection.getConnection() != connection) {
                i++;
            } else if (isEnabled()) {
                pooledConnection.setInUse(false);
            } else {
                connection.close();
                this.m_pool.removeElementAt(i);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        r3.close();
        r2.m_pool.removeElementAt(r0);
     */
    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void releaseConnectionOnError(java.sql.Connection r3) throws java.sql.SQLException {
        /*
            r2 = this;
            monitor-enter(r2)
            r0 = 0
        L2:
            java.util.Vector r1 = r2.m_pool     // Catch: java.lang.Throwable -> L26
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L26
            if (r0 >= r1) goto L24
            java.util.Vector r1 = r2.m_pool     // Catch: java.lang.Throwable -> L26
            java.lang.Object r1 = r1.elementAt(r0)     // Catch: java.lang.Throwable -> L26
            com.sun.org.apache.xalan.internal.lib.sql.PooledConnection r1 = (com.sun.org.apache.xalan.internal.lib.sql.PooledConnection) r1     // Catch: java.lang.Throwable -> L26
            java.sql.Connection r1 = r1.getConnection()     // Catch: java.lang.Throwable -> L26
            if (r1 != r3) goto L21
            r3.close()     // Catch: java.lang.Throwable -> L26
            java.util.Vector r3 = r2.m_pool     // Catch: java.lang.Throwable -> L26
            r3.removeElementAt(r0)     // Catch: java.lang.Throwable -> L26
            goto L24
        L21:
            int r0 = r0 + 1
            goto L2
        L24:
            monitor-exit(r2)
            return
        L26:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.lib.sql.DefaultConnectionPool.releaseConnectionOnError(java.sql.Connection):void");
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setDriver(String str) {
        this.m_driver = str;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setMinConnections(int i) {
        this.m_PoolMinSize = i;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setPassword(String str) {
        this.m_ConnectionProtocol.put("password", str);
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setPoolEnabled(boolean z) {
        this.m_IsActive = z;
        if (z) {
            return;
        }
        freeUnused();
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setProtocol(Properties properties) {
        Enumeration keys = properties.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            this.m_ConnectionProtocol.put(str, properties.getProperty(str));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setURL(String str) {
        this.m_url = str;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public void setUser(String str) {
        this.m_ConnectionProtocol.put("user", str);
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.ConnectionPool
    public boolean testConnection() {
        try {
            Connection connection = getConnection();
            if (connection == null) {
                return false;
            }
            releaseConnection(connection);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
