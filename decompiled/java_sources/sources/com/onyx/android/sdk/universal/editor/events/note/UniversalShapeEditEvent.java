package com.onyx.android.sdk.universal.editor.events.note;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u001a\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\b.\u0010/J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\u000f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\t\u0010\f\u001a\u00020\u0007HÆ\u0003JK\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00072\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u0012\u001a\u00020\u0007HÆ\u0001J\t\u0010\u0015\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0016HÖ\u0001J\u0013\u0010\u0019\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\u000e\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\"\u0010\u001f\u001a\u0004\b#\u0010!R\u0017\u0010\u0010\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0017\u0010\u0012\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b,\u0010%\u001a\u0004\b-\u0010'¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;", "", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "component1", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "component2", "component3", "", "component4", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "component5", "component6", "universalShape", "downTouchData", "upTouchData", "showMenu", "referenceShapes", "editImmediately", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "getUniversalShape", "()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "b", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "getDownTouchData", "()Lcom/onyx/android/sdk/geometry/data/TouchData;", "c", "getUpTouchData", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getShowMenu", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "e", "Ljava/util/List;", "getReferenceShapes", "()Ljava/util/List;", C6997f.f39671c, "getEditImmediately", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/TouchData;ZLjava/util/List;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class UniversalShapeEditEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final UniversalShape universalShape;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final TouchData downTouchData;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final TouchData upTouchData;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final boolean showMenu;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Shape> referenceShapes;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public final boolean editImmediately;

    /* JADX WARN: Multi-variable type inference failed */
    public UniversalShapeEditEvent(@NotNull UniversalShape universalShape, @NotNull TouchData downTouchData, @NotNull TouchData upTouchData, boolean z, @NotNull List<? extends Shape> referenceShapes, boolean z2) {
        Intrinsics.checkNotNullParameter(universalShape, "universalShape");
        Intrinsics.checkNotNullParameter(downTouchData, "downTouchData");
        Intrinsics.checkNotNullParameter(upTouchData, "upTouchData");
        Intrinsics.checkNotNullParameter(referenceShapes, "referenceShapes");
        this.universalShape = universalShape;
        this.downTouchData = downTouchData;
        this.upTouchData = upTouchData;
        this.showMenu = z;
        this.referenceShapes = referenceShapes;
        this.editImmediately = z2;
    }

    public static /* synthetic */ UniversalShapeEditEvent copy$default(UniversalShapeEditEvent universalShapeEditEvent, UniversalShape universalShape, TouchData touchData, TouchData touchData2, boolean z, List list, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            universalShape = universalShapeEditEvent.universalShape;
        }
        if ((i & 2) != 0) {
            touchData = universalShapeEditEvent.downTouchData;
        }
        TouchData touchData3 = touchData;
        if ((i & 4) != 0) {
            touchData2 = universalShapeEditEvent.upTouchData;
        }
        TouchData touchData4 = touchData2;
        if ((i & 8) != 0) {
            z = universalShapeEditEvent.showMenu;
        }
        boolean z3 = z;
        if ((i & 16) != 0) {
            list = universalShapeEditEvent.referenceShapes;
        }
        List list2 = list;
        if ((i & 32) != 0) {
            z2 = universalShapeEditEvent.editImmediately;
        }
        return universalShapeEditEvent.copy(universalShape, touchData3, touchData4, z3, list2, z2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final UniversalShape getUniversalShape() {
        return this.universalShape;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final TouchData getDownTouchData() {
        return this.downTouchData;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final TouchData getUpTouchData() {
        return this.upTouchData;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getShowMenu() {
        return this.showMenu;
    }

    @NotNull
    public final List<Shape> component5() {
        return this.referenceShapes;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getEditImmediately() {
        return this.editImmediately;
    }

    @NotNull
    public final UniversalShapeEditEvent copy(@NotNull UniversalShape universalShape, @NotNull TouchData downTouchData, @NotNull TouchData upTouchData, boolean showMenu, @NotNull List<? extends Shape> referenceShapes, boolean editImmediately) {
        Intrinsics.checkNotNullParameter(universalShape, "universalShape");
        Intrinsics.checkNotNullParameter(downTouchData, "downTouchData");
        Intrinsics.checkNotNullParameter(upTouchData, "upTouchData");
        Intrinsics.checkNotNullParameter(referenceShapes, "referenceShapes");
        return new UniversalShapeEditEvent(universalShape, downTouchData, upTouchData, showMenu, referenceShapes, editImmediately);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UniversalShapeEditEvent)) {
            return false;
        }
        UniversalShapeEditEvent universalShapeEditEvent = (UniversalShapeEditEvent) other;
        return Intrinsics.areEqual(this.universalShape, universalShapeEditEvent.universalShape) && Intrinsics.areEqual(this.downTouchData, universalShapeEditEvent.downTouchData) && Intrinsics.areEqual(this.upTouchData, universalShapeEditEvent.upTouchData) && this.showMenu == universalShapeEditEvent.showMenu && Intrinsics.areEqual(this.referenceShapes, universalShapeEditEvent.referenceShapes) && this.editImmediately == universalShapeEditEvent.editImmediately;
    }

    @NotNull
    public final TouchData getDownTouchData() {
        return this.downTouchData;
    }

    public final boolean getEditImmediately() {
        return this.editImmediately;
    }

    @NotNull
    public final List<Shape> getReferenceShapes() {
        return this.referenceShapes;
    }

    public final boolean getShowMenu() {
        return this.showMenu;
    }

    @NotNull
    public final UniversalShape getUniversalShape() {
        return this.universalShape;
    }

    @NotNull
    public final TouchData getUpTouchData() {
        return this.upTouchData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.universalShape.hashCode() * 31) + this.downTouchData.hashCode()) * 31) + this.upTouchData.hashCode()) * 31;
        boolean z = this.showMenu;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int hashCode2 = (((hashCode + i) * 31) + this.referenceShapes.hashCode()) * 31;
        boolean z2 = this.editImmediately;
        return hashCode2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    @NotNull
    public String toString() {
        return "UniversalShapeEditEvent(universalShape=" + this.universalShape + ", downTouchData=" + this.downTouchData + ", upTouchData=" + this.upTouchData + ", showMenu=" + this.showMenu + ", referenceShapes=" + this.referenceShapes + ", editImmediately=" + this.editImmediately + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ UniversalShapeEditEvent(com.onyx.android.sdk.note.common.shape.universal.UniversalShape r10, com.onyx.android.sdk.geometry.data.TouchData r11, com.onyx.android.sdk.geometry.data.TouchData r12, boolean r13, java.util.List r14, boolean r15, int r16, kotlin.jvm.internal.DefaultConstructorMarker r17) {
        /*
            r9 = this;
            r0 = r16 & 8
            r1 = 0
            if (r0 == 0) goto L7
            r6 = r1
            goto L8
        L7:
            r6 = r13
        L8:
            r0 = r16 & 16
            if (r0 == 0) goto L12
            java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
            r7 = r0
            goto L13
        L12:
            r7 = r14
        L13:
            r0 = r16 & 32
            if (r0 == 0) goto L19
            r8 = r1
            goto L1a
        L19:
            r8 = r15
        L1a:
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r2.<init>(r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.events.note.UniversalShapeEditEvent.<init>(com.onyx.android.sdk.note.common.shape.universal.UniversalShape, com.onyx.android.sdk.geometry.data.TouchData, com.onyx.android.sdk.geometry.data.TouchData, boolean, java.util.List, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
