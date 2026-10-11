package com.onyx.android.sdk.universal.editor.request.shape;

import android.graphics.Matrix;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0007\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0018\u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R&\u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR#\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u000b\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/shape/ClonePageChangedShapesRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, "Ljava/util/Map;", "pageShapesMap", C6998g.f39679a, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "", C6999h.f39688c, "getChangedShapeMap", "()Ljava/util/Map;", "changedShapeMap", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/Map;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nClonePageChangedShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClonePageChangedShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/ClonePageChangedShapesRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n215#2:40\n216#2:43\n1855#3,2:41\n*S KotlinDebug\n*F\n+ 1 ClonePageChangedShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/ClonePageChangedShapesRequest\n*L\n26#1:40\n26#1:43\n29#1:41,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ClonePageChangedShapesRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Map<BoxInfo, List<Shape>> pageShapesMap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Map<Shape, Shape> changedShapeMap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ClonePageChangedShapesRequest(@NotNull WorkBundle workBundle, @NotNull Map<BoxInfo, ? extends List<? extends Shape>> pageShapesMap, @NotNull BoxInfo virtualBoxInfo) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(pageShapesMap, "pageShapesMap");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        this.pageShapesMap = pageShapesMap;
        this.virtualBoxInfo = virtualBoxInfo;
        this.changedShapeMap = new LinkedHashMap();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        for (Map.Entry<BoxInfo, List<Shape>> entry : this.pageShapesMap.entrySet()) {
            String id = entry.getKey().getId();
            Matrix crossPageMatrix = BoxInfo.INSTANCE.getCrossPageMatrix(this.virtualBoxInfo, entry.getKey());
            for (Shape shape : entry.getValue()) {
                Shape cloneNewShape = ShapeCopyUtils.INSTANCE.cloneNewShape(shape, shape.getType());
                cloneNewShape.setPageUniqueId(id);
                cloneNewShape.cloneRenderData(shape);
                cloneNewShape.postConcat(crossPageMatrix);
                cloneNewShape.resetConnection();
                this.changedShapeMap.put(shape, cloneNewShape);
            }
        }
    }

    @NotNull
    public final Map<Shape, Shape> getChangedShapeMap() {
        return this.changedShapeMap;
    }
}
