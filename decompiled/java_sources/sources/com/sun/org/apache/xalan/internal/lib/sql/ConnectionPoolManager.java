package com.sun.org.apache.xalan.internal.lib.sql;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class ConnectionPoolManager {
    private static Hashtable m_poolTable;

    public ConnectionPoolManager() {
        init();
    }

    private synchronized void init() {
        if (m_poolTable == null) {
            m_poolTable = new Hashtable();
        }
    }

    public synchronized ConnectionPool getPool(String str) {
        return (ConnectionPool) m_poolTable.get(str);
    }

    public synchronized void registerPool(String str, ConnectionPool connectionPool) {
        if (m_poolTable.containsKey(str)) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_POOL_EXISTS", null));
        }
        m_poolTable.put(str, connectionPool);
    }

    public synchronized void removePool(String str) {
        ConnectionPool pool = getPool(str);
        if (pool != null) {
            pool.setPoolEnabled(false);
            if (!pool.hasActiveConnections()) {
                m_poolTable.remove(str);
            }
        }
    }
}
