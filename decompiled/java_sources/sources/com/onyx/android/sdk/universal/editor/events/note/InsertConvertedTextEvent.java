package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J3\u0010\r\u001a\u00020\u00002\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00052\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\t\u0010\u000e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u000b\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0015\u001a\u0004\b\u001d\u0010\u0017¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "component1", "", "component2", "", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "component3", "shapeList", "content", "textContentTypes", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getContent", "()Ljava/lang/String;", "c", "getTextContentTypes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class InsertConvertedTextEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String content;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<TextContentType> textContentTypes;

    /* JADX WARN: Multi-variable type inference failed */
    public InsertConvertedTextEvent(@NotNull List<? extends Shape> shapeList, @NotNull String content, @NotNull List<TextContentType> textContentTypes) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textContentTypes, "textContentTypes");
        this.shapeList = shapeList;
        this.content = content;
        this.textContentTypes = textContentTypes;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InsertConvertedTextEvent copy$default(InsertConvertedTextEvent insertConvertedTextEvent, List list, String str, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = insertConvertedTextEvent.shapeList;
        }
        if ((i & 2) != 0) {
            str = insertConvertedTextEvent.content;
        }
        if ((i & 4) != 0) {
            list2 = insertConvertedTextEvent.textContentTypes;
        }
        return insertConvertedTextEvent.copy(list, str, list2);
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
    public final List<TextContentType> component3() {
        return this.textContentTypes;
    }

    @NotNull
    public final InsertConvertedTextEvent copy(@NotNull List<? extends Shape> shapeList, @NotNull String content, @NotNull List<TextContentType> textContentTypes) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textContentTypes, "textContentTypes");
        return new InsertConvertedTextEvent(shapeList, content, textContentTypes);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InsertConvertedTextEvent)) {
            return false;
        }
        InsertConvertedTextEvent insertConvertedTextEvent = (InsertConvertedTextEvent) other;
        return Intrinsics.areEqual(this.shapeList, insertConvertedTextEvent.shapeList) && Intrinsics.areEqual(this.content, insertConvertedTextEvent.content) && Intrinsics.areEqual(this.textContentTypes, insertConvertedTextEvent.textContentTypes);
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    @NotNull
    public final List<TextContentType> getTextContentTypes() {
        return this.textContentTypes;
    }

    public int hashCode() {
        return (((this.shapeList.hashCode() * 31) + this.content.hashCode()) * 31) + this.textContentTypes.hashCode();
    }

    @NotNull
    public String toString() {
        return "InsertConvertedTextEvent(shapeList=" + this.shapeList + ", content=" + this.content + ", textContentTypes=" + this.textContentTypes + ')';
    }
}
