package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.textbox.data.EditorStyleInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTextInputMenuEvent;", "", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "component1", "Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;", "component2", "textStyle", "styleInfo", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "getTextStyle", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "b", "Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;", "getStyleInfo", "()Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class UpdateTextInputMenuEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final ShapeTextStyle textStyle;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final EditorStyleInfo styleInfo;

    public UpdateTextInputMenuEvent(@NotNull ShapeTextStyle textStyle, @NotNull EditorStyleInfo styleInfo) {
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        Intrinsics.checkNotNullParameter(styleInfo, "styleInfo");
        this.textStyle = textStyle;
        this.styleInfo = styleInfo;
    }

    public static /* synthetic */ UpdateTextInputMenuEvent copy$default(UpdateTextInputMenuEvent updateTextInputMenuEvent, ShapeTextStyle shapeTextStyle, EditorStyleInfo editorStyleInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            shapeTextStyle = updateTextInputMenuEvent.textStyle;
        }
        if ((i & 2) != 0) {
            editorStyleInfo = updateTextInputMenuEvent.styleInfo;
        }
        return updateTextInputMenuEvent.copy(shapeTextStyle, editorStyleInfo);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final ShapeTextStyle getTextStyle() {
        return this.textStyle;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final EditorStyleInfo getStyleInfo() {
        return this.styleInfo;
    }

    @NotNull
    public final UpdateTextInputMenuEvent copy(@NotNull ShapeTextStyle textStyle, @NotNull EditorStyleInfo styleInfo) {
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        Intrinsics.checkNotNullParameter(styleInfo, "styleInfo");
        return new UpdateTextInputMenuEvent(textStyle, styleInfo);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpdateTextInputMenuEvent)) {
            return false;
        }
        UpdateTextInputMenuEvent updateTextInputMenuEvent = (UpdateTextInputMenuEvent) other;
        return Intrinsics.areEqual(this.textStyle, updateTextInputMenuEvent.textStyle) && Intrinsics.areEqual(this.styleInfo, updateTextInputMenuEvent.styleInfo);
    }

    @NotNull
    public final EditorStyleInfo getStyleInfo() {
        return this.styleInfo;
    }

    @NotNull
    public final ShapeTextStyle getTextStyle() {
        return this.textStyle;
    }

    public int hashCode() {
        return (this.textStyle.hashCode() * 31) + this.styleInfo.hashCode();
    }

    @NotNull
    public String toString() {
        return "UpdateTextInputMenuEvent(textStyle=" + this.textStyle + ", styleInfo=" + this.styleInfo + ')';
    }
}
