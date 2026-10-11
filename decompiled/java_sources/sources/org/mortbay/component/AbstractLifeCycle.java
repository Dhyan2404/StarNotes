package org.mortbay.component;

import org.mortbay.component.LifeCycle;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;

/* loaded from: classes13.dex */
public abstract class AbstractLifeCycle implements LifeCycle {
    static /* synthetic */ Class class$org$mortbay$component$LifeCycle$Listener;
    protected LifeCycle.Listener[] _listeners;
    private Object _lock = new Object();
    private final int FAILED = -1;
    private final int STOPPED = 0;
    private final int STARTING = 1;
    private final int STARTED = 2;
    private final int STOPPING = 3;
    private volatile int _state = 0;

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    /* renamed from: a */
    public final void m71453a(Throwable th) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("failed ");
        stringBuffer.append(this);
        stringBuffer.append(": ");
        stringBuffer.append(th);
        Log.warn(stringBuffer.toString());
        Log.debug(th);
        this._state = -1;
        if (this._listeners == null) {
            return;
        }
        int i = 0;
        while (true) {
            LifeCycle.Listener[] listenerArr = this._listeners;
            if (i >= listenerArr.length) {
                return;
            }
            listenerArr[i].lifeCycleFailure(this, th);
            i++;
        }
    }

    @Override // org.mortbay.component.LifeCycle
    public void addLifeCycleListener(LifeCycle.Listener listener) {
        LifeCycle.Listener[] listenerArr = this._listeners;
        Class cls = class$org$mortbay$component$LifeCycle$Listener;
        if (cls == null) {
            cls = class$("org.mortbay.component.LifeCycle$Listener");
            class$org$mortbay$component$LifeCycle$Listener = cls;
        }
        this._listeners = (LifeCycle.Listener[]) LazyList.addToArray(listenerArr, listener, cls);
    }

    /* renamed from: b */
    public final void m71454b() {
        this._state = 2;
        if (this._listeners == null) {
            return;
        }
        int i = 0;
        while (true) {
            LifeCycle.Listener[] listenerArr = this._listeners;
            if (i >= listenerArr.length) {
                return;
            }
            listenerArr[i].lifeCycleStarted(this);
            i++;
        }
    }

    /* renamed from: c */
    public final void m71455c() {
        this._state = 1;
        if (this._listeners == null) {
            return;
        }
        int i = 0;
        while (true) {
            LifeCycle.Listener[] listenerArr = this._listeners;
            if (i >= listenerArr.length) {
                return;
            }
            listenerArr[i].lifeCycleStarting(this);
            i++;
        }
    }

    /* renamed from: d */
    public final void m71456d() {
        int i = 0;
        this._state = 0;
        if (this._listeners == null) {
            return;
        }
        while (true) {
            LifeCycle.Listener[] listenerArr = this._listeners;
            if (i >= listenerArr.length) {
                return;
            }
            listenerArr[i].lifeCycleStopped(this);
            i++;
        }
    }

    public void doStart() throws Exception {
    }

    public void doStop() throws Exception {
    }

    /* renamed from: e */
    public final void m71457e() {
        this._state = 3;
        if (this._listeners == null) {
            return;
        }
        int i = 0;
        while (true) {
            LifeCycle.Listener[] listenerArr = this._listeners;
            if (i >= listenerArr.length) {
                return;
            }
            listenerArr[i].lifeCycleStopping(this);
            i++;
        }
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isFailed() {
        return this._state == -1;
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isRunning() {
        return this._state == 2 || this._state == 1;
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isStarted() {
        return this._state == 2;
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isStarting() {
        return this._state == 1;
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isStopped() {
        return this._state == 0;
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isStopping() {
        return this._state == 3;
    }

    @Override // org.mortbay.component.LifeCycle
    public void removeLifeCycleListener(LifeCycle.Listener listener) {
        this._listeners = (LifeCycle.Listener[]) LazyList.removeFromArray(this._listeners, listener);
    }

    @Override // org.mortbay.component.LifeCycle
    public final void start() throws Exception {
        synchronized (this._lock) {
            try {
                try {
                    try {
                        if (this._state != 2 && this._state != 1) {
                            m71455c();
                            doStart();
                            Log.debug("started {}", this);
                            m71454b();
                        }
                    } catch (Exception e) {
                        m71453a(e);
                        throw e;
                    }
                } catch (Error e2) {
                    m71453a(e2);
                    throw e2;
                }
            } finally {
            }
        }
    }

    @Override // org.mortbay.component.LifeCycle
    public final void stop() throws Exception {
        synchronized (this._lock) {
            try {
                try {
                    if (this._state != 3 && this._state != 0) {
                        m71457e();
                        doStop();
                        Log.debug("stopped {}", this);
                        m71456d();
                    }
                } catch (Error e) {
                    m71453a(e);
                    throw e;
                } catch (Exception e2) {
                    m71453a(e2);
                    throw e2;
                }
            } finally {
            }
        }
    }
}
