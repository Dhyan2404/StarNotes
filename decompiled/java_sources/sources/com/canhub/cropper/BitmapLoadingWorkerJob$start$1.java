package com.canhub.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import com.canhub.cropper.BitmapLoadingWorkerJob;
import com.canhub.cropper.BitmapUtils;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, m61528d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 7, 1})
@DebugMetadata(m61542c = "com.canhub.cropper.BitmapLoadingWorkerJob$start$1", m61543f = "BitmapLoadingWorkerJob.kt", m61544i = {}, m61545l = {52, 66}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes3.dex */
public final class BitmapLoadingWorkerJob$start$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BitmapLoadingWorkerJob this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapLoadingWorkerJob$start$1(BitmapLoadingWorkerJob bitmapLoadingWorkerJob, Continuation<? super BitmapLoadingWorkerJob$start$1> continuation) {
        super(2, continuation);
        this.this$0 = bitmapLoadingWorkerJob;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        BitmapLoadingWorkerJob$start$1 bitmapLoadingWorkerJob$start$1 = new BitmapLoadingWorkerJob$start$1(this.this$0, continuation);
        bitmapLoadingWorkerJob$start$1.L$0 = obj;
        return bitmapLoadingWorkerJob$start$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Object m9210a;
        Context context;
        int i;
        int i2;
        Context context2;
        Object m9210a2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = this.label;
        try {
        } catch (Exception e) {
            BitmapLoadingWorkerJob bitmapLoadingWorkerJob = this.this$0;
            BitmapLoadingWorkerJob.Result result = new BitmapLoadingWorkerJob.Result(bitmapLoadingWorkerJob.getUri(), null, 0, 0, false, false, e);
            this.label = 2;
            m9210a = bitmapLoadingWorkerJob.m9210a(result, this);
            if (m9210a == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            this = this;
            if (CoroutineScopeKt.isActive(coroutineScope)) {
                BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
                context = this.this$0.context;
                Uri uri = this.this$0.getUri();
                i = this.this$0.width;
                i2 = this.this$0.height;
                BitmapUtils.BitmapSampled decodeSampledBitmap = bitmapUtils.decodeSampledBitmap(context, uri, i, i2);
                this = this;
                if (CoroutineScopeKt.isActive(coroutineScope)) {
                    Bitmap bitmap = decodeSampledBitmap.getBitmap();
                    context2 = this.this$0.context;
                    BitmapUtils.RotateBitmapResult orientateBitmapByExif = bitmapUtils.orientateBitmapByExif(bitmap, context2, this.this$0.getUri());
                    BitmapLoadingWorkerJob bitmapLoadingWorkerJob2 = this.this$0;
                    BitmapLoadingWorkerJob.Result result2 = new BitmapLoadingWorkerJob.Result(bitmapLoadingWorkerJob2.getUri(), orientateBitmapByExif.getBitmap(), decodeSampledBitmap.getSampleSize(), orientateBitmapByExif.getDegrees(), orientateBitmapByExif.getFlipHorizontally(), orientateBitmapByExif.getFlipVertically(), null);
                    this.label = 1;
                    m9210a2 = bitmapLoadingWorkerJob2.m9210a(result2, this);
                    this = m9210a2;
                    if (m9210a2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
        } else {
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            this = this;
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((BitmapLoadingWorkerJob$start$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
