package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.C7485R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\n\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0006\u0010\u0019\u001a\u00020\u0012\u0012\b\b\u0002\u0010!\u001a\u00020\u001a¢\u0006\u0004\b\"\u0010#R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;", "", "", "a", Constants.STRING_SIG, "getPageUniqueId", "()Ljava/lang/String;", "setPageUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_PAGE_ID, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "b", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "c", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getPointInDocument", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setPointInDocument", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "pointInDocument", "", "d", "F", "getHitTestRadius", "()F", "setHitTestRadius", "(F)V", "hitTestRadius", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;F)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SingleTapExcerptShapeArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String pageUniqueId;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public TouchPoint pointInDocument;

    /* renamed from: d, reason: from kotlin metadata */
    public float hitTestRadius;

    public SingleTapExcerptShapeArgs(@NotNull String pageUniqueId, @NotNull BoxInfo virtualPageBoxInfo, @NotNull TouchPoint pointInDocument, float f) {
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(pointInDocument, "pointInDocument");
        this.pageUniqueId = pageUniqueId;
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.pointInDocument = pointInDocument;
        this.hitTestRadius = f;
    }

    public final float getHitTestRadius() {
        return this.hitTestRadius;
    }

    @NotNull
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @NotNull
    public final TouchPoint getPointInDocument() {
        return this.pointInDocument;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final void setHitTestRadius(float f) {
        this.hitTestRadius = f;
    }

    public final void setPageUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageUniqueId = str;
    }

    public final void setPointInDocument(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.pointInDocument = touchPoint;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }

    public /* synthetic */ SingleTapExcerptShapeArgs(String str, BoxInfo boxInfo, TouchPoint touchPoint, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, boxInfo, touchPoint, (i & 8) != 0 ? ResManager.INSTANCE.getDimension(C7485R.dimen.hit_test_by_pen_padding) : f);
    }
}
