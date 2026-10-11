package org.mortbay.jetty.servlet;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import javax.servlet.http.HttpServletRequest;
import org.mortbay.jetty.servlet.AbstractSessionManager;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;

/* loaded from: classes13.dex */
public class HashSessionManager extends AbstractSessionManager {
    protected Map _sessions;

    /* renamed from: g */
    public Timer f115142g;

    /* renamed from: h */
    public TimerTask f115143h;

    /* renamed from: k */
    public TimerTask f115146k;

    /* renamed from: l */
    public File f115147l;

    /* renamed from: i */
    public int f115144i = 30000;

    /* renamed from: j */
    public int f115145j = 0;

    /* renamed from: m */
    public boolean f115148m = false;

    /* renamed from: n */
    public boolean f115149n = false;

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    public void addSession(AbstractSessionManager.Session session) {
        this._sessions.put(session.getClusterId(), session);
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this._sessions = new HashMap();
        super.doStart();
        this.f115142g = new Timer(true);
        setScavengePeriod(getScavengePeriod());
        File file = this.f115147l;
        if (file != null) {
            if (!file.exists()) {
                this.f115147l.mkdir();
            }
            if (!this.f115148m) {
                restoreSessions();
            }
        }
        setSavePeriod(getSavePeriod());
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager, org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        if (this.f115147l != null) {
            saveSessions();
        }
        super.doStop();
        this._sessions.clear();
        this._sessions = null;
        synchronized (this) {
            TimerTask timerTask = this.f115146k;
            if (timerTask != null) {
                timerTask.cancel();
            }
            TimerTask timerTask2 = this.f115143h;
            if (timerTask2 != null) {
                timerTask2.cancel();
            }
            Timer timer = this.f115142g;
            if (timer != null) {
                timer.cancel();
            }
            this.f115142g = null;
        }
    }

    public int getSavePeriod() {
        int i = this.f115145j;
        if (i <= 0) {
            return 0;
        }
        return i / 1000;
    }

    public int getScavengePeriod() {
        return this.f115144i / 1000;
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    public AbstractSessionManager.Session getSession(String str) {
        try {
            if (!this.f115149n && this.f115148m) {
                restoreSessions();
            }
        } catch (Exception e) {
            Log.warn(e);
        }
        Map map = this._sessions;
        if (map == null) {
            return null;
        }
        return (Session) map.get(str);
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    public Map getSessionMap() {
        return Collections.unmodifiableMap(this._sessions);
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    public int getSessions() {
        return this._sessions.size();
    }

    public File getStoreDirectory() {
        return this.f115147l;
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    public void invalidateSessions() {
        Iterator it2 = new ArrayList(this._sessions.values()).iterator();
        while (it2.hasNext()) {
            ((Session) it2.next()).invalidate();
        }
        this._sessions.clear();
    }

    public boolean isLazyLoad() {
        return this.f115148m;
    }

    /* renamed from: j */
    public final void m71617j() {
        Object obj;
        if (isStopping() || isStopped()) {
            return;
        }
        Thread currentThread = Thread.currentThread();
        ClassLoader contextClassLoader = currentThread.getContextClassLoader();
        try {
            ClassLoader classLoader = this._loader;
            if (classLoader != null) {
                currentThread.setContextClassLoader(classLoader);
            }
            long currentTimeMillis = System.currentTimeMillis();
            try {
                if (!this.f115149n && this.f115148m) {
                    restoreSessions();
                }
            } catch (Exception e) {
                Log.debug(e);
            }
            synchronized (this) {
                obj = null;
                for (Session session : this._sessions.values()) {
                    long j = session._maxIdleMs;
                    if (j > 0 && session._accessed + j < currentTimeMillis) {
                        obj = LazyList.add(obj, session);
                    }
                }
            }
            int size = LazyList.size(obj);
            while (true) {
                int i = size - 1;
                if (size <= 0) {
                    break;
                }
                Session session2 = (Session) LazyList.get(obj, i);
                long j2 = session2._maxIdleMs;
                if (j2 > 0 && session2._accessed + j2 < System.currentTimeMillis()) {
                    session2.timeout();
                    int size2 = this._sessions.size();
                    if (size2 < this._minSessions) {
                        this._minSessions = size2;
                    }
                }
                size = i;
            }
        } catch (Throwable th) {
            try {
                if (th instanceof ThreadDeath) {
                    throw th;
                }
                Log.warn("Problem scavenging sessions", (Throwable) th);
            } finally {
                currentThread.setContextClassLoader(contextClassLoader);
            }
        }
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    public AbstractSessionManager.Session newSession(HttpServletRequest httpServletRequest) {
        return new Session(httpServletRequest);
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    public void removeSession(String str) {
        this._sessions.remove(str);
    }

    public Session restoreSession(FileInputStream fileInputStream) throws Exception {
        DataInputStream dataInputStream = new DataInputStream(fileInputStream);
        String readUTF = dataInputStream.readUTF();
        dataInputStream.readUTF();
        dataInputStream.readBoolean();
        long readLong = dataInputStream.readLong();
        long readLong2 = dataInputStream.readLong();
        dataInputStream.readLong();
        long readLong3 = dataInputStream.readLong();
        dataInputStream.readInt();
        Session session = new Session(readLong, readUTF);
        session._cookieSet = readLong2;
        session._lastAccessed = readLong3;
        int readInt = dataInputStream.readInt();
        if (readInt > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                arrayList.add(dataInputStream.readUTF());
            }
            ClassLoadingObjectInputStream classLoadingObjectInputStream = new ClassLoadingObjectInputStream(dataInputStream);
            for (int i2 = 0; i2 < readInt; i2++) {
                session.setAttribute((String) arrayList.get(i2), classLoadingObjectInputStream.readObject());
            }
            classLoadingObjectInputStream.close();
        } else {
            session.initValues();
        }
        dataInputStream.close();
        return session;
    }

    public void restoreSessions() throws Exception {
        File file = this.f115147l;
        if (file == null || !file.exists()) {
            return;
        }
        if (!this.f115147l.canRead()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Unable to restore Sessions: Cannot read from Session storage directory ");
            stringBuffer.append(this.f115147l.getAbsolutePath());
            Log.warn(stringBuffer.toString());
            return;
        }
        File[] listFiles = this.f115147l.listFiles();
        for (int i = 0; listFiles != null && i < listFiles.length; i++) {
            try {
                FileInputStream fileInputStream = new FileInputStream(listFiles[i]);
                Session restoreSession = restoreSession(fileInputStream);
                fileInputStream.close();
                addSession(restoreSession, false);
                listFiles[i].delete();
            } catch (Exception e) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Problem restoring session ");
                stringBuffer2.append(listFiles[i].getName());
                Log.warn(stringBuffer2.toString(), (Throwable) e);
            }
        }
        this.f115149n = true;
    }

    public void saveSessions() throws Exception {
        File file = this.f115147l;
        if (file == null || !file.exists()) {
            return;
        }
        if (!this.f115147l.canWrite()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Unable to save Sessions: Session persistence storage directory ");
            stringBuffer.append(this.f115147l.getAbsolutePath());
            stringBuffer.append(" is not writeable");
            Log.warn(stringBuffer.toString());
            return;
        }
        synchronized (this) {
            for (Map.Entry entry : this._sessions.entrySet()) {
                String str = (String) entry.getKey();
                Session session = (Session) entry.getValue();
                try {
                    File file2 = new File(this.f115147l, str);
                    if (file2.exists()) {
                        file2.delete();
                    }
                    file2.createNewFile();
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    session.save(fileOutputStream);
                    fileOutputStream.close();
                } catch (Exception e) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Problem persisting session ");
                    stringBuffer2.append(str);
                    Log.warn(stringBuffer2.toString(), (Throwable) e);
                }
            }
        }
    }

    public void setLazyLoad(boolean z) {
        this.f115148m = z;
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager, org.mortbay.jetty.SessionManager
    public void setMaxInactiveInterval(int i) {
        super.setMaxInactiveInterval(i);
        int i2 = this._dftMaxIdleSecs;
        if (i2 <= 0 || this.f115144i <= i2 * 1000) {
            return;
        }
        setScavengePeriod((i2 + 9) / 10);
    }

    public void setSavePeriod(int i) {
        int i2 = i * 1000;
        if (i2 < 0) {
            i2 = 0;
        }
        this.f115145j = i2;
        if (this.f115142g != null) {
            synchronized (this) {
                TimerTask timerTask = this.f115146k;
                if (timerTask != null) {
                    timerTask.cancel();
                }
                if (this.f115145j > 0 && this.f115147l != null) {
                    C20419b c20419b = new C20419b(this);
                    this.f115146k = c20419b;
                    Timer timer = this.f115142g;
                    int i3 = this.f115145j;
                    timer.schedule(c20419b, i3, i3);
                }
            }
        }
    }

    public void setScavengePeriod(int i) {
        if (i == 0) {
            i = 60;
        }
        int i2 = this.f115144i;
        int i3 = i * 1000;
        if (i3 > 60000) {
            i3 = 60000;
        }
        int i4 = i3 >= 1000 ? i3 : 1000;
        this.f115144i = i4;
        if (this.f115142g != null) {
            if (i4 != i2 || this.f115143h == null) {
                synchronized (this) {
                    TimerTask timerTask = this.f115143h;
                    if (timerTask != null) {
                        timerTask.cancel();
                    }
                    C20420c c20420c = new C20420c(this);
                    this.f115143h = c20420c;
                    Timer timer = this.f115142g;
                    int i5 = this.f115144i;
                    timer.schedule(c20420c, i5, i5);
                }
            }
        }
    }

    public void setStoreDirectory(File file) {
        this.f115147l = file;
    }

    /* loaded from: classes13.dex */
    public class ClassLoadingObjectInputStream extends ObjectInputStream {
        public ClassLoadingObjectInputStream(InputStream inputStream) throws IOException {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        public Class resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            try {
                return Class.forName(objectStreamClass.getName(), false, Thread.currentThread().getContextClassLoader());
            } catch (ClassNotFoundException unused) {
                return super.resolveClass(objectStreamClass);
            }
        }

        public ClassLoadingObjectInputStream() throws IOException {
        }
    }

    /* loaded from: classes13.dex */
    public class Session extends AbstractSessionManager.Session {
        private static final long serialVersionUID = -2134521374206116367L;

        public Session(HttpServletRequest httpServletRequest) {
            super(httpServletRequest);
        }

        @Override // org.mortbay.jetty.servlet.AbstractSessionManager.Session, javax.servlet.http.HttpSession
        public void invalidate() throws IllegalStateException {
            super.invalidate();
            remove(getId());
        }

        @Override // org.mortbay.jetty.servlet.AbstractSessionManager.Session
        public Map newAttributeMap() {
            return new HashMap(3);
        }

        public void remove(String str) {
            if (str == null || HashSessionManager.this.isStopping() || HashSessionManager.this.isStopped() || HashSessionManager.this.f115147l == null || !HashSessionManager.this.f115147l.exists()) {
                return;
            }
            new File(HashSessionManager.this.f115147l, str).delete();
        }

        public void save(FileOutputStream fileOutputStream) throws IOException {
            DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
            dataOutputStream.writeUTF(this._clusterId);
            dataOutputStream.writeUTF(this._nodeId);
            dataOutputStream.writeBoolean(this._idChanged);
            dataOutputStream.writeLong(this._created);
            dataOutputStream.writeLong(this._cookieSet);
            dataOutputStream.writeLong(this._accessed);
            dataOutputStream.writeLong(this._lastAccessed);
            dataOutputStream.writeInt(this._requests);
            Map map = this._values;
            if (map != null) {
                dataOutputStream.writeInt(map.size());
                Iterator it2 = this._values.keySet().iterator();
                while (it2.hasNext()) {
                    dataOutputStream.writeUTF((String) it2.next());
                }
                Iterator it3 = this._values.values().iterator();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(dataOutputStream);
                while (it3.hasNext()) {
                    objectOutputStream.writeObject(it3.next());
                }
                objectOutputStream.close();
            } else {
                dataOutputStream.writeInt(0);
            }
            dataOutputStream.close();
        }

        @Override // org.mortbay.jetty.servlet.AbstractSessionManager.Session, javax.servlet.http.HttpSession
        public void setMaxInactiveInterval(int i) {
            super.setMaxInactiveInterval(i);
            long j = this._maxIdleMs;
            if (j <= 0 || j / 10 >= HashSessionManager.this.f115144i) {
                return;
            }
            HashSessionManager.this.setScavengePeriod((i + 9) / 10);
        }

        public Session(long j, String str) {
            super(j, str);
        }
    }
}
