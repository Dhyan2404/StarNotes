package kotlinx.coroutines.internal;

import java.util.Collection;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0006\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\" \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, m61528d2 = {"Lkotlinx/coroutines/CoroutineExceptionHandler;", "callback", "", "ensurePlatformExceptionHandlerLoaded", "", "exception", "propagateExceptionFinalResort", "", "a", "Ljava/util/Collection;", "getPlatformExceptionHandlers", "()Ljava/util/Collection;", "platformExceptionHandlers", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nCoroutineExceptionHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandlerImpl.kt\nkotlinx/coroutines/internal/CoroutineExceptionHandlerImplKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"})
/* loaded from: classes11.dex */
public final class CoroutineExceptionHandlerImplKt {

    /* renamed from: a */
    @NotNull
    public static final Collection<CoroutineExceptionHandler> f98576a;

    static {
        Sequence asSequence;
        List list;
        asSequence = SequencesKt__SequencesKt.asSequence(ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator());
        list = SequencesKt___SequencesKt.toList(asSequence);
        f98576a = list;
    }

    public static final void ensurePlatformExceptionHandlerLoaded(@NotNull CoroutineExceptionHandler coroutineExceptionHandler) {
        if (!f98576a.contains(coroutineExceptionHandler)) {
            throw new IllegalStateException("Exception handler was not found via a ServiceLoader".toString());
        }
    }

    @NotNull
    public static final Collection<CoroutineExceptionHandler> getPlatformExceptionHandlers() {
        return f98576a;
    }

    public static final void propagateExceptionFinalResort(@NotNull Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }
}
