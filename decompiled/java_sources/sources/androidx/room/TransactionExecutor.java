package androidx.room;

import androidx.room.TransactionExecutor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0006\u001a\u00020\u0004R\u0014\u0010\t\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Landroidx/room/TransactionExecutor;", "Ljava/util/concurrent/Executor;", "Ljava/lang/Runnable;", "command", "", "execute", "scheduleNext", "e", "Ljava/util/concurrent/Executor;", "executor", "Ljava/util/ArrayDeque;", C6997f.f39671c, "Ljava/util/ArrayDeque;", "tasks", C6998g.f39679a, "Ljava/lang/Runnable;", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, "", C6999h.f39688c, Constants.OBJECT_SIG, "syncLock", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/concurrent/Executor;)V", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class TransactionExecutor implements Executor {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Executor executor;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ArrayDeque<Runnable> tasks;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Runnable active;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Object syncLock;

    public TransactionExecutor(@NotNull Executor executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.executor = executor;
        this.tasks = new ArrayDeque<>();
        this.syncLock = new Object();
    }

    /* renamed from: b */
    public static final void m6364b(Runnable command, TransactionExecutor this$0) {
        Intrinsics.checkNotNullParameter(command, "$command");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            command.run();
        } finally {
            this$0.scheduleNext();
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull final Runnable command) {
        Intrinsics.checkNotNullParameter(command, "command");
        synchronized (this.syncLock) {
            this.tasks.offer(new Runnable() { // from class: com.sunia.HTREnginev2.kln
                @Override // java.lang.Runnable
                public final void run() {
                    TransactionExecutor.m6364b(command, this);
                }
            });
            if (this.active == null) {
                scheduleNext();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void scheduleNext() {
        synchronized (this.syncLock) {
            Runnable poll = this.tasks.poll();
            Runnable runnable = poll;
            this.active = runnable;
            if (poll != null) {
                this.executor.execute(runnable);
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
