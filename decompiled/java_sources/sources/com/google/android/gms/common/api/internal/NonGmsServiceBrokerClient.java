package com.google.android.gms.common.api.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;

@KeepForSdk
/* loaded from: classes5.dex */
public final class NonGmsServiceBrokerClient implements Api.Client, ServiceConnection {

    /* renamed from: p */
    public static final String f29121p = "NonGmsServiceBrokerClient";

    /* renamed from: e */
    @Nullable
    public final String f29122e;

    /* renamed from: f */
    @Nullable
    public final String f29123f;

    /* renamed from: g */
    @Nullable
    public final ComponentName f29124g;

    /* renamed from: h */
    public final Context f29125h;

    /* renamed from: i */
    public final ConnectionCallbacks f29126i;

    /* renamed from: j */
    public final Handler f29127j;

    /* renamed from: k */
    public final OnConnectionFailedListener f29128k;

    /* renamed from: l */
    @Nullable
    public IBinder f29129l;

    /* renamed from: m */
    public boolean f29130m;

    /* renamed from: n */
    @Nullable
    public String f29131n;

    /* renamed from: o */
    @Nullable
    public String f29132o;

    @KeepForSdk
    public NonGmsServiceBrokerClient(@NonNull Context context, @NonNull Looper looper, @NonNull ComponentName componentName, @NonNull ConnectionCallbacks connectionCallbacks, @NonNull OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, null, null, componentName, connectionCallbacks, onConnectionFailedListener);
    }

    /* renamed from: a */
    public final /* synthetic */ void m22003a(IBinder iBinder) {
        this.f29130m = false;
        this.f29129l = iBinder;
        String.valueOf(iBinder);
        this.f29126i.onConnected(new Bundle());
    }

    @WorkerThread
    /* renamed from: b */
    public final void m22004b() {
        if (Thread.currentThread() != this.f29127j.getLooper().getThread()) {
            throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
        }
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @WorkerThread
    public final void connect(@NonNull BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        m22004b();
        String.valueOf(this.f29129l);
        if (isConnected()) {
            try {
                disconnect("connect() called when already connected");
            } catch (Exception unused) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.f29124g;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.f29122e).setAction(this.f29123f);
            }
            boolean bindService = this.f29125h.bindService(intent, this, GmsClientSupervisor.getDefaultBindFlags());
            this.f29130m = bindService;
            if (!bindService) {
                this.f29129l = null;
                this.f29128k.onConnectionFailed(new ConnectionResult(16));
            }
            String.valueOf(this.f29129l);
        } catch (SecurityException e) {
            this.f29130m = false;
            this.f29129l = null;
            throw e;
        }
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @WorkerThread
    public final void disconnect() {
        m22004b();
        String.valueOf(this.f29129l);
        try {
            this.f29125h.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        this.f29130m = false;
        this.f29129l = null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @NonNull
    public final Feature[] getAvailableFeatures() {
        return new Feature[0];
    }

    @Nullable
    @KeepForSdk
    @WorkerThread
    public IBinder getBinder() {
        m22004b();
        return this.f29129l;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @NonNull
    public final String getEndpointPackageName() {
        String str = this.f29122e;
        if (str != null) {
            return str;
        }
        Preconditions.checkNotNull(this.f29124g);
        return this.f29124g.getPackageName();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @Nullable
    public final String getLastDisconnectMessage() {
        return this.f29131n;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void getRemoteService(@Nullable IAccountAccessor iAccountAccessor, @Nullable Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @NonNull
    public final Feature[] getRequiredFeatures() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @NonNull
    public final Set<Scope> getScopesForConnectionlessNonSignIn() {
        return Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @Nullable
    public final IBinder getServiceBrokerBinder() {
        return null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @NonNull
    public final Intent getSignInIntent() {
        return new Intent();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @WorkerThread
    public final boolean isConnected() {
        m22004b();
        return this.f29129l != null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @WorkerThread
    public final boolean isConnecting() {
        m22004b();
        return this.f29130m;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull final IBinder iBinder) {
        this.f29127j.post(new Runnable() { // from class: com.google.android.gms.common.api.internal.zacg
            @Override // java.lang.Runnable
            public final void run() {
                NonGmsServiceBrokerClient.this.m22003a(iBinder);
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
        this.f29127j.post(new Runnable() { // from class: com.google.android.gms.common.api.internal.zacf
            @Override // java.lang.Runnable
            public final void run() {
                NonGmsServiceBrokerClient.this.zab();
            }
        });
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void onUserSignOut(@NonNull BaseGmsClient.SignOutCallbacks signOutCallbacks) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean providesSignIn() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresAccount() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresGooglePlayServices() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return false;
    }

    public final /* synthetic */ void zab() {
        this.f29130m = false;
        this.f29129l = null;
        this.f29126i.onConnectionSuspended(1);
    }

    public final void zac(@Nullable String str) {
        this.f29132o = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        if (r6 != null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NonGmsServiceBrokerClient(android.content.Context r2, android.os.Looper r3, @androidx.annotation.Nullable java.lang.String r4, @androidx.annotation.Nullable java.lang.String r5, @androidx.annotation.Nullable android.content.ComponentName r6, com.google.android.gms.common.api.internal.ConnectionCallbacks r7, com.google.android.gms.common.api.internal.OnConnectionFailedListener r8) {
        /*
            r1 = this;
            r1.<init>()
            r0 = 0
            r1.f29130m = r0
            r0 = 0
            r1.f29131n = r0
            r1.f29125h = r2
            com.google.android.gms.internal.base.zau r2 = new com.google.android.gms.internal.base.zau
            r2.<init>(r3)
            r1.f29127j = r2
            r1.f29126i = r7
            r1.f29128k = r8
            if (r4 == 0) goto L1e
            if (r5 == 0) goto L1e
            if (r6 != 0) goto L27
            r6 = r0
            goto L20
        L1e:
            if (r6 == 0) goto L27
        L20:
            r1.f29122e = r4
            r1.f29123f = r5
            r1.f29124g = r6
            return
        L27:
            java.lang.AssertionError r1 = new java.lang.AssertionError
            java.lang.String r2 = "Must specify either package or component, but not both"
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient.<init>(android.content.Context, android.os.Looper, java.lang.String, java.lang.String, android.content.ComponentName, com.google.android.gms.common.api.internal.ConnectionCallbacks, com.google.android.gms.common.api.internal.OnConnectionFailedListener):void");
    }

    @KeepForSdk
    public NonGmsServiceBrokerClient(@NonNull Context context, @NonNull Looper looper, @NonNull String str, @NonNull String str2, @NonNull ConnectionCallbacks connectionCallbacks, @NonNull OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, str, str2, null, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @WorkerThread
    public final void disconnect(@NonNull String str) {
        m22004b();
        this.f29131n = str;
        disconnect();
    }
}
