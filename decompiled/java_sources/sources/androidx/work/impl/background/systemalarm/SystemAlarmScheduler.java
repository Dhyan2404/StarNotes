package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.Scheduler;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class SystemAlarmScheduler implements Scheduler {

    /* renamed from: f */
    public static final String f11660f = Logger.tagWithPrefix("SystemAlarmScheduler");

    /* renamed from: e */
    public final Context f11661e;

    public SystemAlarmScheduler(@NonNull Context context) {
        this.f11661e = context.getApplicationContext();
    }

    /* renamed from: a */
    public final void m7067a(@NonNull WorkSpec workSpec) {
        Logger.get().debug(f11660f, "Scheduling work with workSpecId " + workSpec.id);
        this.f11661e.startService(CommandHandler.m7034e(this.f11661e, WorkSpecKt.generationalId(workSpec)));
    }

    @Override // androidx.work.impl.Scheduler
    public void cancel(@NonNull String workSpecId) {
        this.f11661e.startService(CommandHandler.m7036g(this.f11661e, workSpecId));
    }

    @Override // androidx.work.impl.Scheduler
    public boolean hasLimitedSchedulingSlots() {
        return true;
    }

    @Override // androidx.work.impl.Scheduler
    public void schedule(@NonNull WorkSpec... workSpecs) {
        for (WorkSpec workSpec : workSpecs) {
            m7067a(workSpec);
        }
    }
}
