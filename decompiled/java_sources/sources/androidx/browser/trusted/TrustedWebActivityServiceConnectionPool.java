package androidx.browser.trusted;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.trusted.TrustedWebActivityServiceConnectionPool;
import com.google.common.util.concurrent.ListenableFuture;
import com.sunia.HTREnginev2.m9e;
import com.sunia.HTREnginev2.ryg;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class TrustedWebActivityServiceConnectionPool {

    /* renamed from: c */
    public static final String f2465c = "TWAConnectionPool";

    /* renamed from: a */
    public final Context f2466a;

    /* renamed from: b */
    public final Map<Uri, m9e> f2467b = new HashMap();

    /* renamed from: androidx.browser.trusted.TrustedWebActivityServiceConnectionPool$a */
    /* loaded from: classes3.dex */
    public static class AsyncTaskC0369a extends AsyncTask<Void, Void, Exception> {

        /* renamed from: a */
        public final Context f2468a;

        /* renamed from: b */
        public final Intent f2469b;

        /* renamed from: c */
        public final m9e f2470c;

        public AsyncTaskC0369a(Context context, Intent intent, m9e m9eVar) {
            this.f2468a = context.getApplicationContext();
            this.f2469b = intent;
            this.f2470c = m9eVar;
        }

        @Override // android.os.AsyncTask
        @Nullable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Exception doInBackground(Void... voidArr) {
            try {
                if (this.f2468a.bindService(this.f2469b, this.f2470c, 4097)) {
                    return null;
                }
                this.f2468a.unbindService(this.f2470c);
                return new IllegalStateException("Could not bind to the service");
            } catch (SecurityException e) {
                Log.w(TrustedWebActivityServiceConnectionPool.f2465c, "SecurityException while binding.", e);
                return e;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Exception exc) {
            if (exc != null) {
                this.f2470c.m55582b(exc);
            }
        }
    }

    public TrustedWebActivityServiceConnectionPool(@NonNull Context context) {
        this.f2466a = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m1285c(Uri uri) {
        this.f2467b.remove(uri);
    }

    @NonNull
    public static TrustedWebActivityServiceConnectionPool create(@NonNull Context context) {
        return new TrustedWebActivityServiceConnectionPool(context);
    }

    @Nullable
    /* renamed from: b */
    public final Intent m1286b(Context context, Uri uri, Set<Token> set, boolean z) {
        if (set == null || set.size() == 0) {
            return null;
        }
        Intent intent = new Intent();
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        Iterator<ResolveInfo> it2 = context.getPackageManager().queryIntentActivities(intent, 65536).iterator();
        String str = null;
        while (it2.hasNext()) {
            String str2 = it2.next().activityInfo.packageName;
            Iterator<Token> it3 = set.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                if (it3.next().matches(str2, context.getPackageManager())) {
                    str = str2;
                    break;
                }
            }
        }
        if (str == null) {
            if (z) {
                Log.w(f2465c, "No TWA candidates for " + uri + " have been registered.");
            }
            return null;
        }
        Intent intent2 = new Intent();
        intent2.setPackage(str);
        intent2.setAction(TrustedWebActivityService.ACTION_TRUSTED_WEB_ACTIVITY_SERVICE);
        ResolveInfo resolveService = context.getPackageManager().resolveService(intent2, 131072);
        if (resolveService == null) {
            if (z) {
                Log.w(f2465c, "Could not find TWAService for " + str);
            }
            return null;
        }
        if (z) {
            Log.i(f2465c, "Found " + resolveService.serviceInfo.name + " to handle request for " + uri);
        }
        Intent intent3 = new Intent();
        intent3.setComponent(new ComponentName(str, resolveService.serviceInfo.name));
        return intent3;
    }

    @NonNull
    @MainThread
    public ListenableFuture<TrustedWebActivityServiceConnection> connect(@NonNull final Uri uri, @NonNull Set<Token> set, @NonNull Executor executor) {
        m9e m9eVar = this.f2467b.get(uri);
        if (m9eVar != null) {
            return m9eVar.m55583c();
        }
        Intent m1286b = m1286b(this.f2466a, uri, set, true);
        if (m1286b == null) {
            return ryg.m57043a(new IllegalArgumentException("No service exists for scope"));
        }
        m9e m9eVar2 = new m9e(new Runnable() { // from class: com.sunia.HTREnginev2.bon
            @Override // java.lang.Runnable
            public final void run() {
                TrustedWebActivityServiceConnectionPool.this.m1285c(uri);
            }
        });
        this.f2467b.put(uri, m9eVar2);
        new AsyncTaskC0369a(this.f2466a, m1286b, m9eVar2).executeOnExecutor(executor, new Void[0]);
        return m9eVar2.m55583c();
    }

    /* renamed from: d */
    public void m1287d() {
        Iterator<m9e> it2 = this.f2467b.values().iterator();
        while (it2.hasNext()) {
            this.f2466a.unbindService(it2.next());
        }
        this.f2467b.clear();
    }

    @MainThread
    public boolean serviceExistsForScope(@NonNull Uri uri, @NonNull Set<Token> set) {
        return (this.f2467b.get(uri) == null && m1286b(this.f2466a, uri, set, false) == null) ? false : true;
    }
}
