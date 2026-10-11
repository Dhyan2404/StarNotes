package com.canhub.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
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

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001:\u0001*B!\b\u0000\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010'\u001a\u00020\u001a\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b(\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u001b\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001a\u0010\u0012\u001a\u00020\r8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015R\"\u0010\u001e\u001a\u0010\u0012\f\u0012\n \u001b*\u0004\u0018\u00010\u001a0\u001a0\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, m61528d2 = {"Lcom/canhub/cropper/BitmapLoadingWorkerJob;", "Lkotlinx/coroutines/CoroutineScope;", "", gon.f71290o0, "cancel", "Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "a", "(Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Landroid/net/Uri;", C6997f.f39671c, "Landroid/net/Uri;", "getUri$cropper_release", "()Landroid/net/Uri;", "uri", "", C6998g.f39679a, "I", "width", C6999h.f39688c, "height", "Ljava/lang/ref/WeakReference;", "Lcom/canhub/cropper/CropImageView;", "kotlin.jvm.PlatformType", "i", "Ljava/lang/ref/WeakReference;", "cropImageViewReference", "Lkotlinx/coroutines/Job;", "j", "Lkotlinx/coroutines/Job;", "job", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "cropImageView", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;)V", "Result", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class BitmapLoadingWorkerJob implements CoroutineScope {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Uri uri;

    /* renamed from: g, reason: from kotlin metadata */
    public final int width;

    /* renamed from: h, reason: from kotlin metadata */
    public final int height;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final WeakReference<CropImageView> cropImageViewReference;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public Job job;

    @Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u001f\b\u0080\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0006\u0012\u0006\u0010\u0013\u001a\u00020\t\u0012\u0006\u0010\u0014\u001a\u00020\t\u0012\u000e\u0010\u0015\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\r¢\u0006\u0004\b4\u00105J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J\t\u0010\u000b\u001a\u00020\tHÆ\u0003J\u0011\u0010\u000e\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\rHÆ\u0003JY\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u00022\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u00062\b\b\u0002\u0010\u0013\u001a\u00020\t2\b\b\u0002\u0010\u0014\u001a\u00020\t2\u0010\b\u0002\u0010\u0015\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\rHÆ\u0001J\t\u0010\u0018\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u001b\u001a\u00020\t2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u000f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u0011\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0017\u0010\u0012\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b(\u0010%\u001a\u0004\b)\u0010'R\u0017\u0010\u0013\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0017\u0010\u0014\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b.\u0010+\u001a\u0004\b/\u0010-R\u001f\u0010\u0015\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\r8\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103¨\u00066"}, m61528d2 = {"Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;", "", "Landroid/net/Uri;", "component1", "Landroid/graphics/Bitmap;", "component2", "", "component3", "component4", "", "component5", "component6", "Ljava/lang/Exception;", "Lkotlin/Exception;", "component7", "uri", "bitmap", "loadSampleSize", "degreesRotated", "flipHorizontally", "flipVertically", "error", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "b", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "c", "I", "getLoadSampleSize", "()I", "d", "getDegreesRotated", "e", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getFlipHorizontally", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, C6997f.f39671c, "getFlipVertically", C6998g.f39679a, "Ljava/lang/Exception;", "getError", "()Ljava/lang/Exception;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZZLjava/lang/Exception;)V", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final /* data */ class Result {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final Uri uri;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @Nullable
        public final Bitmap bitmap;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        public final int loadSampleSize;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        public final int degreesRotated;

        /* renamed from: e, reason: from kotlin metadata and from toString */
        public final boolean flipHorizontally;

        /* renamed from: f, reason: from kotlin metadata and from toString */
        public final boolean flipVertically;

        /* renamed from: g, reason: from kotlin metadata and from toString */
        @Nullable
        public final Exception error;

        public Result(@NotNull Uri uri, @Nullable Bitmap bitmap, int i, int i2, boolean z, boolean z2, @Nullable Exception exc) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.uri = uri;
            this.bitmap = bitmap;
            this.loadSampleSize = i;
            this.degreesRotated = i2;
            this.flipHorizontally = z;
            this.flipVertically = z2;
            this.error = exc;
        }

        public static /* synthetic */ Result copy$default(Result result, Uri uri, Bitmap bitmap, int i, int i2, boolean z, boolean z2, Exception exc, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                uri = result.uri;
            }
            if ((i3 & 2) != 0) {
                bitmap = result.bitmap;
            }
            Bitmap bitmap2 = bitmap;
            if ((i3 & 4) != 0) {
                i = result.loadSampleSize;
            }
            int i4 = i;
            if ((i3 & 8) != 0) {
                i2 = result.degreesRotated;
            }
            int i5 = i2;
            if ((i3 & 16) != 0) {
                z = result.flipHorizontally;
            }
            boolean z3 = z;
            if ((i3 & 32) != 0) {
                z2 = result.flipVertically;
            }
            boolean z4 = z2;
            if ((i3 & 64) != 0) {
                exc = result.error;
            }
            return result.copy(uri, bitmap2, i4, i5, z3, z4, exc);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final Uri getUri() {
            return this.uri;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        /* renamed from: component3, reason: from getter */
        public final int getLoadSampleSize() {
            return this.loadSampleSize;
        }

        /* renamed from: component4, reason: from getter */
        public final int getDegreesRotated() {
            return this.degreesRotated;
        }

        /* renamed from: component5, reason: from getter */
        public final boolean getFlipHorizontally() {
            return this.flipHorizontally;
        }

        /* renamed from: component6, reason: from getter */
        public final boolean getFlipVertically() {
            return this.flipVertically;
        }

        @Nullable
        /* renamed from: component7, reason: from getter */
        public final Exception getError() {
            return this.error;
        }

        @NotNull
        public final Result copy(@NotNull Uri uri, @Nullable Bitmap bitmap, int loadSampleSize, int degreesRotated, boolean flipHorizontally, boolean flipVertically, @Nullable Exception error) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            return new Result(uri, bitmap, loadSampleSize, degreesRotated, flipHorizontally, flipVertically, error);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Result)) {
                return false;
            }
            Result result = (Result) other;
            return Intrinsics.areEqual(this.uri, result.uri) && Intrinsics.areEqual(this.bitmap, result.bitmap) && this.loadSampleSize == result.loadSampleSize && this.degreesRotated == result.degreesRotated && this.flipHorizontally == result.flipHorizontally && this.flipVertically == result.flipVertically && Intrinsics.areEqual(this.error, result.error);
        }

        @Nullable
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        public final int getDegreesRotated() {
            return this.degreesRotated;
        }

        @Nullable
        public final Exception getError() {
            return this.error;
        }

        public final boolean getFlipHorizontally() {
            return this.flipHorizontally;
        }

        public final boolean getFlipVertically() {
            return this.flipVertically;
        }

        public final int getLoadSampleSize() {
            return this.loadSampleSize;
        }

        @NotNull
        public final Uri getUri() {
            return this.uri;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = this.uri.hashCode() * 31;
            Bitmap bitmap = this.bitmap;
            int hashCode2 = (((((hashCode + (bitmap == null ? 0 : bitmap.hashCode())) * 31) + Integer.hashCode(this.loadSampleSize)) * 31) + Integer.hashCode(this.degreesRotated)) * 31;
            boolean z = this.flipHorizontally;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (hashCode2 + i) * 31;
            boolean z2 = this.flipVertically;
            int i3 = (i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31;
            Exception exc = this.error;
            return i3 + (exc != null ? exc.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "Result(uri=" + this.uri + ", bitmap=" + this.bitmap + ", loadSampleSize=" + this.loadSampleSize + ", degreesRotated=" + this.degreesRotated + ", flipHorizontally=" + this.flipHorizontally + ", flipVertically=" + this.flipVertically + ", error=" + this.error + ')';
        }
    }

    public BitmapLoadingWorkerJob(@NotNull Context context, @NotNull CropImageView cropImageView, @NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cropImageView, "cropImageView");
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.context = context;
        this.uri = uri;
        this.cropImageViewReference = new WeakReference<>(cropImageView);
        this.job = JobKt.Job$default((Job) null, 1, (Object) null);
        float f = cropImageView.getResources().getDisplayMetrics().density;
        double d = f > 1.0f ? 1.0d / f : 1.0d;
        this.width = (int) (r3.widthPixels * d);
        this.height = (int) (r3.heightPixels * d);
    }

    /* renamed from: a */
    public final Object m9210a(Result result, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object withContext = BuildersKt.withContext(Dispatchers.getMain(), new BitmapLoadingWorkerJob$onPostExecute$2(this, result, null), continuation);
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

    @NotNull
    /* renamed from: getUri$cropper_release, reason: from getter */
    public final Uri getUri() {
        return this.uri;
    }

    public final void start() {
        this.job = BuildersKt.launch$default(this, Dispatchers.getDefault(), null, new BitmapLoadingWorkerJob$start$1(this, null), 2, null);
    }
}
