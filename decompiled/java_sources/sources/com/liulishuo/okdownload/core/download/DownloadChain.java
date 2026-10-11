package com.liulishuo.okdownload.core.download;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.breakpoint.DownloadStore;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher;
import com.liulishuo.okdownload.core.exception.InterruptException;
import com.liulishuo.okdownload.core.file.MultiPointOutputStream;
import com.liulishuo.okdownload.core.interceptor.BreakpointInterceptor;
import com.liulishuo.okdownload.core.interceptor.FetchDataInterceptor;
import com.liulishuo.okdownload.core.interceptor.Interceptor;
import com.liulishuo.okdownload.core.interceptor.RetryInterceptor;
import com.liulishuo.okdownload.core.interceptor.connect.CallServerInterceptor;
import com.liulishuo.okdownload.core.interceptor.connect.HeaderInterceptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class DownloadChain implements Runnable {

    /* renamed from: u */
    public static final ExecutorService f39430u = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkDownload Cancel Block", false));

    /* renamed from: v */
    public static final String f39431v = "DownloadChain";

    /* renamed from: e */
    public final int f39432e;

    /* renamed from: f */
    @NonNull
    public final DownloadTask f39433f;

    /* renamed from: g */
    @NonNull
    public final BreakpointInfo f39434g;

    /* renamed from: h */
    @NonNull
    public final DownloadCache f39435h;

    /* renamed from: m */
    public long f39440m;

    /* renamed from: n */
    public volatile DownloadConnection f39441n;

    /* renamed from: o */
    public long f39442o;

    /* renamed from: p */
    public volatile Thread f39443p;

    /* renamed from: r */
    @NonNull
    public final DownloadStore f39445r;

    /* renamed from: i */
    public final List<Interceptor.Connect> f39436i = new ArrayList();

    /* renamed from: j */
    public final List<Interceptor.Fetch> f39437j = new ArrayList();

    /* renamed from: k */
    public int f39438k = 0;

    /* renamed from: l */
    public int f39439l = 0;

    /* renamed from: s */
    public final AtomicBoolean f39446s = new AtomicBoolean(false);

    /* renamed from: t */
    public final Runnable f39447t = new RunnableC6969a();

    /* renamed from: q */
    public final CallbackDispatcher f39444q = OkDownload.with().callbackDispatcher();

    /* renamed from: com.liulishuo.okdownload.core.download.DownloadChain$a */
    /* loaded from: classes4.dex */
    public class RunnableC6969a implements Runnable {
        public RunnableC6969a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadChain.this.releaseConnection();
        }
    }

    public DownloadChain(int i, @NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, @NonNull DownloadCache downloadCache, @NonNull DownloadStore downloadStore) {
        this.f39432e = i;
        this.f39433f = downloadTask;
        this.f39435h = downloadCache;
        this.f39434g = breakpointInfo;
        this.f39445r = downloadStore;
    }

    /* renamed from: a */
    public static DownloadChain m31064a(int i, DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, @NonNull DownloadCache downloadCache, @NonNull DownloadStore downloadStore) {
        return new DownloadChain(i, downloadTask, breakpointInfo, downloadCache, downloadStore);
    }

    /* renamed from: b */
    public boolean m31065b() {
        return this.f39446s.get();
    }

    /* renamed from: c */
    public void m31066c() {
        f39430u.execute(this.f39447t);
    }

    public void cancel() {
        if (this.f39446s.get() || this.f39443p == null) {
            return;
        }
        this.f39443p.interrupt();
    }

    /* renamed from: d */
    public void m31067d() throws IOException {
        CallbackDispatcher callbackDispatcher = OkDownload.with().callbackDispatcher();
        RetryInterceptor retryInterceptor = new RetryInterceptor();
        BreakpointInterceptor breakpointInterceptor = new BreakpointInterceptor();
        this.f39436i.add(retryInterceptor);
        this.f39436i.add(breakpointInterceptor);
        this.f39436i.add(new HeaderInterceptor());
        this.f39436i.add(new CallServerInterceptor());
        this.f39438k = 0;
        DownloadConnection.Connected processConnect = processConnect();
        if (this.f39435h.isInterrupt()) {
            throw InterruptException.SIGNAL;
        }
        callbackDispatcher.dispatch().fetchStart(this.f39433f, this.f39432e, getResponseContentLength());
        FetchDataInterceptor fetchDataInterceptor = new FetchDataInterceptor(this.f39432e, processConnect.getInputStream(), getOutputStream(), this.f39433f);
        this.f39437j.add(retryInterceptor);
        this.f39437j.add(breakpointInterceptor);
        this.f39437j.add(fetchDataInterceptor);
        this.f39439l = 0;
        callbackDispatcher.dispatch().fetchEnd(this.f39433f, this.f39432e, processFetch());
    }

    public void flushNoCallbackIncreaseBytes() {
        if (this.f39442o == 0) {
            return;
        }
        this.f39444q.dispatch().fetchProgress(this.f39433f, this.f39432e, this.f39442o);
        this.f39442o = 0L;
    }

    public int getBlockIndex() {
        return this.f39432e;
    }

    @NonNull
    public DownloadCache getCache() {
        return this.f39435h;
    }

    @Nullable
    public synchronized DownloadConnection getConnection() {
        return this.f39441n;
    }

    @NonNull
    public synchronized DownloadConnection getConnectionOrCreate() throws IOException {
        if (this.f39435h.isInterrupt()) {
            throw InterruptException.SIGNAL;
        }
        if (this.f39441n == null) {
            String m31045c = this.f39435h.m31045c();
            if (m31045c == null) {
                m31045c = this.f39434g.getUrl();
            }
            Util.m30983d(f39431v, "create connection on url: " + m31045c);
            this.f39441n = OkDownload.with().connectionFactory().create(m31045c);
        }
        return this.f39441n;
    }

    @NonNull
    public DownloadStore getDownloadStore() {
        return this.f39445r;
    }

    @NonNull
    public BreakpointInfo getInfo() {
        return this.f39434g;
    }

    public MultiPointOutputStream getOutputStream() {
        return this.f39435h.m31043a();
    }

    public long getResponseContentLength() {
        return this.f39440m;
    }

    @NonNull
    public DownloadTask getTask() {
        return this.f39433f;
    }

    public void increaseCallbackBytes(long j) {
        this.f39442o += j;
    }

    public long loopFetch() throws IOException {
        if (this.f39439l == this.f39437j.size()) {
            this.f39439l--;
        }
        return processFetch();
    }

    public DownloadConnection.Connected processConnect() throws IOException {
        if (this.f39435h.isInterrupt()) {
            throw InterruptException.SIGNAL;
        }
        List<Interceptor.Connect> list = this.f39436i;
        int i = this.f39438k;
        this.f39438k = i + 1;
        return list.get(i).interceptConnect(this);
    }

    public long processFetch() throws IOException {
        if (this.f39435h.isInterrupt()) {
            throw InterruptException.SIGNAL;
        }
        List<Interceptor.Fetch> list = this.f39437j;
        int i = this.f39439l;
        this.f39439l = i + 1;
        return list.get(i).interceptFetch(this);
    }

    public synchronized void releaseConnection() {
        if (this.f39441n != null) {
            this.f39441n.release();
            Util.m30983d(f39431v, "release connection " + this.f39441n + " task[" + this.f39433f.getId() + "] block[" + this.f39432e + IteratorUtils.f104924b);
        }
        this.f39441n = null;
    }

    public void resetConnectForRetry() {
        this.f39438k = 1;
        releaseConnection();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (m31065b()) {
            throw new IllegalAccessError("The chain has been finished!");
        }
        this.f39443p = Thread.currentThread();
        try {
            m31067d();
        } catch (IOException unused) {
        } catch (Throwable th) {
            this.f39446s.set(true);
            m31066c();
            throw th;
        }
        this.f39446s.set(true);
        m31066c();
    }

    public synchronized void setConnection(@NonNull DownloadConnection downloadConnection) {
        this.f39441n = downloadConnection;
    }

    public void setRedirectLocation(String str) {
        this.f39435h.m31051i(str);
    }

    public void setResponseContentLength(long j) {
        this.f39440m = j;
    }
}
