package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.IdGenerator;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0016\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Landroidx/work/impl/utils/IdGenerator;", "", "", "minInclusive", "maxInclusive", "nextJobSchedulerIdWithRange", "nextAlarmManagerId", "Landroidx/work/impl/WorkDatabase;", "a", "Landroidx/work/impl/WorkDatabase;", "workDatabase", Constants.CONSTRUCTOR_NAME, "(Landroidx/work/impl/WorkDatabase;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class IdGenerator {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WorkDatabase workDatabase;

    public IdGenerator(@NotNull WorkDatabase workDatabase) {
        Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
        this.workDatabase = workDatabase;
    }

    /* renamed from: c */
    public static final Integer m7144c(IdGenerator this$0) {
        int m7146a;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m7146a = IdGeneratorKt.m7146a(this$0.workDatabase, IdGeneratorKt.NEXT_ALARM_MANAGER_ID_KEY);
        return Integer.valueOf(m7146a);
    }

    /* renamed from: d */
    public static final Integer m7145d(IdGenerator this$0, int i, int i2) {
        int m7146a;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m7146a = IdGeneratorKt.m7146a(this$0.workDatabase, IdGeneratorKt.NEXT_JOB_SCHEDULER_ID_KEY);
        boolean z = false;
        if (i <= m7146a && m7146a <= i2) {
            z = true;
        }
        if (z) {
            i = m7146a;
        } else {
            IdGeneratorKt.m7147b(this$0.workDatabase, IdGeneratorKt.NEXT_JOB_SCHEDULER_ID_KEY, i + 1);
        }
        return Integer.valueOf(i);
    }

    public final int nextAlarmManagerId() {
        Object runInTransaction = this.workDatabase.runInTransaction((Callable<Object>) new Callable() { // from class: com.sunia.HTREnginev2.kgi
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer m7144c;
                m7144c = IdGenerator.m7144c(IdGenerator.this);
                return m7144c;
            }
        });
        Intrinsics.checkNotNullExpressionValue(runInTransaction, "workDatabase.runInTransa…ANAGER_ID_KEY)\n        })");
        return ((Number) runInTransaction).intValue();
    }

    public final int nextJobSchedulerIdWithRange(final int minInclusive, final int maxInclusive) {
        Object runInTransaction = this.workDatabase.runInTransaction((Callable<Object>) new Callable() { // from class: com.sunia.HTREnginev2.lgi
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer m7145d;
                m7145d = IdGenerator.m7145d(IdGenerator.this, minInclusive, maxInclusive);
                return m7145d;
            }
        });
        Intrinsics.checkNotNullExpressionValue(runInTransaction, "workDatabase.runInTransa…            id\n        })");
        return ((Number) runInTransaction).intValue();
    }
}
