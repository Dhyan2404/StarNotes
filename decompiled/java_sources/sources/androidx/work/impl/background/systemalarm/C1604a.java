package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.Clock;
import androidx.work.Logger;
import androidx.work.impl.background.systemalarm.SystemAlarmDispatcher;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.work.impl.background.systemalarm.a */
/* loaded from: classes3.dex */
public class C1604a {

    /* renamed from: f */
    public static final String f11665f = Logger.tagWithPrefix("ConstraintsCmdHandler");

    /* renamed from: a */
    public final Context f11666a;

    /* renamed from: b */
    public final Clock f11667b;

    /* renamed from: c */
    public final int f11668c;

    /* renamed from: d */
    public final SystemAlarmDispatcher f11669d;

    /* renamed from: e */
    public final WorkConstraintsTracker f11670e;

    public C1604a(@NonNull Context context, Clock clock, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        this.f11666a = context;
        this.f11667b = clock;
        this.f11668c = startId;
        this.f11669d = dispatcher;
        this.f11670e = new WorkConstraintsTracker(dispatcher.m7060e().getTrackers());
    }

    @WorkerThread
    /* renamed from: a */
    public void m7069a() {
        List<WorkSpec> scheduledWork = this.f11669d.m7060e().getWorkDatabase().workSpecDao().getScheduledWork();
        ConstraintProxy.m7048a(this.f11666a, scheduledWork);
        ArrayList<WorkSpec> arrayList = new ArrayList(scheduledWork.size());
        long currentTimeMillis = this.f11667b.currentTimeMillis();
        for (WorkSpec workSpec : scheduledWork) {
            if (currentTimeMillis >= workSpec.calculateNextRunTime() && (!workSpec.hasConstraints() || this.f11670e.areAllConstraintsMet(workSpec))) {
                arrayList.add(workSpec);
            }
        }
        for (WorkSpec workSpec2 : arrayList) {
            String str = workSpec2.id;
            Intent m7031b = CommandHandler.m7031b(this.f11666a, WorkSpecKt.generationalId(workSpec2));
            Logger.get().debug(f11665f, "Creating a delay_met command for workSpec with id (" + str + MotionUtils.f31762d);
            this.f11669d.m7059d().getMainThreadExecutor().execute(new SystemAlarmDispatcher.RunnableC1601b(this.f11669d, m7031b, this.f11668c));
        }
    }
}
