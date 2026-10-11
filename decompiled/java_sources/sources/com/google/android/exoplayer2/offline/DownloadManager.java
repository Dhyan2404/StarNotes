package com.google.android.exoplayer2.offline;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.database.DatabaseProvider;
import com.google.android.exoplayer2.offline.DownloadManager;
import com.google.android.exoplayer2.offline.Downloader;
import com.google.android.exoplayer2.scheduler.Requirements;
import com.google.android.exoplayer2.scheduler.RequirementsWatcher;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.lgf;
import com.sunia.HTREnginev2.vtd;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class DownloadManager {

    /* renamed from: A */
    public static final int f24992A = 7;

    /* renamed from: B */
    public static final int f24993B = 8;

    /* renamed from: C */
    public static final int f24994C = 9;

    /* renamed from: D */
    public static final int f24995D = 10;
    public static final int DEFAULT_MAX_PARALLEL_DOWNLOADS = 3;
    public static final int DEFAULT_MIN_RETRY_COUNT = 5;
    public static final Requirements DEFAULT_REQUIREMENTS = new Requirements(1);

    /* renamed from: E */
    public static final int f24996E = 11;

    /* renamed from: F */
    public static final int f24997F = 12;

    /* renamed from: G */
    public static final String f24998G = "DownloadManager";

    /* renamed from: q */
    public static final int f24999q = 0;

    /* renamed from: r */
    public static final int f25000r = 1;

    /* renamed from: s */
    public static final int f25001s = 2;

    /* renamed from: t */
    public static final int f25002t = 0;

    /* renamed from: u */
    public static final int f25003u = 1;

    /* renamed from: v */
    public static final int f25004v = 2;

    /* renamed from: w */
    public static final int f25005w = 3;

    /* renamed from: x */
    public static final int f25006x = 4;

    /* renamed from: y */
    public static final int f25007y = 5;

    /* renamed from: z */
    public static final int f25008z = 6;

    /* renamed from: a */
    public final Context f25009a;

    /* renamed from: b */
    public final WritableDownloadIndex f25010b;

    /* renamed from: c */
    public final Handler f25011c;

    /* renamed from: d */
    public final HandlerC4809c f25012d;

    /* renamed from: e */
    public final RequirementsWatcher.Listener f25013e;

    /* renamed from: f */
    public final CopyOnWriteArraySet<Listener> f25014f;

    /* renamed from: g */
    public int f25015g;

    /* renamed from: h */
    public int f25016h;

    /* renamed from: i */
    public boolean f25017i;

    /* renamed from: j */
    public boolean f25018j;

    /* renamed from: k */
    public int f25019k;

    /* renamed from: l */
    public int f25020l;

    /* renamed from: m */
    public int f25021m;

    /* renamed from: n */
    public boolean f25022n;

    /* renamed from: o */
    public List<Download> f25023o;

    /* renamed from: p */
    public RequirementsWatcher f25024p;

    /* loaded from: classes5.dex */
    public interface Listener {
        default void onDownloadChanged(DownloadManager downloadManager, Download download, @Nullable Exception exc) {
        }

        default void onDownloadRemoved(DownloadManager downloadManager, Download download) {
        }

        default void onDownloadsPausedChanged(DownloadManager downloadManager, boolean z) {
        }

        default void onIdle(DownloadManager downloadManager) {
        }

        default void onInitialized(DownloadManager downloadManager) {
        }

        default void onRequirementsStateChanged(DownloadManager downloadManager, Requirements requirements, int i) {
        }

        default void onWaitingForRequirementsChanged(DownloadManager downloadManager, boolean z) {
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadManager$b */
    /* loaded from: classes5.dex */
    public static final class C4808b {

        /* renamed from: a */
        public final Download f25025a;

        /* renamed from: b */
        public final boolean f25026b;

        /* renamed from: c */
        public final List<Download> f25027c;

        /* renamed from: d */
        @Nullable
        public final Exception f25028d;

        public C4808b(Download download, boolean z, List<Download> list, @Nullable Exception exc) {
            this.f25025a = download;
            this.f25026b = z;
            this.f25027c = list;
            this.f25028d = exc;
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadManager$c */
    /* loaded from: classes5.dex */
    public static final class HandlerC4809c extends Handler {

        /* renamed from: m */
        public static final int f25029m = 5000;

        /* renamed from: a */
        public boolean f25030a;

        /* renamed from: b */
        public final HandlerThread f25031b;

        /* renamed from: c */
        public final WritableDownloadIndex f25032c;

        /* renamed from: d */
        public final DownloaderFactory f25033d;

        /* renamed from: e */
        public final Handler f25034e;

        /* renamed from: f */
        public final ArrayList<Download> f25035f;

        /* renamed from: g */
        public final HashMap<String, C4810d> f25036g;

        /* renamed from: h */
        public int f25037h;

        /* renamed from: i */
        public boolean f25038i;

        /* renamed from: j */
        public int f25039j;

        /* renamed from: k */
        public int f25040k;

        /* renamed from: l */
        public int f25041l;

        public HandlerC4809c(HandlerThread handlerThread, WritableDownloadIndex writableDownloadIndex, DownloaderFactory downloaderFactory, Handler handler, int i, int i2, boolean z) {
            super(handlerThread.getLooper());
            this.f25031b = handlerThread;
            this.f25032c = writableDownloadIndex;
            this.f25033d = downloaderFactory;
            this.f25034e = handler;
            this.f25039j = i;
            this.f25040k = i2;
            this.f25038i = z;
            this.f25035f = new ArrayList<>();
            this.f25036g = new HashMap<>();
        }

        /* renamed from: d */
        public static int m19489d(Download download, Download download2) {
            return Util.compareLong(download.startTimeMs, download2.startTimeMs);
        }

        /* renamed from: e */
        public static Download m19490e(Download download, int i, int i2) {
            return new Download(download.request, i, download.startTimeMs, System.currentTimeMillis(), download.contentLength, i2, 0, download.f24961a);
        }

        /* renamed from: A */
        public final void m19491A(@Nullable C4810d c4810d) {
            if (c4810d != null) {
                Assertions.checkState(!c4810d.f25045h);
                c4810d.m19522e(false);
            }
        }

        /* renamed from: B */
        public final void m19492B() {
            int i = 0;
            for (int i2 = 0; i2 < this.f25035f.size(); i2++) {
                Download download = this.f25035f.get(i2);
                C4810d c4810d = this.f25036g.get(download.request.f25051id);
                int i3 = download.state;
                if (i3 == 0) {
                    c4810d = m19515y(c4810d, download);
                } else if (i3 == 1) {
                    m19491A(c4810d);
                } else if (i3 == 2) {
                    Assertions.checkNotNull(c4810d);
                    m19514x(c4810d, download, i);
                } else {
                    if (i3 != 5 && i3 != 7) {
                        throw new IllegalStateException();
                    }
                    m19516z(c4810d, download);
                }
                if (c4810d != null && !c4810d.f25045h) {
                    i++;
                }
            }
        }

        /* renamed from: C */
        public final void m19493C() {
            for (int i = 0; i < this.f25035f.size(); i++) {
                Download download = this.f25035f.get(i);
                if (download.state == 2) {
                    try {
                        this.f25032c.putDownload(download);
                    } catch (IOException e) {
                        Log.m21490e(DownloadManager.f24998G, "Failed to update index.", e);
                    }
                }
            }
            sendEmptyMessageDelayed(11, 5000L);
        }

        /* renamed from: b */
        public final void m19494b(DownloadRequest downloadRequest, int i) {
            Download m19496f = m19496f(downloadRequest.f25051id, true);
            long currentTimeMillis = System.currentTimeMillis();
            if (m19496f != null) {
                m19503m(DownloadManager.m19479d(m19496f, downloadRequest, i, currentTimeMillis));
            } else {
                m19503m(new Download(downloadRequest, i == 0 ? 0 : 1, currentTimeMillis, currentTimeMillis, -1L, i, 0));
            }
            m19492B();
        }

        /* renamed from: c */
        public final boolean m19495c() {
            return !this.f25038i && this.f25037h == 0;
        }

        @Nullable
        /* renamed from: f */
        public final Download m19496f(String str, boolean z) {
            int m19497g = m19497g(str);
            if (m19497g != -1) {
                return this.f25035f.get(m19497g);
            }
            if (!z) {
                return null;
            }
            try {
                return this.f25032c.getDownload(str);
            } catch (IOException e) {
                String valueOf = String.valueOf(str);
                Log.m21490e(DownloadManager.f24998G, valueOf.length() != 0 ? "Failed to load download: ".concat(valueOf) : new String("Failed to load download: "), e);
                return null;
            }
        }

        /* renamed from: g */
        public final int m19497g(String str) {
            for (int i = 0; i < this.f25035f.size(); i++) {
                if (this.f25035f.get(i).request.f25051id.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        /* renamed from: h */
        public final void m19498h(int i) {
            this.f25037h = i;
            DownloadCursor downloadCursor = null;
            try {
                try {
                    this.f25032c.setDownloadingStatesToQueued();
                    downloadCursor = this.f25032c.getDownloads(0, 1, 2, 5, 7);
                    while (downloadCursor.moveToNext()) {
                        this.f25035f.add(downloadCursor.getDownload());
                    }
                } catch (IOException e) {
                    Log.m21490e(DownloadManager.f24998G, "Failed to load index.", e);
                    this.f25035f.clear();
                }
                Util.closeQuietly(downloadCursor);
                this.f25034e.obtainMessage(0, new ArrayList(this.f25035f)).sendToTarget();
                m19492B();
            } catch (Throwable th) {
                Util.closeQuietly(downloadCursor);
                throw th;
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = 0;
            switch (message.what) {
                case 0:
                    m19498h(message.arg1);
                    i = 1;
                    this.f25034e.obtainMessage(1, i, this.f25036g.size()).sendToTarget();
                    return;
                case 1:
                    m19508r(message.arg1 != 0);
                    i = 1;
                    this.f25034e.obtainMessage(1, i, this.f25036g.size()).sendToTarget();
                    return;
                case 2:
                    m19511u(message.arg1);
                    i = 1;
                    this.f25034e.obtainMessage(1, i, this.f25036g.size()).sendToTarget();
                    return;
                case 3:
                    m19513w((String) message.obj, message.arg1);
                    i = 1;
                    this.f25034e.obtainMessage(1, i, this.f25036g.size()).sendToTarget();
                    return;
                case 4:
                    m19509s(message.arg1);
                    i = 1;
                    this.f25034e.obtainMessage(1, i, this.f25036g.size()).sendToTarget();
                    return;
                case 5:
                    m19510t(message.arg1);
                    i = 1;
                    this.f25034e.obtainMessage(1, i, this.f25036g.size()).sendToTarget();
                    return;
                case 6:
                    m19494b((DownloadRequest) message.obj, message.arg1);
                    i = 1;
                    this.f25034e.obtainMessage(1, i, this.f25036g.size()).sendToTarget();
                    return;
                case 7:
                    m19507q((String) message.obj);
                    i = 1;
                    this.f25034e.obtainMessage(1, i, this.f25036g.size()).sendToTarget();
                    return;
                case 8:
                    m19506p();
                    i = 1;
                    this.f25034e.obtainMessage(1, i, this.f25036g.size()).sendToTarget();
                    return;
                case 9:
                    m19502l((C4810d) message.obj);
                    this.f25034e.obtainMessage(1, i, this.f25036g.size()).sendToTarget();
                    return;
                case 10:
                    m19499i((C4810d) message.obj, Util.toLong(message.arg1, message.arg2));
                    return;
                case 11:
                    m19493C();
                    return;
                case 12:
                    m19505o();
                    return;
                default:
                    throw new IllegalStateException();
            }
        }

        /* renamed from: i */
        public final void m19499i(C4810d c4810d, long j) {
            Download download = (Download) Assertions.checkNotNull(m19496f(c4810d.f25042e.f25051id, false));
            if (j == download.contentLength || j == -1) {
                return;
            }
            m19503m(new Download(download.request, download.state, download.startTimeMs, System.currentTimeMillis(), j, download.stopReason, download.failureReason, download.f24961a));
        }

        /* renamed from: j */
        public final void m19500j(Download download, @Nullable Exception exc) {
            Download download2 = new Download(download.request, exc == null ? 3 : 4, download.startTimeMs, System.currentTimeMillis(), download.contentLength, download.stopReason, exc == null ? 0 : 1, download.f24961a);
            this.f25035f.remove(m19497g(download2.request.f25051id));
            try {
                this.f25032c.putDownload(download2);
            } catch (IOException e) {
                Log.m21490e(DownloadManager.f24998G, "Failed to update index.", e);
            }
            this.f25034e.obtainMessage(2, new C4808b(download2, false, new ArrayList(this.f25035f), exc)).sendToTarget();
        }

        /* renamed from: k */
        public final void m19501k(Download download) {
            if (download.state == 7) {
                int i = download.stopReason;
                m19504n(download, i == 0 ? 0 : 1, i);
                m19492B();
            } else {
                this.f25035f.remove(m19497g(download.request.f25051id));
                try {
                    this.f25032c.removeDownload(download.request.f25051id);
                } catch (IOException unused) {
                    Log.m21489e(DownloadManager.f24998G, "Failed to remove from database");
                }
                this.f25034e.obtainMessage(2, new C4808b(download, true, new ArrayList(this.f25035f), null)).sendToTarget();
            }
        }

        /* renamed from: l */
        public final void m19502l(C4810d c4810d) {
            String str = c4810d.f25042e.f25051id;
            this.f25036g.remove(str);
            boolean z = c4810d.f25045h;
            if (!z) {
                int i = this.f25041l - 1;
                this.f25041l = i;
                if (i == 0) {
                    removeMessages(11);
                }
            }
            if (c4810d.f25048k) {
                m19492B();
                return;
            }
            Exception exc = c4810d.f25049l;
            if (exc != null) {
                String valueOf = String.valueOf(c4810d.f25042e);
                StringBuilder sb = new StringBuilder(valueOf.length() + 20);
                sb.append("Task failed: ");
                sb.append(valueOf);
                sb.append(", ");
                sb.append(z);
                Log.m21490e(DownloadManager.f24998G, sb.toString(), exc);
            }
            Download download = (Download) Assertions.checkNotNull(m19496f(str, false));
            int i2 = download.state;
            if (i2 == 2) {
                Assertions.checkState(!z);
                m19500j(download, exc);
            } else {
                if (i2 != 5 && i2 != 7) {
                    throw new IllegalStateException();
                }
                Assertions.checkState(z);
                m19501k(download);
            }
            m19492B();
        }

        /* renamed from: m */
        public final Download m19503m(Download download) {
            int i = download.state;
            Assertions.checkState((i == 3 || i == 4) ? false : true);
            int m19497g = m19497g(download.request.f25051id);
            if (m19497g == -1) {
                this.f25035f.add(download);
                Collections.sort(this.f25035f, new lgf());
            } else {
                boolean z = download.startTimeMs != this.f25035f.get(m19497g).startTimeMs;
                this.f25035f.set(m19497g, download);
                if (z) {
                    Collections.sort(this.f25035f, new lgf());
                }
            }
            try {
                this.f25032c.putDownload(download);
            } catch (IOException e) {
                Log.m21490e(DownloadManager.f24998G, "Failed to update index.", e);
            }
            this.f25034e.obtainMessage(2, new C4808b(download, false, new ArrayList(this.f25035f), null)).sendToTarget();
            return download;
        }

        /* renamed from: n */
        public final Download m19504n(Download download, int i, int i2) {
            Assertions.checkState((i == 3 || i == 4) ? false : true);
            return m19503m(m19490e(download, i, i2));
        }

        /* renamed from: o */
        public final void m19505o() {
            Iterator<C4810d> it2 = this.f25036g.values().iterator();
            while (it2.hasNext()) {
                it2.next().m19522e(true);
            }
            try {
                this.f25032c.setDownloadingStatesToQueued();
            } catch (IOException e) {
                Log.m21490e(DownloadManager.f24998G, "Failed to update index.", e);
            }
            this.f25035f.clear();
            this.f25031b.quit();
            synchronized (this) {
                this.f25030a = true;
                notifyAll();
            }
        }

        /* renamed from: p */
        public final void m19506p() {
            ArrayList arrayList = new ArrayList();
            try {
                DownloadCursor downloads = this.f25032c.getDownloads(3, 4);
                while (downloads.moveToNext()) {
                    try {
                        arrayList.add(downloads.getDownload());
                    } finally {
                    }
                }
                downloads.close();
            } catch (IOException unused) {
                Log.m21489e(DownloadManager.f24998G, "Failed to load downloads.");
            }
            for (int i = 0; i < this.f25035f.size(); i++) {
                ArrayList<Download> arrayList2 = this.f25035f;
                arrayList2.set(i, m19490e(arrayList2.get(i), 5, 0));
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                this.f25035f.add(m19490e((Download) arrayList.get(i2), 5, 0));
            }
            Collections.sort(this.f25035f, new lgf());
            try {
                this.f25032c.setStatesToRemoving();
            } catch (IOException e) {
                Log.m21490e(DownloadManager.f24998G, "Failed to update index.", e);
            }
            ArrayList arrayList3 = new ArrayList(this.f25035f);
            for (int i3 = 0; i3 < this.f25035f.size(); i3++) {
                this.f25034e.obtainMessage(2, new C4808b(this.f25035f.get(i3), false, arrayList3, null)).sendToTarget();
            }
            m19492B();
        }

        /* renamed from: q */
        public final void m19507q(String str) {
            Download m19496f = m19496f(str, true);
            if (m19496f == null) {
                String valueOf = String.valueOf(str);
                Log.m21489e(DownloadManager.f24998G, valueOf.length() != 0 ? "Failed to remove nonexistent download: ".concat(valueOf) : new String("Failed to remove nonexistent download: "));
            } else {
                m19504n(m19496f, 5, 0);
                m19492B();
            }
        }

        /* renamed from: r */
        public final void m19508r(boolean z) {
            this.f25038i = z;
            m19492B();
        }

        /* renamed from: s */
        public final void m19509s(int i) {
            this.f25039j = i;
            m19492B();
        }

        /* renamed from: t */
        public final void m19510t(int i) {
            this.f25040k = i;
        }

        /* renamed from: u */
        public final void m19511u(int i) {
            this.f25037h = i;
            m19492B();
        }

        /* renamed from: v */
        public final void m19512v(Download download, int i) {
            if (i == 0) {
                if (download.state == 1) {
                    m19504n(download, 0, 0);
                }
            } else if (i != download.stopReason) {
                int i2 = download.state;
                if (i2 == 0 || i2 == 2) {
                    i2 = 1;
                }
                m19503m(new Download(download.request, i2, download.startTimeMs, System.currentTimeMillis(), download.contentLength, i, 0, download.f24961a));
            }
        }

        /* renamed from: w */
        public final void m19513w(@Nullable String str, int i) {
            if (str == null) {
                for (int i2 = 0; i2 < this.f25035f.size(); i2++) {
                    m19512v(this.f25035f.get(i2), i);
                }
                try {
                    this.f25032c.setStopReason(i);
                } catch (IOException e) {
                    Log.m21490e(DownloadManager.f24998G, "Failed to set manual stop reason", e);
                }
            } else {
                Download m19496f = m19496f(str, false);
                if (m19496f != null) {
                    m19512v(m19496f, i);
                } else {
                    try {
                        this.f25032c.setStopReason(str, i);
                    } catch (IOException e2) {
                        Log.m21490e(DownloadManager.f24998G, str.length() != 0 ? "Failed to set manual stop reason: ".concat(str) : new String("Failed to set manual stop reason: "), e2);
                    }
                }
            }
            m19492B();
        }

        /* renamed from: x */
        public final void m19514x(C4810d c4810d, Download download, int i) {
            Assertions.checkState(!c4810d.f25045h);
            if (!m19495c() || i >= this.f25039j) {
                m19504n(download, 0, 0);
                c4810d.m19522e(false);
            }
        }

        @Nullable
        @CheckResult
        /* renamed from: y */
        public final C4810d m19515y(@Nullable C4810d c4810d, Download download) {
            if (c4810d != null) {
                Assertions.checkState(!c4810d.f25045h);
                c4810d.m19522e(false);
                return c4810d;
            }
            if (!m19495c() || this.f25041l >= this.f25039j) {
                return null;
            }
            Download m19504n = m19504n(download, 2, 0);
            C4810d c4810d2 = new C4810d(m19504n.request, this.f25033d.createDownloader(m19504n.request), m19504n.f24961a, false, this.f25040k, this);
            this.f25036g.put(m19504n.request.f25051id, c4810d2);
            int i = this.f25041l;
            this.f25041l = i + 1;
            if (i == 0) {
                sendEmptyMessageDelayed(11, 5000L);
            }
            c4810d2.start();
            return c4810d2;
        }

        /* renamed from: z */
        public final void m19516z(@Nullable C4810d c4810d, Download download) {
            if (c4810d != null) {
                if (c4810d.f25045h) {
                    return;
                }
                c4810d.m19522e(false);
            } else {
                C4810d c4810d2 = new C4810d(download.request, this.f25033d.createDownloader(download.request), download.f24961a, true, this.f25040k, this);
                this.f25036g.put(download.request.f25051id, c4810d2);
                c4810d2.start();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadManager$d */
    /* loaded from: classes5.dex */
    public static class C4810d extends Thread implements Downloader.ProgressListener {

        /* renamed from: e */
        public final DownloadRequest f25042e;

        /* renamed from: f */
        public final Downloader f25043f;

        /* renamed from: g */
        public final DownloadProgress f25044g;

        /* renamed from: h */
        public final boolean f25045h;

        /* renamed from: i */
        public final int f25046i;

        /* renamed from: j */
        @Nullable
        public volatile HandlerC4809c f25047j;

        /* renamed from: k */
        public volatile boolean f25048k;

        /* renamed from: l */
        @Nullable
        public Exception f25049l;

        /* renamed from: m */
        public long f25050m;

        public /* synthetic */ C4810d(DownloadRequest downloadRequest, Downloader downloader, DownloadProgress downloadProgress, boolean z, int i, HandlerC4809c handlerC4809c, C4807a c4807a) {
            this(downloadRequest, downloader, downloadProgress, z, i, handlerC4809c);
        }

        /* renamed from: f */
        public static int m19521f(int i) {
            return Math.min((i - 1) * 1000, 5000);
        }

        /* renamed from: e */
        public void m19522e(boolean z) {
            if (z) {
                this.f25047j = null;
            }
            if (this.f25048k) {
                return;
            }
            this.f25048k = true;
            this.f25043f.cancel();
            interrupt();
        }

        @Override // com.google.android.exoplayer2.offline.Downloader.ProgressListener
        public void onProgress(long j, long j2, float f) {
            this.f25044g.bytesDownloaded = j2;
            this.f25044g.percentDownloaded = f;
            if (j != this.f25050m) {
                this.f25050m = j;
                HandlerC4809c handlerC4809c = this.f25047j;
                if (handlerC4809c != null) {
                    handlerC4809c.obtainMessage(10, (int) (j >> 32), (int) j, this).sendToTarget();
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.f25045h) {
                    this.f25043f.remove();
                } else {
                    long j = -1;
                    int i = 0;
                    while (!this.f25048k) {
                        try {
                            this.f25043f.download(this);
                            break;
                        } catch (IOException e) {
                            if (!this.f25048k) {
                                long j2 = this.f25044g.bytesDownloaded;
                                if (j2 != j) {
                                    i = 0;
                                    j = j2;
                                }
                                i++;
                                if (i > this.f25046i) {
                                    throw e;
                                }
                                Thread.sleep(m19521f(i));
                            }
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception e2) {
                this.f25049l = e2;
            }
            HandlerC4809c handlerC4809c = this.f25047j;
            if (handlerC4809c != null) {
                handlerC4809c.obtainMessage(9, this).sendToTarget();
            }
        }

        public C4810d(DownloadRequest downloadRequest, Downloader downloader, DownloadProgress downloadProgress, boolean z, int i, HandlerC4809c handlerC4809c) {
            this.f25042e = downloadRequest;
            this.f25043f = downloader;
            this.f25044g = downloadProgress;
            this.f25045h = z;
            this.f25046i = i;
            this.f25047j = handlerC4809c;
            this.f25050m = -1L;
        }
    }

    @Deprecated
    public DownloadManager(Context context, DatabaseProvider databaseProvider, Cache cache, DataSource.Factory factory) {
        this(context, databaseProvider, cache, factory, new vtd());
    }

    /* renamed from: d */
    public static Download m19479d(Download download, DownloadRequest downloadRequest, int i, long j) {
        int i2;
        int i3 = download.state;
        long j2 = (i3 == 5 || download.isTerminalState()) ? j : download.startTimeMs;
        if (i3 == 5 || i3 == 7) {
            i2 = 7;
        } else {
            i2 = i != 0 ? 1 : 0;
        }
        return new Download(download.request.copyWithMergedRequest(downloadRequest), i2, j2, j, -1L, i, 0);
    }

    public void addDownload(DownloadRequest downloadRequest) {
        addDownload(downloadRequest, 0);
    }

    public void addListener(Listener listener) {
        Assertions.checkNotNull(listener);
        this.f25014f.add(listener);
    }

    /* renamed from: c */
    public final boolean m19480c(Message message) {
        int i = message.what;
        if (i == 0) {
            m19483g((List) message.obj);
        } else if (i == 1) {
            m19484h(message.arg1, message.arg2);
        } else {
            if (i != 2) {
                throw new IllegalStateException();
            }
            m19482f((C4808b) message.obj);
        }
        return true;
    }

    /* renamed from: e */
    public final void m19481e() {
        Iterator<Listener> it2 = this.f25014f.iterator();
        while (it2.hasNext()) {
            it2.next().onWaitingForRequirementsChanged(this, this.f25022n);
        }
    }

    /* renamed from: f */
    public final void m19482f(C4808b c4808b) {
        this.f25023o = Collections.unmodifiableList(c4808b.f25027c);
        Download download = c4808b.f25025a;
        boolean m19487k = m19487k();
        if (c4808b.f25026b) {
            Iterator<Listener> it2 = this.f25014f.iterator();
            while (it2.hasNext()) {
                it2.next().onDownloadRemoved(this, download);
            }
        } else {
            Iterator<Listener> it3 = this.f25014f.iterator();
            while (it3.hasNext()) {
                it3.next().onDownloadChanged(this, download, c4808b.f25028d);
            }
        }
        if (m19487k) {
            m19481e();
        }
    }

    /* renamed from: g */
    public final void m19483g(List<Download> list) {
        this.f25017i = true;
        this.f25023o = Collections.unmodifiableList(list);
        boolean m19487k = m19487k();
        Iterator<Listener> it2 = this.f25014f.iterator();
        while (it2.hasNext()) {
            it2.next().onInitialized(this);
        }
        if (m19487k) {
            m19481e();
        }
    }

    public Looper getApplicationLooper() {
        return this.f25011c.getLooper();
    }

    public List<Download> getCurrentDownloads() {
        return this.f25023o;
    }

    public DownloadIndex getDownloadIndex() {
        return this.f25010b;
    }

    public boolean getDownloadsPaused() {
        return this.f25018j;
    }

    public int getMaxParallelDownloads() {
        return this.f25019k;
    }

    public int getMinRetryCount() {
        return this.f25020l;
    }

    public int getNotMetRequirements() {
        return this.f25021m;
    }

    public Requirements getRequirements() {
        return this.f25024p.getRequirements();
    }

    /* renamed from: h */
    public final void m19484h(int i, int i2) {
        this.f25015g -= i;
        this.f25016h = i2;
        if (isIdle()) {
            Iterator<Listener> it2 = this.f25014f.iterator();
            while (it2.hasNext()) {
                it2.next().onIdle(this);
            }
        }
    }

    /* renamed from: i */
    public final void m19485i(RequirementsWatcher requirementsWatcher, int i) {
        Requirements requirements = requirementsWatcher.getRequirements();
        if (this.f25021m != i) {
            this.f25021m = i;
            this.f25015g++;
            this.f25012d.obtainMessage(2, i, 0).sendToTarget();
        }
        boolean m19487k = m19487k();
        Iterator<Listener> it2 = this.f25014f.iterator();
        while (it2.hasNext()) {
            it2.next().onRequirementsStateChanged(this, requirements, i);
        }
        if (m19487k) {
            m19481e();
        }
    }

    public boolean isIdle() {
        return this.f25016h == 0 && this.f25015g == 0;
    }

    public boolean isInitialized() {
        return this.f25017i;
    }

    public boolean isWaitingForRequirements() {
        return this.f25022n;
    }

    /* renamed from: j */
    public final void m19486j(boolean z) {
        if (this.f25018j == z) {
            return;
        }
        this.f25018j = z;
        this.f25015g++;
        this.f25012d.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
        boolean m19487k = m19487k();
        Iterator<Listener> it2 = this.f25014f.iterator();
        while (it2.hasNext()) {
            it2.next().onDownloadsPausedChanged(this, z);
        }
        if (m19487k) {
            m19481e();
        }
    }

    /* renamed from: k */
    public final boolean m19487k() {
        boolean z;
        if (!this.f25018j && this.f25021m != 0) {
            for (int i = 0; i < this.f25023o.size(); i++) {
                if (this.f25023o.get(i).state == 0) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        boolean z2 = this.f25022n != z;
        this.f25022n = z;
        return z2;
    }

    public void pauseDownloads() {
        m19486j(true);
    }

    public void release() {
        synchronized (this.f25012d) {
            HandlerC4809c handlerC4809c = this.f25012d;
            if (handlerC4809c.f25030a) {
                return;
            }
            handlerC4809c.sendEmptyMessage(12);
            boolean z = false;
            while (true) {
                HandlerC4809c handlerC4809c2 = this.f25012d;
                if (handlerC4809c2.f25030a) {
                    break;
                }
                try {
                    handlerC4809c2.wait();
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            this.f25011c.removeCallbacksAndMessages(null);
            this.f25023o = Collections.emptyList();
            this.f25015g = 0;
            this.f25016h = 0;
            this.f25017i = false;
            this.f25021m = 0;
            this.f25022n = false;
        }
    }

    public void removeAllDownloads() {
        this.f25015g++;
        this.f25012d.obtainMessage(8).sendToTarget();
    }

    public void removeDownload(String str) {
        this.f25015g++;
        this.f25012d.obtainMessage(7, str).sendToTarget();
    }

    public void removeListener(Listener listener) {
        this.f25014f.remove(listener);
    }

    public void resumeDownloads() {
        m19486j(false);
    }

    public void setMaxParallelDownloads(@IntRange(from = 1) int i) {
        Assertions.checkArgument(i > 0);
        if (this.f25019k == i) {
            return;
        }
        this.f25019k = i;
        this.f25015g++;
        this.f25012d.obtainMessage(4, i, 0).sendToTarget();
    }

    public void setMinRetryCount(int i) {
        Assertions.checkArgument(i >= 0);
        if (this.f25020l == i) {
            return;
        }
        this.f25020l = i;
        this.f25015g++;
        this.f25012d.obtainMessage(5, i, 0).sendToTarget();
    }

    public void setRequirements(Requirements requirements) {
        if (requirements.equals(this.f25024p.getRequirements())) {
            return;
        }
        this.f25024p.stop();
        RequirementsWatcher requirementsWatcher = new RequirementsWatcher(this.f25009a, this.f25013e, requirements);
        this.f25024p = requirementsWatcher;
        m19485i(this.f25024p, requirementsWatcher.start());
    }

    public void setStopReason(@Nullable String str, int i) {
        this.f25015g++;
        this.f25012d.obtainMessage(3, i, 0, str).sendToTarget();
    }

    public DownloadManager(Context context, DatabaseProvider databaseProvider, Cache cache, DataSource.Factory factory, Executor executor) {
        this(context, new DefaultDownloadIndex(databaseProvider), new DefaultDownloaderFactory(new CacheDataSource.Factory().setCache(cache).setUpstreamDataSourceFactory(factory), executor));
    }

    public void addDownload(DownloadRequest downloadRequest, int i) {
        this.f25015g++;
        this.f25012d.obtainMessage(6, i, 0, downloadRequest).sendToTarget();
    }

    public DownloadManager(Context context, WritableDownloadIndex writableDownloadIndex, DownloaderFactory downloaderFactory) {
        this.f25009a = context.getApplicationContext();
        this.f25010b = writableDownloadIndex;
        this.f25019k = 3;
        this.f25020l = 5;
        this.f25018j = true;
        this.f25023o = Collections.emptyList();
        this.f25014f = new CopyOnWriteArraySet<>();
        Handler createHandlerForCurrentOrMainLooper = Util.createHandlerForCurrentOrMainLooper(new Handler.Callback() { // from class: com.sunia.HTREnginev2.jgf
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean m19480c;
                m19480c = DownloadManager.this.m19480c(message);
                return m19480c;
            }
        });
        this.f25011c = createHandlerForCurrentOrMainLooper;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadManager");
        handlerThread.start();
        HandlerC4809c handlerC4809c = new HandlerC4809c(handlerThread, writableDownloadIndex, downloaderFactory, createHandlerForCurrentOrMainLooper, this.f25019k, this.f25020l, this.f25018j);
        this.f25012d = handlerC4809c;
        RequirementsWatcher.Listener listener = new RequirementsWatcher.Listener() { // from class: com.sunia.HTREnginev2.kgf
            @Override // com.google.android.exoplayer2.scheduler.RequirementsWatcher.Listener
            public final void onRequirementsStateChanged(RequirementsWatcher requirementsWatcher, int i) {
                DownloadManager.this.m19485i(requirementsWatcher, i);
            }
        };
        this.f25013e = listener;
        RequirementsWatcher requirementsWatcher = new RequirementsWatcher(context, listener, DEFAULT_REQUIREMENTS);
        this.f25024p = requirementsWatcher;
        int start = requirementsWatcher.start();
        this.f25021m = start;
        this.f25015g = 1;
        handlerC4809c.obtainMessage(0, start, 0).sendToTarget();
    }
}
