package com.onyx.android.sdk.note.common.document.doc;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\u0018\u00002\u00020\u0001B;\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0002\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u001b\u0010\u001cJ\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003J\u0014\u0010\u000b\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0002J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fJ\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u0002J\u0006\u0010\u0011\u001a\u00020\u0003J\u0006\u0010\u0012\u001a\u00020\fJ\u0006\u0010\u0013\u001a\u00020\u0000J\u001c\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0002R\u0016\u0010\u0007\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0016\u0010\u000e\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxList", "", "setBoxList", "virtualBoxInfo", "setVirtualBoxInfo", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "setShapeList", "", "zOrder", "setZOrder", "getBoxList", "getShapeList", "getVirtualBoxInfo", "getZOrder", "clone", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "b", "Ljava/util/List;", "c", "d", Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Ljava/util/List;Z)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TransformShapeContext {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualBoxInfo;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapeList;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<BoxInfo> boxList;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean setZOrder;

    public TransformShapeContext() {
        this(null, null, null, false, 15, null);
    }

    @NotNull
    public final TransformShapeContext clone() {
        return clone(this.virtualBoxInfo, this.shapeList);
    }

    @NotNull
    public final List<BoxInfo> getBoxList() {
        return this.boxList;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: getZOrder, reason: from getter */
    public final boolean getSetZOrder() {
        return this.setZOrder;
    }

    public final void setBoxList(@NotNull List<BoxInfo> boxList) {
        Intrinsics.checkNotNullParameter(boxList, "boxList");
        this.boxList = boxList;
    }

    public final void setShapeList(@NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.shapeList = shapeList;
    }

    public final void setVirtualBoxInfo(@NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        this.virtualBoxInfo = virtualBoxInfo;
    }

    public final void setZOrder(boolean zOrder) {
        this.setZOrder = zOrder;
    }

    public TransformShapeContext(@NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapeList, @NotNull List<BoxInfo> boxList, boolean z) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(boxList, "boxList");
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapeList = shapeList;
        this.boxList = boxList;
        this.setZOrder = z;
    }

    @NotNull
    public final TransformShapeContext clone(@NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        return new TransformShapeContext(virtualBoxInfo, shapeList, this.boxList, this.setZOrder);
    }

    public /* synthetic */ TransformShapeContext(BoxInfo boxInfo, List list, List list2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new BoxInfo() : boxInfo, (i & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list2, (i & 8) != 0 ? true : z);
    }
}
