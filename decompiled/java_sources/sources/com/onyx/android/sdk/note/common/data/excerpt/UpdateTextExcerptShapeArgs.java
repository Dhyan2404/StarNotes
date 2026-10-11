package com.onyx.android.sdk.note.common.data.excerpt;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.annotation.WritingMode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b1\u00102R(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\r\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R\"\u0010\u001a\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\r\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010$\u001a\u00020#8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010+\u001a\u00020*8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;", "", "", "Landroid/graphics/RectF;", "a", "Ljava/util/List;", "getDisplayRectFList", "()Ljava/util/List;", "setDisplayRectFList", "(Ljava/util/List;)V", "displayRectFList", "", "b", Constants.STRING_SIG, "getStartPosition", "()Ljava/lang/String;", "setStartPosition", "(Ljava/lang/String;)V", "startPosition", "c", "getEndPosition", "setEndPosition", "endPosition", "d", "getQuote", "setQuote", "quote", "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "e", "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "getWritingMode", "()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "setWritingMode", "(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V", gon.f71267T, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateTextExcerptShapeArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<RectF> displayRectFList = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String startPosition = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String endPosition = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String quote = "";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public WritingMode writingMode = WritingMode.HORIZONTAL;
    public Shape shape;
    public BoxInfo virtualPageBoxInfo;

    @NotNull
    public final List<RectF> getDisplayRectFList() {
        return this.displayRectFList;
    }

    @NotNull
    public final String getEndPosition() {
        return this.endPosition;
    }

    @NotNull
    public final String getQuote() {
        return this.quote;
    }

    @NotNull
    public final Shape getShape() {
        Shape shape = this.shape;
        if (shape != null) {
            return shape;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shape");
        return null;
    }

    @NotNull
    public final String getStartPosition() {
        return this.startPosition;
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

    @NotNull
    public final WritingMode getWritingMode() {
        return this.writingMode;
    }

    public final void setDisplayRectFList(@NotNull List<RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.displayRectFList = list;
    }

    public final void setEndPosition(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.endPosition = str;
    }

    public final void setQuote(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.quote = str;
    }

    public final void setShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }

    public final void setStartPosition(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.startPosition = str;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }

    public final void setWritingMode(@NotNull WritingMode writingMode) {
        Intrinsics.checkNotNullParameter(writingMode, "<set-?>");
        this.writingMode = writingMode;
    }
}
