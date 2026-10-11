package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001b\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b*\u0010+J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR$\u0010%\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R$\u0010)\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010 \u001a\u0004\b'\u0010\"\"\u0004\b(\u0010$¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "component1", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "component2", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "component3", "virtualBoxInfo", "touchPoint", "annotation", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "b", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "c", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getAnnotation", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.INTEGER_SIG, "getStyle", "()Ljava/lang/Integer;", "setStyle", "(Ljava/lang/Integer;)V", "style", "e", "getColor", "setColor", "color", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class StartAnnotationSelectionArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final Shape annotation;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Integer style;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Integer color;

    public StartAnnotationSelectionArgs(@NotNull BoxInfo virtualBoxInfo, @NotNull TouchPoint touchPoint, @NotNull Shape annotation) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        this.virtualBoxInfo = virtualBoxInfo;
        this.touchPoint = touchPoint;
        this.annotation = annotation;
    }

    public static /* synthetic */ StartAnnotationSelectionArgs copy$default(StartAnnotationSelectionArgs startAnnotationSelectionArgs, BoxInfo boxInfo, TouchPoint touchPoint, Shape shape, int i, Object obj) {
        if ((i & 1) != 0) {
            boxInfo = startAnnotationSelectionArgs.virtualBoxInfo;
        }
        if ((i & 2) != 0) {
            touchPoint = startAnnotationSelectionArgs.touchPoint;
        }
        if ((i & 4) != 0) {
            shape = startAnnotationSelectionArgs.annotation;
        }
        return startAnnotationSelectionArgs.copy(boxInfo, touchPoint, shape);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final Shape getAnnotation() {
        return this.annotation;
    }

    @NotNull
    public final StartAnnotationSelectionArgs copy(@NotNull BoxInfo virtualBoxInfo, @NotNull TouchPoint touchPoint, @NotNull Shape annotation) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        return new StartAnnotationSelectionArgs(virtualBoxInfo, touchPoint, annotation);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StartAnnotationSelectionArgs)) {
            return false;
        }
        StartAnnotationSelectionArgs startAnnotationSelectionArgs = (StartAnnotationSelectionArgs) other;
        return Intrinsics.areEqual(this.virtualBoxInfo, startAnnotationSelectionArgs.virtualBoxInfo) && Intrinsics.areEqual(this.touchPoint, startAnnotationSelectionArgs.touchPoint) && Intrinsics.areEqual(this.annotation, startAnnotationSelectionArgs.annotation);
    }

    @NotNull
    public final Shape getAnnotation() {
        return this.annotation;
    }

    @Nullable
    public final Integer getColor() {
        return this.color;
    }

    @Nullable
    public final Integer getStyle() {
        return this.style;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    public int hashCode() {
        return (((this.virtualBoxInfo.hashCode() * 31) + this.touchPoint.hashCode()) * 31) + this.annotation.hashCode();
    }

    public final void setColor(@Nullable Integer num) {
        this.color = num;
    }

    public final void setStyle(@Nullable Integer num) {
        this.style = num;
    }

    @NotNull
    public String toString() {
        return "StartAnnotationSelectionArgs(virtualBoxInfo=" + this.virtualBoxInfo + ", touchPoint=" + this.touchPoint + ", annotation=" + this.annotation + ')';
    }
}
