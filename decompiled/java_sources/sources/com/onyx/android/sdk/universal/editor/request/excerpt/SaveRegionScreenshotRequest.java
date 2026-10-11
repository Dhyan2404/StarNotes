package com.onyx.android.sdk.universal.editor.request.excerpt;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0014\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", C6997f.f39671c, "Landroid/graphics/RectF;", "regionInViewport", "Landroid/graphics/RectF;", "getRegionInViewport", "()Landroid/graphics/RectF;", "setRegionInViewport", "(Landroid/graphics/RectF;)V", "", Constants.STRING_SIG, "getImgPath", "()Ljava/lang/String;", "setImgPath", "(Ljava/lang/String;)V", "imgPath", "Landroid/graphics/Bitmap;", C6998g.f39679a, "Landroid/graphics/Bitmap;", "getViewBitmap", "()Landroid/graphics/Bitmap;", "setViewBitmap", "(Landroid/graphics/Bitmap;)V", "viewBitmap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveRegionScreenshotRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveRegionScreenshotRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,56:1\n43#2,3:57\n*S KotlinDebug\n*F\n+ 1 SaveRegionScreenshotRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest\n*L\n40#1:57,3\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveRegionScreenshotRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String imgPath;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Bitmap viewBitmap;
    public RectF regionInViewport;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveRegionScreenshotRequest(@NotNull WorkBundle workBundle) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.imgPath = "";
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        if (getRegionInViewport().isEmpty()) {
            return;
        }
        m41460f(workBundle);
    }

    /* renamed from: f */
    public final void m41460f(WorkBundle workBundle) {
        Bitmap createBitmap = Bitmap.createBitmap((int) getRegionInViewport().width(), (int) getRegionInViewport().height(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(-1);
        Bitmap bitmap = this.viewBitmap;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, -getRegionInViewport().left, -getRegionInViewport().top, (Paint) null);
        }
        String absolutePath = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), UUIDUtils.INSTANCE.rawUUID() + ".png").getAbsolutePath();
        FileUtils.INSTANCE.ensureFileExists(absolutePath);
        BitmapKt.save$default(createBitmap, absolutePath, 0, 2, null);
        Debug.INSTANCE.m32035d(SaveRegionScreenshotRequest.class, "saveImg, path = " + absolutePath + ", size = " + BitmapKt.boundingRectF(createBitmap) + ", viewBitmap.isValid = " + BitmapKt.isValid(this.viewBitmap), new Object[0]);
        Intrinsics.checkNotNull(absolutePath);
        this.imgPath = absolutePath;
    }

    @NotNull
    public final String getImgPath() {
        return this.imgPath;
    }

    @NotNull
    public final RectF getRegionInViewport() {
        RectF rectF = this.regionInViewport;
        if (rectF != null) {
            return rectF;
        }
        Intrinsics.throwUninitializedPropertyAccessException("regionInViewport");
        return null;
    }

    @Nullable
    public final Bitmap getViewBitmap() {
        return this.viewBitmap;
    }

    public final void setImgPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imgPath = str;
    }

    public final void setRegionInViewport(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.regionInViewport = rectF;
    }

    public final void setViewBitmap(@Nullable Bitmap bitmap) {
        this.viewBitmap = bitmap;
    }
}
