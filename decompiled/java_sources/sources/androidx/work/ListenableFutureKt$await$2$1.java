package androidx.work;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;

@Metadata(m61527d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, m61528d2 = {"<anonymous>", "", "R", "run"}, m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 176)
@SourceDebugExtension({"SMAP\nListenableFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListenableFuture.kt\nandroidx/work/ListenableFutureKt$await$2$1\n*L\n1#1,91:1\n*E\n"})
/* loaded from: classes3.dex */
public final class ListenableFutureKt$await$2$1 implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ CancellableContinuation<R> f11394e;

    /* renamed from: f */
    public final /* synthetic */ ListenableFuture<R> f11395f;

    /* JADX WARN: Multi-variable type inference failed */
    public ListenableFutureKt$await$2$1(CancellableContinuation<? super R> cancellableContinuation, ListenableFuture<R> listenableFuture) {
        this.f11394e = cancellableContinuation;
        this.f11395f = listenableFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Continuation continuation = this.f11394e;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m72621constructorimpl(this.f11395f.get()));
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                cause = th;
            }
            if (th instanceof CancellationException) {
                this.f11394e.cancel(cause);
                return;
            }
            Continuation continuation2 = this.f11394e;
            Result.Companion companion2 = Result.INSTANCE;
            continuation2.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(cause)));
        }
    }
}
