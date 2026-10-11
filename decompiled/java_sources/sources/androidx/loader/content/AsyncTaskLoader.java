package androidx.loader.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.os.OperationCanceledException;
import androidx.core.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class AsyncTaskLoader<D> extends Loader<D> {

    /* renamed from: p */
    public static final String f8022p = "AsyncTaskLoader";

    /* renamed from: q */
    public static final boolean f8023q = false;

    /* renamed from: j */
    public final Executor f8024j;

    /* renamed from: k */
    public volatile AsyncTaskLoader<D>.RunnableC1167a f8025k;

    /* renamed from: l */
    public volatile AsyncTaskLoader<D>.RunnableC1167a f8026l;

    /* renamed from: m */
    public long f8027m;

    /* renamed from: n */
    public long f8028n;

    /* renamed from: o */
    public Handler f8029o;

    /* renamed from: androidx.loader.content.AsyncTaskLoader$a */
    /* loaded from: classes3.dex */
    public final class RunnableC1167a extends ModernAsyncTask<Void, Void, D> implements Runnable {

        /* renamed from: u */
        public final CountDownLatch f8030u = new CountDownLatch(1);

        /* renamed from: v */
        public boolean f8031v;

        public RunnableC1167a() {
        }

        @Override // androidx.loader.content.ModernAsyncTask
        /* renamed from: m */
        public void mo4968m(D d) {
            try {
                AsyncTaskLoader.this.m4964a(this, d);
            } finally {
                this.f8030u.countDown();
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        /* renamed from: n */
        public void mo4969n(D d) {
            try {
                AsyncTaskLoader.this.m4965b(this, d);
            } finally {
                this.f8030u.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8031v = false;
            AsyncTaskLoader.this.m4966c();
        }

        @Override // androidx.loader.content.ModernAsyncTask
        /* renamed from: u, reason: merged with bridge method [inline-methods] */
        public D mo4967b(Void... voidArr) {
            try {
                return (D) AsyncTaskLoader.this.onLoadInBackground();
            } catch (OperationCanceledException e) {
                if (this.m4982k()) {
                    return null;
                }
                throw e;
            }
        }

        /* renamed from: v */
        public void m4971v() {
            try {
                this.f8030u.await();
            } catch (InterruptedException unused) {
            }
        }
    }

    public AsyncTaskLoader(@NonNull Context context) {
        this(context, ModernAsyncTask.f8057p);
    }

    /* renamed from: a */
    public void m4964a(AsyncTaskLoader<D>.RunnableC1167a runnableC1167a, D d) {
        onCanceled(d);
        if (this.f8026l == runnableC1167a) {
            rollbackContentChanged();
            this.f8028n = SystemClock.uptimeMillis();
            this.f8026l = null;
            deliverCancellation();
            m4966c();
        }
    }

    /* renamed from: b */
    public void m4965b(AsyncTaskLoader<D>.RunnableC1167a runnableC1167a, D d) {
        if (this.f8025k != runnableC1167a) {
            m4964a(runnableC1167a, d);
            return;
        }
        if (isAbandoned()) {
            onCanceled(d);
            return;
        }
        commitContentChanged();
        this.f8028n = SystemClock.uptimeMillis();
        this.f8025k = null;
        deliverResult(d);
    }

    /* renamed from: c */
    public void m4966c() {
        if (this.f8026l != null || this.f8025k == null) {
            return;
        }
        if (this.f8025k.f8031v) {
            this.f8025k.f8031v = false;
            this.f8029o.removeCallbacks(this.f8025k);
        }
        if (this.f8027m <= 0 || SystemClock.uptimeMillis() >= this.f8028n + this.f8027m) {
            this.f8025k.m4977e(this.f8024j, null);
        } else {
            this.f8025k.f8031v = true;
            this.f8029o.postAtTime(this.f8025k, this.f8028n + this.f8027m);
        }
    }

    public void cancelLoadInBackground() {
    }

    @Override // androidx.loader.content.Loader
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.f8025k != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f8025k);
            printWriter.print(" waiting=");
            printWriter.println(this.f8025k.f8031v);
        }
        if (this.f8026l != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f8026l);
            printWriter.print(" waiting=");
            printWriter.println(this.f8026l.f8031v);
        }
        if (this.f8027m != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            TimeUtils.formatDuration(this.f8027m, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            TimeUtils.formatDuration(this.f8028n, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    public boolean isLoadInBackgroundCanceled() {
        return this.f8026l != null;
    }

    @Nullable
    public abstract D loadInBackground();

    @Override // androidx.loader.content.Loader
    public boolean onCancelLoad() {
        if (this.f8025k == null) {
            return false;
        }
        if (!this.f8045e) {
            this.f8048h = true;
        }
        if (this.f8026l != null) {
            if (this.f8025k.f8031v) {
                this.f8025k.f8031v = false;
                this.f8029o.removeCallbacks(this.f8025k);
            }
            this.f8025k = null;
            return false;
        }
        if (this.f8025k.f8031v) {
            this.f8025k.f8031v = false;
            this.f8029o.removeCallbacks(this.f8025k);
            this.f8025k = null;
            return false;
        }
        boolean m4975a = this.f8025k.m4975a(false);
        if (m4975a) {
            this.f8026l = this.f8025k;
            cancelLoadInBackground();
        }
        this.f8025k = null;
        return m4975a;
    }

    public void onCanceled(@Nullable D d) {
    }

    @Override // androidx.loader.content.Loader
    public void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        this.f8025k = new RunnableC1167a();
        m4966c();
    }

    @Nullable
    public D onLoadInBackground() {
        return loadInBackground();
    }

    public void setUpdateThrottle(long j) {
        this.f8027m = j;
        if (j != 0) {
            this.f8029o = new Handler();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void waitForLoader() {
        AsyncTaskLoader<D>.RunnableC1167a runnableC1167a = this.f8025k;
        if (runnableC1167a != null) {
            runnableC1167a.m4971v();
        }
    }

    public AsyncTaskLoader(@NonNull Context context, @NonNull Executor executor) {
        super(context);
        this.f8028n = -10000L;
        this.f8024j = executor;
    }
}
