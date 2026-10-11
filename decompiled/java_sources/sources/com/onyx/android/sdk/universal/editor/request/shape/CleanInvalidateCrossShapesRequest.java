package com.onyx.android.sdk.universal.editor.request.shape;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.request.GetReferenceShapesRequest;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\f\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\f¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R \u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR(\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u000e\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/shape/CleanInvalidateCrossShapesRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6997f.f39671c, "Ljava/util/Map;", "crossShapePageMap", "", C6998g.f39679a, "Ljava/util/List;", "shapeList", C6999h.f39688c, "getRemoveShapeList", "()Ljava/util/List;", "setRemoveShapeList", "(Ljava/util/List;)V", "removeShapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/Map;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCleanInvalidateCrossShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanInvalidateCrossShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/CleanInvalidateCrossShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n766#2:52\n857#2,2:53\n1603#2,9:55\n1855#2:64\n1856#2:66\n1612#2:67\n1549#2:68\n1620#2,2:69\n766#2:71\n857#2,2:72\n1622#2:74\n1549#2:75\n1620#2,2:76\n1549#2:78\n1620#2,3:79\n1622#2:82\n1#3:65\n*S KotlinDebug\n*F\n+ 1 CleanInvalidateCrossShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/CleanInvalidateCrossShapesRequest\n*L\n30#1:52\n30#1:53,2\n38#1:55,9\n38#1:64\n38#1:66\n38#1:67\n39#1:68\n39#1:69,2\n40#1:71\n40#1:72,2\n39#1:74\n41#1:75\n41#1:76,2\n42#1:78\n42#1:79,3\n41#1:82\n38#1:65\n*E\n"})
/* loaded from: classes8.dex */
public final class CleanInvalidateCrossShapesRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Map<Shape, BoxInfo> crossShapePageMap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> removeShapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CleanInvalidateCrossShapesRequest(@NotNull WorkBundle workBundle, @NotNull Map<Shape, BoxInfo> crossShapePageMap, @NotNull List<? extends Shape> shapeList) {
        super(workBundle);
        List<? extends Shape> emptyList;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(crossShapePageMap, "crossShapePageMap");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.crossShapePageMap = crossShapePageMap;
        this.shapeList = shapeList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.removeShapeList = emptyList;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List flatten;
        int collectionSizeOrDefault3;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        List<Shape> list = this.shapeList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((Shape) obj).hasReferenceShapeBeanList()) {
                arrayList.add(obj);
            }
        }
        List<Shape> filterNormalShapes = shapeTypes.filterNormalShapes(arrayList);
        List<Shape> list2 = filterNormalShapes;
        if (CollectionKt.isNullOrEmpty(list2)) {
            return;
        }
        Set keySet = CollectionKt.toMap(this.crossShapePageMap.values(), new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.request.shape.CleanInvalidateCrossShapesRequest$execute$crossPageIdSet$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getId();
            }
        }).keySet();
        ArrayList<List> arrayList2 = new ArrayList();
        Iterator<T> it2 = filterNormalShapes.iterator();
        while (it2.hasNext()) {
            ShapeSourceBean shapeSrcBean = ((Shape) it2.next()).getShapeSrcBean();
            List<ShapeReferenceBean> referenceShapeBeanList = shapeSrcBean != null ? shapeSrcBean.getReferenceShapeBeanList() : null;
            if (referenceShapeBeanList != null) {
                arrayList2.add(referenceShapeBeanList);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList<List> arrayList3 = new ArrayList(collectionSizeOrDefault);
        for (List list3 : arrayList2) {
            ArrayList arrayList4 = new ArrayList();
            for (Object obj2 : list3) {
                if (!keySet.contains(((ShapeReferenceBean) obj2).getPageId())) {
                    arrayList4.add(obj2);
                }
            }
            arrayList3.add(arrayList4);
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
        ArrayList arrayList5 = new ArrayList(collectionSizeOrDefault2);
        for (List list4 : arrayList3) {
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list4, 10);
            ArrayList arrayList6 = new ArrayList(collectionSizeOrDefault3);
            Iterator it3 = list4.iterator();
            while (it3.hasNext()) {
                arrayList6.add(((ShapeReferenceBean) it3.next()).getShapeId());
            }
            arrayList5.add(arrayList6);
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList5);
        GetReferenceShapesRequest getReferenceShapesRequest = new GetReferenceShapesRequest(workBundle.getNoteBundle(), list2);
        getReferenceShapesRequest.execute2();
        this.removeShapeList = ShapeTypes.INSTANCE.filterByShapeIds(getReferenceShapesRequest.getReferenceShapeList(), flatten);
    }

    @NotNull
    public final List<Shape> getRemoveShapeList() {
        return this.removeShapeList;
    }

    public final void setRemoveShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.removeShapeList = list;
    }
}
