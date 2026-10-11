package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LifecycleService;
import androidx.work.Logger;
import androidx.work.impl.background.systemalarm.SystemAlarmDispatcher;
import androidx.work.impl.utils.WakeLocks;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class SystemAlarmService extends LifecycleService implements SystemAlarmDispatcher.InterfaceC1602c {

    /* renamed from: h */
    public static final String f11662h = Logger.tagWithPrefix("SystemAlarmService");

    /* renamed from: f */
    public SystemAlarmDispatcher f11663f;

    /* renamed from: g */
    public boolean f11664g;

    @MainThread
    /* renamed from: a */
    public final void m7068a() {
        SystemAlarmDispatcher systemAlarmDispatcher = new SystemAlarmDispatcher(this);
        this.f11663f = systemAlarmDispatcher;
        systemAlarmDispatcher.m7066k(this);
    }

    @Override // androidx.work.impl.background.systemalarm.SystemAlarmDispatcher.InterfaceC1602c
    @MainThread
    public void onAllCommandsCompleted() {
        this.f11664g = true;
        Logger.get().debug(f11662h, "All commands completed in dispatcher");
        WakeLocks.checkWakeLocks();
        stopSelf();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        m7068a();
        this.f11664g = false;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f11664g = true;
        this.f11663f.m7064i();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        super.onStartCommand(intent, flags, startId);
        if (this.f11664g) {
            Logger.get().info(f11662h, "Re-initializing SystemAlarmDispatcher after a request to shut-down.");
            this.f11663f.m7064i();
            m7068a();
            this.f11664g = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f11663f.add(intent, startId);
        return 3;
    }
}
