package com.liulishuo.okdownload;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BreakpointStore;
import com.liulishuo.okdownload.core.breakpoint.DownloadStore;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher;
import com.liulishuo.okdownload.core.dispatcher.DownloadDispatcher;
import com.liulishuo.okdownload.core.download.DownloadStrategy;
import com.liulishuo.okdownload.core.file.DownloadOutputStream;
import com.liulishuo.okdownload.core.file.DownloadUriOutputStream;
import com.liulishuo.okdownload.core.file.ProcessFileStrategy;

/* loaded from: classes4.dex */
public class OkDownload {

    /* renamed from: j */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile OkDownload f39222j;

    /* renamed from: a */
    public final DownloadDispatcher f39223a;

    /* renamed from: b */
    public final CallbackDispatcher f39224b;

    /* renamed from: c */
    public final BreakpointStore f39225c;

    /* renamed from: d */
    public final DownloadConnection.Factory f39226d;

    /* renamed from: e */
    public final DownloadOutputStream.Factory f39227e;

    /* renamed from: f */
    public final ProcessFileStrategy f39228f;

    /* renamed from: g */
    public final DownloadStrategy f39229g;

    /* renamed from: h */
    public final Context f39230h;

    /* renamed from: i */
    @Nullable
    public DownloadMonitor f39231i;

    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: a */
        public DownloadDispatcher f39232a;

        /* renamed from: b */
        public CallbackDispatcher f39233b;

        /* renamed from: c */
        public DownloadStore f39234c;

        /* renamed from: d */
        public DownloadConnection.Factory f39235d;

        /* renamed from: e */
        public ProcessFileStrategy f39236e;

        /* renamed from: f */
        public DownloadStrategy f39237f;

        /* renamed from: g */
        public DownloadOutputStream.Factory f39238g;

        /* renamed from: h */
        public DownloadMonitor f39239h;

        /* renamed from: i */
        public final Context f39240i;

        public Builder(@NonNull Context context) {
            this.f39240i = context.getApplicationContext();
        }

        public OkDownload build() {
            if (this.f39232a == null) {
                this.f39232a = new DownloadDispatcher();
            }
            if (this.f39233b == null) {
                this.f39233b = new CallbackDispatcher();
            }
            if (this.f39234c == null) {
                this.f39234c = Util.createDefaultDatabase(this.f39240i);
            }
            if (this.f39235d == null) {
                this.f39235d = Util.createDefaultConnectionFactory();
            }
            if (this.f39238g == null) {
                this.f39238g = new DownloadUriOutputStream.Factory();
            }
            if (this.f39236e == null) {
                this.f39236e = new ProcessFileStrategy();
            }
            if (this.f39237f == null) {
                this.f39237f = new DownloadStrategy();
            }
            OkDownload okDownload = new OkDownload(this.f39240i, this.f39232a, this.f39233b, this.f39234c, this.f39235d, this.f39238g, this.f39236e, this.f39237f);
            okDownload.setMonitor(this.f39239h);
            Util.m30983d("OkDownload", "downloadStore[" + this.f39234c + "] connectionFactory[" + this.f39235d);
            return okDownload;
        }

        public Builder callbackDispatcher(CallbackDispatcher callbackDispatcher) {
            this.f39233b = callbackDispatcher;
            return this;
        }

        public Builder connectionFactory(DownloadConnection.Factory factory) {
            this.f39235d = factory;
            return this;
        }

        public Builder downloadDispatcher(DownloadDispatcher downloadDispatcher) {
            this.f39232a = downloadDispatcher;
            return this;
        }

        public Builder downloadStore(DownloadStore downloadStore) {
            this.f39234c = downloadStore;
            return this;
        }

        public Builder downloadStrategy(DownloadStrategy downloadStrategy) {
            this.f39237f = downloadStrategy;
            return this;
        }

        public Builder monitor(DownloadMonitor downloadMonitor) {
            this.f39239h = downloadMonitor;
            return this;
        }

        public Builder outputStreamFactory(DownloadOutputStream.Factory factory) {
            this.f39238g = factory;
            return this;
        }

        public Builder processFileStrategy(ProcessFileStrategy processFileStrategy) {
            this.f39236e = processFileStrategy;
            return this;
        }
    }

    public OkDownload(Context context, DownloadDispatcher downloadDispatcher, CallbackDispatcher callbackDispatcher, DownloadStore downloadStore, DownloadConnection.Factory factory, DownloadOutputStream.Factory factory2, ProcessFileStrategy processFileStrategy, DownloadStrategy downloadStrategy) {
        this.f39230h = context;
        this.f39223a = downloadDispatcher;
        this.f39224b = callbackDispatcher;
        this.f39225c = downloadStore;
        this.f39226d = factory;
        this.f39227e = factory2;
        this.f39228f = processFileStrategy;
        this.f39229g = downloadStrategy;
        downloadDispatcher.setDownloadStore(Util.createRemitDatabase(downloadStore));
    }

    public static void setSingletonInstance(@NonNull OkDownload okDownload) {
        if (f39222j != null) {
            throw new IllegalArgumentException("OkDownload must be null.");
        }
        synchronized (OkDownload.class) {
            if (f39222j != null) {
                throw new IllegalArgumentException("OkDownload must be null.");
            }
            f39222j = okDownload;
        }
    }

    public static OkDownload with() {
        if (f39222j == null) {
            synchronized (OkDownload.class) {
                if (f39222j == null) {
                    Context context = OkDownloadProvider.context;
                    if (context == null) {
                        throw new IllegalStateException("context == null");
                    }
                    f39222j = new Builder(context).build();
                }
            }
        }
        return f39222j;
    }

    public BreakpointStore breakpointStore() {
        return this.f39225c;
    }

    public CallbackDispatcher callbackDispatcher() {
        return this.f39224b;
    }

    public DownloadConnection.Factory connectionFactory() {
        return this.f39226d;
    }

    public Context context() {
        return this.f39230h;
    }

    public DownloadDispatcher downloadDispatcher() {
        return this.f39223a;
    }

    public DownloadStrategy downloadStrategy() {
        return this.f39229g;
    }

    @Nullable
    public DownloadMonitor getMonitor() {
        return this.f39231i;
    }

    public DownloadOutputStream.Factory outputStreamFactory() {
        return this.f39227e;
    }

    public ProcessFileStrategy processFileStrategy() {
        return this.f39228f;
    }

    public void setMonitor(@Nullable DownloadMonitor downloadMonitor) {
        this.f39231i = downloadMonitor;
    }
}
