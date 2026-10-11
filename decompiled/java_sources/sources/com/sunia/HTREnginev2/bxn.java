package com.sunia.HTREnginev2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService;
import androidx.core.content.PackageManagerCompat;
import androidx.core.content.UnusedAppRestrictionsBackportService;

/* loaded from: classes3.dex */
public class bxn implements ServiceConnection {

    /* renamed from: f */
    @NonNull
    public ResolvableFuture<Integer> f66228f;

    /* renamed from: g */
    public final Context f66229g;

    /* renamed from: e */
    @Nullable
    @VisibleForTesting
    public IUnusedAppRestrictionsBackportService f66227e = null;

    /* renamed from: h */
    public boolean f66230h = false;

    /* renamed from: com.sunia.HTREnginev2.bxn$a */
    /* loaded from: classes3.dex */
    public class BinderC13542a extends IUnusedAppRestrictionsBackportCallback.Stub {
        public BinderC13542a() {
        }

        @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
        public void onIsPermissionRevocationEnabledForAppResult(boolean z, boolean z2) throws RemoteException {
            if (!z) {
                bxn.this.f66228f.set(0);
                Log.e(PackageManagerCompat.LOG_TAG, "Unable to retrieve the permission revocation setting from the backport");
            } else if (z2) {
                bxn.this.f66228f.set(3);
            } else {
                bxn.this.f66228f.set(2);
            }
        }
    }

    public bxn(@NonNull Context context) {
        this.f66229g = context;
    }

    /* renamed from: a */
    public void m53350a(@NonNull ResolvableFuture<Integer> resolvableFuture) {
        if (this.f66230h) {
            throw new IllegalStateException("Each UnusedAppRestrictionsBackportServiceConnection can only be bound once.");
        }
        this.f66230h = true;
        this.f66228f = resolvableFuture;
        this.f66229g.bindService(new Intent(UnusedAppRestrictionsBackportService.ACTION_UNUSED_APP_RESTRICTIONS_BACKPORT_CONNECTION).setPackage(PackageManagerCompat.getPermissionRevocationVerifierApp(this.f66229g.getPackageManager())), this, 1);
    }

    /* renamed from: b */
    public void m53351b() {
        if (!this.f66230h) {
            throw new IllegalStateException("bindService must be called before unbind");
        }
        this.f66230h = false;
        this.f66229g.unbindService(this);
    }

    /* renamed from: c */
    public final IUnusedAppRestrictionsBackportCallback m53352c() {
        return new BinderC13542a();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        IUnusedAppRestrictionsBackportService asInterface = IUnusedAppRestrictionsBackportService.Stub.asInterface(iBinder);
        this.f66227e = asInterface;
        try {
            asInterface.isPermissionRevocationEnabledForApp(m53352c());
        } catch (RemoteException unused) {
            this.f66228f.set(0);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f66227e = null;
    }
}
