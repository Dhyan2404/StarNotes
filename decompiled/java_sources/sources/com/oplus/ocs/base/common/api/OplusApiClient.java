package com.oplus.ocs.base.common.api;

import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.oplus.ocs.base.common.AuthResult;

/* loaded from: classes9.dex */
public interface OplusApiClient {
    <T> void addQueue(TaskListenerHolder<T> taskListenerHolder);

    void connect();

    void disconnect();

    Api getApi();

    AuthResult getAuthResult();

    Looper getLooper();

    IBinder getRemoteService();

    int getRemoteVersion();

    boolean isConnected();

    boolean isConnecting();

    void setOnCapabilityAuthListener(InterfaceC13042i interfaceC13042i);

    void setOnClearListener(InterfaceC13043j interfaceC13043j);

    void setOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener, Handler handler);

    void setOnConnectionSucceedListener(OnConnectionSucceedListener onConnectionSucceedListener, Handler handler);
}
