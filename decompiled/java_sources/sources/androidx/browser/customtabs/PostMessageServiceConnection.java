package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.IPostMessageService;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* loaded from: classes3.dex */
public abstract class PostMessageServiceConnection implements PostMessageBackend, ServiceConnection {

    /* renamed from: j */
    public static final String f2420j = "PostMessageServConn";

    /* renamed from: e */
    public final Object f2421e = new Object();

    /* renamed from: f */
    public final ICustomTabsCallback f2422f;

    /* renamed from: g */
    @Nullable
    public IPostMessageService f2423g;

    /* renamed from: h */
    @Nullable
    public String f2424h;

    /* renamed from: i */
    public boolean f2425i;

    public PostMessageServiceConnection(@NonNull CustomTabsSessionToken customTabsSessionToken) {
        IBinder m1261a = customTabsSessionToken.m1261a();
        if (m1261a == null) {
            throw new IllegalArgumentException("Provided session must have binder.");
        }
        this.f2422f = ICustomTabsCallback.Stub.asInterface(m1261a);
    }

    /* renamed from: a */
    public final boolean m1264a() {
        return this.f2423g != null;
    }

    /* renamed from: b */
    public final boolean m1265b(@Nullable Bundle bundle) {
        if (this.f2423g == null) {
            return false;
        }
        synchronized (this.f2421e) {
            try {
                try {
                    this.f2423g.onMessageChannelReady(this.f2422f, bundle);
                } catch (RemoteException unused) {
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    public boolean bindSessionToPostMessageService(@NonNull Context context, @NonNull String str) {
        Intent intent = new Intent();
        intent.setClassName(str, PostMessageService.class.getName());
        boolean bindService = context.bindService(intent, this, 1);
        if (!bindService) {
            Log.w(f2420j, "Could not bind to PostMessageService in client.");
        }
        return bindService;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void cleanup(@NonNull Context context) {
        if (m1264a()) {
            unbindFromContext(context);
        }
    }

    public final boolean notifyMessageChannelReady(@Nullable Bundle bundle) {
        this.f2425i = true;
        return m1265b(bundle);
    }

    @Override // androidx.browser.customtabs.PostMessageBackend
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onDisconnectChannel(@NonNull Context context) {
        unbindFromContext(context);
    }

    @Override // androidx.browser.customtabs.PostMessageBackend
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final boolean onNotifyMessageChannelReady(@Nullable Bundle bundle) {
        return notifyMessageChannelReady(bundle);
    }

    @Override // androidx.browser.customtabs.PostMessageBackend
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final boolean onPostMessage(@NonNull String str, @Nullable Bundle bundle) {
        return postMessage(str, bundle);
    }

    public void onPostMessageServiceConnected() {
        if (this.f2425i) {
            m1265b(null);
        }
    }

    public void onPostMessageServiceDisconnected() {
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        this.f2423g = IPostMessageService.Stub.asInterface(iBinder);
        onPostMessageServiceConnected();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
        this.f2423g = null;
        onPostMessageServiceDisconnected();
    }

    public final boolean postMessage(@NonNull String str, @Nullable Bundle bundle) {
        if (this.f2423g == null) {
            return false;
        }
        synchronized (this.f2421e) {
            try {
                try {
                    this.f2423g.onPostMessage(this.f2422f, str, bundle);
                } catch (RemoteException unused) {
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setPackageName(@NonNull String str) {
        this.f2424h = str;
    }

    public void unbindFromContext(@NonNull Context context) {
        if (m1264a()) {
            context.unbindService(this);
            this.f2423g = null;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean bindSessionToPostMessageService(@NonNull Context context) {
        String str = this.f2424h;
        if (str != null) {
            return bindSessionToPostMessageService(context, str);
        }
        throw new IllegalStateException("setPackageName must be called before bindSessionToPostMessageService.");
    }
}
