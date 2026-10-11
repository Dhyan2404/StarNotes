package com.onyx.android.sdk.universal.editor.request.shape;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010!\n\u0002\b\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0006¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\tR)\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00120\u00118\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/shape/CreatePageChangedShapesRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6997f.f39671c, "Ljava/util/List;", "visibleBoxList", C6998g.f39679a, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "shapeList", "", "", "i", "Ljava/util/Map;", "getPageShapesMap", "()Ljava/util/Map;", "pageShapesMap", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreatePageChangedShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatePageChangedShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/CreatePageChangedShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,55:1\n1194#2,2:56\n1222#2,4:58\n1855#2,2:62\n1855#2:64\n1856#2:72\n372#3,7:65\n*S KotlinDebug\n*F\n+ 1 CreatePageChangedShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/CreatePageChangedShapesRequest\n*L\n30#1:56,2\n30#1:58,4\n33#1:62,2\n44#1:64\n44#1:72\n51#1:65,7\n*E\n"})
/* loaded from: classes8.dex */
public final class CreatePageChangedShapesRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<BoxInfo> visibleBoxList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<BoxInfo, List<Shape>> pageShapesMap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CreatePageChangedShapesRequest(@NotNull WorkBundle workBundle, @NotNull List<BoxInfo> visibleBoxList, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapeList) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.visibleBoxList = visibleBoxList;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapeList = shapeList;
        this.pageShapesMap = new LinkedHashMap();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        RectF boundingScreenRectWithWidth;
        Object obj;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        List<BoxInfo> list = this.visibleBoxList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj2 : list) {
            linkedHashMap.put(((BoxInfo) obj2).getId(), obj2);
        }
        ArrayList<Shape> arrayList = new ArrayList();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Shape shape : this.shapeList) {
            RectF boundingRectWithWidth = ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(shape);
            BoxInfo boxInfo = (BoxInfo) linkedHashMap.get(shape.getPageUniqueId());
            if (boxInfo == null || !RectF.intersects(boundingRectWithWidth, boxInfo.getOriginRectFWithMargin())) {
                linkedHashMap2.put(shape.getShapeUniqueId(), boundingRectWithWidth);
                arrayList.add(shape);
            }
        }
        if (CollectionKt.isNullOrEmpty(arrayList)) {
            return;
        }
        for (Shape shape2 : arrayList) {
            RectF rectF = (RectF) linkedHashMap2.get(shape2.getShapeUniqueId());
            if (rectF == null || (boundingScreenRectWithWidth = BoxInfoUtils.INSTANCE.mapToScreenRectF(rectF, this.virtualBoxInfo)) == null) {
                boundingScreenRectWithWidth = ShapeRectUtils.INSTANCE.getBoundingScreenRectWithWidth(shape2, this.virtualBoxInfo);
            }
            Iterator<T> it2 = this.visibleBoxList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                BoxInfo boxInfo2 = (BoxInfo) obj;
                if (!Intrinsics.areEqual(boxInfo2.getId(), shape2.getPageUniqueId()) && RectF.intersects(boundingScreenRectWithWidth, boxInfo2.getVisibleRect())) {
                    break;
                }
            }
            BoxInfo boxInfo3 = (BoxInfo) obj;
            if (boxInfo3 != null) {
                Map<BoxInfo, List<Shape>> map = this.pageShapesMap;
                List<Shape> list2 = map.get(boxInfo3);
                if (list2 == null) {
                    list2 = new ArrayList<>();
                    map.put(boxInfo3, list2);
                }
                list2.add(shape2);
            }
        }
    }

    @NotNull
    public final Map<BoxInfo, List<Shape>> getPageShapesMap() {
        return this.pageShapesMap;
    }
}
