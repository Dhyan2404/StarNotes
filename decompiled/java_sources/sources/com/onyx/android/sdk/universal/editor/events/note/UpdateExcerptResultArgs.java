package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u0014¢\u0006\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "a", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "b", Constants.STRING_SIG, "getImagePath", "()Ljava/lang/String;", "imagePath", "", "c", "F", "getBitmapScaleRatio", "()F", "bitmapScaleRatio", "", "d", "Ljava/util/List;", "getQuoteShapeIds", "()Ljava/util/List;", "quoteShapeIds", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;FLjava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateExcerptResultArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String imagePath;

    /* renamed from: c, reason: from kotlin metadata */
    public final float bitmapScaleRatio;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<String> quoteShapeIds;

    public UpdateExcerptResultArgs(@NotNull Shape shape, @NotNull String imagePath, float f, @NotNull List<String> quoteShapeIds) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(imagePath, "imagePath");
        Intrinsics.checkNotNullParameter(quoteShapeIds, "quoteShapeIds");
        this.shape = shape;
        this.imagePath = imagePath;
        this.bitmapScaleRatio = f;
        this.quoteShapeIds = quoteShapeIds;
    }

    public final float getBitmapScaleRatio() {
        return this.bitmapScaleRatio;
    }

    @NotNull
    public final String getImagePath() {
        return this.imagePath;
    }

    @NotNull
    public final List<String> getQuoteShapeIds() {
        return this.quoteShapeIds;
    }

    @NotNull
    public final Shape getShape() {
        return this.shape;
    }
}
