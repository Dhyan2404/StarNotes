package com.onyx.android.sdk.universal.editor.events.note;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u001c\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u001b\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;", "", "Landroid/graphics/RectF;", "getRenderRectF", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "a", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getAnnotation", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "annotation", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "b", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "", "c", Constants.INTEGER_SIG, "getStyle", "()Ljava/lang/Integer;", "setStyle", "(Ljava/lang/Integer;)V", "style", "d", "getColor", "setColor", "color", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectionEvents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionEvents.kt\ncom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1940#2,14:119\n1#3:133\n*S KotlinDebug\n*F\n+ 1 SelectionEvents.kt\ncom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo\n*L\n80#1:119,14\n*E\n"})
/* loaded from: classes8.dex */
public final class AnnotationSelectionInfo {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Shape annotation;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualPageBoxInfo;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Integer style;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Integer color;

    public AnnotationSelectionInfo(@NotNull Shape annotation, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        this.annotation = annotation;
        this.virtualPageBoxInfo = virtualPageBoxInfo;
    }

    @NotNull
    public final Shape getAnnotation() {
        return this.annotation;
    }

    @Nullable
    public final Integer getColor() {
        return this.color;
    }

    @NotNull
    public final RectF getRenderRectF() {
        List<TouchPoint> mutableListOf;
        List listOf;
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(this.annotation.getPoints().get(0), this.annotation.getPoints().get(1));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new RectF[]{RectFKt.copy(this.annotation.getOriginRect()), geometryUtils.boundRect(mutableListOf)});
        Iterator it2 = listOf.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            float area = RectKt.area((RectF) next);
            do {
                Object next2 = it2.next();
                float area2 = RectKt.area((RectF) next2);
                if (Float.compare(area, area2) < 0) {
                    next = next2;
                    area = area2;
                }
            } while (it2.hasNext());
        }
        RectF rectF = (RectF) next;
        Matrix shapeMatrix = this.annotation.getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(rectF);
        }
        BoxInfoUtils.INSTANCE.renderMatrix(this.virtualPageBoxInfo.getNoteInfo()).mapRect(rectF);
        return rectF;
    }

    @Nullable
    public final Integer getStyle() {
        return this.style;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final void setColor(@Nullable Integer num) {
        this.color = num;
    }

    public final void setStyle(@Nullable Integer num) {
        this.style = num;
    }
}
