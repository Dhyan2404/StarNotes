package com.canhub.cropper;

import com.canhub.cropper.BitmapLoadingWorkerJob;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, m61528d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 7, 1})
@DebugMetadata(m61542c = "com.canhub.cropper.BitmapLoadingWorkerJob$onPostExecute$2", m61543f = "BitmapLoadingWorkerJob.kt", m61544i = {}, m61545l = {}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes3.dex */
public final class BitmapLoadingWorkerJob$onPostExecute$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BitmapLoadingWorkerJob.Result $result;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BitmapLoadingWorkerJob this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapLoadingWorkerJob$onPostExecute$2(BitmapLoadingWorkerJob bitmapLoadingWorkerJob, BitmapLoadingWorkerJob.Result result, Continuation<? super BitmapLoadingWorkerJob$onPostExecute$2> continuation) {
        super(2, continuation);
        this.this$0 = bitmapLoadingWorkerJob;
        this.$result = result;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        BitmapLoadingWorkerJob$onPostExecute$2 bitmapLoadingWorkerJob$onPostExecute$2 = new BitmapLoadingWorkerJob$onPostExecute$2(this.this$0, this.$result, continuation);
        bitmapLoadingWorkerJob$onPostExecute$2.L$0 = obj;
        return bitmapLoadingWorkerJob$onPostExecute$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        WeakReference weakReference;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        if (CoroutineScopeKt.isActive(coroutineScope)) {
            weakReference = this.this$0.cropImageViewReference;
            CropImageView cropImageView = (CropImageView) weakReference.get();
            if (cropImageView != null) {
                BitmapLoadingWorkerJob.Result result = this.$result;
                booleanRef.element = true;
                cropImageView.onSetImageUriAsyncComplete$cropper_release(result);
            }
        }
        if (!booleanRef.element && this.$result.getBitmap() != null) {
            this.$result.getBitmap().recycle();
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((BitmapLoadingWorkerJob$onPostExecute$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
