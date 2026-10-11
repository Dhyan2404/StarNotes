package sun.awt;

import java.awt.Toolkit;
import java.backport.function.Supplier;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.lang.ref.SoftReference;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes16.dex */
public final class AppContext {
    public static final String DISPOSED_PROPERTY_NAME = "disposed";
    public static final String GUI_DISPOSED = "guidisposed";
    private final ClassLoader contextClassLoader;
    private final ThreadGroup threadGroup;
    public static final Object EVENT_QUEUE_KEY = new StringBuffer("EventQueue");
    public static final Object EVENT_QUEUE_LOCK_KEY = new StringBuilder("EventQueue.Lock");
    public static final Object EVENT_QUEUE_COND_KEY = new StringBuilder("EventQueue.Condition");
    private static final Map<ThreadGroup, AppContext> threadGroup2appContext = Collections.synchronizedMap(new IdentityHashMap());
    private static volatile AppContext mainAppContext = null;
    private static final Object getAppContextLock = new GetAppContextLock();
    private static final AtomicInteger numAppContexts = new AtomicInteger(0);
    private static final ThreadLocal<AppContext> threadAppContext = new ThreadLocal<>();
    private final Map<Object, Object> table = new HashMap();
    private PropertyChangeSupport changeSupport = null;
    private volatile State state = State.VALID;
    private long DISPOSAL_TIMEOUT = 5000;
    private long THREAD_INTERRUPT_TIMEOUT = 1000;
    private MostRecentKeyValue mostRecentKeyValue = null;
    private MostRecentKeyValue shadowMostRecentKeyValue = null;

    /* loaded from: classes16.dex */
    public static final class CreateThreadAction implements PrivilegedAction<Thread> {
        private final AppContext appContext;
        private final Runnable runnable;

        public CreateThreadAction(AppContext appContext, Runnable runnable) {
            this.appContext = appContext;
            this.runnable = runnable;
        }

        @Override // java.security.PrivilegedAction
        public Thread run() {
            Thread thread = new Thread(this.appContext.getThreadGroup(), this.runnable);
            thread.setContextClassLoader(this.appContext.getContextClassLoader());
            thread.setPriority(6);
            thread.setDaemon(true);
            return thread;
        }
    }

    /* loaded from: classes16.dex */
    public static class GetAppContextLock {
        private GetAppContextLock() {
        }
    }

    /* loaded from: classes16.dex */
    public static final class PostShutdownEventRunnable implements Runnable {
        private final AppContext appContext;

        public PostShutdownEventRunnable(AppContext appContext) {
            this.appContext = appContext;
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* loaded from: classes16.dex */
    public enum State {
        VALID,
        BEING_DISPOSED,
        DISPOSED
    }

    public AppContext(ThreadGroup threadGroup) {
        numAppContexts.incrementAndGet();
        this.threadGroup = threadGroup;
        threadGroup2appContext.put(threadGroup, this);
        this.contextClassLoader = (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() { // from class: sun.awt.AppContext.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                return Thread.currentThread().getContextClassLoader();
            }
        });
        ReentrantLock reentrantLock = new ReentrantLock();
        put(EVENT_QUEUE_LOCK_KEY, reentrantLock);
        put(EVENT_QUEUE_COND_KEY, reentrantLock.newCondition());
    }

    public static final AppContext getAppContext() {
        if (numAppContexts.get() == 1 && mainAppContext != null) {
            return mainAppContext;
        }
        AppContext appContext = threadAppContext.get();
        return appContext == null ? (AppContext) AccessController.doPrivileged(new PrivilegedAction<AppContext>() { // from class: sun.awt.AppContext.3
            @Override // java.security.PrivilegedAction
            public AppContext run() {
                ThreadGroup threadGroup;
                ThreadGroup threadGroup2 = Thread.currentThread().getThreadGroup();
                synchronized (AppContext.getAppContextLock) {
                    if (AppContext.numAppContexts.get() == 0) {
                        if (System.getProperty("javaplugin.version") == null && System.getProperty("javawebstart.version") == null) {
                            AppContext.initMainAppContext();
                        } else if (System.getProperty("javafx.version") != null) {
                            threadGroup2.getParent();
                        }
                    }
                }
                AppContext appContext2 = (AppContext) AppContext.threadGroup2appContext.get(threadGroup2);
                ThreadGroup threadGroup3 = threadGroup2;
                while (appContext2 == null) {
                    threadGroup3 = threadGroup3.getParent();
                    if (threadGroup3 == null) {
                        SecurityManager securityManager = System.getSecurityManager();
                        if (securityManager == null || (threadGroup = securityManager.getThreadGroup()) == null) {
                            return null;
                        }
                        return (AppContext) AppContext.threadGroup2appContext.get(threadGroup);
                    }
                    appContext2 = (AppContext) AppContext.threadGroup2appContext.get(threadGroup3);
                }
                while (threadGroup2 != threadGroup3) {
                    AppContext.threadGroup2appContext.put(threadGroup2, appContext2);
                    threadGroup2 = threadGroup2.getParent();
                }
                AppContext.threadAppContext.set(appContext2);
                return appContext2;
            }
        }) : appContext;
    }

    public static Set<AppContext> getAppContexts() {
        HashSet hashSet;
        Map<ThreadGroup, AppContext> map = threadGroup2appContext;
        synchronized (map) {
            hashSet = new HashSet(map.values());
        }
        return hashSet;
    }

    private static final AppContext getExecutionAppContext() {
        return null;
    }

    public static <T> T getSoftReferenceValue(Object obj, Supplier<T> supplier) {
        T t;
        AppContext appContext = getAppContext();
        SoftReference softReference = (SoftReference) appContext.get(obj);
        if (softReference != null && (t = (T) softReference.get()) != null) {
            return t;
        }
        T t2 = supplier.get();
        appContext.put(obj, new SoftReference(t2));
        return t2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initMainAppContext() {
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: sun.awt.AppContext.2
            @Override // java.security.PrivilegedAction
            public Void run() {
                ThreadGroup threadGroup = Thread.currentThread().getThreadGroup();
                ThreadGroup parent = threadGroup.getParent();
                while (true) {
                    ThreadGroup threadGroup2 = parent;
                    ThreadGroup threadGroup3 = threadGroup;
                    threadGroup = threadGroup2;
                    if (threadGroup != null) {
                        parent = threadGroup.getParent();
                    } else {
                        AppContext unused = AppContext.mainAppContext = Toolkit.createNewAppContext(threadGroup3);
                        return null;
                    }
                }
            }
        });
    }

    public static final boolean isMainContext(AppContext appContext) {
        return appContext != null && appContext == mainAppContext;
    }

    public static void stopEventDispatchThreads() {
        for (AppContext appContext : getAppContexts()) {
            if (!appContext.isDisposed()) {
                PostShutdownEventRunnable postShutdownEventRunnable = new PostShutdownEventRunnable(appContext);
                if (appContext != getAppContext()) {
                    ((Thread) AccessController.doPrivileged(new CreateThreadAction(appContext, postShutdownEventRunnable))).start();
                } else {
                    postShutdownEventRunnable.run();
                }
            }
        }
    }

    public synchronized void addPropertyChangeListener(String str, PropertyChangeListener propertyChangeListener) {
        if (propertyChangeListener == null) {
            return;
        }
        if (this.changeSupport == null) {
            this.changeSupport = new PropertyChangeSupport(this);
        }
        this.changeSupport.addPropertyChangeListener(str, propertyChangeListener);
    }

    public void dispose() throws IllegalThreadStateException {
        if (this.threadGroup.parentOf(Thread.currentThread().getThreadGroup())) {
            throw new IllegalThreadStateException("Current Thread is contained within AppContext to be disposed.");
        }
        synchronized (this) {
            if (this.state != State.VALID) {
                return;
            }
            this.state = State.BEING_DISPOSED;
            PropertyChangeSupport propertyChangeSupport = this.changeSupport;
            if (propertyChangeSupport != null) {
                propertyChangeSupport.firePropertyChange(DISPOSED_PROPERTY_NAME, false, true);
            }
            synchronized (this) {
                this.state = State.DISPOSED;
            }
            this.threadGroup.interrupt();
            long currentTimeMillis = System.currentTimeMillis() + this.THREAD_INTERRUPT_TIMEOUT;
            while (this.threadGroup.activeCount() > 0 && System.currentTimeMillis() < currentTimeMillis) {
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException unused) {
                }
            }
            this.threadGroup.stop();
            long currentTimeMillis2 = System.currentTimeMillis() + this.THREAD_INTERRUPT_TIMEOUT;
            while (this.threadGroup.activeCount() > 0 && System.currentTimeMillis() < currentTimeMillis2) {
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException unused2) {
                }
            }
            int activeGroupCount = this.threadGroup.activeGroupCount();
            if (activeGroupCount > 0) {
                ThreadGroup[] threadGroupArr = new ThreadGroup[activeGroupCount];
                int enumerate = this.threadGroup.enumerate(threadGroupArr);
                for (int i = 0; i < enumerate; i++) {
                    threadGroup2appContext.remove(threadGroupArr[i]);
                }
            }
            threadGroup2appContext.remove(this.threadGroup);
            threadAppContext.set(null);
            try {
                this.threadGroup.destroy();
            } catch (IllegalThreadStateException unused3) {
            }
            synchronized (this.table) {
                this.table.clear();
            }
            numAppContexts.decrementAndGet();
            this.mostRecentKeyValue = null;
        }
    }

    public Object get(Object obj) {
        synchronized (this.table) {
            MostRecentKeyValue mostRecentKeyValue = this.mostRecentKeyValue;
            if (mostRecentKeyValue != null && mostRecentKeyValue.key == obj) {
                return mostRecentKeyValue.value;
            }
            Object obj2 = this.table.get(obj);
            MostRecentKeyValue mostRecentKeyValue2 = this.mostRecentKeyValue;
            if (mostRecentKeyValue2 == null) {
                this.mostRecentKeyValue = new MostRecentKeyValue(obj, obj2);
                this.shadowMostRecentKeyValue = new MostRecentKeyValue(obj, obj2);
            } else {
                this.shadowMostRecentKeyValue.setPair(obj, obj2);
                this.mostRecentKeyValue = this.shadowMostRecentKeyValue;
                this.shadowMostRecentKeyValue = mostRecentKeyValue2;
            }
            return obj2;
        }
    }

    public ClassLoader getContextClassLoader() {
        return this.contextClassLoader;
    }

    public synchronized PropertyChangeListener[] getPropertyChangeListeners() {
        PropertyChangeSupport propertyChangeSupport = this.changeSupport;
        if (propertyChangeSupport == null) {
            return new PropertyChangeListener[0];
        }
        return propertyChangeSupport.getPropertyChangeListeners();
    }

    public ThreadGroup getThreadGroup() {
        return this.threadGroup;
    }

    public boolean isDisposed() {
        return this.state == State.DISPOSED;
    }

    public Object put(Object obj, Object obj2) {
        Object put;
        synchronized (this.table) {
            MostRecentKeyValue mostRecentKeyValue = this.mostRecentKeyValue;
            if (mostRecentKeyValue != null && mostRecentKeyValue.key == obj) {
                mostRecentKeyValue.value = obj2;
            }
            put = this.table.put(obj, obj2);
        }
        return put;
    }

    public Object remove(Object obj) {
        Object remove;
        synchronized (this.table) {
            MostRecentKeyValue mostRecentKeyValue = this.mostRecentKeyValue;
            if (mostRecentKeyValue != null && mostRecentKeyValue.key == obj) {
                mostRecentKeyValue.value = null;
            }
            remove = this.table.remove(obj);
        }
        return remove;
    }

    public synchronized void removePropertyChangeListener(String str, PropertyChangeListener propertyChangeListener) {
        if (propertyChangeListener != null) {
            PropertyChangeSupport propertyChangeSupport = this.changeSupport;
            if (propertyChangeSupport != null) {
                propertyChangeSupport.removePropertyChangeListener(str, propertyChangeListener);
            }
        }
    }

    public String toString() {
        return AppContext.class.getName() + "[threadGroup=" + this.threadGroup.getName() + IteratorUtils.f104924b;
    }

    public synchronized PropertyChangeListener[] getPropertyChangeListeners(String str) {
        PropertyChangeSupport propertyChangeSupport = this.changeSupport;
        if (propertyChangeSupport == null) {
            return new PropertyChangeListener[0];
        }
        return propertyChangeSupport.getPropertyChangeListeners(str);
    }
}
