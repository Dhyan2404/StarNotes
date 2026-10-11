package com.canhub.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import com.canhub.cropper.BitmapCroppingWorkerJob;
import com.canhub.cropper.BitmapUtils;
import com.canhub.cropper.CropImageView;
import com.sunia.HTREnginev2.C14063lv;
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
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, m61528d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 7, 1})
@DebugMetadata(m61542c = "com.canhub.cropper.BitmapCroppingWorkerJob$start$1", m61543f = "BitmapCroppingWorkerJob.kt", m61544i = {}, m61545l = {76, 115}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
/* loaded from: classes3.dex */
public final class BitmapCroppingWorkerJob$start$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BitmapCroppingWorkerJob this$0;

    @Metadata(m61527d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, m61528d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 7, 1})
    @DebugMetadata(m61542c = "com.canhub.cropper.BitmapCroppingWorkerJob$start$1$1", m61543f = "BitmapCroppingWorkerJob.kt", m61544i = {}, m61545l = {104}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
    /* renamed from: com.canhub.cropper.BitmapCroppingWorkerJob$start$1$1 */
    /* loaded from: classes3.dex */
    public static final class C20521 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BitmapUtils.BitmapSampled $bitmapSampled;
        final /* synthetic */ Bitmap $resizedBitmap;
        int label;
        final /* synthetic */ BitmapCroppingWorkerJob this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20521(BitmapCroppingWorkerJob bitmapCroppingWorkerJob, Bitmap bitmap, BitmapUtils.BitmapSampled bitmapSampled, Continuation<? super C20521> continuation) {
            super(2, continuation);
            this.this$0 = bitmapCroppingWorkerJob;
            this.$resizedBitmap = bitmap;
            this.$bitmapSampled = bitmapSampled;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new C20521(this.this$0, this.$resizedBitmap, this.$bitmapSampled, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended;
            Context context;
            Bitmap.CompressFormat compressFormat;
            int i;
            Uri uri;
            Object m9209a;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
                context = this.this$0.context;
                Bitmap bitmap = this.$resizedBitmap;
                compressFormat = this.this$0.saveCompressFormat;
                i = this.this$0.saveCompressQuality;
                uri = this.this$0.customOutputUri;
                Uri writeBitmapToUri = bitmapUtils.writeBitmapToUri(context, bitmap, compressFormat, i, uri);
                BitmapCroppingWorkerJob bitmapCroppingWorkerJob = this.this$0;
                BitmapCroppingWorkerJob.Result result = new BitmapCroppingWorkerJob.Result(this.$resizedBitmap, writeBitmapToUri, null, this.$bitmapSampled.getSampleSize());
                this.label = 1;
                m9209a = bitmapCroppingWorkerJob.m9209a(result, this);
                if (m9209a == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
            return ((C20521) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapCroppingWorkerJob$start$1(BitmapCroppingWorkerJob bitmapCroppingWorkerJob, Continuation<? super BitmapCroppingWorkerJob$start$1> continuation) {
        super(2, continuation);
        this.this$0 = bitmapCroppingWorkerJob;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        BitmapCroppingWorkerJob$start$1 bitmapCroppingWorkerJob$start$1 = new BitmapCroppingWorkerJob$start$1(this.this$0, continuation);
        bitmapCroppingWorkerJob$start$1.L$0 = obj;
        return bitmapCroppingWorkerJob$start$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Object m9209a;
        Uri uri;
        Bitmap bitmap;
        Object m9209a2;
        Bitmap bitmap2;
        float[] fArr;
        int i;
        boolean z;
        int i2;
        int i3;
        boolean z2;
        boolean z3;
        BitmapUtils.BitmapSampled cropBitmapObjectHandleOOM;
        int i4;
        int i5;
        CropImageView.RequestSizeOptions requestSizeOptions;
        Context context;
        Uri uri2;
        float[] fArr2;
        int i6;
        int i7;
        int i8;
        boolean z4;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z5;
        boolean z6;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i13 = this.label;
        try {
        } catch (Exception e) {
            BitmapCroppingWorkerJob bitmapCroppingWorkerJob = this.this$0;
            BitmapCroppingWorkerJob.Result result = new BitmapCroppingWorkerJob.Result(null, null, e, 1);
            this.label = 2;
            m9209a = bitmapCroppingWorkerJob.m9209a(result, this);
            if (m9209a == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        if (i13 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            if (CoroutineScopeKt.isActive(coroutineScope)) {
                uri = this.this$0.uri;
                if (uri != null) {
                    BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
                    context = this.this$0.context;
                    uri2 = this.this$0.uri;
                    fArr2 = this.this$0.cropPoints;
                    i6 = this.this$0.degreesRotated;
                    i7 = this.this$0.orgWidth;
                    i8 = this.this$0.orgHeight;
                    z4 = this.this$0.fixAspectRatio;
                    i9 = this.this$0.aspectRatioX;
                    i10 = this.this$0.aspectRatioY;
                    i11 = this.this$0.reqWidth;
                    i12 = this.this$0.reqHeight;
                    z5 = this.this$0.flipHorizontally;
                    z6 = this.this$0.flipVertically;
                    cropBitmapObjectHandleOOM = bitmapUtils.cropBitmap(context, uri2, fArr2, i6, i7, i8, z4, i9, i10, i11, i12, z5, z6);
                } else {
                    bitmap = this.this$0.bitmap;
                    if (bitmap != null) {
                        BitmapUtils bitmapUtils2 = BitmapUtils.INSTANCE;
                        bitmap2 = this.this$0.bitmap;
                        fArr = this.this$0.cropPoints;
                        i = this.this$0.degreesRotated;
                        z = this.this$0.fixAspectRatio;
                        i2 = this.this$0.aspectRatioX;
                        i3 = this.this$0.aspectRatioY;
                        z2 = this.this$0.flipHorizontally;
                        z3 = this.this$0.flipVertically;
                        cropBitmapObjectHandleOOM = bitmapUtils2.cropBitmapObjectHandleOOM(bitmap2, fArr, i, z, i2, i3, z2, z3);
                    } else {
                        BitmapCroppingWorkerJob bitmapCroppingWorkerJob2 = this.this$0;
                        BitmapCroppingWorkerJob.Result result2 = new BitmapCroppingWorkerJob.Result(null, null, null, 1);
                        this.label = 1;
                        m9209a2 = bitmapCroppingWorkerJob2.m9209a(result2, this);
                        if (m9209a2 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
                BitmapUtils bitmapUtils3 = BitmapUtils.INSTANCE;
                Bitmap bitmap3 = cropBitmapObjectHandleOOM.getBitmap();
                i4 = this.this$0.reqWidth;
                i5 = this.this$0.reqHeight;
                requestSizeOptions = this.this$0.options;
                C14063lv.m55522f(coroutineScope, Dispatchers.getIO(), null, new C20521(this.this$0, bitmapUtils3.resizeBitmap(bitmap3, i4, i5, requestSizeOptions), cropBitmapObjectHandleOOM, null), 2, null);
            }
            return Unit.INSTANCE;
        }
        if (i13 != 1) {
            if (i13 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(obj);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((BitmapCroppingWorkerJob$start$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
