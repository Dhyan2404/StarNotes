package androidx.work.impl.foreground;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.DoNotInline;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LifecycleService;
import androidx.work.Logger;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.permissionx.guolindev.PermissionX;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class SystemForegroundService extends LifecycleService implements SystemForegroundDispatcher.InterfaceC1613b {

    /* renamed from: j */
    public static final String f11748j = Logger.tagWithPrefix("SystemFgService");

    /* renamed from: k */
    @Nullable
    public static SystemForegroundService f11749k = null;

    /* renamed from: f */
    public Handler f11750f;

    /* renamed from: g */
    public boolean f11751g;

    /* renamed from: h */
    public SystemForegroundDispatcher f11752h;

    /* renamed from: i */
    public NotificationManager f11753i;

    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$a */
    /* loaded from: classes3.dex */
    public class RunnableC1614a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ int f11754e;

        /* renamed from: f */
        public final /* synthetic */ Notification f11755f;

        /* renamed from: g */
        public final /* synthetic */ int f11756g;

        public RunnableC1614a(final int val$notificationId, final Notification val$notification, final int val$notificationType) {
            this.f11754e = val$notificationId;
            this.f11755f = val$notification;
            this.f11756g = val$notificationType;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 31) {
                C1618e.m7096a(SystemForegroundService.this, this.f11754e, this.f11755f, this.f11756g);
            } else {
                C1617d.m7095a(SystemForegroundService.this, this.f11754e, this.f11755f, this.f11756g);
            }
        }
    }

    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$b */
    /* loaded from: classes3.dex */
    public class RunnableC1615b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ int f11758e;

        /* renamed from: f */
        public final /* synthetic */ Notification f11759f;

        public RunnableC1615b(final int val$notificationId, final Notification val$notification) {
            this.f11758e = val$notificationId;
            this.f11759f = val$notification;
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemForegroundService.this.f11753i.notify(this.f11758e, this.f11759f);
        }
    }

    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$c */
    /* loaded from: classes3.dex */
    public class RunnableC1616c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ int f11761e;

        public RunnableC1616c(final int val$notificationId) {
            this.f11761e = val$notificationId;
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemForegroundService.this.f11753i.cancel(this.f11761e);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$d */
    /* loaded from: classes3.dex */
    public static class C1617d {
        @DoNotInline
        /* renamed from: a */
        public static void m7095a(Service service, int id, Notification notification, int foregroundServiceType) {
            service.startForeground(id, notification, foregroundServiceType);
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$e */
    /* loaded from: classes3.dex */
    public static class C1618e {
        @DoNotInline
        /* renamed from: a */
        public static void m7096a(Service service, int id, Notification notification, int foregroundServiceType) {
            try {
                service.startForeground(id, notification, foregroundServiceType);
            } catch (ForegroundServiceStartNotAllowedException e) {
                Logger.get().warning(SystemForegroundService.f11748j, "Unable to start foreground service", e);
            }
        }
    }

    @Nullable
    public static SystemForegroundService getInstance() {
        return f11749k;
    }

    @MainThread
    /* renamed from: b */
    public final void m7094b() {
        this.f11750f = new Handler(Looper.getMainLooper());
        this.f11753i = (NotificationManager) getApplicationContext().getSystemService(FunctionKey.NOTIFICATION);
        SystemForegroundDispatcher systemForegroundDispatcher = new SystemForegroundDispatcher(getApplicationContext());
        this.f11752h = systemForegroundDispatcher;
        systemForegroundDispatcher.m7092i(this);
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.InterfaceC1613b
    public void cancelNotification(final int notificationId) {
        this.f11750f.post(new RunnableC1616c(notificationId));
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.InterfaceC1613b
    @RequiresPermission(PermissionX.permission.POST_NOTIFICATIONS)
    public void notify(final int notificationId, @NonNull final Notification notification) {
        this.f11750f.post(new RunnableC1615b(notificationId, notification));
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        f11749k = this;
        m7094b();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f11752h.m7090g();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(@Nullable Intent intent, int flags, int startId) {
        super.onStartCommand(intent, flags, startId);
        if (this.f11751g) {
            Logger.get().info(f11748j, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.f11752h.m7090g();
            m7094b();
            this.f11751g = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f11752h.m7091h(intent);
        return 3;
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.InterfaceC1613b
    public void startForeground(final int notificationId, final int notificationType, @NonNull final Notification notification) {
        this.f11750f.post(new RunnableC1614a(notificationId, notification, notificationType));
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.InterfaceC1613b
    @MainThread
    public void stop() {
        this.f11751g = true;
        Logger.get().debug(f11748j, "All commands completed.");
        stopForeground(true);
        f11749k = null;
        stopSelf();
    }
}
