package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;

/* loaded from: classes3.dex */
public class CustomTabsSessionToken {

    /* renamed from: d */
    public static final String f2413d = "CustomTabsSessionToken";

    /* renamed from: a */
    @Nullable
    public final ICustomTabsCallback f2414a;

    /* renamed from: b */
    @Nullable
    public final PendingIntent f2415b;

    /* renamed from: c */
    @Nullable
    public final CustomTabsCallback f2416c;

    /* renamed from: androidx.browser.customtabs.CustomTabsSessionToken$a */
    /* loaded from: classes3.dex */
    public class C0359a extends CustomTabsCallback {
        public C0359a() {
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void extraCallback(@NonNull String str, @Nullable Bundle bundle) {
            try {
                CustomTabsSessionToken.this.f2414a.extraCallback(str, bundle);
            } catch (RemoteException unused) {
                Log.e(CustomTabsSessionToken.f2413d, "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        @NonNull
        public Bundle extraCallbackWithResult(@NonNull String str, @Nullable Bundle bundle) {
            try {
                return CustomTabsSessionToken.this.f2414a.extraCallbackWithResult(str, bundle);
            } catch (RemoteException unused) {
                Log.e(CustomTabsSessionToken.f2413d, "RemoteException during ICustomTabsCallback transaction");
                return null;
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onMessageChannelReady(@Nullable Bundle bundle) {
            try {
                CustomTabsSessionToken.this.f2414a.onMessageChannelReady(bundle);
            } catch (RemoteException unused) {
                Log.e(CustomTabsSessionToken.f2413d, "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i, @Nullable Bundle bundle) {
            try {
                CustomTabsSessionToken.this.f2414a.onNavigationEvent(i, bundle);
            } catch (RemoteException unused) {
                Log.e(CustomTabsSessionToken.f2413d, "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onPostMessage(@NonNull String str, @Nullable Bundle bundle) {
            try {
                CustomTabsSessionToken.this.f2414a.onPostMessage(str, bundle);
            } catch (RemoteException unused) {
                Log.e(CustomTabsSessionToken.f2413d, "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onRelationshipValidationResult(int i, @NonNull Uri uri, boolean z, @Nullable Bundle bundle) {
            try {
                CustomTabsSessionToken.this.f2414a.onRelationshipValidationResult(i, uri, z, bundle);
            } catch (RemoteException unused) {
                Log.e(CustomTabsSessionToken.f2413d, "RemoteException during ICustomTabsCallback transaction");
            }
        }
    }

    /* renamed from: androidx.browser.customtabs.CustomTabsSessionToken$b */
    /* loaded from: classes3.dex */
    public static class BinderC0360b extends ICustomTabsCallback.Stub {
        @Override // android.support.customtabs.ICustomTabsCallback.Stub, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void extraCallback(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public Bundle extraCallbackWithResult(String str, Bundle bundle) {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onMessageChannelReady(Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onPostMessage(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
        }
    }

    public CustomTabsSessionToken(@Nullable ICustomTabsCallback iCustomTabsCallback, @Nullable PendingIntent pendingIntent) {
        if (iCustomTabsCallback == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.f2414a = iCustomTabsCallback;
        this.f2415b = pendingIntent;
        this.f2416c = iCustomTabsCallback == null ? null : new C0359a();
    }

    @NonNull
    public static CustomTabsSessionToken createMockSessionTokenForTesting() {
        return new CustomTabsSessionToken(new BinderC0360b(), null);
    }

    @Nullable
    public static CustomTabsSessionToken getSessionTokenFromIntent(@NonNull Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return null;
        }
        IBinder binder = BundleCompat.getBinder(extras, CustomTabsIntent.EXTRA_SESSION);
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra(CustomTabsIntent.EXTRA_SESSION_ID);
        if (binder == null && pendingIntent == null) {
            return null;
        }
        return new CustomTabsSessionToken(binder != null ? ICustomTabsCallback.Stub.asInterface(binder) : null, pendingIntent);
    }

    @Nullable
    /* renamed from: a */
    public IBinder m1261a() {
        ICustomTabsCallback iCustomTabsCallback = this.f2414a;
        if (iCustomTabsCallback == null) {
            return null;
        }
        return iCustomTabsCallback.asBinder();
    }

    /* renamed from: b */
    public final IBinder m1262b() {
        ICustomTabsCallback iCustomTabsCallback = this.f2414a;
        if (iCustomTabsCallback != null) {
            return iCustomTabsCallback.asBinder();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }

    @Nullable
    /* renamed from: c */
    public PendingIntent m1263c() {
        return this.f2415b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CustomTabsSessionToken)) {
            return false;
        }
        CustomTabsSessionToken customTabsSessionToken = (CustomTabsSessionToken) obj;
        PendingIntent m1263c = customTabsSessionToken.m1263c();
        PendingIntent pendingIntent = this.f2415b;
        if ((pendingIntent == null) != (m1263c == null)) {
            return false;
        }
        return pendingIntent != null ? pendingIntent.equals(m1263c) : m1262b().equals(customTabsSessionToken.m1262b());
    }

    @Nullable
    public CustomTabsCallback getCallback() {
        return this.f2416c;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean hasCallback() {
        return this.f2414a != null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean hasId() {
        return this.f2415b != null;
    }

    public int hashCode() {
        PendingIntent pendingIntent = this.f2415b;
        return pendingIntent != null ? pendingIntent.hashCode() : m1262b().hashCode();
    }

    public boolean isAssociatedWith(@NonNull CustomTabsSession customTabsSession) {
        return customTabsSession.m1256c().equals(this.f2414a);
    }
}
