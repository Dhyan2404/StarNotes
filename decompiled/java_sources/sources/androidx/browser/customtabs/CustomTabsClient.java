package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.browser.customtabs.CustomTabsSession;
import com.onyx.android.sdk.base.common.CommonConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CustomTabsClient {

    /* renamed from: d */
    public static final String f2363d = "CustomTabsClient";

    /* renamed from: a */
    public final ICustomTabsService f2364a;

    /* renamed from: b */
    public final ComponentName f2365b;

    /* renamed from: c */
    public final Context f2366c;

    /* renamed from: androidx.browser.customtabs.CustomTabsClient$a */
    /* loaded from: classes3.dex */
    public class C0354a extends CustomTabsServiceConnection {

        /* renamed from: f */
        public final /* synthetic */ Context f2367f;

        public C0354a(Context context) {
            this.f2367f = context;
        }

        @Override // androidx.browser.customtabs.CustomTabsServiceConnection
        public final void onCustomTabsServiceConnected(@NonNull ComponentName componentName, @NonNull CustomTabsClient customTabsClient) {
            customTabsClient.warmup(0L);
            this.f2367f.unbindService(this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: androidx.browser.customtabs.CustomTabsClient$b */
    /* loaded from: classes3.dex */
    public class BinderC0355b extends ICustomTabsCallback.Stub {

        /* renamed from: h */
        public Handler f2368h = new Handler(Looper.getMainLooper());

        /* renamed from: i */
        public final /* synthetic */ CustomTabsCallback f2369i;

        /* renamed from: androidx.browser.customtabs.CustomTabsClient$b$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ int f2371e;

            /* renamed from: f */
            public final /* synthetic */ Bundle f2372f;

            public a(int i, Bundle bundle) {
                this.f2371e = i;
                this.f2372f = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderC0355b.this.f2369i.onNavigationEvent(this.f2371e, this.f2372f);
            }
        }

        /* renamed from: androidx.browser.customtabs.CustomTabsClient$b$b */
        /* loaded from: classes3.dex */
        public class b implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ String f2374e;

            /* renamed from: f */
            public final /* synthetic */ Bundle f2375f;

            public b(String str, Bundle bundle) {
                this.f2374e = str;
                this.f2375f = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderC0355b.this.f2369i.extraCallback(this.f2374e, this.f2375f);
            }
        }

        /* renamed from: androidx.browser.customtabs.CustomTabsClient$b$c */
        /* loaded from: classes3.dex */
        public class c implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ Bundle f2377e;

            public c(Bundle bundle) {
                this.f2377e = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderC0355b.this.f2369i.onMessageChannelReady(this.f2377e);
            }
        }

        /* renamed from: androidx.browser.customtabs.CustomTabsClient$b$d */
        /* loaded from: classes3.dex */
        public class d implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ String f2379e;

            /* renamed from: f */
            public final /* synthetic */ Bundle f2380f;

            public d(String str, Bundle bundle) {
                this.f2379e = str;
                this.f2380f = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderC0355b.this.f2369i.onPostMessage(this.f2379e, this.f2380f);
            }
        }

        /* renamed from: androidx.browser.customtabs.CustomTabsClient$b$e */
        /* loaded from: classes3.dex */
        public class e implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ int f2382e;

            /* renamed from: f */
            public final /* synthetic */ Uri f2383f;

            /* renamed from: g */
            public final /* synthetic */ boolean f2384g;

            /* renamed from: h */
            public final /* synthetic */ Bundle f2385h;

            public e(int i, Uri uri, boolean z, Bundle bundle) {
                this.f2382e = i;
                this.f2383f = uri;
                this.f2384g = z;
                this.f2385h = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderC0355b.this.f2369i.onRelationshipValidationResult(this.f2382e, this.f2383f, this.f2384g, this.f2385h);
            }
        }

        public BinderC0355b(CustomTabsCallback customTabsCallback) {
            this.f2369i = customTabsCallback;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void extraCallback(String str, Bundle bundle) throws RemoteException {
            if (this.f2369i == null) {
                return;
            }
            this.f2368h.post(new b(str, bundle));
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public Bundle extraCallbackWithResult(@NonNull String str, @Nullable Bundle bundle) throws RemoteException {
            CustomTabsCallback customTabsCallback = this.f2369i;
            if (customTabsCallback == null) {
                return null;
            }
            return customTabsCallback.extraCallbackWithResult(str, bundle);
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onMessageChannelReady(Bundle bundle) throws RemoteException {
            if (this.f2369i == null) {
                return;
            }
            this.f2368h.post(new c(bundle));
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) {
            if (this.f2369i == null) {
                return;
            }
            this.f2368h.post(new a(i, bundle));
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onPostMessage(String str, Bundle bundle) throws RemoteException {
            if (this.f2369i == null) {
                return;
            }
            this.f2368h.post(new d(str, bundle));
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, @Nullable Bundle bundle) throws RemoteException {
            if (this.f2369i == null) {
                return;
            }
            this.f2368h.post(new e(i, uri, z, bundle));
        }
    }

    public CustomTabsClient(ICustomTabsService iCustomTabsService, ComponentName componentName, Context context) {
        this.f2364a = iCustomTabsService;
        this.f2365b = componentName;
        this.f2366c = context;
    }

    /* renamed from: b */
    public static PendingIntent m1244b(Context context, int i) {
        return PendingIntent.getActivity(context, i, new Intent(), 67108864);
    }

    public static boolean bindCustomTabsService(@NonNull Context context, @Nullable String str, @NonNull CustomTabsServiceConnection customTabsServiceConnection) {
        customTabsServiceConnection.m1253b(context.getApplicationContext());
        Intent intent = new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, customTabsServiceConnection, 33);
    }

    public static boolean bindCustomTabsServicePreservePriority(@NonNull Context context, @Nullable String str, @NonNull CustomTabsServiceConnection customTabsServiceConnection) {
        customTabsServiceConnection.m1253b(context.getApplicationContext());
        Intent intent = new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, customTabsServiceConnection, 1);
    }

    public static boolean connectAndInitialize(@NonNull Context context, @NonNull String str) {
        if (str == null) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            return bindCustomTabsService(applicationContext, str, new C0354a(applicationContext));
        } catch (SecurityException unused) {
            return false;
        }
    }

    @Nullable
    public static String getPackageName(@NonNull Context context, @Nullable List<String> list) {
        return getPackageName(context, list, false);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static CustomTabsSession.PendingSession newPendingSession(@NonNull Context context, @Nullable CustomTabsCallback customTabsCallback, int i) {
        return new CustomTabsSession.PendingSession(customTabsCallback, m1244b(context, i));
    }

    /* renamed from: a */
    public final ICustomTabsCallback.Stub m1245a(@Nullable CustomTabsCallback customTabsCallback) {
        return new BinderC0355b(customTabsCallback);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public CustomTabsSession attachSession(@NonNull CustomTabsSession.PendingSession pendingSession) {
        return m1246c(pendingSession.m1259a(), pendingSession.m1260b());
    }

    @Nullable
    /* renamed from: c */
    public final CustomTabsSession m1246c(@Nullable CustomTabsCallback customTabsCallback, @Nullable PendingIntent pendingIntent) {
        boolean newSession;
        ICustomTabsCallback.Stub m1245a = m1245a(customTabsCallback);
        try {
            if (pendingIntent != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(CustomTabsIntent.EXTRA_SESSION_ID, pendingIntent);
                newSession = this.f2364a.newSessionWithExtras(m1245a, bundle);
            } else {
                newSession = this.f2364a.newSession(m1245a);
            }
            if (newSession) {
                return new CustomTabsSession(this.f2364a, m1245a, this.f2365b, pendingIntent);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Nullable
    public Bundle extraCommand(@NonNull String str, @Nullable Bundle bundle) {
        try {
            return this.f2364a.extraCommand(str, bundle);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Nullable
    public CustomTabsSession newSession(@Nullable CustomTabsCallback customTabsCallback) {
        return m1246c(customTabsCallback, null);
    }

    public boolean warmup(long j) {
        try {
            return this.f2364a.warmup(j);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Nullable
    public static String getPackageName(@NonNull Context context, @Nullable List<String> list, boolean z) {
        ResolveInfo resolveActivity;
        PackageManager packageManager = context.getPackageManager();
        List<String> arrayList = list == null ? new ArrayList<>() : list;
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(CommonConstant.SCHEME_HTTP));
        if (!z && (resolveActivity = packageManager.resolveActivity(intent, 0)) != null) {
            String str = resolveActivity.activityInfo.packageName;
            ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
            arrayList2.add(str);
            if (list != null) {
                arrayList2.addAll(list);
            }
            arrayList = arrayList2;
        }
        Intent intent2 = new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
        for (String str2 : arrayList) {
            intent2.setPackage(str2);
            if (packageManager.resolveService(intent2, 0) != null) {
                return str2;
            }
        }
        if (Build.VERSION.SDK_INT < 30) {
            return null;
        }
        Log.w(f2363d, "Unable to find any Custom Tabs packages, you may need to add a <queries> element to your manifest. See the docs for CustomTabsClient#getPackageName.");
        return null;
    }

    @Nullable
    public CustomTabsSession newSession(@Nullable CustomTabsCallback customTabsCallback, int i) {
        return m1246c(customTabsCallback, m1244b(this.f2366c, i));
    }
}
