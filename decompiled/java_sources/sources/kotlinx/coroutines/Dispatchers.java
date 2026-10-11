package kotlinx.coroutines;

import com.onyx.android.sdk.base.scheduler.SchedulerManager;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\nJ\b\u0010\u0003\u001a\u00020\u0002H\u0007R \u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR \u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u0012\u0004\b\u000e\u0010\n\u001a\u0004\b\r\u0010\bR \u0010\u0013\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0010\u0010\u0006\u0012\u0004\b\u0012\u0010\n\u001a\u0004\b\u0011\u0010\bR\u001a\u0010\u0018\u001a\u00020\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\n\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lkotlinx/coroutines/Dispatchers;", "", "", "shutdown", "Lkotlinx/coroutines/CoroutineDispatcher;", "a", "Lkotlinx/coroutines/CoroutineDispatcher;", "getDefault", "()Lkotlinx/coroutines/CoroutineDispatcher;", "getDefault$annotations", "()V", "Default", "b", "getUnconfined", "getUnconfined$annotations", "Unconfined", "c", "getIO", "getIO$annotations", SchedulerManager.f40832IO, "Lkotlinx/coroutines/MainCoroutineDispatcher;", "getMain", "()Lkotlinx/coroutines/MainCoroutineDispatcher;", "getMain$annotations", "Main", Constants.CONSTRUCTOR_NAME, "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class Dispatchers {

    @NotNull
    public static final Dispatchers INSTANCE = new Dispatchers();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final CoroutineDispatcher Default = DefaultScheduler.INSTANCE;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final CoroutineDispatcher Unconfined = Unconfined.INSTANCE;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final CoroutineDispatcher IO = DefaultIoScheduler.INSTANCE;

    @NotNull
    public static final CoroutineDispatcher getDefault() {
        return Default;
    }

    @JvmStatic
    public static /* synthetic */ void getDefault$annotations() {
    }

    @NotNull
    public static final CoroutineDispatcher getIO() {
        return IO;
    }

    @JvmStatic
    public static /* synthetic */ void getIO$annotations() {
    }

    @NotNull
    public static final MainCoroutineDispatcher getMain() {
        return MainDispatcherLoader.dispatcher;
    }

    @JvmStatic
    public static /* synthetic */ void getMain$annotations() {
    }

    @NotNull
    public static final CoroutineDispatcher getUnconfined() {
        return Unconfined;
    }

    @JvmStatic
    public static /* synthetic */ void getUnconfined$annotations() {
    }

    @DelicateCoroutinesApi
    public final void shutdown() {
        DefaultExecutor.INSTANCE.shutdown();
        DefaultScheduler.INSTANCE.shutdown$kotlinx_coroutines_core();
    }
}
