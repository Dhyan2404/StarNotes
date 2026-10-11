package kotlinx.coroutines.sync;

import com.sunia.HTREnginev2.ugm;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes11.dex */
public /* synthetic */ class SemaphoreImpl$addAcquireToQueue$createNewSegment$1 extends FunctionReferenceImpl implements Function2<Long, ugm, ugm> {
    public static final SemaphoreImpl$addAcquireToQueue$createNewSegment$1 INSTANCE = new SemaphoreImpl$addAcquireToQueue$createNewSegment$1();

    public SemaphoreImpl$addAcquireToQueue$createNewSegment$1() {
        super(2, SemaphoreKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
    }

    @NotNull
    public final ugm invoke(long j, @Nullable ugm ugmVar) {
        ugm m62346a;
        m62346a = SemaphoreKt.m62346a(j, ugmVar);
        return m62346a;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ ugm invoke(Long l, ugm ugmVar) {
        return invoke(l.longValue(), ugmVar);
    }
}
