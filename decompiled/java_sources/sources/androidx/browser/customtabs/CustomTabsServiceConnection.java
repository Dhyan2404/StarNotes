package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.customtabs.ICustomTabsService;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* loaded from: classes3.dex */
public abstract class CustomTabsServiceConnection implements ServiceConnection {

    /* renamed from: e */
    @Nullable
    public Context f2403e;

    /* renamed from: androidx.browser.customtabs.CustomTabsServiceConnection$a */
    /* loaded from: classes3.dex */
    public class C0357a extends CustomTabsClient {
        public C0357a(ICustomTabsService iCustomTabsService, ComponentName componentName, Context context) {
            super(iCustomTabsService, componentName, context);
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: a */
    public Context m1252a() {
        return this.f2403e;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: b */
    public void m1253b(@NonNull Context context) {
        this.f2403e = context;
    }

    public abstract void onCustomTabsServiceConnected(@NonNull ComponentName componentName, @NonNull CustomTabsClient customTabsClient);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        if (this.f2403e == null) {
            throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
        }
        onCustomTabsServiceConnected(componentName, new C0357a(ICustomTabsService.Stub.asInterface(iBinder), componentName, this.f2403e));
    }
}
