package kotlinx.coroutines.selects;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.C14063lv;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r¢\u0006\u0004\b\u000f\u0010\u0010J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0001J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0001R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl;", "R", "Lkotlinx/coroutines/selects/SelectImplementation;", "", "getResult", "", "e", "", "handleBuilderException", "Lkotlinx/coroutines/CancellableContinuationImpl;", C4921e.f26537n, "Lkotlinx/coroutines/CancellableContinuationImpl;", "cont", "Lkotlin/coroutines/Continuation;", "uCont", Constants.CONSTRUCTOR_NAME, "(Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@PublishedApi
/* loaded from: classes11.dex */
public final class SelectBuilderImpl<R> extends SelectImplementation<R> {

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final CancellableContinuationImpl<R> cont;

    public SelectBuilderImpl(@NotNull Continuation<? super R> continuation) {
        super(continuation.getContext());
        Continuation intercepted;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        this.cont = new CancellableContinuationImpl<>(intercepted, 1);
    }

    @PublishedApi
    @Nullable
    public final Object getResult() {
        if (this.cont.isCompleted()) {
            return this.cont.getResult();
        }
        C14063lv.m55522f(CoroutineScopeKt.CoroutineScope(getContext()), null, CoroutineStart.UNDISPATCHED, new SelectBuilderImpl$getResult$1(this, null), 1, null);
        return this.cont.getResult();
    }

    @PublishedApi
    public final void handleBuilderException(@NotNull Throwable e) {
        CancellableContinuationImpl<R> cancellableContinuationImpl = this.cont;
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(e)));
    }
}
