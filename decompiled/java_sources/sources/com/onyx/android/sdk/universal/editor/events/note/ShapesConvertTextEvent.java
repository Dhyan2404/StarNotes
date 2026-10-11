package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\"\u0010#J\u0006\u0010\u0003\u001a\u00020\u0002J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0002HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J-\u0010\r\u001a\u00020\u00002\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\bHÆ\u0001J\t\u0010\u000e\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003R(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\f\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ShapesConvertTextEvent;", "", "", "getQuoteTextOrAIContent", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "component1", "component2", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "component3", "shapeList", "content", "textContentTypes", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getContent", "()Ljava/lang/String;", "c", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "getTextContentTypes", "()Lcom/onyx/android/sdk/data/common/data/TextContentType;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ShapesConvertTextEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public List<? extends Shape> shapeList;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String content;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final TextContentType textContentTypes;

    public ShapesConvertTextEvent(@NotNull List<? extends Shape> shapeList, @NotNull String content, @NotNull TextContentType textContentTypes) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textContentTypes, "textContentTypes");
        this.shapeList = shapeList;
        this.content = content;
        this.textContentTypes = textContentTypes;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ShapesConvertTextEvent copy$default(ShapesConvertTextEvent shapesConvertTextEvent, List list, String str, TextContentType textContentType, int i, Object obj) {
        if ((i & 1) != 0) {
            list = shapesConvertTextEvent.shapeList;
        }
        if ((i & 2) != 0) {
            str = shapesConvertTextEvent.content;
        }
        if ((i & 4) != 0) {
            textContentType = shapesConvertTextEvent.textContentTypes;
        }
        return shapesConvertTextEvent.copy(list, str, textContentType);
    }

    @NotNull
    public final List<Shape> component1() {
        return this.shapeList;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final TextContentType getTextContentTypes() {
        return this.textContentTypes;
    }

    @NotNull
    public final ShapesConvertTextEvent copy(@NotNull List<? extends Shape> shapeList, @NotNull String content, @NotNull TextContentType textContentTypes) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textContentTypes, "textContentTypes");
        return new ShapesConvertTextEvent(shapeList, content, textContentTypes);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShapesConvertTextEvent)) {
            return false;
        }
        ShapesConvertTextEvent shapesConvertTextEvent = (ShapesConvertTextEvent) other;
        return Intrinsics.areEqual(this.shapeList, shapesConvertTextEvent.shapeList) && Intrinsics.areEqual(this.content, shapesConvertTextEvent.content) && this.textContentTypes == shapesConvertTextEvent.textContentTypes;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final String getQuoteTextOrAIContent() {
        Object first;
        if (this.shapeList.size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.shapeList);
            Shape shape = (Shape) first;
            String text = shape.getText();
            if (ShapeTypes.INSTANCE.isQuoteShape(shape) && StringKt.isNotBlank(text)) {
                return text;
            }
        }
        return this.content;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    @NotNull
    public final TextContentType getTextContentTypes() {
        return this.textContentTypes;
    }

    public int hashCode() {
        return (((this.shapeList.hashCode() * 31) + this.content.hashCode()) * 31) + this.textContentTypes.hashCode();
    }

    public final void setShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }

    @NotNull
    public String toString() {
        return "ShapesConvertTextEvent(shapeList=" + this.shapeList + ", content=" + this.content + ", textContentTypes=" + this.textContentTypes + ')';
    }
}
