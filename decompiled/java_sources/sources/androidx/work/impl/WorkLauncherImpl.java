package androidx.work.impl;

import androidx.work.WorkerParameters;
import androidx.work.impl.utils.StartWorkRunnable;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\u0016\u001a\u00020\u0011¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Landroidx/work/impl/WorkLauncherImpl;", "Landroidx/work/impl/WorkLauncher;", "Landroidx/work/impl/StartStopToken;", "workSpecId", "Landroidx/work/WorkerParameters$RuntimeExtras;", "runtimeExtras", "", "startWork", "", "reason", "stopWork", "Landroidx/work/impl/Processor;", "a", "Landroidx/work/impl/Processor;", "getProcessor", "()Landroidx/work/impl/Processor;", "processor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "b", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "getWorkTaskExecutor", "()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "workTaskExecutor", Constants.CONSTRUCTOR_NAME, "(Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class WorkLauncherImpl implements WorkLauncher {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Processor processor;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final TaskExecutor workTaskExecutor;

    public WorkLauncherImpl(@NotNull Processor processor, @NotNull TaskExecutor workTaskExecutor) {
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
        this.processor = processor;
        this.workTaskExecutor = workTaskExecutor;
    }

    @NotNull
    public final Processor getProcessor() {
        return this.processor;
    }

    @NotNull
    public final TaskExecutor getWorkTaskExecutor() {
        return this.workTaskExecutor;
    }

    @Override // androidx.work.impl.WorkLauncher
    public void startWork(@NotNull StartStopToken workSpecId, @Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        this.workTaskExecutor.executeOnTaskThread(new StartWorkRunnable(this.processor, workSpecId, runtimeExtras));
    }

    @Override // androidx.work.impl.WorkLauncher
    public void stopWork(@NotNull StartStopToken workSpecId, int reason) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        this.workTaskExecutor.executeOnTaskThread(new StopWorkRunnable(this.processor, workSpecId, false, reason));
    }
}
