package com.onyx.android.sdk.data.utils;

import io.reactivex.rxjava3.core.ObservableEmitter;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import net.lingala.zip4j.progress.ProgressMonitor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, m61528d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 9, 0})
@DebugMetadata(m61542c = "com.onyx.android.sdk.data.utils.ZipUtils$unzipObservable$1$subscribe$1", m61543f = "ZipUtils.kt", m61544i = {}, m61545l = {337}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes7.dex */
public final class ZipUtils$unzipObservable$1$subscribe$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ long $POLLING_INTERVAL;
    final /* synthetic */ ObservableEmitter<Integer> $emitter;
    final /* synthetic */ ProgressMonitor $progressMonitor;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ZipUtils$unzipObservable$1$subscribe$1(ProgressMonitor progressMonitor, ObservableEmitter<Integer> observableEmitter, long j, Continuation<? super ZipUtils$unzipObservable$1$subscribe$1> continuation) {
        super(2, continuation);
        this.$progressMonitor = progressMonitor;
        this.$emitter = observableEmitter;
        this.$POLLING_INTERVAL = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ZipUtils$unzipObservable$1$subscribe$1(this.$progressMonitor, this.$emitter, this.$POLLING_INTERVAL, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0 && i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        while (this.$progressMonitor.getState() == ProgressMonitor.State.BUSY) {
            this.$emitter.onNext(Boxing.boxInt(this.$progressMonitor.getPercentDone()));
            long j = this.$POLLING_INTERVAL;
            this.label = 1;
            if (DelayKt.delay(j, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ZipUtils$unzipObservable$1$subscribe$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
