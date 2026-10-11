package com.onyx.android.sdk.note.common.data.shape;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0016\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b6\u00107R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010-\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u001d\u001a\u0004\b+\u0010\u001f\"\u0004\b,\u0010!R\"\u00101\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u001d\u001a\u0004\b/\u0010\u001f\"\u0004\b0\u0010!R\"\u00105\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010\u001d\u001a\u0004\b3\u0010\u001f\"\u0004\b4\u0010!¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;", "", "", "a", Constants.STRING_SIG, "getPageUniqueId", "()Ljava/lang/String;", "setPageUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_PAGE_ID, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "b", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "virtualPageBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "c", "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "setShapes", "(Ljava/util/List;)V", "shapes", "", "d", Constants.HASIDCALL_INDEX_SIG, "isSingleTap", Constants.BOOLEAN_VALUE_SIG, "setSingleTap", "(Z)V", "", "e", "F", "getHitTestRadius", "()F", "setHitTestRadius", "(F)V", "hitTestRadius", C6997f.f39671c, "getAddToCmdStack", "setAddToCmdStack", "addToCmdStack", C6998g.f39679a, "getSetZOrder", "setSetZOrder", "setZOrder", C6999h.f39688c, "getPostShapeChangedEvent", "setPostShapeChangedEvent", "postShapeChangedEvent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddShapesBackgroundArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String pageUniqueId;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapes;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isSingleTap;

    /* renamed from: e, reason: from kotlin metadata */
    public float hitTestRadius;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean addToCmdStack;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean setZOrder;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean postShapeChangedEvent;

    public AddShapesBackgroundArgs(@NotNull String pageUniqueId, @NotNull BoxInfo virtualPageBoxInfo, @NotNull List<? extends Shape> shapes, boolean z) {
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.pageUniqueId = pageUniqueId;
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.shapes = shapes;
        this.isSingleTap = z;
        this.hitTestRadius = ResManager.INSTANCE.getDimension(C7485R.dimen.hit_test_by_pen_padding);
        this.addToCmdStack = true;
        this.setZOrder = true;
        this.postShapeChangedEvent = true;
    }

    public final boolean getAddToCmdStack() {
        return this.addToCmdStack;
    }

    public final float getHitTestRadius() {
        return this.hitTestRadius;
    }

    @NotNull
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    public final boolean getPostShapeChangedEvent() {
        return this.postShapeChangedEvent;
    }

    public final boolean getSetZOrder() {
        return this.setZOrder;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    /* renamed from: isSingleTap, reason: from getter */
    public final boolean getIsSingleTap() {
        return this.isSingleTap;
    }

    public final void setAddToCmdStack(boolean z) {
        this.addToCmdStack = z;
    }

    public final void setHitTestRadius(float f) {
        this.hitTestRadius = f;
    }

    public final void setPageUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageUniqueId = str;
    }

    public final void setPostShapeChangedEvent(boolean z) {
        this.postShapeChangedEvent = z;
    }

    public final void setSetZOrder(boolean z) {
        this.setZOrder = z;
    }

    public final void setShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapes = list;
    }

    public final void setSingleTap(boolean z) {
        this.isSingleTap = z;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }

    public /* synthetic */ AddShapesBackgroundArgs(String str, BoxInfo boxInfo, List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, boxInfo, (i & 4) != 0 ? new ArrayList() : list, (i & 8) != 0 ? false : z);
    }
}
