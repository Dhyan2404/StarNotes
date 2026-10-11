package com.onyx.android.sdk.universal.editor.request.shape;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.extension.CrossPageShapesKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\n\u0012\u0006\u0010\u0014\u001a\u00020\b\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\n¢\u0006\u0004\b+\u0010,J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006J\"\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0002J(\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0002J(\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0002J\u001c\u0010\u0011\u001a\u00020\u00042\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0002R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0013R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0012R\"\u0010\u001c\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R.\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/shape/UpdateCrossPageShapesRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getTargetPageShapeMap", "", "visibleBoxList", C6999h.f39688c, "shapeMap", C6998g.f39679a, "i", "crossPageShapeMap", C6997f.f39671c, "Ljava/util/List;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "shapeList", "", Constants.HASIDCALL_INDEX_SIG, "getCheckDuplicatedShapes", Constants.BOOLEAN_VALUE_SIG, "setCheckDuplicatedShapes", "(Z)V", "checkDuplicatedShapes", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "j", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "getChangedShapeBean", "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "setChangedShapeBean", "(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V", "changedShapeBean", C4921e.f26537n, "Ljava/util/Map;", "getCrossPageShapeMap", "()Ljava/util/Map;", "setCrossPageShapeMap", "(Ljava/util/Map;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateCrossPageShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateCrossPageShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/UpdateCrossPageShapesRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n1#2:86\n1549#3:87\n1620#3,3:88\n*S KotlinDebug\n*F\n+ 1 UpdateCrossPageShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/UpdateCrossPageShapesRequest\n*L\n81#1:87\n81#1:88,3\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateCrossPageShapesRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<BoxInfo> visibleBoxList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualBoxInfo;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean checkDuplicatedShapes;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public ChangedShapeBean changedShapeBean;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Map<Shape, BoxInfo> crossPageShapeMap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UpdateCrossPageShapesRequest(@NotNull WorkBundle workBundle, @NotNull List<BoxInfo> visibleBoxList, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapeList) {
        super(workBundle);
        Map<Shape, BoxInfo> emptyMap;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.visibleBoxList = visibleBoxList;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapeList = shapeList;
        this.changedShapeBean = new ChangedShapeBean();
        emptyMap = MapsKt__MapsKt.emptyMap();
        this.crossPageShapeMap = emptyMap;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Map<Shape, BoxInfo> m41489i = m41489i(m41487g(m41488h(this.visibleBoxList)));
        m41486f(m41489i);
        this.crossPageShapeMap = m41489i;
    }

    /* renamed from: f */
    public final void m41486f(Map<Shape, BoxInfo> crossPageShapeMap) {
        int collectionSizeOrDefault;
        List distinct;
        Set<Shape> keySet = crossPageShapeMap.keySet();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(keySet, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = keySet.iterator();
        while (it2.hasNext()) {
            arrayList.add(ShapeTypes.INSTANCE.getTargetShape((Shape) it2.next()));
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        this.changedShapeBean.addShapeList(distinct);
    }

    /* renamed from: g */
    public final Map<Shape, BoxInfo> m41487g(Map<Shape, BoxInfo> shapeMap) {
        CleanInvalidateCrossShapesRequest cleanInvalidateCrossShapesRequest = new CleanInvalidateCrossShapesRequest(getWorkBundle(), shapeMap, DocOptionsActionsKt.isEnabledContinuousPage(getWorkBundle()) ? this.shapeList : CollectionsKt__IterablesKt.flatten(CrossPageShapesKt.filterUnCrossPageShapes(this.shapeList, this.visibleBoxList).values()));
        cleanInvalidateCrossShapesRequest.execute2();
        this.changedShapeBean.addRemoveShapeList(cleanInvalidateCrossShapesRequest.getRemoveShapeList());
        return shapeMap;
    }

    @NotNull
    public final ChangedShapeBean getChangedShapeBean() {
        return this.changedShapeBean;
    }

    public final boolean getCheckDuplicatedShapes() {
        return this.checkDuplicatedShapes;
    }

    @NotNull
    public final Map<Shape, BoxInfo> getCrossPageShapeMap() {
        return this.crossPageShapeMap;
    }

    @NotNull
    public final Map<Shape, BoxInfo> getTargetPageShapeMap() {
        return CollectionKt.toMap(this.changedShapeBean.getAddShapeList(), new Function1<Shape, Shape>() { // from class: com.onyx.android.sdk.universal.editor.request.shape.UpdateCrossPageShapesRequest$getTargetPageShapeMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Shape invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Function1<Shape, BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.request.shape.UpdateCrossPageShapesRequest$getTargetPageShapeMap$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BoxInfo invoke(@NotNull Shape it2) {
                BoxInfo boxInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                boxInfo = UpdateCrossPageShapesRequest.this.virtualBoxInfo;
                return boxInfo;
            }
        });
    }

    /* renamed from: h */
    public final Map<Shape, BoxInfo> m41488h(List<BoxInfo> visibleBoxList) {
        CreateCrossPageShapesRequest createCrossPageShapesRequest = new CreateCrossPageShapesRequest(getWorkBundle(), visibleBoxList, this.virtualBoxInfo, this.shapeList);
        createCrossPageShapesRequest.execute2();
        return createCrossPageShapesRequest.getShapeMap();
    }

    /* renamed from: i */
    public final Map<Shape, BoxInfo> m41489i(Map<Shape, BoxInfo> shapeMap) {
        if (!this.checkDuplicatedShapes || CollectionKt.isNullOrEmpty(shapeMap)) {
            return shapeMap;
        }
        RemoveDuplicatedCrossPageShapesRequest removeDuplicatedCrossPageShapesRequest = new RemoveDuplicatedCrossPageShapesRequest(getWorkBundle(), shapeMap, this.shapeList);
        removeDuplicatedCrossPageShapesRequest.execute2();
        return removeDuplicatedCrossPageShapesRequest.getNewCrossShapePageMap();
    }

    public final void setChangedShapeBean(@NotNull ChangedShapeBean changedShapeBean) {
        Intrinsics.checkNotNullParameter(changedShapeBean, "<set-?>");
        this.changedShapeBean = changedShapeBean;
    }

    public final void setCheckDuplicatedShapes(boolean z) {
        this.checkDuplicatedShapes = z;
    }

    public final void setCrossPageShapeMap(@NotNull Map<Shape, BoxInfo> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.crossPageShapeMap = map;
    }
}
