package com.canhub.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import com.canhub.cropper.CropImageView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.lang.ref.WeakReference;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0001LB«\u0001\u0012\u0006\u0010\f\u001a\u00020\t\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010#\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\u001e\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010+\u001a\u00020\u001e\u0012\u0006\u0010-\u001a\u00020\u001e\u0012\u0006\u0010/\u001a\u00020\u001e\u0012\u0006\u00101\u001a\u00020\u001e\u0012\u0006\u00103\u001a\u00020&\u0012\u0006\u00105\u001a\u00020&\u0012\u0006\u00109\u001a\u000206\u0012\u0006\u0010=\u001a\u00020:\u0012\u0006\u0010?\u001a\u00020\u001e\u0012\b\u0010A\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\bJ\u0010KJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u001b\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010 R\u0014\u0010%\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010 R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010+\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010 R\u0014\u0010-\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010 R\u0014\u0010/\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010 R\u0014\u00101\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010 R\u0014\u00103\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010(R\u0014\u00105\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010(R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010?\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010 R\u0016\u0010A\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010\u0014R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0014\u0010I\u001a\u00020F8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010H\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006M"}, m61528d2 = {"Lcom/canhub/cropper/BitmapCroppingWorkerJob;", "Lkotlinx/coroutines/CoroutineScope;", "", gon.f71290o0, "cancel", "Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "a", "(Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Ljava/lang/ref/WeakReference;", "Lcom/canhub/cropper/CropImageView;", C6997f.f39671c, "Ljava/lang/ref/WeakReference;", "cropImageViewReference", "Landroid/net/Uri;", C6998g.f39679a, "Landroid/net/Uri;", "uri", "Landroid/graphics/Bitmap;", C6999h.f39688c, "Landroid/graphics/Bitmap;", "bitmap", "", "i", "[F", "cropPoints", "", "j", "I", "degreesRotated", C4921e.f26537n, "orgWidth", "l", "orgHeight", "", "m", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "fixAspectRatio", GoogleApiAvailabilityLight.f29016b, "aspectRatioX", C4921e.f26528e, "aspectRatioY", "p", "reqWidth", "q", "reqHeight", "r", "flipHorizontally", "s", "flipVertically", "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;", "t", "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;", "options", "Landroid/graphics/Bitmap$CompressFormat;", "u", "Landroid/graphics/Bitmap$CompressFormat;", "saveCompressFormat", "v", "saveCompressQuality", "w", "customOutputUri", "Lkotlinx/coroutines/Job;", "x", "Lkotlinx/coroutines/Job;", "job", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/ref/WeakReference;Landroid/net/Uri;Landroid/graphics/Bitmap;[FIIIZIIIIZZLcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V", "Result", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class BitmapCroppingWorkerJob implements CoroutineScope {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final WeakReference<CropImageView> cropImageViewReference;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final Uri uri;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final Bitmap bitmap;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final float[] cropPoints;

    /* renamed from: j, reason: from kotlin metadata */
    public final int degreesRotated;

    /* renamed from: k, reason: from kotlin metadata */
    public final int orgWidth;

    /* renamed from: l, reason: from kotlin metadata */
    public final int orgHeight;

    /* renamed from: m, reason: from kotlin metadata */
    public final boolean fixAspectRatio;

    /* renamed from: n, reason: from kotlin metadata */
    public final int aspectRatioX;

    /* renamed from: o, reason: from kotlin metadata */
    public final int aspectRatioY;

    /* renamed from: p, reason: from kotlin metadata */
    public final int reqWidth;

    /* renamed from: q, reason: from kotlin metadata */
    public final int reqHeight;

    /* renamed from: r, reason: from kotlin metadata */
    public final boolean flipHorizontally;

    /* renamed from: s, reason: from kotlin metadata */
    public final boolean flipVertically;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final CropImageView.RequestSizeOptions options;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Bitmap.CompressFormat saveCompressFormat;

    /* renamed from: v, reason: from kotlin metadata */
    public final int saveCompressQuality;

    /* renamed from: w, reason: from kotlin metadata */
    @Nullable
    public final Uri customOutputUri;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public Job job;

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0080\b\u0018\u00002\u00020\u0001B3\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\r\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b&\u0010'J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0011\u0010\b\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J=\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\u0010\b\u0002\u0010\r\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\b\b\u0002\u0010\u000e\u001a\u00020\tHÆ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0012\u001a\u00020\tHÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001f\u0010\r\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00078\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%¨\u0006("}, m61528d2 = {"Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;", "", "Landroid/graphics/Bitmap;", "component1", "Landroid/net/Uri;", "component2", "Ljava/lang/Exception;", "Lkotlin/Exception;", "component3", "", "component4", "bitmap", "uri", "error", "sampleSize", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "b", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "c", "Ljava/lang/Exception;", "getError", "()Ljava/lang/Exception;", "d", "I", "getSampleSize", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;I)V", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final /* data */ class Result {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @Nullable
        public final Bitmap bitmap;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @Nullable
        public final Uri uri;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        @Nullable
        public final Exception error;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        public final int sampleSize;

        public Result(@Nullable Bitmap bitmap, @Nullable Uri uri, @Nullable Exception exc, int i) {
            this.bitmap = bitmap;
            this.uri = uri;
            this.error = exc;
            this.sampleSize = i;
        }

        public static /* synthetic */ Result copy$default(Result result, Bitmap bitmap, Uri uri, Exception exc, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                bitmap = result.bitmap;
            }
            if ((i2 & 2) != 0) {
                uri = result.uri;
            }
            if ((i2 & 4) != 0) {
                exc = result.error;
            }
            if ((i2 & 8) != 0) {
                i = result.sampleSize;
            }
            return result.copy(bitmap, uri, exc, i);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final Uri getUri() {
            return this.uri;
        }

        @Nullable
        /* renamed from: component3, reason: from getter */
        public final Exception getError() {
            return this.error;
        }

        /* renamed from: component4, reason: from getter */
        public final int getSampleSize() {
            return this.sampleSize;
        }

        @NotNull
        public final Result copy(@Nullable Bitmap bitmap, @Nullable Uri uri, @Nullable Exception error, int sampleSize) {
            return new Result(bitmap, uri, error, sampleSize);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Result)) {
                return false;
            }
            Result result = (Result) other;
            return Intrinsics.areEqual(this.bitmap, result.bitmap) && Intrinsics.areEqual(this.uri, result.uri) && Intrinsics.areEqual(this.error, result.error) && this.sampleSize == result.sampleSize;
        }

        @Nullable
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        @Nullable
        public final Exception getError() {
            return this.error;
        }

        public final int getSampleSize() {
            return this.sampleSize;
        }

        @Nullable
        public final Uri getUri() {
            return this.uri;
        }

        public int hashCode() {
            Bitmap bitmap = this.bitmap;
            int hashCode = (bitmap == null ? 0 : bitmap.hashCode()) * 31;
            Uri uri = this.uri;
            int hashCode2 = (hashCode + (uri == null ? 0 : uri.hashCode())) * 31;
            Exception exc = this.error;
            return ((hashCode2 + (exc != null ? exc.hashCode() : 0)) * 31) + Integer.hashCode(this.sampleSize);
        }

        @NotNull
        public String toString() {
            return "Result(bitmap=" + this.bitmap + ", uri=" + this.uri + ", error=" + this.error + ", sampleSize=" + this.sampleSize + ')';
        }
    }

    public BitmapCroppingWorkerJob(@NotNull Context context, @NotNull WeakReference<CropImageView> cropImageViewReference, @Nullable Uri uri, @Nullable Bitmap bitmap, @NotNull float[] cropPoints, int i, int i2, int i3, boolean z, int i4, int i5, int i6, int i7, boolean z2, boolean z3, @NotNull CropImageView.RequestSizeOptions options, @NotNull Bitmap.CompressFormat saveCompressFormat, int i8, @Nullable Uri uri2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cropImageViewReference, "cropImageViewReference");
        Intrinsics.checkNotNullParameter(cropPoints, "cropPoints");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(saveCompressFormat, "saveCompressFormat");
        this.context = context;
        this.cropImageViewReference = cropImageViewReference;
        this.uri = uri;
        this.bitmap = bitmap;
        this.cropPoints = cropPoints;
        this.degreesRotated = i;
        this.orgWidth = i2;
        this.orgHeight = i3;
        this.fixAspectRatio = z;
        this.aspectRatioX = i4;
        this.aspectRatioY = i5;
        this.reqWidth = i6;
        this.reqHeight = i7;
        this.flipHorizontally = z2;
        this.flipVertically = z3;
        this.options = options;
        this.saveCompressFormat = saveCompressFormat;
        this.saveCompressQuality = i8;
        this.customOutputUri = uri2;
        this.job = JobKt.Job$default((Job) null, 1, (Object) null);
    }

    /* renamed from: a */
    public final Object m9209a(Result result, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object withContext = BuildersKt.withContext(Dispatchers.getMain(), new BitmapCroppingWorkerJob$onPostExecute$2(this, result, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return withContext == coroutine_suspended ? withContext : Unit.INSTANCE;
    }

    public final void cancel() {
        Job.DefaultImpls.cancel$default(this.job, (CancellationException) null, 1, (Object) null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return Dispatchers.getMain().plus(this.job);
    }

    public final void start() {
        this.job = BuildersKt.launch$default(this, Dispatchers.getDefault(), null, new BitmapCroppingWorkerJob$start$1(this, null), 2, null);
    }
}
