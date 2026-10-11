package androidx.work;

import androidx.annotation.IntRange;
import androidx.annotation.RestrictTo;
import androidx.core.util.Consumer;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.work.impl.DefaultRunnableScheduler;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 N2\u00020\u0001:\u0003ONPB\u0011\b\u0000\u0012\u0006\u0010K\u001a\u00020J¢\u0006\u0004\bL\u0010MR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\"\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001f\u0010)\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001f\u0010,\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#8\u0006¢\u0006\f\n\u0004\b*\u0010&\u001a\u0004\b+\u0010(R\u0019\u00102\u001a\u0004\u0018\u00010-8\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0017\u00108\u001a\u0002038G¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\u0017\u0010;\u001a\u0002038\u0006¢\u0006\f\n\u0004\b9\u00105\u001a\u0004\b:\u00107R\u0017\u0010>\u001a\u0002038\u0006¢\u0006\f\n\u0004\b<\u00105\u001a\u0004\b=\u00107R\u0017\u0010A\u001a\u0002038\u0006¢\u0006\f\n\u0004\b?\u00105\u001a\u0004\b@\u00107R\u0017\u0010D\u001a\u0002038G¢\u0006\f\n\u0004\bB\u00105\u001a\u0004\bC\u00107R\u0017\u0010H\u001a\u00020E8G¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I¨\u0006Q"}, m61528d2 = {"Landroidx/work/Configuration;", "", "Ljava/util/concurrent/Executor;", "a", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "executor", "b", "getTaskExecutor", "taskExecutor", "Landroidx/work/Clock;", "c", "Landroidx/work/Clock;", "getClock", "()Landroidx/work/Clock;", "clock", "Landroidx/work/WorkerFactory;", "d", "Landroidx/work/WorkerFactory;", "getWorkerFactory", "()Landroidx/work/WorkerFactory;", "workerFactory", "Landroidx/work/InputMergerFactory;", "e", "Landroidx/work/InputMergerFactory;", "getInputMergerFactory", "()Landroidx/work/InputMergerFactory;", "inputMergerFactory", "Landroidx/work/RunnableScheduler;", C6997f.f39671c, "Landroidx/work/RunnableScheduler;", "getRunnableScheduler", "()Landroidx/work/RunnableScheduler;", "runnableScheduler", "Landroidx/core/util/Consumer;", "", C6998g.f39679a, "Landroidx/core/util/Consumer;", "getInitializationExceptionHandler", "()Landroidx/core/util/Consumer;", "initializationExceptionHandler", C6999h.f39688c, "getSchedulingExceptionHandler", "schedulingExceptionHandler", "", "i", Constants.STRING_SIG, "getDefaultProcessName", "()Ljava/lang/String;", "defaultProcessName", "", "j", "I", "getMinimumLoggingLevel", "()I", "minimumLoggingLevel", C4921e.f26537n, "getMinJobSchedulerId", "minJobSchedulerId", "l", "getMaxJobSchedulerId", "maxJobSchedulerId", "m", "getContentUriTriggerWorkersLimit", "contentUriTriggerWorkersLimit", GoogleApiAvailabilityLight.f29016b, "getMaxSchedulerLimit", "maxSchedulerLimit", "", C4921e.f26528e, Constants.HASIDCALL_INDEX_SIG, "isUsingDefaultTaskExecutor", Constants.BOOLEAN_VALUE_SIG, "Landroidx/work/Configuration$Builder;", "builder", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/work/Configuration$Builder;)V", "Companion", "Builder", "Provider", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class Configuration {
    public static final int MIN_SCHEDULER_LIMIT = 20;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Executor executor;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Executor taskExecutor;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Clock clock;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final WorkerFactory workerFactory;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final InputMergerFactory inputMergerFactory;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final RunnableScheduler runnableScheduler;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final Consumer<Throwable> initializationExceptionHandler;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final Consumer<Throwable> schedulingExceptionHandler;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final String defaultProcessName;

    /* renamed from: j, reason: from kotlin metadata */
    public final int minimumLoggingLevel;

    /* renamed from: k, reason: from kotlin metadata */
    public final int minJobSchedulerId;

    /* renamed from: l, reason: from kotlin metadata */
    public final int maxJobSchedulerId;

    /* renamed from: m, reason: from kotlin metadata */
    public final int contentUriTriggerWorkersLimit;

    /* renamed from: n, reason: from kotlin metadata */
    public final int maxSchedulerLimit;

    /* renamed from: o, reason: from kotlin metadata */
    public final boolean isUsingDefaultTaskExecutor;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, m61528d2 = {"Landroidx/work/Configuration$Provider;", "", "workManagerConfiguration", "Landroidx/work/Configuration;", "getWorkManagerConfiguration", "()Landroidx/work/Configuration;", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface Provider {
        @NotNull
        Configuration getWorkManagerConfiguration();
    }

    public Configuration(@NotNull Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Executor executor = builder.getExecutor();
        this.executor = executor == null ? ConfigurationKt.m6953a(false) : executor;
        this.isUsingDefaultTaskExecutor = builder.getTaskExecutor() == null;
        Executor taskExecutor = builder.getTaskExecutor();
        this.taskExecutor = taskExecutor == null ? ConfigurationKt.m6953a(true) : taskExecutor;
        Clock clock = builder.getClock();
        this.clock = clock == null ? new SystemClock() : clock;
        WorkerFactory workerFactory = builder.getWorkerFactory();
        if (workerFactory == null) {
            workerFactory = WorkerFactory.getDefaultWorkerFactory();
            Intrinsics.checkNotNullExpressionValue(workerFactory, "getDefaultWorkerFactory()");
        }
        this.workerFactory = workerFactory;
        InputMergerFactory inputMergerFactory = builder.getInputMergerFactory();
        this.inputMergerFactory = inputMergerFactory == null ? NoOpInputMergerFactory.INSTANCE : inputMergerFactory;
        RunnableScheduler runnableScheduler = builder.getRunnableScheduler();
        this.runnableScheduler = runnableScheduler == null ? new DefaultRunnableScheduler() : runnableScheduler;
        this.minimumLoggingLevel = builder.getLoggingLevel();
        this.minJobSchedulerId = builder.getMinJobSchedulerId();
        this.maxJobSchedulerId = builder.getMaxJobSchedulerId();
        this.maxSchedulerLimit = builder.getMaxSchedulerLimit();
        this.initializationExceptionHandler = builder.getInitializationExceptionHandler$work_runtime_release();
        this.schedulingExceptionHandler = builder.getSchedulingExceptionHandler$work_runtime_release();
        this.defaultProcessName = builder.getDefaultProcessName();
        this.contentUriTriggerWorkersLimit = builder.getContentUriTriggerWorkersLimit();
    }

    @NotNull
    public final Clock getClock() {
        return this.clock;
    }

    public final int getContentUriTriggerWorkersLimit() {
        return this.contentUriTriggerWorkersLimit;
    }

    @Nullable
    public final String getDefaultProcessName() {
        return this.defaultProcessName;
    }

    @NotNull
    public final Executor getExecutor() {
        return this.executor;
    }

    @Nullable
    public final Consumer<Throwable> getInitializationExceptionHandler() {
        return this.initializationExceptionHandler;
    }

    @NotNull
    public final InputMergerFactory getInputMergerFactory() {
        return this.inputMergerFactory;
    }

    public final int getMaxJobSchedulerId() {
        return this.maxJobSchedulerId;
    }

    @IntRange(from = 20, m281to = 50)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final int getMaxSchedulerLimit() {
        return this.maxSchedulerLimit;
    }

    public final int getMinJobSchedulerId() {
        return this.minJobSchedulerId;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final int getMinimumLoggingLevel() {
        return this.minimumLoggingLevel;
    }

    @NotNull
    public final RunnableScheduler getRunnableScheduler() {
        return this.runnableScheduler;
    }

    @Nullable
    public final Consumer<Throwable> getSchedulingExceptionHandler() {
        return this.schedulingExceptionHandler;
    }

    @NotNull
    public final Executor getTaskExecutor() {
        return this.taskExecutor;
    }

    @NotNull
    public final WorkerFactory getWorkerFactory() {
        return this.workerFactory;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: isUsingDefaultTaskExecutor, reason: from getter */
    public final boolean getIsUsingDefaultTaskExecutor() {
        return this.isUsingDefaultTaskExecutor;
    }

    @Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bJ\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\bl\u0010mB\u0011\b\u0017\u0012\u0006\u0010n\u001a\u00020&¢\u0006\u0004\bl\u0010oJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u0016\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0010J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0010J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0010J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001aJ\u0014\u0010 \u001a\u00020\u00002\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dJ\u0014\u0010\"\u001a\u00020\u00002\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dJ\u000e\u0010%\u001a\u00020\u00002\u0006\u0010$\u001a\u00020#J\u0006\u0010'\u001a\u00020&R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R$\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b:\u0010)\u001a\u0004\b;\u0010+\"\u0004\b<\u0010-R$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR$\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR*\u0010O\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR*\u0010!\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bP\u0010J\u001a\u0004\bQ\u0010L\"\u0004\bR\u0010NR$\u0010Y\u001a\u0004\u0018\u00010#8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR\"\u0010\u0018\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R\"\u0010\u0011\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b`\u0010[\u001a\u0004\ba\u0010]\"\u0004\bb\u0010_R\"\u0010\u0012\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bc\u0010[\u001a\u0004\bd\u0010]\"\u0004\be\u0010_R\"\u0010\u0014\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bf\u0010[\u001a\u0004\bg\u0010]\"\u0004\bh\u0010_R\"\u0010\u0016\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bi\u0010[\u001a\u0004\bj\u0010]\"\u0004\bk\u0010_¨\u0006p"}, m61528d2 = {"Landroidx/work/Configuration$Builder;", "", "Landroidx/work/WorkerFactory;", "workerFactory", "setWorkerFactory", "Landroidx/work/InputMergerFactory;", "inputMergerFactory", "setInputMergerFactory", "Ljava/util/concurrent/Executor;", "executor", "setExecutor", "taskExecutor", "setTaskExecutor", "Landroidx/work/Clock;", "clock", "setClock", "", "minJobSchedulerId", "maxJobSchedulerId", "setJobSchedulerJobIdRange", "maxSchedulerLimit", "setMaxSchedulerLimit", "contentUriTriggerWorkersLimit", "setContentUriTriggerWorkersLimit", "loggingLevel", "setMinimumLoggingLevel", "Landroidx/work/RunnableScheduler;", "runnableScheduler", "setRunnableScheduler", "Landroidx/core/util/Consumer;", "", "exceptionHandler", "setInitializationExceptionHandler", "schedulingExceptionHandler", "setSchedulingExceptionHandler", "", "processName", "setDefaultProcessName", "Landroidx/work/Configuration;", PrivilegedApp.f6529f, "a", "Ljava/util/concurrent/Executor;", "getExecutor$work_runtime_release", "()Ljava/util/concurrent/Executor;", "setExecutor$work_runtime_release", "(Ljava/util/concurrent/Executor;)V", "b", "Landroidx/work/WorkerFactory;", "getWorkerFactory$work_runtime_release", "()Landroidx/work/WorkerFactory;", "setWorkerFactory$work_runtime_release", "(Landroidx/work/WorkerFactory;)V", "c", "Landroidx/work/InputMergerFactory;", "getInputMergerFactory$work_runtime_release", "()Landroidx/work/InputMergerFactory;", "setInputMergerFactory$work_runtime_release", "(Landroidx/work/InputMergerFactory;)V", "d", "getTaskExecutor$work_runtime_release", "setTaskExecutor$work_runtime_release", "e", "Landroidx/work/Clock;", "getClock$work_runtime_release", "()Landroidx/work/Clock;", "setClock$work_runtime_release", "(Landroidx/work/Clock;)V", C6997f.f39671c, "Landroidx/work/RunnableScheduler;", "getRunnableScheduler$work_runtime_release", "()Landroidx/work/RunnableScheduler;", "setRunnableScheduler$work_runtime_release", "(Landroidx/work/RunnableScheduler;)V", C6998g.f39679a, "Landroidx/core/util/Consumer;", "getInitializationExceptionHandler$work_runtime_release", "()Landroidx/core/util/Consumer;", "setInitializationExceptionHandler$work_runtime_release", "(Landroidx/core/util/Consumer;)V", "initializationExceptionHandler", C6999h.f39688c, "getSchedulingExceptionHandler$work_runtime_release", "setSchedulingExceptionHandler$work_runtime_release", "i", Constants.STRING_SIG, "getDefaultProcessName$work_runtime_release", "()Ljava/lang/String;", "setDefaultProcessName$work_runtime_release", "(Ljava/lang/String;)V", "defaultProcessName", "j", "I", "getLoggingLevel$work_runtime_release", "()I", "setLoggingLevel$work_runtime_release", "(I)V", C4921e.f26537n, "getMinJobSchedulerId$work_runtime_release", "setMinJobSchedulerId$work_runtime_release", "l", "getMaxJobSchedulerId$work_runtime_release", "setMaxJobSchedulerId$work_runtime_release", "m", "getMaxSchedulerLimit$work_runtime_release", "setMaxSchedulerLimit$work_runtime_release", GoogleApiAvailabilityLight.f29016b, "getContentUriTriggerWorkersLimit$work_runtime_release", "setContentUriTriggerWorkersLimit$work_runtime_release", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "configuration", "(Landroidx/work/Configuration;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public Executor executor;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public WorkerFactory workerFactory;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public InputMergerFactory inputMergerFactory;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public Executor taskExecutor;

        /* renamed from: e, reason: from kotlin metadata */
        @Nullable
        public Clock clock;

        /* renamed from: f, reason: from kotlin metadata */
        @Nullable
        public RunnableScheduler runnableScheduler;

        /* renamed from: g, reason: from kotlin metadata */
        @Nullable
        public Consumer<Throwable> initializationExceptionHandler;

        /* renamed from: h, reason: from kotlin metadata */
        @Nullable
        public Consumer<Throwable> schedulingExceptionHandler;

        /* renamed from: i, reason: from kotlin metadata */
        @Nullable
        public String defaultProcessName;

        /* renamed from: j, reason: from kotlin metadata */
        public int loggingLevel;

        /* renamed from: k, reason: from kotlin metadata */
        public int minJobSchedulerId;

        /* renamed from: l, reason: from kotlin metadata */
        public int maxJobSchedulerId;

        /* renamed from: m, reason: from kotlin metadata */
        public int maxSchedulerLimit;

        /* renamed from: n, reason: from kotlin metadata */
        public int contentUriTriggerWorkersLimit;

        public Builder() {
            this.loggingLevel = 4;
            this.maxJobSchedulerId = Integer.MAX_VALUE;
            this.maxSchedulerLimit = 20;
            this.contentUriTriggerWorkersLimit = ConfigurationKt.getDEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT();
        }

        @NotNull
        public final Configuration build() {
            return new Configuration(this);
        }

        @Nullable
        /* renamed from: getClock$work_runtime_release, reason: from getter */
        public final Clock getClock() {
            return this.clock;
        }

        /* renamed from: getContentUriTriggerWorkersLimit$work_runtime_release, reason: from getter */
        public final int getContentUriTriggerWorkersLimit() {
            return this.contentUriTriggerWorkersLimit;
        }

        @Nullable
        /* renamed from: getDefaultProcessName$work_runtime_release, reason: from getter */
        public final String getDefaultProcessName() {
            return this.defaultProcessName;
        }

        @Nullable
        /* renamed from: getExecutor$work_runtime_release, reason: from getter */
        public final Executor getExecutor() {
            return this.executor;
        }

        @Nullable
        public final Consumer<Throwable> getInitializationExceptionHandler$work_runtime_release() {
            return this.initializationExceptionHandler;
        }

        @Nullable
        /* renamed from: getInputMergerFactory$work_runtime_release, reason: from getter */
        public final InputMergerFactory getInputMergerFactory() {
            return this.inputMergerFactory;
        }

        /* renamed from: getLoggingLevel$work_runtime_release, reason: from getter */
        public final int getLoggingLevel() {
            return this.loggingLevel;
        }

        /* renamed from: getMaxJobSchedulerId$work_runtime_release, reason: from getter */
        public final int getMaxJobSchedulerId() {
            return this.maxJobSchedulerId;
        }

        /* renamed from: getMaxSchedulerLimit$work_runtime_release, reason: from getter */
        public final int getMaxSchedulerLimit() {
            return this.maxSchedulerLimit;
        }

        /* renamed from: getMinJobSchedulerId$work_runtime_release, reason: from getter */
        public final int getMinJobSchedulerId() {
            return this.minJobSchedulerId;
        }

        @Nullable
        /* renamed from: getRunnableScheduler$work_runtime_release, reason: from getter */
        public final RunnableScheduler getRunnableScheduler() {
            return this.runnableScheduler;
        }

        @Nullable
        public final Consumer<Throwable> getSchedulingExceptionHandler$work_runtime_release() {
            return this.schedulingExceptionHandler;
        }

        @Nullable
        /* renamed from: getTaskExecutor$work_runtime_release, reason: from getter */
        public final Executor getTaskExecutor() {
            return this.taskExecutor;
        }

        @Nullable
        /* renamed from: getWorkerFactory$work_runtime_release, reason: from getter */
        public final WorkerFactory getWorkerFactory() {
            return this.workerFactory;
        }

        @NotNull
        public final Builder setClock(@NotNull Clock clock) {
            Intrinsics.checkNotNullParameter(clock, "clock");
            this.clock = clock;
            return this;
        }

        public final void setClock$work_runtime_release(@Nullable Clock clock) {
            this.clock = clock;
        }

        @NotNull
        public final Builder setContentUriTriggerWorkersLimit(int contentUriTriggerWorkersLimit) {
            this.contentUriTriggerWorkersLimit = Math.max(contentUriTriggerWorkersLimit, 0);
            return this;
        }

        public final void setContentUriTriggerWorkersLimit$work_runtime_release(int i) {
            this.contentUriTriggerWorkersLimit = i;
        }

        @NotNull
        public final Builder setDefaultProcessName(@NotNull String processName) {
            Intrinsics.checkNotNullParameter(processName, "processName");
            this.defaultProcessName = processName;
            return this;
        }

        public final void setDefaultProcessName$work_runtime_release(@Nullable String str) {
            this.defaultProcessName = str;
        }

        @NotNull
        public final Builder setExecutor(@NotNull Executor executor) {
            Intrinsics.checkNotNullParameter(executor, "executor");
            this.executor = executor;
            return this;
        }

        public final void setExecutor$work_runtime_release(@Nullable Executor executor) {
            this.executor = executor;
        }

        @NotNull
        public final Builder setInitializationExceptionHandler(@NotNull Consumer<Throwable> exceptionHandler) {
            Intrinsics.checkNotNullParameter(exceptionHandler, "exceptionHandler");
            this.initializationExceptionHandler = exceptionHandler;
            return this;
        }

        public final void setInitializationExceptionHandler$work_runtime_release(@Nullable Consumer<Throwable> consumer) {
            this.initializationExceptionHandler = consumer;
        }

        @NotNull
        public final Builder setInputMergerFactory(@NotNull InputMergerFactory inputMergerFactory) {
            Intrinsics.checkNotNullParameter(inputMergerFactory, "inputMergerFactory");
            this.inputMergerFactory = inputMergerFactory;
            return this;
        }

        public final void setInputMergerFactory$work_runtime_release(@Nullable InputMergerFactory inputMergerFactory) {
            this.inputMergerFactory = inputMergerFactory;
        }

        @NotNull
        public final Builder setJobSchedulerJobIdRange(int minJobSchedulerId, int maxJobSchedulerId) {
            if (!(maxJobSchedulerId - minJobSchedulerId >= 1000)) {
                throw new IllegalArgumentException("WorkManager needs a range of at least 1000 job ids.".toString());
            }
            this.minJobSchedulerId = minJobSchedulerId;
            this.maxJobSchedulerId = maxJobSchedulerId;
            return this;
        }

        public final void setLoggingLevel$work_runtime_release(int i) {
            this.loggingLevel = i;
        }

        public final void setMaxJobSchedulerId$work_runtime_release(int i) {
            this.maxJobSchedulerId = i;
        }

        @NotNull
        public final Builder setMaxSchedulerLimit(int maxSchedulerLimit) {
            if (!(maxSchedulerLimit >= 20)) {
                throw new IllegalArgumentException("WorkManager needs to be able to schedule at least 20 jobs in JobScheduler.".toString());
            }
            this.maxSchedulerLimit = Math.min(maxSchedulerLimit, 50);
            return this;
        }

        public final void setMaxSchedulerLimit$work_runtime_release(int i) {
            this.maxSchedulerLimit = i;
        }

        public final void setMinJobSchedulerId$work_runtime_release(int i) {
            this.minJobSchedulerId = i;
        }

        @NotNull
        public final Builder setMinimumLoggingLevel(int loggingLevel) {
            this.loggingLevel = loggingLevel;
            return this;
        }

        @NotNull
        public final Builder setRunnableScheduler(@NotNull RunnableScheduler runnableScheduler) {
            Intrinsics.checkNotNullParameter(runnableScheduler, "runnableScheduler");
            this.runnableScheduler = runnableScheduler;
            return this;
        }

        public final void setRunnableScheduler$work_runtime_release(@Nullable RunnableScheduler runnableScheduler) {
            this.runnableScheduler = runnableScheduler;
        }

        @NotNull
        public final Builder setSchedulingExceptionHandler(@NotNull Consumer<Throwable> schedulingExceptionHandler) {
            Intrinsics.checkNotNullParameter(schedulingExceptionHandler, "schedulingExceptionHandler");
            this.schedulingExceptionHandler = schedulingExceptionHandler;
            return this;
        }

        public final void setSchedulingExceptionHandler$work_runtime_release(@Nullable Consumer<Throwable> consumer) {
            this.schedulingExceptionHandler = consumer;
        }

        @NotNull
        public final Builder setTaskExecutor(@NotNull Executor taskExecutor) {
            Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
            this.taskExecutor = taskExecutor;
            return this;
        }

        public final void setTaskExecutor$work_runtime_release(@Nullable Executor executor) {
            this.taskExecutor = executor;
        }

        @NotNull
        public final Builder setWorkerFactory(@NotNull WorkerFactory workerFactory) {
            Intrinsics.checkNotNullParameter(workerFactory, "workerFactory");
            this.workerFactory = workerFactory;
            return this;
        }

        public final void setWorkerFactory$work_runtime_release(@Nullable WorkerFactory workerFactory) {
            this.workerFactory = workerFactory;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder(@NotNull Configuration configuration) {
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            this.loggingLevel = 4;
            this.maxJobSchedulerId = Integer.MAX_VALUE;
            this.maxSchedulerLimit = 20;
            this.contentUriTriggerWorkersLimit = ConfigurationKt.getDEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT();
            this.executor = configuration.getExecutor();
            this.workerFactory = configuration.getWorkerFactory();
            this.inputMergerFactory = configuration.getInputMergerFactory();
            this.taskExecutor = configuration.getTaskExecutor();
            this.clock = configuration.getClock();
            this.loggingLevel = configuration.getMinimumLoggingLevel();
            this.minJobSchedulerId = configuration.getMinJobSchedulerId();
            this.maxJobSchedulerId = configuration.getMaxJobSchedulerId();
            this.maxSchedulerLimit = configuration.getMaxSchedulerLimit();
            this.runnableScheduler = configuration.getRunnableScheduler();
            this.initializationExceptionHandler = configuration.getInitializationExceptionHandler();
            this.schedulingExceptionHandler = configuration.getSchedulingExceptionHandler();
            this.defaultProcessName = configuration.getDefaultProcessName();
        }
    }
}
