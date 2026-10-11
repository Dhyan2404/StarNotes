package com.google.android.exoplayer2.offline;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.google.android.exoplayer2.offline.DownloadManager;
import com.google.android.exoplayer2.offline.DownloadService;
import com.google.android.exoplayer2.scheduler.Requirements;
import com.google.android.exoplayer2.scheduler.Scheduler;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.NotificationUtil;
import com.google.android.exoplayer2.util.Util;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import java.util.HashMap;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public abstract class DownloadService extends Service {
    public static final String ACTION_ADD_DOWNLOAD = "com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD";
    public static final String ACTION_INIT = "com.google.android.exoplayer.downloadService.action.INIT";
    public static final String ACTION_PAUSE_DOWNLOADS = "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS";
    public static final String ACTION_REMOVE_ALL_DOWNLOADS = "com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS";
    public static final String ACTION_REMOVE_DOWNLOAD = "com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD";
    public static final String ACTION_RESUME_DOWNLOADS = "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS";
    public static final String ACTION_SET_REQUIREMENTS = "com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS";
    public static final String ACTION_SET_STOP_REASON = "com.google.android.exoplayer.downloadService.action.SET_STOP_REASON";
    public static final long DEFAULT_FOREGROUND_NOTIFICATION_UPDATE_INTERVAL = 1000;
    public static final int FOREGROUND_NOTIFICATION_ID_NONE = 0;
    public static final String KEY_CONTENT_ID = "content_id";
    public static final String KEY_DOWNLOAD_REQUEST = "download_request";
    public static final String KEY_FOREGROUND = "foreground";
    public static final String KEY_REQUIREMENTS = "requirements";
    public static final String KEY_STOP_REASON = "stop_reason";

    /* renamed from: o */
    public static final String f25059o = "com.google.android.exoplayer.downloadService.action.RESTART";

    /* renamed from: p */
    public static final String f25060p = "DownloadService";

    /* renamed from: q */
    public static final HashMap<Class<? extends DownloadService>, C4813b> f25061q = new HashMap<>();

    /* renamed from: e */
    @Nullable
    public final C4814c f25062e;

    /* renamed from: f */
    @Nullable
    public final String f25063f;

    /* renamed from: g */
    @StringRes
    public final int f25064g;

    /* renamed from: h */
    @StringRes
    public final int f25065h;

    /* renamed from: i */
    public C4813b f25066i;

    /* renamed from: j */
    public int f25067j;

    /* renamed from: k */
    public boolean f25068k;

    /* renamed from: l */
    public boolean f25069l;

    /* renamed from: m */
    public boolean f25070m;

    /* renamed from: n */
    public boolean f25071n;

    /* renamed from: com.google.android.exoplayer2.offline.DownloadService$b */
    /* loaded from: classes5.dex */
    public static final class C4813b implements DownloadManager.Listener {

        /* renamed from: a */
        public final Context f25072a;

        /* renamed from: b */
        public final DownloadManager f25073b;

        /* renamed from: c */
        public final boolean f25074c;

        /* renamed from: d */
        @Nullable
        public final Scheduler f25075d;

        /* renamed from: e */
        public final Class<? extends DownloadService> f25076e;

        /* renamed from: f */
        @Nullable
        public DownloadService f25077f;

        /* renamed from: g */
        public Requirements f25078g;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public /* synthetic */ void m19544f(DownloadService downloadService) {
            downloadService.m19540o(this.f25073b.getCurrentDownloads());
        }

        /* renamed from: c */
        public void m19545c(final DownloadService downloadService) {
            Assertions.checkState(this.f25077f == null);
            this.f25077f = downloadService;
            if (this.f25073b.isInitialized()) {
                Util.createHandlerForCurrentOrMainLooper().postAtFrontOfQueue(new Runnable() { // from class: com.sunia.HTREnginev2.mgf
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadService.C4813b.this.m19544f(downloadService);
                    }
                });
            }
        }

        @RequiresNonNull({"scheduler"})
        /* renamed from: d */
        public final void m19546d() {
            Requirements requirements = new Requirements(0);
            if (m19549h(requirements)) {
                this.f25075d.cancel();
                this.f25078g = requirements;
            }
        }

        /* renamed from: e */
        public void m19547e(DownloadService downloadService) {
            Assertions.checkState(this.f25077f == downloadService);
            this.f25077f = null;
        }

        /* renamed from: g */
        public final void m19548g() {
            if (this.f25074c) {
                try {
                    Util.startForegroundService(this.f25072a, DownloadService.m19533i(this.f25072a, this.f25076e, DownloadService.f25059o));
                    return;
                } catch (IllegalStateException unused) {
                    Log.m21493w(DownloadService.f25060p, "Failed to restart (foreground launch restriction)");
                    return;
                }
            }
            try {
                this.f25072a.startService(DownloadService.m19533i(this.f25072a, this.f25076e, DownloadService.ACTION_INIT));
            } catch (IllegalStateException unused2) {
                Log.m21493w(DownloadService.f25060p, "Failed to restart (process is idle)");
            }
        }

        /* renamed from: h */
        public final boolean m19549h(Requirements requirements) {
            return !Util.areEqual(this.f25078g, requirements);
        }

        /* renamed from: i */
        public final boolean m19550i() {
            DownloadService downloadService = this.f25077f;
            return downloadService == null || downloadService.m19537k();
        }

        /* renamed from: j */
        public boolean m19551j() {
            boolean isWaitingForRequirements = this.f25073b.isWaitingForRequirements();
            if (this.f25075d == null) {
                return !isWaitingForRequirements;
            }
            if (!isWaitingForRequirements) {
                m19546d();
                return true;
            }
            Requirements requirements = this.f25073b.getRequirements();
            if (!this.f25075d.getSupportedRequirements(requirements).equals(requirements)) {
                m19546d();
                return false;
            }
            if (!m19549h(requirements)) {
                return true;
            }
            if (this.f25075d.schedule(requirements, this.f25072a.getPackageName(), DownloadService.f25059o)) {
                this.f25078g = requirements;
                return true;
            }
            Log.m21493w(DownloadService.f25060p, "Failed to schedule restart");
            m19546d();
            return false;
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onDownloadChanged(DownloadManager downloadManager, Download download, @Nullable Exception exc) {
            DownloadService downloadService = this.f25077f;
            if (downloadService != null) {
                downloadService.m19538m(download);
            }
            if (m19550i() && DownloadService.m19535l(download.state)) {
                Log.m21493w(DownloadService.f25060p, "DownloadService wasn't running. Restarting.");
                m19548g();
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onDownloadRemoved(DownloadManager downloadManager, Download download) {
            DownloadService downloadService = this.f25077f;
            if (downloadService != null) {
                downloadService.m19539n();
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public final void onIdle(DownloadManager downloadManager) {
            DownloadService downloadService = this.f25077f;
            if (downloadService != null) {
                downloadService.m19541p();
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onInitialized(DownloadManager downloadManager) {
            DownloadService downloadService = this.f25077f;
            if (downloadService != null) {
                downloadService.m19540o(downloadManager.getCurrentDownloads());
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onRequirementsStateChanged(DownloadManager downloadManager, Requirements requirements, int i) {
            m19551j();
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onWaitingForRequirementsChanged(DownloadManager downloadManager, boolean z) {
            if (z || downloadManager.getDownloadsPaused() || !m19550i()) {
                return;
            }
            List<Download> currentDownloads = downloadManager.getCurrentDownloads();
            for (int i = 0; i < currentDownloads.size(); i++) {
                if (currentDownloads.get(i).state == 0) {
                    m19548g();
                    return;
                }
            }
        }

        public C4813b(Context context, DownloadManager downloadManager, boolean z, @Nullable Scheduler scheduler, Class<? extends DownloadService> cls) {
            this.f25072a = context;
            this.f25073b = downloadManager;
            this.f25074c = z;
            this.f25075d = scheduler;
            this.f25076e = cls;
            downloadManager.addListener(this);
            m19551j();
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadService$c */
    /* loaded from: classes5.dex */
    public final class C4814c {

        /* renamed from: a */
        public final int f25079a;

        /* renamed from: b */
        public final long f25080b;

        /* renamed from: c */
        public final Handler f25081c = new Handler(Looper.getMainLooper());

        /* renamed from: d */
        public boolean f25082d;

        /* renamed from: e */
        public boolean f25083e;

        public C4814c(int i, long j) {
            this.f25079a = i;
            this.f25080b = j;
        }

        /* renamed from: b */
        public void m19553b() {
            if (this.f25083e) {
                m19557f();
            }
        }

        /* renamed from: c */
        public void m19554c() {
            if (this.f25083e) {
                return;
            }
            m19557f();
        }

        /* renamed from: d */
        public void m19555d() {
            this.f25082d = true;
            m19557f();
        }

        /* renamed from: e */
        public void m19556e() {
            this.f25082d = false;
            this.f25081c.removeCallbacksAndMessages(null);
        }

        /* renamed from: f */
        public final void m19557f() {
            DownloadManager downloadManager = ((C4813b) Assertions.checkNotNull(DownloadService.this.f25066i)).f25073b;
            Notification foregroundNotification = DownloadService.this.getForegroundNotification(downloadManager.getCurrentDownloads(), downloadManager.getNotMetRequirements());
            if (this.f25083e) {
                ((NotificationManager) DownloadService.this.getSystemService(FunctionKey.NOTIFICATION)).notify(this.f25079a, foregroundNotification);
            } else {
                DownloadService.this.startForeground(this.f25079a, foregroundNotification);
                this.f25083e = true;
            }
            if (this.f25082d) {
                this.f25081c.removeCallbacksAndMessages(null);
                this.f25081c.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.ngf
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadService.C4814c.this.m19557f();
                    }
                }, this.f25080b);
            }
        }
    }

    public DownloadService(int i) {
        this(i, 1000L);
    }

    public static Intent buildAddDownloadIntent(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, boolean z) {
        return buildAddDownloadIntent(context, cls, downloadRequest, 0, z);
    }

    public static Intent buildPauseDownloadsIntent(Context context, Class<? extends DownloadService> cls, boolean z) {
        return m19534j(context, cls, ACTION_PAUSE_DOWNLOADS, z);
    }

    public static Intent buildRemoveAllDownloadsIntent(Context context, Class<? extends DownloadService> cls, boolean z) {
        return m19534j(context, cls, ACTION_REMOVE_ALL_DOWNLOADS, z);
    }

    public static Intent buildRemoveDownloadIntent(Context context, Class<? extends DownloadService> cls, String str, boolean z) {
        return m19534j(context, cls, ACTION_REMOVE_DOWNLOAD, z).putExtra(KEY_CONTENT_ID, str);
    }

    public static Intent buildResumeDownloadsIntent(Context context, Class<? extends DownloadService> cls, boolean z) {
        return m19534j(context, cls, ACTION_RESUME_DOWNLOADS, z);
    }

    public static Intent buildSetRequirementsIntent(Context context, Class<? extends DownloadService> cls, Requirements requirements, boolean z) {
        return m19534j(context, cls, ACTION_SET_REQUIREMENTS, z).putExtra("requirements", requirements);
    }

    public static Intent buildSetStopReasonIntent(Context context, Class<? extends DownloadService> cls, @Nullable String str, int i, boolean z) {
        return m19534j(context, cls, ACTION_SET_STOP_REASON, z).putExtra(KEY_CONTENT_ID, str).putExtra("stop_reason", i);
    }

    /* renamed from: i */
    public static Intent m19533i(Context context, Class<? extends DownloadService> cls, String str) {
        return new Intent(context, cls).setAction(str);
    }

    /* renamed from: j */
    public static Intent m19534j(Context context, Class<? extends DownloadService> cls, String str, boolean z) {
        return m19533i(context, cls, str).putExtra("foreground", z);
    }

    /* renamed from: l */
    public static boolean m19535l(int i) {
        return i == 2 || i == 5 || i == 7;
    }

    /* renamed from: q */
    public static void m19536q(Context context, Intent intent, boolean z) {
        if (z) {
            Util.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }

    public static void sendAddDownload(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, boolean z) {
        m19536q(context, buildAddDownloadIntent(context, cls, downloadRequest, z), z);
    }

    public static void sendPauseDownloads(Context context, Class<? extends DownloadService> cls, boolean z) {
        m19536q(context, buildPauseDownloadsIntent(context, cls, z), z);
    }

    public static void sendRemoveAllDownloads(Context context, Class<? extends DownloadService> cls, boolean z) {
        m19536q(context, buildRemoveAllDownloadsIntent(context, cls, z), z);
    }

    public static void sendRemoveDownload(Context context, Class<? extends DownloadService> cls, String str, boolean z) {
        m19536q(context, buildRemoveDownloadIntent(context, cls, str, z), z);
    }

    public static void sendResumeDownloads(Context context, Class<? extends DownloadService> cls, boolean z) {
        m19536q(context, buildResumeDownloadsIntent(context, cls, z), z);
    }

    public static void sendSetRequirements(Context context, Class<? extends DownloadService> cls, Requirements requirements, boolean z) {
        m19536q(context, buildSetRequirementsIntent(context, cls, requirements, z), z);
    }

    public static void sendSetStopReason(Context context, Class<? extends DownloadService> cls, @Nullable String str, int i, boolean z) {
        m19536q(context, buildSetStopReasonIntent(context, cls, str, i, z), z);
    }

    public static void start(Context context, Class<? extends DownloadService> cls) {
        context.startService(m19533i(context, cls, ACTION_INIT));
    }

    public static void startForeground(Context context, Class<? extends DownloadService> cls) {
        Util.startForegroundService(context, m19534j(context, cls, ACTION_INIT, true));
    }

    public abstract DownloadManager getDownloadManager();

    public abstract Notification getForegroundNotification(List<Download> list, int i);

    @Nullable
    public abstract Scheduler getScheduler();

    public final void invalidateForegroundNotification() {
        C4814c c4814c = this.f25062e;
        if (c4814c == null || this.f25071n) {
            return;
        }
        c4814c.m19553b();
    }

    /* renamed from: k */
    public final boolean m19537k() {
        return this.f25070m;
    }

    /* renamed from: m */
    public final void m19538m(Download download) {
        if (this.f25062e != null) {
            if (m19535l(download.state)) {
                this.f25062e.m19555d();
            } else {
                this.f25062e.m19553b();
            }
        }
    }

    /* renamed from: n */
    public final void m19539n() {
        C4814c c4814c = this.f25062e;
        if (c4814c != null) {
            c4814c.m19553b();
        }
    }

    /* renamed from: o */
    public final void m19540o(List<Download> list) {
        if (this.f25062e != null) {
            for (int i = 0; i < list.size(); i++) {
                if (m19535l(list.get(i).state)) {
                    this.f25062e.m19555d();
                    return;
                }
            }
        }
    }

    @Override // android.app.Service
    @Nullable
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Service
    public void onCreate() {
        String str = this.f25063f;
        if (str != null) {
            NotificationUtil.createNotificationChannel(this, str, this.f25064g, this.f25065h, 2);
        }
        Class<?> cls = getClass();
        HashMap<Class<? extends DownloadService>, C4813b> hashMap = f25061q;
        C4813b c4813b = (C4813b) hashMap.get(cls);
        if (c4813b == null) {
            boolean z = this.f25062e != null;
            Scheduler scheduler = (z && (Util.SDK_INT < 31)) ? getScheduler() : null;
            DownloadManager downloadManager = getDownloadManager();
            downloadManager.resumeDownloads();
            c4813b = new C4813b(getApplicationContext(), downloadManager, z, scheduler, cls);
            hashMap.put(cls, c4813b);
        }
        this.f25066i = c4813b;
        c4813b.m19545c(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f25071n = true;
        ((C4813b) Assertions.checkNotNull(this.f25066i)).m19547e(this);
        C4814c c4814c = this.f25062e;
        if (c4814c != null) {
            c4814c.m19556e();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i, int i2) {
        String str;
        String str2;
        C4814c c4814c;
        this.f25067j = i2;
        this.f25069l = false;
        if (intent != null) {
            str = intent.getAction();
            str2 = intent.getStringExtra(KEY_CONTENT_ID);
            this.f25068k |= intent.getBooleanExtra("foreground", false) || f25059o.equals(str);
        } else {
            str = null;
            str2 = null;
        }
        if (str == null) {
            str = ACTION_INIT;
        }
        DownloadManager downloadManager = ((C4813b) Assertions.checkNotNull(this.f25066i)).f25073b;
        char c = 65535;
        switch (str.hashCode()) {
            case -1931239035:
                if (str.equals(ACTION_ADD_DOWNLOAD)) {
                    c = 0;
                    break;
                }
                break;
            case -932047176:
                if (str.equals(ACTION_RESUME_DOWNLOADS)) {
                    c = 1;
                    break;
                }
                break;
            case -871181424:
                if (str.equals(f25059o)) {
                    c = 2;
                    break;
                }
                break;
            case -650547439:
                if (str.equals(ACTION_REMOVE_ALL_DOWNLOADS)) {
                    c = 3;
                    break;
                }
                break;
            case -119057172:
                if (str.equals(ACTION_SET_REQUIREMENTS)) {
                    c = 4;
                    break;
                }
                break;
            case 191112771:
                if (str.equals(ACTION_PAUSE_DOWNLOADS)) {
                    c = 5;
                    break;
                }
                break;
            case 671523141:
                if (str.equals(ACTION_SET_STOP_REASON)) {
                    c = 6;
                    break;
                }
                break;
            case 1015676687:
                if (str.equals(ACTION_INIT)) {
                    c = 7;
                    break;
                }
                break;
            case 1547520644:
                if (str.equals(ACTION_REMOVE_DOWNLOAD)) {
                    c = '\b';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                DownloadRequest downloadRequest = (DownloadRequest) ((Intent) Assertions.checkNotNull(intent)).getParcelableExtra(KEY_DOWNLOAD_REQUEST);
                if (downloadRequest != null) {
                    downloadManager.addDownload(downloadRequest, intent.getIntExtra("stop_reason", 0));
                    break;
                } else {
                    Log.m21489e(f25060p, "Ignored ADD_DOWNLOAD: Missing download_request extra");
                    break;
                }
            case 1:
                downloadManager.resumeDownloads();
                break;
            case 2:
            case 7:
                break;
            case 3:
                downloadManager.removeAllDownloads();
                break;
            case 4:
                Requirements requirements = (Requirements) ((Intent) Assertions.checkNotNull(intent)).getParcelableExtra("requirements");
                if (requirements != null) {
                    downloadManager.setRequirements(requirements);
                    break;
                } else {
                    Log.m21489e(f25060p, "Ignored SET_REQUIREMENTS: Missing requirements extra");
                    break;
                }
            case 5:
                downloadManager.pauseDownloads();
                break;
            case 6:
                if (!((Intent) Assertions.checkNotNull(intent)).hasExtra("stop_reason")) {
                    Log.m21489e(f25060p, "Ignored SET_STOP_REASON: Missing stop_reason extra");
                    break;
                } else {
                    downloadManager.setStopReason(str2, intent.getIntExtra("stop_reason", 0));
                    break;
                }
            case '\b':
                if (str2 != null) {
                    downloadManager.removeDownload(str2);
                    break;
                } else {
                    Log.m21489e(f25060p, "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                    break;
                }
            default:
                Log.m21489e(f25060p, str.length() != 0 ? "Ignored unrecognized action: ".concat(str) : new String("Ignored unrecognized action: "));
                break;
        }
        if (Util.SDK_INT >= 26 && this.f25068k && (c4814c = this.f25062e) != null) {
            c4814c.m19554c();
        }
        this.f25070m = false;
        if (downloadManager.isIdle()) {
            m19541p();
        }
        return 1;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.f25069l = true;
    }

    /* renamed from: p */
    public final void m19541p() {
        C4814c c4814c = this.f25062e;
        if (c4814c != null) {
            c4814c.m19556e();
        }
        if (((C4813b) Assertions.checkNotNull(this.f25066i)).m19551j()) {
            if (Util.SDK_INT >= 28 || !this.f25069l) {
                this.f25070m |= stopSelfResult(this.f25067j);
            } else {
                stopSelf();
                this.f25070m = true;
            }
        }
    }

    public DownloadService(int i, long j) {
        this(i, j, null, 0, 0);
    }

    public static Intent buildAddDownloadIntent(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, int i, boolean z) {
        return m19534j(context, cls, ACTION_ADD_DOWNLOAD, z).putExtra(KEY_DOWNLOAD_REQUEST, downloadRequest).putExtra("stop_reason", i);
    }

    @Deprecated
    public DownloadService(int i, long j, @Nullable String str, @StringRes int i2) {
        this(i, j, str, i2, 0);
    }

    public static void sendAddDownload(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, int i, boolean z) {
        m19536q(context, buildAddDownloadIntent(context, cls, downloadRequest, i, z), z);
    }

    public DownloadService(int i, long j, @Nullable String str, @StringRes int i2, @StringRes int i3) {
        if (i == 0) {
            this.f25062e = null;
            this.f25063f = null;
            this.f25064g = 0;
            this.f25065h = 0;
            return;
        }
        this.f25062e = new C4814c(i, j);
        this.f25063f = str;
        this.f25064g = i2;
        this.f25065h = i3;
    }
}
