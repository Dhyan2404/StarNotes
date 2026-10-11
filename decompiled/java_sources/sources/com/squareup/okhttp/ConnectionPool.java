package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes9.dex */
public final class ConnectionPool {

    /* renamed from: f */
    public static final long f63497f = 300000;

    /* renamed from: g */
    public static final ConnectionPool f63498g;

    /* renamed from: a */
    public final int f63499a;

    /* renamed from: b */
    public final long f63500b;

    /* renamed from: c */
    public final LinkedList<Connection> f63501c = new LinkedList<>();

    /* renamed from: d */
    public Executor f63502d = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory("OkHttp ConnectionPool", true));

    /* renamed from: e */
    public final Runnable f63503e = new RunnableC13151a();

    /* renamed from: com.squareup.okhttp.ConnectionPool$a */
    /* loaded from: classes9.dex */
    public class RunnableC13151a implements Runnable {
        public RunnableC13151a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConnectionPool.this.m52498g();
        }
    }

    static {
        String property = System.getProperty("http.keepAlive");
        String property2 = System.getProperty("http.keepAliveDuration");
        String property3 = System.getProperty("http.maxConnections");
        long parseLong = property2 != null ? Long.parseLong(property2) : 300000L;
        if (property != null && !Boolean.parseBoolean(property)) {
            f63498g = new ConnectionPool(0, parseLong);
        } else if (property3 != null) {
            f63498g = new ConnectionPool(Integer.parseInt(property3), parseLong);
        } else {
            f63498g = new ConnectionPool(5, parseLong);
        }
    }

    public ConnectionPool(int i, long j) {
        this.f63499a = i;
        this.f63500b = j * 1000 * 1000;
    }

    public static ConnectionPool getDefault() {
        return f63498g;
    }

    /* renamed from: b */
    public final void m52493b(Connection connection) {
        boolean isEmpty = this.f63501c.isEmpty();
        this.f63501c.addFirst(connection);
        if (isEmpty) {
            this.f63502d.execute(this.f63503e);
        } else {
            notifyAll();
        }
    }

    /* renamed from: c */
    public synchronized List<Connection> m52494c() {
        return new ArrayList(this.f63501c);
    }

    /* renamed from: d */
    public boolean m52495d() {
        synchronized (this) {
            if (this.f63501c.isEmpty()) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            long nanoTime = System.nanoTime();
            long j = this.f63500b;
            LinkedList<Connection> linkedList = this.f63501c;
            ListIterator<Connection> listIterator = linkedList.listIterator(linkedList.size());
            int i = 0;
            while (listIterator.hasPrevious()) {
                Connection previous = listIterator.previous();
                long m52476e = (previous.m52476e() + this.f63500b) - nanoTime;
                if (m52476e > 0 && previous.m52479h()) {
                    if (previous.m52481j()) {
                        i++;
                        j = Math.min(j, m52476e);
                    }
                }
                listIterator.remove();
                arrayList.add(previous);
            }
            LinkedList<Connection> linkedList2 = this.f63501c;
            ListIterator<Connection> listIterator2 = linkedList2.listIterator(linkedList2.size());
            while (listIterator2.hasPrevious() && i > this.f63499a) {
                Connection previous2 = listIterator2.previous();
                if (previous2.m52481j()) {
                    arrayList.add(previous2);
                    listIterator2.remove();
                    i--;
                }
            }
            if (arrayList.isEmpty()) {
                try {
                    long j2 = j / 1000000;
                    wait(j2, (int) (j - (1000000 * j2)));
                    return true;
                } catch (InterruptedException unused) {
                }
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Util.closeQuietly(((Connection) arrayList.get(i2)).getSocket());
            }
            return true;
        }
    }

    /* renamed from: e */
    public void m52496e(Connection connection) {
        if (!connection.m52483l() && connection.m52472a()) {
            if (!connection.m52479h()) {
                Util.closeQuietly(connection.getSocket());
                return;
            }
            try {
                Platform.get().untagSocket(connection.getSocket());
                synchronized (this) {
                    m52493b(connection);
                    connection.m52478g();
                    connection.m52488q();
                }
            } catch (SocketException e) {
                Platform.get().logW("Unable to untagSocket(): " + e);
                Util.closeQuietly(connection.getSocket());
            }
        }
    }

    public void evictAll() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f63501c);
            this.f63501c.clear();
            notifyAll();
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Util.closeQuietly(((Connection) arrayList.get(i)).getSocket());
        }
    }

    /* renamed from: f */
    public void m52497f(Executor executor) {
        this.f63502d = executor;
    }

    /* renamed from: g */
    public final void m52498g() {
        do {
        } while (m52495d());
    }

    public synchronized Connection get(Address address) {
        Connection connection;
        LinkedList<Connection> linkedList = this.f63501c;
        ListIterator<Connection> listIterator = linkedList.listIterator(linkedList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                connection = null;
                break;
            }
            connection = listIterator.previous();
            if (connection.getRoute().getAddress().equals(address) && connection.m52479h() && System.nanoTime() - connection.m52476e() < this.f63500b) {
                listIterator.remove();
                if (connection.m52483l()) {
                    break;
                }
                try {
                    Platform.get().tagSocket(connection.getSocket());
                    break;
                } catch (SocketException e) {
                    Util.closeQuietly(connection.getSocket());
                    Platform.get().logW("Unable to tagSocket(): " + e);
                }
            }
        }
        if (connection != null && connection.m52483l()) {
            this.f63501c.addFirst(connection);
        }
        return connection;
    }

    public synchronized int getConnectionCount() {
        return this.f63501c.size();
    }

    public synchronized int getHttpConnectionCount() {
        return this.f63501c.size() - getMultiplexedConnectionCount();
    }

    public synchronized int getMultiplexedConnectionCount() {
        int i;
        Iterator<Connection> it2 = this.f63501c.iterator();
        i = 0;
        while (it2.hasNext()) {
            if (it2.next().m52483l()) {
                i++;
            }
        }
        return i;
    }

    @Deprecated
    public synchronized int getSpdyConnectionCount() {
        return getMultiplexedConnectionCount();
    }

    /* renamed from: h */
    public void m52499h(Connection connection) {
        if (!connection.m52483l()) {
            throw new IllegalArgumentException();
        }
        if (connection.m52479h()) {
            synchronized (this) {
                m52493b(connection);
            }
        }
    }
}
