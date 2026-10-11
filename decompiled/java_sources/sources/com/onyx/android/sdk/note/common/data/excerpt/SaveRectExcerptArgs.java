package com.onyx.android.sdk.note.common.data.excerpt;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.shape.ExcerptAttr;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;", "", "Landroid/graphics/RectF;", "a", "Landroid/graphics/RectF;", "getRegionInViewport", "()Landroid/graphics/RectF;", "setRegionInViewport", "(Landroid/graphics/RectF;)V", "regionInViewport", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;", "excerptAttr", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;", "getExcerptAttr", "()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;", "setExcerptAttr", "(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;)V", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "", "b", Constants.STRING_SIG, "getImgPath", "()Ljava/lang/String;", "setImgPath", "(Ljava/lang/String;)V", "imgPath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveRectExcerptArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RectF regionInViewport = new RectF();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String imgPath = "";
    public ExcerptAttr excerptAttr;
    public BoxInfo virtualPageBoxInfo;

    @NotNull
    public final ExcerptAttr getExcerptAttr() {
        ExcerptAttr excerptAttr = this.excerptAttr;
        if (excerptAttr != null) {
            return excerptAttr;
        }
        Intrinsics.throwUninitializedPropertyAccessException("excerptAttr");
        return null;
    }

    @NotNull
    public final String getImgPath() {
        return this.imgPath;
    }

    @NotNull
    public final RectF getRegionInViewport() {
        return this.regionInViewport;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo != null) {
            return boxInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
        return null;
    }

    public final void setExcerptAttr(@NotNull ExcerptAttr excerptAttr) {
        Intrinsics.checkNotNullParameter(excerptAttr, "<set-?>");
        this.excerptAttr = excerptAttr;
    }

    public final void setImgPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imgPath = str;
    }

    public final void setRegionInViewport(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.regionInViewport = rectF;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }
}
