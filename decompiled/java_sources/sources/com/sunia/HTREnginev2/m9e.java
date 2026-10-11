package com.sunia.HTREnginev2;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.customtabs.trusted.ITrustedWebActivityService;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.trusted.TrustedWebActivityServiceConnection;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class m9e implements ServiceConnection {

    /* renamed from: k */
    public static final int f77368k = 0;

    /* renamed from: l */
    public static final int f77369l = 1;

    /* renamed from: m */
    public static final int f77370m = 2;

    /* renamed from: n */
    public static final int f77371n = 3;

    /* renamed from: e */
    @NonNull
    public final Runnable f77372e;

    /* renamed from: f */
    @NonNull
    public final C14087a f77373f;

    /* renamed from: g */
    public int f77374g;

    /* renamed from: h */
    @Nullable
    public TrustedWebActivityServiceConnection f77375h;

    /* renamed from: i */
    @NonNull
    public List<CallbackToFutureAdapter.Completer<TrustedWebActivityServiceConnection>> f77376i;

    /* renamed from: j */
    @Nullable
    public Exception f77377j;

    /* renamed from: com.sunia.HTREnginev2.m9e$a */
    /* loaded from: classes3.dex */
    public static class C14087a {
        @NonNull
        /* renamed from: a */
        public TrustedWebActivityServiceConnection m55584a(ComponentName componentName, IBinder iBinder) {
            return new TrustedWebActivityServiceConnection(ITrustedWebActivityService.Stub.asInterface(iBinder), componentName);
        }
    }

    @MainThread
    public m9e(@NonNull Runnable runnable) {
        this(runnable, new C14087a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ Object m55581d(CallbackToFutureAdapter.Completer completer) throws Exception {
        int i = this.f77374g;
        if (i == 0) {
            this.f77376i.add(completer);
        } else {
            if (i != 1) {
                if (i == 2) {
                    throw new IllegalStateException("Service has been disconnected.");
                }
                if (i != 3) {
                    throw new IllegalStateException("Connection state is invalid");
                }
                throw this.f77377j;
            }
            TrustedWebActivityServiceConnection trustedWebActivityServiceConnection = this.f77375h;
            if (trustedWebActivityServiceConnection == null) {
                throw new IllegalStateException("ConnectionHolder state is incorrect.");
            }
            completer.set(trustedWebActivityServiceConnection);
        }
        return "ConnectionHolder, state = " + this.f77374g;
    }

    @MainThread
    /* renamed from: b */
    public void m55582b(@NonNull Exception exc) {
        Iterator<CallbackToFutureAdapter.Completer<TrustedWebActivityServiceConnection>> it2 = this.f77376i.iterator();
        while (it2.hasNext()) {
            it2.next().setException(exc);
        }
        this.f77376i.clear();
        this.f77372e.run();
        this.f77374g = 3;
        this.f77377j = exc;
    }

    @NonNull
    @MainThread
    /* renamed from: c */
    public ListenableFuture<TrustedWebActivityServiceConnection> m55583c() {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.sunia.HTREnginev2.l9e
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object m55581d;
                m55581d = m9e.this.m55581d(completer);
                return m55581d;
            }
        });
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f77375h = this.f77373f.m55584a(componentName, iBinder);
        Iterator<CallbackToFutureAdapter.Completer<TrustedWebActivityServiceConnection>> it2 = this.f77376i.iterator();
        while (it2.hasNext()) {
            it2.next().set(this.f77375h);
        }
        this.f77376i.clear();
        this.f77374g = 1;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public void onServiceDisconnected(ComponentName componentName) {
        this.f77375h = null;
        this.f77372e.run();
        this.f77374g = 2;
    }

    @MainThread
    public m9e(@NonNull Runnable runnable, @NonNull C14087a c14087a) {
        this.f77374g = 0;
        this.f77376i = new ArrayList();
        this.f77372e = runnable;
        this.f77373f = c14087a;
    }
}
