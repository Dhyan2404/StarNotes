package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeLinks;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTags;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0006J*\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00022\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000bJ \u0010\u000e\u001a\u0004\u0018\u00010\u00032\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000bJ*\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00022\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000bJ\u0016\u0010\u000e\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000bJ\u0016\u0010\u0011\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000bJ\u0016\u0010\u0012\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000bJ\n\u0010\u0013\u001a\u00020\u0003*\u00020\u0003J\n\u0010\u0014\u001a\u00020\u0003*\u00020\u0003J\n\u0010\u0015\u001a\u00020\u0003*\u00020\u0003J\n\u0010\u0016\u001a\u00020\u0003*\u00020\u0003J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\u001a\u001a\u00020\u0019*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0003H\u0002¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "cloneNewShapes", "", "resetConnection", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointLists", "shape", "", "shapeType", "pointList", "cloneNewShape", "cloneNewShapesAndRestMatrix", "type", "shapeClone", "shapeCloneWithoutPoints", "deepFullCopy", "deepCopy", "deepCopyWithoutPoints", "clone", "deepCopyList", "deepCopyListWithoutPoints", "", "forceUpdateShapesTime", "newShape", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeCopyUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeCopyUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeCopyUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n2634#2:181\n1549#2:184\n1620#2,3:185\n1549#2:188\n1620#2,3:189\n1045#2:192\n1855#2,2:193\n1#3:182\n1#3:183\n*S KotlinDebug\n*F\n+ 1 ShapeCopyUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeCopyUtils\n*L\n34#1:181\n164#1:184\n164#1:185,3\n168#1:188\n168#1:189,3\n173#1:192\n174#1:193,2\n34#1:182\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeCopyUtils {

    @NotNull
    public static final ShapeCopyUtils INSTANCE = new ShapeCopyUtils();

    /* renamed from: a */
    public final void m34047a(Shape newShape) {
        newShape.setRevisionId("");
        newShape.setInfoRevisionId("");
        ShapeTags.INSTANCE.setTagIdList(newShape, new ArrayList());
        ShapeLinks.INSTANCE.setLinkIdList(newShape, new ArrayList());
    }

    @NotNull
    public final Shape clone(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shapeClone(shape, shape.getType());
    }

    @Nullable
    public final Shape cloneNewShape(@NotNull TouchPointList pointList, @NotNull Shape shape, int shapeType) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (pointList.size() <= 1) {
            return null;
        }
        Shape cloneNewShape = cloneNewShape(shape, shapeType);
        cloneNewShape.getPoints().clear();
        cloneNewShape.addPoints(pointList);
        return cloneNewShape;
    }

    @NotNull
    public final List<Shape> cloneNewShapes(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        ArrayList arrayList = new ArrayList();
        for (Shape shape : shapes) {
            arrayList.add(cloneNewShape(shape, shape.getType()));
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> cloneNewShapesAndRestMatrix(@NotNull List<TouchPointList> touchPointLists, @NotNull Shape shape, int shapeType) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(touchPointLists, "touchPointLists");
        Intrinsics.checkNotNullParameter(shape, "shape");
        List<Shape> cloneNewShapes = cloneNewShapes(touchPointLists, shape, shapeType);
        for (Shape shape2 : cloneNewShapes) {
            shape2.setShapeMatrix(new Matrix());
            shape2.updateShapeRect();
        }
        return cloneNewShapes;
    }

    @NotNull
    public final Shape deepCopy(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Shape deepCopyWithoutPoints = deepCopyWithoutPoints(shape);
        deepCopyWithoutPoints.addPoints(shape.getPoints().m72175clone());
        return deepCopyWithoutPoints;
    }

    @NotNull
    public final List<Shape> deepCopyList(@NotNull List<? extends Shape> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends Shape> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.deepCopy((Shape) it2.next()));
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> deepCopyListWithoutPoints(@NotNull List<? extends Shape> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends Shape> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.deepCopyWithoutPoints((Shape) it2.next()));
        }
        return arrayList;
    }

    @NotNull
    public final Shape deepCopyWithoutPoints(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Shape shapeCloneWithoutPoints = shapeCloneWithoutPoints(shape, shape.getType());
        shapeCloneWithoutPoints.setShapeUniqueId(shape.getShapeUniqueId());
        return shapeCloneWithoutPoints;
    }

    @NotNull
    public final Shape deepFullCopy(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Shape deepCopy = deepCopy(shape);
        ReferenceShape referenceShape = shape instanceof ReferenceShape ? (ReferenceShape) shape : null;
        if ((referenceShape != null ? referenceShape.getTargetShape() : null) != null) {
            Shape targetShape = referenceShape.getTargetShape();
            Intrinsics.checkNotNull(targetShape);
            Shape deepFullCopy = deepFullCopy(targetShape);
            ReferenceShape referenceShape2 = deepCopy instanceof ReferenceShape ? (ReferenceShape) deepCopy : null;
            if (referenceShape2 != null) {
                referenceShape2.setTargetShape(deepFullCopy);
            }
        }
        deepCopy.postConcat(new Matrix());
        return deepCopy;
    }

    public final void forceUpdateShapesTime(@NotNull List<? extends Shape> list) {
        List<Shape> sortedWith;
        Intrinsics.checkNotNullParameter(list, "<this>");
        long millisOfNow = DateTimeUtil.INSTANCE.millisOfNow();
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.onyx.android.sdk.note.common.utils.ShapeCopyUtils$forceUpdateShapesTime$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                Date createdAt = ((Shape) t).getCreatedAt();
                Long valueOf = Long.valueOf(createdAt != null ? createdAt.getTime() : 0L);
                Date createdAt2 = ((Shape) t2).getCreatedAt();
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Long.valueOf(createdAt2 != null ? createdAt2.getTime() : 0L));
                return compareValues;
            }
        });
        for (Shape shape : sortedWith) {
            shape.setCreatedAt(new Date(millisOfNow));
            shape.setUpdatedAt(new Date(millisOfNow));
            millisOfNow++;
        }
    }

    @NotNull
    public final Shape shapeClone(@NotNull Shape shape, int type) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Shape shapeCloneWithoutPoints = shapeCloneWithoutPoints(shape, type);
        shapeCloneWithoutPoints.addPoints(shape.getPoints().m72175clone());
        return shapeCloneWithoutPoints;
    }

    @NotNull
    public final Shape shapeCloneWithoutPoints(@NotNull Shape shape, int type) throws CloneNotSupportedException {
        ShapeResource m72360clone;
        ShapeLineStyle m72355clone;
        Intrinsics.checkNotNullParameter(shape, "shape");
        Shape create = ShapeFactory.INSTANCE.create(type);
        create.setDocumentUniqueId(shape.getDocumentUniqueId());
        create.setPageUniqueId(shape.getPageUniqueId());
        ShapeExtraBean extraBean = shape.getExtraBean();
        create.setExtraBean(extraBean != null ? extraBean.m72370clone() : null);
        create.setStrokeWidth(shape.getStrokeWidth());
        create.setStrokeColor(shape.getStrokeColor());
        create.setFillColor(shape.getFillColor());
        create.setLayerId(shape.getLayerId());
        create.setRichText(shape.getRichText());
        create.setCreatedAt(shape.getCreatedAt());
        create.setUpdatedAt(shape.getUpdatedAt());
        create.setText(shape.getText());
        create.setRevisionId(shape.getRevisionId());
        create.setInfoRevisionId(shape.getInfoRevisionId());
        create.setShapeMatrix(new Matrix(shape.getShapeMatrix()));
        create.ensureShapeUniqueId();
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        create.setRuntimeOptions(shapeOptions.cloneRuntimeOptions(shape));
        create.setPersistOptions(ShapePersistOptionsKt.clonePersistOptions(shape));
        ShapeTextStyle textStyle = shape.getTextStyle();
        create.setTextStyle(textStyle != null ? textStyle.m72374clone() : null);
        create.setShapeCreateArgs(shape.getShapeCreateArgs().m72362clone());
        ShapeReferenceBean shapeReferenceBean = shape.getShapeReferenceBean();
        create.setShapeReferenceBean(shapeReferenceBean != null ? shapeReferenceBean.m72371clone() : null);
        ShapeSourceBean shapeSrcBean = shape.getShapeSrcBean();
        create.setShapeSrcBean(shapeSrcBean != null ? shapeSrcBean.m72372clone() : null);
        ShapeLineStyle shapeLineStyle = shapeOptions.getShapeLineStyle(shape);
        if (shapeLineStyle != null && (m72355clone = shapeLineStyle.m72355clone()) != null) {
            shapeOptions.setShapeLineStyle(create, m72355clone);
        }
        ShapeResource resource = shapeOptions.getResource(shape);
        if (resource != null && (m72360clone = resource.m72360clone()) != null) {
            shapeOptions.setResource(create, m72360clone);
        }
        return create;
    }

    @NotNull
    public final List<Shape> cloneNewShapes(@NotNull List<? extends Shape> shapes, boolean resetConnection) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        List<Shape> cloneNewShapes = cloneNewShapes(shapes);
        if (resetConnection) {
            Iterator<T> it2 = cloneNewShapes.iterator();
            while (it2.hasNext()) {
                ((Shape) it2.next()).resetConnection();
            }
        }
        return cloneNewShapes;
    }

    @NotNull
    public final Shape cloneNewShape(@NotNull Shape shape, int type) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Shape shapeClone = shapeClone(shape, type);
        m34047a(shapeClone);
        return shapeClone;
    }

    @NotNull
    public final List<Shape> cloneNewShapes(@NotNull List<TouchPointList> touchPointLists, @NotNull Shape shape, int shapeType) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(touchPointLists, "touchPointLists");
        Intrinsics.checkNotNullParameter(shape, "shape");
        ArrayList arrayList = new ArrayList();
        if (touchPointLists.isEmpty()) {
            return arrayList;
        }
        Iterator<TouchPointList> it2 = touchPointLists.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, cloneNewShape(it2.next(), shape, shapeType));
        }
        return arrayList;
    }
}
