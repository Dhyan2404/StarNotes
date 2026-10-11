package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.sunia.HTREnginev2.krp;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes5.dex */
public abstract class GmsClientSupervisor {

    /* renamed from: a */
    public static final Object f29354a = new Object();

    /* renamed from: b */
    @Nullable
    public static krp f29355b;

    /* renamed from: c */
    @Nullable
    @VisibleForTesting
    public static HandlerThread f29356c;

    /* renamed from: d */
    @Nullable
    public static Executor f29357d;

    /* renamed from: e */
    public static boolean f29358e;

    @KeepForSdk
    public static int getDefaultBindFlags() {
        return 4225;
    }

    @NonNull
    @KeepForSdk
    public static GmsClientSupervisor getInstance(@NonNull Context context) {
        synchronized (f29354a) {
            if (f29355b == null) {
                f29355b = new krp(context.getApplicationContext(), f29358e ? getOrStartHandlerThread().getLooper() : context.getMainLooper(), f29357d);
            }
        }
        return f29355b;
    }

    @NonNull
    @KeepForSdk
    public static HandlerThread getOrStartHandlerThread() {
        synchronized (f29354a) {
            HandlerThread handlerThread = f29356c;
            if (handlerThread != null) {
                return handlerThread;
            }
            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
            f29356c = handlerThread2;
            handlerThread2.start();
            return f29356c;
        }
    }

    @KeepForSdk
    public static void setDefaultBindExecutor(@Nullable Executor executor) {
        synchronized (f29354a) {
            krp krpVar = f29355b;
            if (krpVar != null) {
                krpVar.m55313f(executor);
            }
            f29357d = executor;
        }
    }

    @KeepForSdk
    public static void setUseHandlerThreadForCallbacks() {
        synchronized (f29354a) {
            krp krpVar = f29355b;
            if (krpVar != null && !f29358e) {
                krpVar.m55314g(getOrStartHandlerThread().getLooper());
            }
            f29358e = true;
        }
    }

    @KeepForSdk
    public boolean bindService(@NonNull ComponentName componentName, @NonNull ServiceConnection serviceConnection, @NonNull String str) {
        return zzc(new zzo(componentName, 4225), serviceConnection, str, null);
    }

    @KeepForSdk
    public void unbindService(@NonNull ComponentName componentName, @NonNull ServiceConnection serviceConnection, @NonNull String str) {
        zza(new zzo(componentName, 4225), serviceConnection, str);
    }

    public abstract void zza(zzo zzoVar, ServiceConnection serviceConnection, String str);

    public final void zzb(@NonNull String str, @NonNull String str2, int i, @NonNull ServiceConnection serviceConnection, @NonNull String str3, boolean z) {
        zza(new zzo(str, str2, 4225, z), serviceConnection, str3);
    }

    public abstract boolean zzc(zzo zzoVar, ServiceConnection serviceConnection, String str, @Nullable Executor executor);

    @KeepForSdk
    public boolean bindService(@NonNull ComponentName componentName, @NonNull ServiceConnection serviceConnection, @NonNull String str, @Nullable Executor executor) {
        return zzc(new zzo(componentName, 4225), serviceConnection, str, executor);
    }

    @KeepForSdk
    public void unbindService(@NonNull String str, @NonNull ServiceConnection serviceConnection, @NonNull String str2) {
        zza(new zzo(str, 4225, false), serviceConnection, str2);
    }

    @NonNull
    @KeepForSdk
    public static HandlerThread getOrStartHandlerThread(int i) {
        synchronized (f29354a) {
            HandlerThread handlerThread = f29356c;
            if (handlerThread != null) {
                return handlerThread;
            }
            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", i);
            f29356c = handlerThread2;
            handlerThread2.start();
            return f29356c;
        }
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public boolean bindService(@NonNull String str, @NonNull ServiceConnection serviceConnection, @NonNull String str2) {
        return zzc(new zzo(str, 4225, false), serviceConnection, str2, null);
    }
}
