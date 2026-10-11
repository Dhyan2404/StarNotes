package com.onyx.android.sdk.universal.editor.extension;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u001a6\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\u0004\u001a\u00020\u0005\u001a4\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000b0\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b¨\u0006\u000e"}, m61528d2 = {"createCrossPageShape", "Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;", "targetShape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "virtualBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "matrix", "Landroid/graphics/Matrix;", "createCrossPageShapeMap", "", "shapeList", "", "visibleBoxList", "filterUnCrossPageShapes", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCrossPageShapes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossPageShapes.kt\ncom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,87:1\n766#2:88\n857#2,2:89\n1549#2:91\n1620#2,3:92\n1855#2:95\n1856#2:98\n766#2:102\n857#2,2:103\n215#3,2:96\n125#3:99\n152#3,2:100\n154#3:105\n*S KotlinDebug\n*F\n+ 1 CrossPageShapes.kt\ncom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt\n*L\n34#1:88\n34#1:89,2\n35#1:91\n35#1:92,3\n38#1:95\n38#1:98\n84#1:102\n84#1:103,2\n43#1:96,2\n82#1:99\n82#1:100,2\n82#1:105\n*E\n"})
/* loaded from: classes8.dex */
public final class CrossPageShapesKt {
    @NotNull
    public static final ReferenceShape createCrossPageShape(@NotNull Shape targetShape, @NotNull BoxInfo virtualBoxInfo, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(targetShape, "targetShape");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Shape create = ShapeFactory.INSTANCE.create(2000);
        Intrinsics.checkNotNull(create, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.object.ReferenceShape");
        ReferenceShape referenceShape = (ReferenceShape) create;
        referenceShape.ensureShapeUniqueId();
        ShapeReferenceBean shapeReferenceBean = new ShapeReferenceBean();
        shapeReferenceBean.setShapeId(targetShape.getShapeUniqueId());
        shapeReferenceBean.setPageId(virtualBoxInfo.getId());
        shapeReferenceBean.setMatrixValues(MatrixKt.getMatrixValue(matrix));
        referenceShape.setShapeReferenceBean(shapeReferenceBean);
        referenceShape.setLayerId(targetShape.getLayerId());
        referenceShape.setTargetShape(targetShape);
        referenceShape.setCreatedAt(targetShape.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String());
        referenceShape.updateShapeRect();
        return referenceShape;
    }

    @NotNull
    public static final Map<Shape, BoxInfo> createCrossPageShapeMap(@NotNull List<? extends Shape> shapeList, @NotNull List<BoxInfo> visibleBoxList, @NotNull final BoxInfo virtualBoxInfo) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        for (Object obj : visibleBoxList) {
            if (!Intrinsics.areEqual(((BoxInfo) obj).getId(), virtualBoxInfo.getId())) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList<BoxInfo> arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((BoxInfo) it2.next()).copy());
        }
        Map map = CollectionKt.toMap(shapeList, new Function1<Shape, Shape>() { // from class: com.onyx.android.sdk.universal.editor.extension.CrossPageShapesKt$createCrossPageShapeMap$shapeScreenRectMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Shape invoke(@NotNull Shape it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3;
            }
        }, new Function1<Shape, RectF>() { // from class: com.onyx.android.sdk.universal.editor.extension.CrossPageShapesKt$createCrossPageShapeMap$shapeScreenRectMap$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RectF invoke(@NotNull Shape it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return ShapeRectUtils.INSTANCE.getBoundingScreenRectWithWidth(it3, BoxInfo.this);
            }
        });
        RectF union = RectUtils.INSTANCE.union(map.values());
        for (BoxInfo boxInfo : arrayList2) {
            if (RectF.intersects(boxInfo.getVisibleRect(), union)) {
                Matrix crossPageMatrix = BoxInfo.INSTANCE.getCrossPageMatrix(virtualBoxInfo, boxInfo);
                for (Map.Entry entry : map.entrySet()) {
                    Shape shape = (Shape) entry.getKey();
                    if (RectF.intersects(boxInfo.getVisibleRect(), (RectF) entry.getValue())) {
                        ReferenceShape createCrossPageShape = createCrossPageShape(shape, virtualBoxInfo, crossPageMatrix);
                        createCrossPageShape.setPageUniqueId(boxInfo.getId());
                        ShapeReferenceBean shapeReferenceBean = new ShapeReferenceBean();
                        shapeReferenceBean.setShapeId(createCrossPageShape.getShapeUniqueId());
                        shapeReferenceBean.setPageId(createCrossPageShape.getPageUniqueId());
                        shape.ensureShapeSourceBean().addShapeReferenceBean(shapeReferenceBean);
                        linkedHashMap.put(createCrossPageShape, boxInfo);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    @NotNull
    public static final Map<BoxInfo, List<Shape>> filterUnCrossPageShapes(@NotNull List<? extends Shape> shapeList, @NotNull List<BoxInfo> visibleBoxList) {
        Object obj;
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Map map = CollectionKt.toMap(visibleBoxList, new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.extension.CrossPageShapesKt$filterUnCrossPageShapes$boxInfoMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getId();
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Map<String, List<Shape>> pageShapeMap = ShapeTypes.INSTANCE.toPageShapeMap(shapeList);
        ArrayList arrayList = new ArrayList(pageShapeMap.size());
        for (Map.Entry<String, List<Shape>> entry : pageShapeMap.entrySet()) {
            BoxInfo boxInfo = (BoxInfo) map.get(entry.getKey());
            if (boxInfo == null) {
                obj = MapsKt__MapsKt.emptyMap();
            } else {
                List<Shape> value = entry.getValue();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : value) {
                    if (boxInfo.getOriginRectFWithMargin().contains(ShapeRectUtils.INSTANCE.getBoundingRectWithWidth((Shape) obj2))) {
                        arrayList2.add(obj2);
                    }
                }
                linkedHashMap.put(boxInfo, arrayList2);
                obj = Unit.INSTANCE;
            }
            arrayList.add(obj);
        }
        return linkedHashMap;
    }
}
