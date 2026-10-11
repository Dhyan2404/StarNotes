package androidx.asynclayoutinflater.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.core.util.Pools;
import java.util.concurrent.ArrayBlockingQueue;

/* loaded from: classes3.dex */
public final class AsyncLayoutInflater {

    /* renamed from: e */
    public static final String f2156e = "AsyncLayoutInflater";

    /* renamed from: a */
    public LayoutInflater f2157a;

    /* renamed from: d */
    public Handler.Callback f2160d = new C0314a();

    /* renamed from: b */
    public Handler f2158b = new Handler(this.f2160d);

    /* renamed from: c */
    public C0317d f2159c = C0317d.m990b();

    /* loaded from: classes3.dex */
    public interface OnInflateFinishedListener {
        void onInflateFinished(@NonNull View view, @LayoutRes int i, @Nullable ViewGroup viewGroup);
    }

    /* renamed from: androidx.asynclayoutinflater.view.AsyncLayoutInflater$a */
    /* loaded from: classes3.dex */
    public class C0314a implements Handler.Callback {
        public C0314a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            C0316c c0316c = (C0316c) message.obj;
            if (c0316c.f2166d == null) {
                c0316c.f2166d = AsyncLayoutInflater.this.f2157a.inflate(c0316c.f2165c, c0316c.f2164b, false);
            }
            c0316c.f2167e.onInflateFinished(c0316c.f2166d, c0316c.f2165c, c0316c.f2164b);
            AsyncLayoutInflater.this.f2159c.m993d(c0316c);
            return true;
        }
    }

    /* renamed from: androidx.asynclayoutinflater.view.AsyncLayoutInflater$b */
    /* loaded from: classes3.dex */
    public static class C0315b extends LayoutInflater {

        /* renamed from: a */
        public static final String[] f2162a = {"android.widget.", "android.webkit.", "android.app."};

        public C0315b(Context context) {
            super(context);
        }

        @Override // android.view.LayoutInflater
        public LayoutInflater cloneInContext(Context context) {
            return new C0315b(context);
        }

        @Override // android.view.LayoutInflater
        public View onCreateView(String str, AttributeSet attributeSet) throws ClassNotFoundException {
            View createView;
            for (String str2 : f2162a) {
                try {
                    createView = createView(str, str2, attributeSet);
                } catch (ClassNotFoundException unused) {
                }
                if (createView != null) {
                    return createView;
                }
            }
            return super.onCreateView(str, attributeSet);
        }
    }

    /* renamed from: androidx.asynclayoutinflater.view.AsyncLayoutInflater$c */
    /* loaded from: classes3.dex */
    public static class C0316c {

        /* renamed from: a */
        public AsyncLayoutInflater f2163a;

        /* renamed from: b */
        public ViewGroup f2164b;

        /* renamed from: c */
        public int f2165c;

        /* renamed from: d */
        public View f2166d;

        /* renamed from: e */
        public OnInflateFinishedListener f2167e;
    }

    /* renamed from: androidx.asynclayoutinflater.view.AsyncLayoutInflater$d */
    /* loaded from: classes3.dex */
    public static class C0317d extends Thread {

        /* renamed from: g */
        public static final C0317d f2168g;

        /* renamed from: e */
        public ArrayBlockingQueue<C0316c> f2169e = new ArrayBlockingQueue<>(10);

        /* renamed from: f */
        public Pools.SynchronizedPool<C0316c> f2170f = new Pools.SynchronizedPool<>(10);

        static {
            C0317d c0317d = new C0317d();
            f2168g = c0317d;
            c0317d.start();
        }

        /* renamed from: b */
        public static C0317d m990b() {
            return f2168g;
        }

        /* renamed from: a */
        public void m991a(C0316c c0316c) {
            try {
                this.f2169e.put(c0316c);
            } catch (InterruptedException e) {
                throw new RuntimeException("Failed to enqueue async inflate request", e);
            }
        }

        /* renamed from: c */
        public C0316c m992c() {
            C0316c acquire = this.f2170f.acquire();
            return acquire == null ? new C0316c() : acquire;
        }

        /* renamed from: d */
        public void m993d(C0316c c0316c) {
            c0316c.f2167e = null;
            c0316c.f2163a = null;
            c0316c.f2164b = null;
            c0316c.f2165c = 0;
            c0316c.f2166d = null;
            this.f2170f.release(c0316c);
        }

        /* renamed from: e */
        public void m994e() {
            try {
                C0316c take = this.f2169e.take();
                try {
                    take.f2166d = take.f2163a.f2157a.inflate(take.f2165c, take.f2164b, false);
                } catch (RuntimeException e) {
                    Log.w(AsyncLayoutInflater.f2156e, "Failed to inflate resource in the background! Retrying on the UI thread", e);
                }
                Message.obtain(take.f2163a.f2158b, 0, take).sendToTarget();
            } catch (InterruptedException e2) {
                Log.w(AsyncLayoutInflater.f2156e, e2);
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                m994e();
            }
        }
    }

    public AsyncLayoutInflater(@NonNull Context context) {
        this.f2157a = new C0315b(context);
    }

    @UiThread
    public void inflate(@LayoutRes int i, @Nullable ViewGroup viewGroup, @NonNull OnInflateFinishedListener onInflateFinishedListener) {
        if (onInflateFinishedListener == null) {
            throw new NullPointerException("callback argument may not be null!");
        }
        C0316c m992c = this.f2159c.m992c();
        m992c.f2163a = this;
        m992c.f2165c = i;
        m992c.f2164b = viewGroup;
        m992c.f2167e = onInflateFinishedListener;
        this.f2159c.m991a(m992c);
    }
}
