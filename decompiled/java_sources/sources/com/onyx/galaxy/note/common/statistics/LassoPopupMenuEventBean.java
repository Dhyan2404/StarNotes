package com.onyx.galaxy.note.common.statistics;

import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b'\b\u0086\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0007¢\u0006\u0004\bF\u0010GJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\u0007HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0007HÆ\u0003J\t\u0010\f\u001a\u00020\u0007HÆ\u0003J\t\u0010\r\u001a\u00020\u0007HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0007HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J\u008b\u0001\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00072\b\b\u0002\u0010\u0016\u001a\u00020\u00072\b\b\u0002\u0010\u0017\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00072\b\b\u0002\u0010\u0019\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u00072\b\b\u0002\u0010\u001b\u001a\u00020\u00072\b\b\u0002\u0010\u001c\u001a\u00020\u00072\b\b\u0002\u0010\u001d\u001a\u00020\u00072\b\b\u0002\u0010\u001e\u001a\u00020\u0007HÆ\u0001J\t\u0010 \u001a\u00020\u0004HÖ\u0001J\t\u0010\"\u001a\u00020!HÖ\u0001J\u0013\u0010$\u001a\u00020\u00072\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0012\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0017\u0010\u0013\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0017\u0010\u0014\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b-\u0010*\u001a\u0004\b.\u0010,R\"\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b\u0015\u00101\"\u0004\b2\u00103R\"\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00100\u001a\u0004\b\u0016\u00101\"\u0004\b5\u00103R\"\u0010\u0017\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00100\u001a\u0004\b\u0017\u00101\"\u0004\b7\u00103R\"\u0010\u0018\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00100\u001a\u0004\b\u0018\u00101\"\u0004\b9\u00103R\"\u0010\u0019\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u00100\u001a\u0004\b\u0019\u00101\"\u0004\b;\u00103R\"\u0010\u001a\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u00100\u001a\u0004\b\u001a\u00101\"\u0004\b=\u00103R\"\u0010\u001b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u00100\u001a\u0004\b\u001b\u00101\"\u0004\b?\u00103R\"\u0010\u001c\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u00100\u001a\u0004\b\u001c\u00101\"\u0004\bA\u00103R\"\u0010\u001d\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u00100\u001a\u0004\b\u001d\u00101\"\u0004\bC\u00103R\"\u0010\u001e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u00100\u001a\u0004\b\u001e\u00101\"\u0004\bE\u00103¨\u0006H"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "component1", "", "component2", "component3", "", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "editorBundle", NotificationCompat.CATEGORY_EVENT, "eventType", "isFreeLasso", "isRectLasso", "isShape", "isPic", "isTape", "isTextBox", "isHandwriting", "isHighLighter", "isLink", "isTag", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getEvent", "()Ljava/lang/String;", "c", "getEventType", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setFreeLasso", "(Z)V", "e", "setRectLasso", C6997f.f39671c, "setShape", C6998g.f39679a, "setPic", C6999h.f39688c, "setTape", "i", "setTextBox", "j", "setHandwriting", C4921e.f26537n, "setHighLighter", "l", "setLink", "m", "setTag", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZ)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class LassoPopupMenuEventBean {

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
    public boolean isFreeLasso;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public boolean isRectLasso;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public boolean isShape;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    public boolean isPic;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    public boolean isTape;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    public boolean isTextBox;

    /* renamed from: j, reason: from kotlin metadata and from toString */
    public boolean isHandwriting;

    /* renamed from: k, reason: from kotlin metadata and from toString */
    public boolean isHighLighter;

    /* renamed from: l, reason: from kotlin metadata and from toString */
    public boolean isLink;

    /* renamed from: m, reason: from kotlin metadata and from toString */
    public boolean isTag;

    public LassoPopupMenuEventBean(@NotNull EditorBundle editorBundle, @NotNull String event, @NotNull String eventType, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.editorBundle = editorBundle;
        this.event = event;
        this.eventType = eventType;
        this.isFreeLasso = z;
        this.isRectLasso = z2;
        this.isShape = z3;
        this.isPic = z4;
        this.isTape = z5;
        this.isTextBox = z6;
        this.isHandwriting = z7;
        this.isHighLighter = z8;
        this.isLink = z9;
        this.isTag = z10;
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: component10, reason: from getter */
    public final boolean getIsHandwriting() {
        return this.isHandwriting;
    }

    /* renamed from: component11, reason: from getter */
    public final boolean getIsHighLighter() {
        return this.isHighLighter;
    }

    /* renamed from: component12, reason: from getter */
    public final boolean getIsLink() {
        return this.isLink;
    }

    /* renamed from: component13, reason: from getter */
    public final boolean getIsTag() {
        return this.isTag;
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
    public final boolean getIsFreeLasso() {
        return this.isFreeLasso;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getIsRectLasso() {
        return this.isRectLasso;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getIsShape() {
        return this.isShape;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getIsPic() {
        return this.isPic;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getIsTape() {
        return this.isTape;
    }

    /* renamed from: component9, reason: from getter */
    public final boolean getIsTextBox() {
        return this.isTextBox;
    }

    @NotNull
    public final LassoPopupMenuEventBean copy(@NotNull EditorBundle editorBundle, @NotNull String event, @NotNull String eventType, boolean isFreeLasso, boolean isRectLasso, boolean isShape, boolean isPic, boolean isTape, boolean isTextBox, boolean isHandwriting, boolean isHighLighter, boolean isLink, boolean isTag) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        return new LassoPopupMenuEventBean(editorBundle, event, eventType, isFreeLasso, isRectLasso, isShape, isPic, isTape, isTextBox, isHandwriting, isHighLighter, isLink, isTag);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LassoPopupMenuEventBean)) {
            return false;
        }
        LassoPopupMenuEventBean lassoPopupMenuEventBean = (LassoPopupMenuEventBean) other;
        return Intrinsics.areEqual(this.editorBundle, lassoPopupMenuEventBean.editorBundle) && Intrinsics.areEqual(this.event, lassoPopupMenuEventBean.event) && Intrinsics.areEqual(this.eventType, lassoPopupMenuEventBean.eventType) && this.isFreeLasso == lassoPopupMenuEventBean.isFreeLasso && this.isRectLasso == lassoPopupMenuEventBean.isRectLasso && this.isShape == lassoPopupMenuEventBean.isShape && this.isPic == lassoPopupMenuEventBean.isPic && this.isTape == lassoPopupMenuEventBean.isTape && this.isTextBox == lassoPopupMenuEventBean.isTextBox && this.isHandwriting == lassoPopupMenuEventBean.isHandwriting && this.isHighLighter == lassoPopupMenuEventBean.isHighLighter && this.isLink == lassoPopupMenuEventBean.isLink && this.isTag == lassoPopupMenuEventBean.isTag;
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

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.editorBundle.hashCode() * 31) + this.event.hashCode()) * 31) + this.eventType.hashCode()) * 31;
        boolean z = this.isFreeLasso;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.isRectLasso;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.isShape;
        int i5 = z3;
        if (z3 != 0) {
            i5 = 1;
        }
        int i6 = (i4 + i5) * 31;
        boolean z4 = this.isPic;
        int i7 = z4;
        if (z4 != 0) {
            i7 = 1;
        }
        int i8 = (i6 + i7) * 31;
        boolean z5 = this.isTape;
        int i9 = z5;
        if (z5 != 0) {
            i9 = 1;
        }
        int i10 = (i8 + i9) * 31;
        boolean z6 = this.isTextBox;
        int i11 = z6;
        if (z6 != 0) {
            i11 = 1;
        }
        int i12 = (i10 + i11) * 31;
        boolean z7 = this.isHandwriting;
        int i13 = z7;
        if (z7 != 0) {
            i13 = 1;
        }
        int i14 = (i12 + i13) * 31;
        boolean z8 = this.isHighLighter;
        int i15 = z8;
        if (z8 != 0) {
            i15 = 1;
        }
        int i16 = (i14 + i15) * 31;
        boolean z9 = this.isLink;
        int i17 = z9;
        if (z9 != 0) {
            i17 = 1;
        }
        int i18 = (i16 + i17) * 31;
        boolean z10 = this.isTag;
        return i18 + (z10 ? 1 : z10 ? 1 : 0);
    }

    public final boolean isFreeLasso() {
        return this.isFreeLasso;
    }

    public final boolean isHandwriting() {
        return this.isHandwriting;
    }

    public final boolean isHighLighter() {
        return this.isHighLighter;
    }

    public final boolean isLink() {
        return this.isLink;
    }

    public final boolean isPic() {
        return this.isPic;
    }

    public final boolean isRectLasso() {
        return this.isRectLasso;
    }

    public final boolean isShape() {
        return this.isShape;
    }

    public final boolean isTag() {
        return this.isTag;
    }

    public final boolean isTape() {
        return this.isTape;
    }

    public final boolean isTextBox() {
        return this.isTextBox;
    }

    public final void setFreeLasso(boolean z) {
        this.isFreeLasso = z;
    }

    public final void setHandwriting(boolean z) {
        this.isHandwriting = z;
    }

    public final void setHighLighter(boolean z) {
        this.isHighLighter = z;
    }

    public final void setLink(boolean z) {
        this.isLink = z;
    }

    public final void setPic(boolean z) {
        this.isPic = z;
    }

    public final void setRectLasso(boolean z) {
        this.isRectLasso = z;
    }

    public final void setShape(boolean z) {
        this.isShape = z;
    }

    public final void setTag(boolean z) {
        this.isTag = z;
    }

    public final void setTape(boolean z) {
        this.isTape = z;
    }

    public final void setTextBox(boolean z) {
        this.isTextBox = z;
    }

    @NotNull
    public String toString() {
        return "LassoPopupMenuEventBean(editorBundle=" + this.editorBundle + ", event=" + this.event + ", eventType=" + this.eventType + ", isFreeLasso=" + this.isFreeLasso + ", isRectLasso=" + this.isRectLasso + ", isShape=" + this.isShape + ", isPic=" + this.isPic + ", isTape=" + this.isTape + ", isTextBox=" + this.isTextBox + ", isHandwriting=" + this.isHandwriting + ", isHighLighter=" + this.isHighLighter + ", isLink=" + this.isLink + ", isTag=" + this.isTag + ')';
    }

    public /* synthetic */ LassoPopupMenuEventBean(EditorBundle editorBundle, String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, str, str2, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? false : z3, (i & 64) != 0 ? false : z4, (i & 128) != 0 ? false : z5, (i & 256) != 0 ? false : z6, (i & 512) != 0 ? false : z7, (i & 1024) != 0 ? false : z8, (i & 2048) != 0 ? false : z9, (i & 4096) != 0 ? false : z10);
    }
}
