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
import com.onyx.android.sdk.universal.editor.request.shape.RemoveDuplicatedCrossPageShapesRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00140\u0019\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002J$\u0010\u000e\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R#\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00140\u00138\u0006¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape1", "shape2", "", C6998g.f39679a, "", "normalShapes", "removedReferenceShapes", C6999h.f39688c, "", C6997f.f39671c, "Ljava/util/List;", "shapeList", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Ljava/util/Map;", "getNewCrossShapePageMap", "()Ljava/util/Map;", "newCrossShapePageMap", "", "crossShapePageMap", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/Map;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRemoveDuplicatedCrossPageShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveDuplicatedCrossPageShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1855#2,2:63\n1855#2,2:65\n1549#2:67\n1620#2,3:68\n1855#2,2:71\n*S KotlinDebug\n*F\n+ 1 RemoveDuplicatedCrossPageShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest\n*L\n34#1:63,2\n39#1:65,2\n54#1:67\n54#1:68,3\n58#1:71,2\n*E\n"})
/* loaded from: classes8.dex */
public final class RemoveDuplicatedCrossPageShapesRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Map<Shape, BoxInfo> newCrossShapePageMap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RemoveDuplicatedCrossPageShapesRequest(@NotNull WorkBundle workBundle, @NotNull Map<Shape, BoxInfo> crossShapePageMap, @NotNull List<? extends Shape> shapeList) {
        super(workBundle);
        Map<Shape, BoxInfo> mutableMap;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(crossShapePageMap, "crossShapePageMap");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.shapeList = shapeList;
        mutableMap = MapsKt__MapsKt.toMutableMap(crossShapePageMap);
        this.newCrossShapePageMap = mutableMap;
    }

    /* renamed from: i */
    public static final boolean m41483i(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Collection<? extends Shape> filterNormalShapes = ShapeTypes.INSTANCE.filterNormalShapes(this.shapeList);
        GetReferenceShapesRequest getReferenceShapesRequest = new GetReferenceShapesRequest(workBundle.getNoteBundle(), filterNormalShapes);
        getReferenceShapesRequest.execute2();
        List<Shape> referenceShapeList = getReferenceShapesRequest.getReferenceShapeList();
        for (final Shape shape : this.newCrossShapePageMap.keySet()) {
            if (CollectionKt.contains(referenceShapeList, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.request.shape.RemoveDuplicatedCrossPageShapesRequest$execute$2$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Shape it2) {
                    boolean m41484g;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m41484g = RemoveDuplicatedCrossPageShapesRequest.this.m41484g(it2, shape);
                    return Boolean.valueOf(m41484g);
                }
            })) {
                linkedHashSet.add(shape);
            }
        }
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            this.newCrossShapePageMap.remove((Shape) it2.next());
        }
        m41485h(filterNormalShapes, linkedHashSet);
    }

    /* renamed from: g */
    public final boolean m41484g(Shape shape1, Shape shape2) {
        if (Intrinsics.areEqual(shape1.getPageUniqueId(), shape2.getPageUniqueId())) {
            ShapeReferenceBean shapeReferenceBean = shape1.getShapeReferenceBean();
            String shapeId = shapeReferenceBean != null ? shapeReferenceBean.getShapeId() : null;
            ShapeReferenceBean shapeReferenceBean2 = shape2.getShapeReferenceBean();
            if (Intrinsics.areEqual(shapeId, shapeReferenceBean2 != null ? shapeReferenceBean2.getShapeId() : null)) {
                ShapeReferenceBean shapeReferenceBean3 = shape1.getShapeReferenceBean();
                String pageId = shapeReferenceBean3 != null ? shapeReferenceBean3.getPageId() : null;
                ShapeReferenceBean shapeReferenceBean4 = shape2.getShapeReferenceBean();
                if (Intrinsics.areEqual(pageId, shapeReferenceBean4 != null ? shapeReferenceBean4.getPageId() : null)) {
                    return true;
                }
            }
        }
        return false;
    }

    @NotNull
    public final Map<Shape, BoxInfo> getNewCrossShapePageMap() {
        return this.newCrossShapePageMap;
    }

    /* renamed from: h */
    public final void m41485h(Collection<? extends Shape> normalShapes, Collection<? extends Shape> removedReferenceShapes) {
        int collectionSizeOrDefault;
        List<ShapeReferenceBean> referenceShapeBeanList;
        Collection<? extends Shape> collection = removedReferenceShapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
        final ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Shape) it2.next()).getShapeUniqueId());
        }
        if (CollectionKt.isNullOrEmpty(arrayList)) {
            return;
        }
        Iterator<T> it3 = normalShapes.iterator();
        while (it3.hasNext()) {
            ShapeSourceBean shapeSrcBean = ((Shape) it3.next()).getShapeSrcBean();
            if (shapeSrcBean != null && (referenceShapeBeanList = shapeSrcBean.getReferenceShapeBeanList()) != null) {
                final Function1<ShapeReferenceBean, Boolean> function1 = new Function1<ShapeReferenceBean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.request.shape.RemoveDuplicatedCrossPageShapesRequest$removeReferenceShapeConnection$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull ShapeReferenceBean it4) {
                        Intrinsics.checkNotNullParameter(it4, "it");
                        return Boolean.valueOf(arrayList.contains(it4.getShapeId()));
                    }
                };
                referenceShapeBeanList.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.wjl
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean m41483i;
                        m41483i = RemoveDuplicatedCrossPageShapesRequest.m41483i(Function1.this, obj);
                        return m41483i;
                    }
                });
            }
        }
    }
}
