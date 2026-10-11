package org.mortbay.jetty;

import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import org.mortbay.component.Container;
import org.mortbay.component.LifeCycle;
import org.mortbay.jetty.bio.SocketConnector;
import org.mortbay.jetty.handler.HandlerCollection;
import org.mortbay.jetty.handler.HandlerWrapper;
import org.mortbay.jetty.security.UserRealm;
import org.mortbay.log.Log;
import org.mortbay.thread.QueuedThreadPool;
import org.mortbay.thread.ThreadPool;
import org.mortbay.util.Attributes;
import org.mortbay.util.AttributesMap;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiException;
import org.scribe.model.OAuthConstants;

/* loaded from: classes13.dex */
public class Server extends HandlerWrapper implements Attributes {
    public static final String SNAPSHOT_VERSION = "6.1-SNAPSHOT";
    public static final String UNKNOWN_VERSION = "6.1.x";

    /* renamed from: q */
    public static C20379a f114800q = new C20379a();

    /* renamed from: r */
    public static String f114801r;

    /* renamed from: s */
    public static /* synthetic */ Class f114802s;

    /* renamed from: t */
    public static /* synthetic */ Class f114803t;

    /* renamed from: u */
    public static /* synthetic */ Class f114804u;

    /* renamed from: v */
    public static /* synthetic */ Class f114805v;

    /* renamed from: w */
    public static /* synthetic */ Class f114806w;

    /* renamed from: x */
    public static /* synthetic */ Class f114807x;

    /* renamed from: g */
    public ThreadPool f114808g;

    /* renamed from: h */
    public Connector[] f114809h;

    /* renamed from: i */
    public UserRealm[] f114810i;

    /* renamed from: k */
    public SessionIdManager f114812k;

    /* renamed from: j */
    public Container f114811j = new Container();

    /* renamed from: l */
    public boolean f114813l = true;

    /* renamed from: m */
    public boolean f114814m = false;

    /* renamed from: n */
    public AttributesMap f114815n = new AttributesMap();

    /* renamed from: o */
    public List f114816o = new ArrayList();

    /* renamed from: p */
    public int f114817p = 0;

    /* loaded from: classes13.dex */
    public interface Graceful {
        void setShutdown(boolean z);
    }

    /* renamed from: org.mortbay.jetty.Server$a */
    /* loaded from: classes13.dex */
    public static class C20379a extends Thread {

        /* renamed from: e */
        public boolean f114818e;

        /* renamed from: f */
        public ArrayList f114819f;

        public C20379a() {
            this.f114818e = false;
            this.f114819f = new ArrayList();
        }

        /* renamed from: a */
        public boolean m71531a(Server server) {
            m71535e();
            return this.f114819f.add(server);
        }

        /* renamed from: b */
        public boolean m71532b(Collection collection) {
            m71535e();
            return this.f114819f.addAll(collection);
        }

        /* renamed from: c */
        public void m71533c() {
            m71535e();
            this.f114819f.clear();
        }

        /* renamed from: d */
        public boolean m71534d(Server server) {
            return this.f114819f.contains(server);
        }

        /* renamed from: e */
        public final void m71535e() {
            if (Boolean.getBoolean("JETTY_NO_SHUTDOWN_HOOK") || this.f114818e) {
                return;
            }
            try {
                Class cls = Server.f114807x;
                if (cls == null) {
                    cls = Server.class$("java.lang.Runtime");
                    Server.f114807x = cls;
                }
                Class<?>[] clsArr = new Class[1];
                Class<?> cls2 = Server.f114806w;
                if (cls2 == null) {
                    cls2 = Server.class$("java.lang.Thread");
                    Server.f114806w = cls2;
                }
                clsArr[0] = cls2;
                cls.getMethod("addShutdownHook", clsArr).invoke(Runtime.getRuntime(), this);
                this.f114818e = true;
            } catch (Exception e) {
                if (Log.isDebugEnabled()) {
                    Log.debug("No shutdown hook in JVM ", e);
                }
            }
        }

        /* renamed from: f */
        public boolean m71536f(Server server) {
            m71535e();
            return this.f114819f.remove(server);
        }

        /* renamed from: g */
        public boolean m71537g(Collection collection) {
            m71535e();
            return this.f114819f.removeAll(collection);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            setName("Shutdown");
            Log.info("Shutdown hook executing");
            Iterator it2 = this.f114819f.iterator();
            while (it2.hasNext()) {
                Server server = (Server) it2.next();
                if (server != null) {
                    try {
                        server.stop();
                    } catch (Exception e) {
                        Log.warn(e);
                    }
                    Log.info("Shutdown hook complete");
                    try {
                        Thread.sleep(1000L);
                    } catch (Exception e2) {
                        Log.warn(e2);
                    }
                }
            }
        }
    }

    static {
        String str;
        Class cls = f114802s;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.Server");
            f114802s = cls;
        }
        if (cls.getPackage() != null) {
            Class cls2 = f114802s;
            if (cls2 == null) {
                cls2 = class$("org.mortbay.jetty.Server");
                f114802s = cls2;
            }
            if (cls2.getPackage().getImplementationVersion() != null) {
                Class cls3 = f114802s;
                if (cls3 == null) {
                    cls3 = class$("org.mortbay.jetty.Server");
                    f114802s = cls3;
                }
                str = cls3.getPackage().getImplementationVersion();
                f114801r = str;
            }
        }
        str = UNKNOWN_VERSION;
        f114801r = str;
    }

    public Server() {
        setServer(this);
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static String getVersion() {
        return f114801r;
    }

    public void addConnector(Connector connector) {
        Connector[] connectors = getConnectors();
        Class cls = f114803t;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.Connector");
            f114803t = cls;
        }
        setConnectors((Connector[]) LazyList.addToArray(connectors, connector, cls));
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.HandlerContainer
    public void addHandler(Handler handler) {
        if (getHandler() == null) {
            setHandler(handler);
        } else {
            if (getHandler() instanceof HandlerCollection) {
                ((HandlerCollection) getHandler()).addHandler(handler);
                return;
            }
            HandlerCollection handlerCollection = new HandlerCollection();
            handlerCollection.setHandlers(new Handler[]{getHandler(), handler});
            setHandler(handlerCollection);
        }
    }

    public void addLifeCycle(LifeCycle lifeCycle) {
        if (lifeCycle == null) {
            return;
        }
        if (!this.f114816o.contains(lifeCycle)) {
            this.f114816o.add(lifeCycle);
            this.f114811j.addBean(lifeCycle);
        }
        try {
            if (isStarted()) {
                lifeCycle.start();
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void addUserRealm(UserRealm userRealm) {
        UserRealm[] userRealms = getUserRealms();
        Class cls = f114805v;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.security.UserRealm");
            f114805v = cls;
        }
        setUserRealms((UserRealm[]) LazyList.addToArray(userRealms, userRealm, cls));
    }

    @Override // org.mortbay.util.Attributes
    public void clearAttributes() {
        this.f114815n.clearAttributes();
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("jetty-");
        stringBuffer.append(f114801r);
        Log.info(stringBuffer.toString());
        HttpGenerator.setServerVersion(f114801r);
        MultiException multiException = new MultiException();
        int i = 0;
        int i2 = 0;
        while (true) {
            UserRealm[] userRealmArr = this.f114810i;
            if (userRealmArr == null || i2 >= userRealmArr.length) {
                break;
            }
            UserRealm userRealm = userRealmArr[i2];
            if (userRealm instanceof LifeCycle) {
                ((LifeCycle) userRealm).start();
            }
            i2++;
        }
        Iterator it2 = this.f114816o.iterator();
        while (it2.hasNext()) {
            try {
                ((LifeCycle) it2.next()).start();
            } catch (Throwable th) {
                multiException.add(th);
            }
        }
        if (this.f114808g == null) {
            setThreadPool(new QueuedThreadPool());
        }
        SessionIdManager sessionIdManager = this.f114812k;
        if (sessionIdManager != null) {
            sessionIdManager.start();
        }
        try {
            ThreadPool threadPool = this.f114808g;
            if (threadPool instanceof LifeCycle) {
                ((LifeCycle) threadPool).start();
            }
        } catch (Throwable th2) {
            multiException.add(th2);
        }
        try {
            super.doStart();
        } catch (Throwable th3) {
            Log.warn("Error starting handlers", th3);
        }
        if (this.f114809h != null) {
            while (true) {
                Connector[] connectorArr = this.f114809h;
                if (i >= connectorArr.length) {
                    break;
                }
                try {
                    connectorArr[i].start();
                } catch (Throwable th4) {
                    multiException.add(th4);
                }
                i++;
            }
        }
        multiException.ifExceptionThrow();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:1|(2:2|(1:1)(3:6|(2:8|9)(1:11)|10))|13|(8:15|(2:17|(2:18|(5:20|21|22|24|25)(1:29)))(0)|30|(1:32)|33|(2:36|34)|37|38)|39|(12:41|(2:42|(4:44|45|47|48)(0))|53|54|(1:56)|57|58|(1:60)|62|(3:64|(5:67|68|70|71|65)|75)|76|77)(0)|52|53|54|(0)|57|58|(0)|62|(0)|76|77) */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0099, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x009a, code lost:
    
        r0.add(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0082, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0083, code lost:
    
        r0.add(r1);
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0093 A[Catch: all -> 0x0099, TRY_LEAVE, TryCatch #2 {all -> 0x0099, blocks: (B:58:0x008d, B:60:0x0093), top: B:57:0x008d }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00a5  */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doStop() throws java.lang.Exception {
        /*
            r6 = this;
            org.mortbay.util.MultiException r0 = new org.mortbay.util.MultiException
            r0.<init>()
            r1 = 0
            r2 = r1
        L7:
            org.mortbay.jetty.security.UserRealm[] r3 = r6.f114810i
            if (r3 == 0) goto L1c
            int r4 = r3.length
            if (r2 >= r4) goto L1c
            r3 = r3[r2]
            boolean r4 = r3 instanceof org.mortbay.component.LifeCycle
            if (r4 == 0) goto L19
            org.mortbay.component.LifeCycle r3 = (org.mortbay.component.LifeCycle) r3
            r3.stop()
        L19:
            int r2 = r2 + 1
            goto L7
        L1c:
            int r2 = r6.f114817p
            if (r2 <= 0) goto L67
            org.mortbay.jetty.Connector[] r2 = r6.f114809h
            java.lang.String r3 = "Graceful shutdown {}"
            if (r2 == 0) goto L40
            int r2 = r2.length
        L27:
            int r4 = r2 + (-1)
            if (r2 <= 0) goto L40
            org.mortbay.jetty.Connector[] r2 = r6.f114809h
            r2 = r2[r4]
            org.mortbay.log.Log.info(r3, r2)
            org.mortbay.jetty.Connector[] r2 = r6.f114809h     // Catch: java.lang.Throwable -> L3a
            r2 = r2[r4]     // Catch: java.lang.Throwable -> L3a
            r2.close()     // Catch: java.lang.Throwable -> L3a
            goto L3e
        L3a:
            r2 = move-exception
            r0.add(r2)
        L3e:
            r2 = r4
            goto L27
        L40:
            java.lang.Class r2 = org.mortbay.jetty.Server.f114804u
            if (r2 != 0) goto L4c
            java.lang.String r2 = "org.mortbay.jetty.Server$Graceful"
            java.lang.Class r2 = class$(r2)
            org.mortbay.jetty.Server.f114804u = r2
        L4c:
            org.mortbay.jetty.Handler[] r2 = r6.getChildHandlersByClass(r2)
        L50:
            int r4 = r2.length
            if (r1 >= r4) goto L61
            r4 = r2[r1]
            org.mortbay.jetty.Server$Graceful r4 = (org.mortbay.jetty.Server.Graceful) r4
            org.mortbay.log.Log.info(r3, r4)
            r5 = 1
            r4.setShutdown(r5)
            int r1 = r1 + 1
            goto L50
        L61:
            int r1 = r6.f114817p
            long r1 = (long) r1
            java.lang.Thread.sleep(r1)
        L67:
            org.mortbay.jetty.Connector[] r1 = r6.f114809h
            if (r1 == 0) goto L7e
            int r1 = r1.length
        L6c:
            int r2 = r1 + (-1)
            if (r1 <= 0) goto L7e
            org.mortbay.jetty.Connector[] r1 = r6.f114809h     // Catch: java.lang.Throwable -> L78
            r1 = r1[r2]     // Catch: java.lang.Throwable -> L78
            r1.stop()     // Catch: java.lang.Throwable -> L78
            goto L7c
        L78:
            r1 = move-exception
            r0.add(r1)
        L7c:
            r1 = r2
            goto L6c
        L7e:
            super.doStop()     // Catch: java.lang.Throwable -> L82
            goto L86
        L82:
            r1 = move-exception
            r0.add(r1)
        L86:
            org.mortbay.jetty.SessionIdManager r1 = r6.f114812k
            if (r1 == 0) goto L8d
            r1.stop()
        L8d:
            org.mortbay.thread.ThreadPool r1 = r6.f114808g     // Catch: java.lang.Throwable -> L99
            boolean r2 = r1 instanceof org.mortbay.component.LifeCycle     // Catch: java.lang.Throwable -> L99
            if (r2 == 0) goto L9d
            org.mortbay.component.LifeCycle r1 = (org.mortbay.component.LifeCycle) r1     // Catch: java.lang.Throwable -> L99
            r1.stop()     // Catch: java.lang.Throwable -> L99
            goto L9d
        L99:
            r1 = move-exception
            r0.add(r1)
        L9d:
            java.util.List r1 = r6.f114816o
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto Lc4
            java.util.List r6 = r6.f114816o
            int r1 = r6.size()
            java.util.ListIterator r6 = r6.listIterator(r1)
        Laf:
            boolean r1 = r6.hasPrevious()
            if (r1 == 0) goto Lc4
            java.lang.Object r1 = r6.previous()     // Catch: java.lang.Throwable -> Lbf
            org.mortbay.component.LifeCycle r1 = (org.mortbay.component.LifeCycle) r1     // Catch: java.lang.Throwable -> Lbf
            r1.stop()     // Catch: java.lang.Throwable -> Lbf
            goto Laf
        Lbf:
            r1 = move-exception
            r0.add(r1)
            goto Laf
        Lc4:
            r0.ifExceptionThrow()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.Server.doStop():void");
    }

    @Override // org.mortbay.util.Attributes
    public Object getAttribute(String str) {
        return this.f114815n.getAttribute(str);
    }

    @Override // org.mortbay.util.Attributes
    public Enumeration getAttributeNames() {
        return AttributesMap.getAttributeNamesCopy(this.f114815n);
    }

    public Connector[] getConnectors() {
        return this.f114809h;
    }

    public Container getContainer() {
        return this.f114811j;
    }

    public int getGracefulShutdown() {
        return this.f114817p;
    }

    public Handler[] getHandlers() {
        if (getHandler() instanceof HandlerCollection) {
            return ((HandlerCollection) getHandler()).getHandlers();
        }
        return null;
    }

    public boolean getSendDateHeader() {
        return this.f114814m;
    }

    public boolean getSendServerVersion() {
        return this.f114813l;
    }

    public SessionIdManager getSessionIdManager() {
        return this.f114812k;
    }

    public boolean getStopAtShutdown() {
        return f114800q.m71534d(this);
    }

    public ThreadPool getThreadPool() {
        return this.f114808g;
    }

    public UserRealm[] getUserRealms() {
        return this.f114810i;
    }

    public void handle(HttpConnection httpConnection) throws IOException, ServletException {
        String pathInfo = httpConnection.getRequest().getPathInfo();
        if (!Log.isDebugEnabled()) {
            handle(pathInfo, httpConnection.getRequest(), httpConnection.getResponse(), 1);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("REQUEST ");
        stringBuffer.append(pathInfo);
        stringBuffer.append(" on ");
        stringBuffer.append(httpConnection);
        Log.debug(stringBuffer.toString());
        handle(pathInfo, httpConnection.getRequest(), httpConnection.getResponse(), 1);
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("RESPONSE ");
        stringBuffer2.append(pathInfo);
        stringBuffer2.append(GlideException.C1935a.f14609h);
        stringBuffer2.append(httpConnection.getResponse().getStatus());
        Log.debug(stringBuffer2.toString());
    }

    public void join() throws InterruptedException {
        getThreadPool().join();
    }

    @Override // org.mortbay.util.Attributes
    public void removeAttribute(String str) {
        this.f114815n.removeAttribute(str);
    }

    public void removeConnector(Connector connector) {
        setConnectors((Connector[]) LazyList.removeFromArray(getConnectors(), connector));
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.HandlerContainer
    public void removeHandler(Handler handler) {
        if (getHandler() instanceof HandlerCollection) {
            ((HandlerCollection) getHandler()).removeHandler(handler);
        }
    }

    public void removeLifeCycle(LifeCycle lifeCycle) {
        if (lifeCycle == null) {
            return;
        }
        this.f114816o.remove(lifeCycle);
        this.f114811j.removeBean(lifeCycle);
    }

    public void removeUserRealm(UserRealm userRealm) {
        setUserRealms((UserRealm[]) LazyList.removeFromArray(getUserRealms(), userRealm));
    }

    @Override // org.mortbay.util.Attributes
    public void setAttribute(String str, Object obj) {
        this.f114815n.setAttribute(str, obj);
    }

    public void setConnectors(Connector[] connectorArr) {
        if (connectorArr != null) {
            for (Connector connector : connectorArr) {
                connector.setServer(this);
            }
        }
        this.f114811j.update((Object) this, (Object[]) this.f114809h, (Object[]) connectorArr, "connector");
        this.f114809h = connectorArr;
    }

    public void setGracefulShutdown(int i) {
        this.f114817p = i;
    }

    public void setHandlers(Handler[] handlerArr) {
        HandlerCollection handlerCollection;
        if (getHandler() instanceof HandlerCollection) {
            handlerCollection = (HandlerCollection) getHandler();
        } else {
            HandlerCollection handlerCollection2 = new HandlerCollection();
            setHandler(handlerCollection2);
            handlerCollection = handlerCollection2;
        }
        handlerCollection.setHandlers(handlerArr);
    }

    public void setSendDateHeader(boolean z) {
        this.f114814m = z;
    }

    public void setSendServerVersion(boolean z) {
        this.f114813l = z;
    }

    public void setSessionIdManager(SessionIdManager sessionIdManager) {
        this.f114811j.update((Object) this, (Object) this.f114812k, (Object) sessionIdManager, "sessionIdManager", true);
        this.f114812k = sessionIdManager;
    }

    public void setStopAtShutdown(boolean z) {
        if (z) {
            f114800q.m71531a(this);
        } else {
            f114800q.m71536f(this);
        }
    }

    public void setThreadPool(ThreadPool threadPool) {
        this.f114811j.update((Object) this, (Object) this.f114808g, (Object) threadPool, "threadpool", true);
        this.f114808g = threadPool;
    }

    public void setUserRealms(UserRealm[] userRealmArr) {
        this.f114811j.update((Object) this, (Object[]) this.f114810i, (Object[]) userRealmArr, OAuthConstants.REALM, true);
        this.f114810i = userRealmArr;
    }

    public Server(int i) {
        setServer(this);
        SocketConnector socketConnector = new SocketConnector();
        socketConnector.setPort(i);
        setConnectors(new Connector[]{socketConnector});
    }
}
