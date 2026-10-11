package com.oplus.ocs.base.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.oplus.ocs.base.common.AuthResult;
import com.oplus.ocs.base.common.api.Api;
import com.oplus.ocs.base.internal.ClientSettings;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: com.oplus.ocs.base.common.api.m */
/* loaded from: classes9.dex */
public class C13046m implements OplusApiClient {

    /* renamed from: a */
    private static final String f63084a = "m";

    /* renamed from: b */
    private Lock f63085b = new ReentrantLock();

    /* renamed from: c */
    private Api f63086c;

    /* renamed from: d */
    private Api.Client f63087d;

    public C13046m(Context context, Api api, Api.ApiOptions apiOptions, ClientSettings clientSettings) {
        this.f63086c = api;
        this.f63087d = api.getClientBuilder().buildClient(context, Looper.getMainLooper(), clientSettings, apiOptions);
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public <T> void addQueue(TaskListenerHolder<T> taskListenerHolder) {
        Api.Client client = this.f63087d;
        if (client != null) {
            client.addQueue(taskListenerHolder);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.concurrent.locks.Lock] */
    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public void connect() {
        this.f63085b.lock();
        try {
            try {
                Api.Client client = this.f63087d;
                if (client != null) {
                    client.connect();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.f63085b.unlock();
        }
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public void disconnect() {
        this.f63085b.lock();
        try {
            try {
                Api.Client client = this.f63087d;
                if (client != null && client.isConnected()) {
                    this.f63087d.disconnect();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.f63085b.unlock();
        }
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public Api getApi() {
        return this.f63086c;
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public AuthResult getAuthResult() {
        Api.Client client = this.f63087d;
        if (client != null) {
            return client.getAuthResult();
        }
        return null;
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public Looper getLooper() {
        Api.Client client = this.f63087d;
        if (client != null) {
            return client.getLooper();
        }
        return null;
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public IBinder getRemoteService() {
        Api.Client client = this.f63087d;
        if (client != null) {
            return client.getRemoteService();
        }
        return null;
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public int getRemoteVersion() {
        Api.Client client = this.f63087d;
        if (client != null) {
            return client.getMinApkVersion();
        }
        return 0;
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public boolean isConnected() {
        Api.Client client = this.f63087d;
        if (client != null) {
            return client.isConnected();
        }
        return false;
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public boolean isConnecting() {
        Api.Client client = this.f63087d;
        if (client != null) {
            return client.isConnecting();
        }
        return false;
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public void setOnCapabilityAuthListener(InterfaceC13042i interfaceC13042i) {
        Api.Client client = this.f63087d;
        if (client != null) {
            client.setOnCapabilityAuthListener(interfaceC13042i);
        }
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public void setOnClearListener(InterfaceC13043j interfaceC13043j) {
        Api.Client client = this.f63087d;
        if (client != null) {
            client.setOnClearListener(interfaceC13043j);
        }
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public void setOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener, Handler handler) {
        Api.Client client = this.f63087d;
        if (client != null) {
            client.setOnConnectionFailedListener(onConnectionFailedListener, handler);
        }
    }

    @Override // com.oplus.ocs.base.common.api.OplusApiClient
    public void setOnConnectionSucceedListener(OnConnectionSucceedListener onConnectionSucceedListener, Handler handler) {
        Api.Client client = this.f63087d;
        if (client != null) {
            client.setOnConnectionSucceedListener(onConnectionSucceedListener, handler);
        }
    }
}
