package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.geometry.data.TouchData;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\"\u0010#J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J-\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;", "", "", "component1", "component2", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "component3", "previewWidth", "previewHeight", "pointList", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "F", "getPreviewWidth", "()F", "setPreviewWidth", "(F)V", "b", "getPreviewHeight", "setPreviewHeight", "c", "Ljava/util/List;", "getPointList", "()Ljava/util/List;", "setPointList", "(Ljava/util/List;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(FFLjava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class PreviewTouchDataBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public float previewWidth;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public float previewHeight;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public List<TouchData> pointList;

    public PreviewTouchDataBean(float f, float f2, @NotNull List<TouchData> pointList) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        this.previewWidth = f;
        this.previewHeight = f2;
        this.pointList = pointList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PreviewTouchDataBean copy$default(PreviewTouchDataBean previewTouchDataBean, float f, float f2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            f = previewTouchDataBean.previewWidth;
        }
        if ((i & 2) != 0) {
            f2 = previewTouchDataBean.previewHeight;
        }
        if ((i & 4) != 0) {
            list = previewTouchDataBean.pointList;
        }
        return previewTouchDataBean.copy(f, f2, list);
    }

    /* renamed from: component1, reason: from getter */
    public final float getPreviewWidth() {
        return this.previewWidth;
    }

    /* renamed from: component2, reason: from getter */
    public final float getPreviewHeight() {
        return this.previewHeight;
    }

    @NotNull
    public final List<TouchData> component3() {
        return this.pointList;
    }

    @NotNull
    public final PreviewTouchDataBean copy(float previewWidth, float previewHeight, @NotNull List<TouchData> pointList) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        return new PreviewTouchDataBean(previewWidth, previewHeight, pointList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PreviewTouchDataBean)) {
            return false;
        }
        PreviewTouchDataBean previewTouchDataBean = (PreviewTouchDataBean) other;
        return Float.compare(this.previewWidth, previewTouchDataBean.previewWidth) == 0 && Float.compare(this.previewHeight, previewTouchDataBean.previewHeight) == 0 && Intrinsics.areEqual(this.pointList, previewTouchDataBean.pointList);
    }

    @NotNull
    public final List<TouchData> getPointList() {
        return this.pointList;
    }

    public final float getPreviewHeight() {
        return this.previewHeight;
    }

    public final float getPreviewWidth() {
        return this.previewWidth;
    }

    public int hashCode() {
        return (((Float.hashCode(this.previewWidth) * 31) + Float.hashCode(this.previewHeight)) * 31) + this.pointList.hashCode();
    }

    public final void setPointList(@NotNull List<TouchData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.pointList = list;
    }

    public final void setPreviewHeight(float f) {
        this.previewHeight = f;
    }

    public final void setPreviewWidth(float f) {
        this.previewWidth = f;
    }

    @NotNull
    public String toString() {
        return "PreviewTouchDataBean(previewWidth=" + this.previewWidth + ", previewHeight=" + this.previewHeight + ", pointList=" + this.pointList + ')';
    }
}
