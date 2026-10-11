package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.Clock;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmDispatcher;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import com.sunia.HTREnginev2.C14444t9;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class CommandHandler implements ExecutionListener {

    /* renamed from: j */
    public static final String f11594j = Logger.tagWithPrefix("CommandHandler");

    /* renamed from: k */
    public static final String f11595k = "ACTION_SCHEDULE_WORK";

    /* renamed from: l */
    public static final String f11596l = "ACTION_DELAY_MET";

    /* renamed from: m */
    public static final String f11597m = "ACTION_STOP_WORK";

    /* renamed from: n */
    public static final String f11598n = "ACTION_CONSTRAINTS_CHANGED";

    /* renamed from: o */
    public static final String f11599o = "ACTION_RESCHEDULE";

    /* renamed from: p */
    public static final String f11600p = "ACTION_EXECUTION_COMPLETED";

    /* renamed from: q */
    public static final String f11601q = "KEY_WORKSPEC_ID";

    /* renamed from: r */
    public static final String f11602r = "KEY_WORKSPEC_GENERATION";

    /* renamed from: s */
    public static final String f11603s = "KEY_NEEDS_RESCHEDULE";

    /* renamed from: t */
    public static final long f11604t = 600000;

    /* renamed from: e */
    public final Context f11605e;

    /* renamed from: f */
    public final Map<WorkGenerationalId, DelayMetCommandHandler> f11606f = new HashMap();

    /* renamed from: g */
    public final Object f11607g = new Object();

    /* renamed from: h */
    public final Clock f11608h;

    /* renamed from: i */
    public final StartStopTokens f11609i;

    public CommandHandler(@NonNull Context context, Clock clock, @NonNull StartStopTokens startStopTokens) {
        this.f11605e = context;
        this.f11608h = clock;
        this.f11609i = startStopTokens;
    }

    /* renamed from: a */
    public static Intent m7030a(@NonNull Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(f11598n);
        return intent;
    }

    /* renamed from: b */
    public static Intent m7031b(@NonNull Context context, @NonNull WorkGenerationalId id) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(f11596l);
        return m7039r(intent, id);
    }

    /* renamed from: c */
    public static Intent m7032c(@NonNull Context context, @NonNull WorkGenerationalId id, boolean needsReschedule) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(f11600p);
        intent.putExtra(f11603s, needsReschedule);
        return m7039r(intent, id);
    }

    /* renamed from: d */
    public static Intent m7033d(@NonNull Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(f11599o);
        return intent;
    }

    /* renamed from: e */
    public static Intent m7034e(@NonNull Context context, @NonNull WorkGenerationalId id) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(f11595k);
        return m7039r(intent, id);
    }

    /* renamed from: f */
    public static Intent m7035f(@NonNull Context context, @NonNull WorkGenerationalId id) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(f11597m);
        return m7039r(intent, id);
    }

    /* renamed from: g */
    public static Intent m7036g(@NonNull Context context, @NonNull String workSpecId) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(f11597m);
        intent.putExtra("KEY_WORKSPEC_ID", workSpecId);
        return intent;
    }

    /* renamed from: n */
    public static boolean m7037n(@Nullable Bundle bundle, @NonNull String... keys) {
        if (bundle == null || bundle.isEmpty()) {
            return false;
        }
        for (String str : keys) {
            if (bundle.get(str) == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: q */
    public static WorkGenerationalId m7038q(@NonNull Intent intent) {
        return new WorkGenerationalId(intent.getStringExtra("KEY_WORKSPEC_ID"), intent.getIntExtra(f11602r, 0));
    }

    /* renamed from: r */
    public static Intent m7039r(@NonNull Intent intent, @NonNull WorkGenerationalId id) {
        intent.putExtra("KEY_WORKSPEC_ID", id.getWorkSpecId());
        intent.putExtra(f11602r, id.getGeneration());
        return intent;
    }

    /* renamed from: h */
    public final void m7040h(@NonNull Intent intent, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        Logger.get().debug(f11594j, "Handling constraints changed " + intent);
        new C1604a(this.f11605e, this.f11608h, startId, dispatcher).m7069a();
    }

    /* renamed from: i */
    public final void m7041i(@NonNull Intent intent, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        synchronized (this.f11607g) {
            WorkGenerationalId m7038q = m7038q(intent);
            Logger logger = Logger.get();
            String str = f11594j;
            logger.debug(str, "Handing delay met for " + m7038q);
            if (this.f11606f.containsKey(m7038q)) {
                Logger.get().debug(str, "WorkSpec " + m7038q + " is is already being handled for ACTION_DELAY_MET");
            } else {
                DelayMetCommandHandler delayMetCommandHandler = new DelayMetCommandHandler(this.f11605e, startId, dispatcher, this.f11609i.tokenFor(m7038q));
                this.f11606f.put(m7038q, delayMetCommandHandler);
                delayMetCommandHandler.m7052d();
            }
        }
    }

    /* renamed from: j */
    public final void m7042j(@NonNull Intent intent, int startId) {
        WorkGenerationalId m7038q = m7038q(intent);
        boolean z = intent.getExtras().getBoolean(f11603s);
        Logger.get().debug(f11594j, "Handling onExecutionCompleted " + intent + ", " + startId);
        onExecuted(m7038q, z);
    }

    /* renamed from: k */
    public final void m7043k(@NonNull Intent intent, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        Logger.get().debug(f11594j, "Handling reschedule " + intent + ", " + startId);
        dispatcher.m7060e().rescheduleEligibleWork();
    }

    /* renamed from: l */
    public final void m7044l(@NonNull Intent intent, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        WorkGenerationalId m7038q = m7038q(intent);
        Logger logger = Logger.get();
        String str = f11594j;
        logger.debug(str, "Handling schedule work for " + m7038q);
        WorkDatabase workDatabase = dispatcher.m7060e().getWorkDatabase();
        workDatabase.beginTransaction();
        try {
            WorkSpec workSpec = workDatabase.workSpecDao().getWorkSpec(m7038q.getWorkSpecId());
            if (workSpec == null) {
                Logger.get().warning(str, "Skipping scheduling " + m7038q + " because it's no longer in the DB");
                return;
            }
            if (workSpec.state.isFinished()) {
                Logger.get().warning(str, "Skipping scheduling " + m7038q + "because it is finished.");
                return;
            }
            long calculateNextRunTime = workSpec.calculateNextRunTime();
            if (workSpec.hasConstraints()) {
                Logger.get().debug(str, "Opportunistically setting an alarm for " + m7038q + "at " + calculateNextRunTime);
                C14444t9.m57318c(this.f11605e, workDatabase, m7038q, calculateNextRunTime);
                dispatcher.m7059d().getMainThreadExecutor().execute(new SystemAlarmDispatcher.RunnableC1601b(dispatcher, m7030a(this.f11605e), startId));
            } else {
                Logger.get().debug(str, "Setting up Alarms for " + m7038q + "at " + calculateNextRunTime);
                C14444t9.m57318c(this.f11605e, workDatabase, m7038q, calculateNextRunTime);
            }
            workDatabase.setTransactionSuccessful();
        } finally {
            workDatabase.endTransaction();
        }
    }

    /* renamed from: m */
    public final void m7045m(@NonNull Intent intent, @NonNull SystemAlarmDispatcher dispatcher) {
        List<StartStopToken> remove;
        Bundle extras = intent.getExtras();
        String string = extras.getString("KEY_WORKSPEC_ID");
        if (extras.containsKey(f11602r)) {
            int i = extras.getInt(f11602r);
            remove = new ArrayList<>(1);
            StartStopToken remove2 = this.f11609i.remove(new WorkGenerationalId(string, i));
            if (remove2 != null) {
                remove.add(remove2);
            }
        } else {
            remove = this.f11609i.remove(string);
        }
        for (StartStopToken startStopToken : remove) {
            Logger.get().debug(f11594j, "Handing stopWork work for " + string);
            dispatcher.m7062g().stopWork(startStopToken);
            C14444t9.m57316a(this.f11605e, dispatcher.m7060e().getWorkDatabase(), startStopToken.getId());
            dispatcher.onExecuted(startStopToken.getId(), false);
        }
    }

    /* renamed from: o */
    public boolean m7046o() {
        boolean z;
        synchronized (this.f11607g) {
            z = !this.f11606f.isEmpty();
        }
        return z;
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(@NonNull WorkGenerationalId id, boolean needsReschedule) {
        synchronized (this.f11607g) {
            DelayMetCommandHandler remove = this.f11606f.remove(id);
            this.f11609i.remove(id);
            if (remove != null) {
                remove.m7053e(needsReschedule);
            }
        }
    }

    @WorkerThread
    /* renamed from: p */
    public void m7047p(@NonNull Intent intent, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        String action = intent.getAction();
        if (f11598n.equals(action)) {
            m7040h(intent, startId, dispatcher);
            return;
        }
        if (f11599o.equals(action)) {
            m7043k(intent, startId, dispatcher);
            return;
        }
        if (!m7037n(intent.getExtras(), "KEY_WORKSPEC_ID")) {
            Logger.get().error(f11594j, "Invalid request for " + action + " , requires KEY_WORKSPEC_ID .");
            return;
        }
        if (f11595k.equals(action)) {
            m7044l(intent, startId, dispatcher);
            return;
        }
        if (f11596l.equals(action)) {
            m7041i(intent, startId, dispatcher);
            return;
        }
        if (f11597m.equals(action)) {
            m7045m(intent, dispatcher);
            return;
        }
        if (f11600p.equals(action)) {
            m7042j(intent, startId);
            return;
        }
        Logger.get().warning(f11594j, "Ignoring intent " + intent);
    }
}
