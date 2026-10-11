package com.oplus.ocs.base.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import com.oplus.ocs.base.common.AuthResult;
import com.oplus.ocs.base.common.CapabilityInfo;
import com.oplus.ocs.base.common.ConnectionResult;
import com.oplus.ocs.base.common.api.Api;
import com.oplus.ocs.base.utils.C13071a;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes9.dex */
public abstract class BaseClient<T extends IBinder> implements Api.Client, InterfaceC13044k {

    /* renamed from: a */
    static final String f62990a = "BaseClient";

    /* renamed from: c */
    CapabilityInfo f62992c;

    /* renamed from: e */
    InterfaceC13043j f62994e;

    /* renamed from: f */
    InterfaceC13042i f62995f;

    /* renamed from: h */
    InterfaceC13038e f62997h;

    /* renamed from: i */
    private Context f62998i;

    /* renamed from: j */
    private Looper f62999j;

    /* renamed from: k */
    private HandlerC13036c f63000k;

    /* renamed from: b */
    volatile int f62991b = 4;

    /* renamed from: d */
    Queue<TaskListenerHolder> f62993d = new LinkedList();

    /* renamed from: g */
    HandlerC13037d f62996g = null;

    public BaseClient(Context context, Looper looper) {
        if (context == null) {
            throw new NullPointerException("null reference");
        }
        this.f62998i = context;
        if (looper == null) {
            throw new NullPointerException("Looper must not be null");
        }
        this.f62999j = looper;
        this.f63000k = HandlerC13036c.m52177a(this);
        C13035b.m52174a();
        this.f62997h = C13035b.m52176a(this.f62998i, getClientName(), this.f63000k, this);
    }

    /* renamed from: a */
    private void m52151a() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    /* renamed from: b */
    public static CapabilityInfo m52153b(int i) {
        return new CapabilityInfo(new ArrayList(), 1, new AuthResult("", 0, 0, i, new byte[0]));
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public <T> void addQueue(TaskListenerHolder<T> taskListenerHolder) {
        if (isConnected()) {
            m52156a(taskListenerHolder);
            return;
        }
        if (this.f62991b == 13) {
            m52152a(taskListenerHolder, true);
        } else {
            m52152a(taskListenerHolder, false);
        }
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public void connect() {
        InterfaceC13038e interfaceC13038e = this.f62997h;
        if (interfaceC13038e != null) {
            interfaceC13038e.mo52170a();
            return;
        }
        this.f62992c = m52153b(3);
        m52154a(3);
        InterfaceC13043j interfaceC13043j = this.f62994e;
        if (interfaceC13043j != null) {
            interfaceC13043j.mo52187a();
        }
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public void disconnect() {
        this.f62997h.mo52172c();
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public AuthResult getAuthResult() {
        return this.f62992c.getAuthResult();
    }

    public abstract String getClientName();

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public Looper getLooper() {
        return this.f62999j;
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public int getMinApkVersion() {
        m52151a();
        return this.f62992c.getVersion();
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public T getRemoteService() {
        m52151a();
        return (T) this.f62992c.getBinder();
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public boolean isConnected() {
        return this.f62991b == 1;
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public boolean isConnecting() {
        return this.f62991b == 2;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13044k
    public void onStateChange(int i) {
        this.f62991b = i;
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public void setOnCapabilityAuthListener(InterfaceC13042i interfaceC13042i) {
        this.f62995f = interfaceC13042i;
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public void setOnClearListener(InterfaceC13043j interfaceC13043j) {
        this.f62994e = interfaceC13043j;
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public void setOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener, Handler handler) {
        CapabilityInfo capabilityInfo = this.f62992c;
        if (capabilityInfo == null || capabilityInfo.getAuthResult() == null || this.f62992c.getAuthResult().getErrrorCode() == 1001) {
            m52155a(handler);
            this.f62996g.f63040b = onConnectionFailedListener;
        } else if (onConnectionFailedListener != null) {
            onConnectionFailedListener.onConnectionFailed(new ConnectionResult(this.f62992c.getAuthResult().getErrrorCode()));
        }
    }

    @Override // com.oplus.ocs.base.common.api.Api.Client
    public void setOnConnectionSucceedListener(final OnConnectionSucceedListener onConnectionSucceedListener, Handler handler) {
        CapabilityInfo capabilityInfo = this.f62992c;
        if (capabilityInfo == null || capabilityInfo.getAuthResult() == null || this.f62992c.getAuthResult().getErrrorCode() != 1001) {
            m52155a(handler);
            this.f62996g.f63039a = onConnectionSucceedListener;
        } else if (onConnectionSucceedListener != null) {
            if (handler == null) {
                onConnectionSucceedListener.onConnectionSucceed();
            } else {
                handler.post(new Runnable() { // from class: com.oplus.ocs.base.common.api.BaseClient.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        onConnectionSucceedListener.onConnectionSucceed();
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m52155a(Handler handler) {
        HandlerC13037d handlerC13037d = this.f62996g;
        if (handlerC13037d == null) {
            if (handler == null) {
                this.f62996g = new HandlerC13037d(this.f62999j, this.f63000k);
                return;
            } else {
                this.f62996g = new HandlerC13037d(handler.getLooper(), this.f63000k);
                return;
            }
        }
        if (handler == null || handlerC13037d.getLooper() == handler.getLooper()) {
            return;
        }
        C13071a.m52226a(f62990a, "the new handler looper is not the same as the old one.");
    }

    /* renamed from: a */
    private void m52152a(TaskListenerHolder taskListenerHolder, boolean z) {
        this.f62993d.add(taskListenerHolder);
        if (z) {
            connect();
        }
    }

    /* renamed from: a */
    public final void m52156a(TaskListenerHolder taskListenerHolder) {
        CapabilityInfo capabilityInfo = this.f62992c;
        if (capabilityInfo == null || capabilityInfo.getAuthResult() == null) {
            return;
        }
        if (this.f62992c.getAuthResult().getErrrorCode() == 1001) {
            taskListenerHolder.setErrorCode(0);
        } else {
            taskListenerHolder.setErrorCode(this.f62992c.getAuthResult().getErrrorCode());
        }
    }

    /* renamed from: a */
    public final void m52154a(int i) {
        C13071a.m52226a(f62990a, "handleAuthenticateFailure");
        if (this.f62996g == null) {
            m52155a((Handler) null);
        }
        Message obtain = Message.obtain();
        obtain.what = 101;
        obtain.arg1 = i;
        this.f62996g.sendMessage(obtain);
    }
}
