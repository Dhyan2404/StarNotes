package com.onyx.galaxy.note.common.statistics;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u001c\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0017\u001a\u00020\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0007\u0012\u0006\u0010\u0019\u001a\u00020\u0007¢\u0006\u0004\b6\u00107J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\u0007HÆ\u0003J\t\u0010\f\u001a\u00020\u000bHÆ\u0003J\t\u0010\r\u001a\u00020\u0007HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0007HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0007HÆ\u0003Jm\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u00072\b\b\u0002\u0010\u0015\u001a\u00020\u00072\b\b\u0002\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0017\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00072\b\b\u0002\u0010\u0019\u001a\u00020\u0007HÆ\u0001J\t\u0010\u001b\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001cHÖ\u0001J\u0013\u0010\u001f\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0010\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u0011\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0017\u0010\u0012\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b(\u0010%\u001a\u0004\b)\u0010'R\u0017\u0010\u0013\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b\u0013\u0010,R\u0017\u0010\u0014\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b-\u0010+\u001a\u0004\b\u0014\u0010,R\u0017\u0010\u0015\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b.\u0010+\u001a\u0004\b\u0015\u0010,R\u0017\u0010\u0016\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u0017\u0010\u0017\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b3\u0010+\u001a\u0004\b\u0017\u0010,R\u0017\u0010\u0018\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b4\u0010+\u001a\u0004\b\u0018\u0010,R\u0017\u0010\u0019\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b5\u0010+\u001a\u0004\b\u0019\u0010,¨\u00068"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "component1", "", "component2", "component3", "", "component4", "component5", "component6", "", "component7", "component8", "component9", "component10", "editorBundle", NotificationCompat.CATEGORY_EVENT, "eventType", "isEraserPixel", "isEraseStrokes", "isEraseSelection", "thickness", "isPressureEraser", "isEraseHighlighterOnly", "isEraseTapeOnly", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getEvent", "()Ljava/lang/String;", "c", "getEventType", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "e", C6997f.f39671c, C6998g.f39679a, "F", "getThickness", "()F", C6999h.f39688c, "i", "j", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZFZZZ)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class EraserPopupMenuEventBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String event;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final String eventType;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final boolean isEraserPixel;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final boolean isEraseStrokes;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public final boolean isEraseSelection;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    public final float thickness;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    public final boolean isPressureEraser;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    public final boolean isEraseHighlighterOnly;

    /* renamed from: j, reason: from kotlin metadata and from toString */
    public final boolean isEraseTapeOnly;

    public EraserPopupMenuEventBean(@NotNull EditorBundle editorBundle, @NotNull String event, @NotNull String eventType, boolean z, boolean z2, boolean z3, float f, boolean z4, boolean z5, boolean z6) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.editorBundle = editorBundle;
        this.event = event;
        this.eventType = eventType;
        this.isEraserPixel = z;
        this.isEraseStrokes = z2;
        this.isEraseSelection = z3;
        this.thickness = f;
        this.isPressureEraser = z4;
        this.isEraseHighlighterOnly = z5;
        this.isEraseTapeOnly = z6;
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: component10, reason: from getter */
    public final boolean getIsEraseTapeOnly() {
        return this.isEraseTapeOnly;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getEvent() {
        return this.event;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getEventType() {
        return this.eventType;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsEraserPixel() {
        return this.isEraserPixel;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getIsEraseStrokes() {
        return this.isEraseStrokes;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getIsEraseSelection() {
        return this.isEraseSelection;
    }

    /* renamed from: component7, reason: from getter */
    public final float getThickness() {
        return this.thickness;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getIsPressureEraser() {
        return this.isPressureEraser;
    }

    /* renamed from: component9, reason: from getter */
    public final boolean getIsEraseHighlighterOnly() {
        return this.isEraseHighlighterOnly;
    }

    @NotNull
    public final EraserPopupMenuEventBean copy(@NotNull EditorBundle editorBundle, @NotNull String event, @NotNull String eventType, boolean isEraserPixel, boolean isEraseStrokes, boolean isEraseSelection, float thickness, boolean isPressureEraser, boolean isEraseHighlighterOnly, boolean isEraseTapeOnly) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        return new EraserPopupMenuEventBean(editorBundle, event, eventType, isEraserPixel, isEraseStrokes, isEraseSelection, thickness, isPressureEraser, isEraseHighlighterOnly, isEraseTapeOnly);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EraserPopupMenuEventBean)) {
            return false;
        }
        EraserPopupMenuEventBean eraserPopupMenuEventBean = (EraserPopupMenuEventBean) other;
        return Intrinsics.areEqual(this.editorBundle, eraserPopupMenuEventBean.editorBundle) && Intrinsics.areEqual(this.event, eraserPopupMenuEventBean.event) && Intrinsics.areEqual(this.eventType, eraserPopupMenuEventBean.eventType) && this.isEraserPixel == eraserPopupMenuEventBean.isEraserPixel && this.isEraseStrokes == eraserPopupMenuEventBean.isEraseStrokes && this.isEraseSelection == eraserPopupMenuEventBean.isEraseSelection && Float.compare(this.thickness, eraserPopupMenuEventBean.thickness) == 0 && this.isPressureEraser == eraserPopupMenuEventBean.isPressureEraser && this.isEraseHighlighterOnly == eraserPopupMenuEventBean.isEraseHighlighterOnly && this.isEraseTapeOnly == eraserPopupMenuEventBean.isEraseTapeOnly;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final String getEvent() {
        return this.event;
    }

    @NotNull
    public final String getEventType() {
        return this.eventType;
    }

    public final float getThickness() {
        return this.thickness;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.editorBundle.hashCode() * 31) + this.event.hashCode()) * 31) + this.eventType.hashCode()) * 31;
        boolean z = this.isEraserPixel;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.isEraseStrokes;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.isEraseSelection;
        int i5 = z3;
        if (z3 != 0) {
            i5 = 1;
        }
        int hashCode2 = (((i4 + i5) * 31) + Float.hashCode(this.thickness)) * 31;
        boolean z4 = this.isPressureEraser;
        int i6 = z4;
        if (z4 != 0) {
            i6 = 1;
        }
        int i7 = (hashCode2 + i6) * 31;
        boolean z5 = this.isEraseHighlighterOnly;
        int i8 = z5;
        if (z5 != 0) {
            i8 = 1;
        }
        int i9 = (i7 + i8) * 31;
        boolean z6 = this.isEraseTapeOnly;
        return i9 + (z6 ? 1 : z6 ? 1 : 0);
    }

    public final boolean isEraseHighlighterOnly() {
        return this.isEraseHighlighterOnly;
    }

    public final boolean isEraseSelection() {
        return this.isEraseSelection;
    }

    public final boolean isEraseStrokes() {
        return this.isEraseStrokes;
    }

    public final boolean isEraseTapeOnly() {
        return this.isEraseTapeOnly;
    }

    public final boolean isEraserPixel() {
        return this.isEraserPixel;
    }

    public final boolean isPressureEraser() {
        return this.isPressureEraser;
    }

    @NotNull
    public String toString() {
        return "EraserPopupMenuEventBean(editorBundle=" + this.editorBundle + ", event=" + this.event + ", eventType=" + this.eventType + ", isEraserPixel=" + this.isEraserPixel + ", isEraseStrokes=" + this.isEraseStrokes + ", isEraseSelection=" + this.isEraseSelection + ", thickness=" + this.thickness + ", isPressureEraser=" + this.isPressureEraser + ", isEraseHighlighterOnly=" + this.isEraseHighlighterOnly + ", isEraseTapeOnly=" + this.isEraseTapeOnly + ')';
    }
}
