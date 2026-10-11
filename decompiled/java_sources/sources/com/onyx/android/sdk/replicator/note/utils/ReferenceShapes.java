package com.onyx.android.sdk.replicator.note.utils;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.data.common.path.PointPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.data.point.PagePointLoader;
import com.onyx.android.sdk.replicator.note.data.point.ShapeRepo;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeConnectionBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.ShapePBDocumentUtils;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\u0005J.\u0010\r\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J,\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J$\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002R\u0014\u0010\u0013\u001a\u00020\u00128\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/ReferenceShapes;", "", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "", "pageIds", CouchFieldKey.KEY_TOC_PAGE_ID, "", "exportReferenceToTargetShapes", "documentId", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "shapeModels", "c", "", "a", "referenceShapes", "b", "", "SHAPE_REFERENCE", "I", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReferenceShapes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReferenceShapes.kt\ncom/onyx/android/sdk/replicator/note/utils/ReferenceShapes\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,136:1\n1855#2:137\n1856#2:139\n1477#2:142\n1502#2,3:143\n1505#2,3:153\n766#2:158\n857#2,2:159\n766#2:161\n857#2,2:162\n1603#2,9:164\n1855#2:173\n1856#2:175\n1612#2:176\n1#3:138\n1#3:141\n1#3:174\n563#4:140\n215#4,2:156\n372#5,7:146\n*S KotlinDebug\n*F\n+ 1 ReferenceShapes.kt\ncom/onyx/android/sdk/replicator/note/utils/ReferenceShapes\n*L\n46#1:137\n46#1:139\n97#1:142\n97#1:143,3\n97#1:153,3\n119#1:158\n119#1:159,2\n120#1:161\n120#1:162,2\n128#1:164,9\n128#1:173\n128#1:175\n128#1:176\n78#1:141\n128#1:174\n78#1:140\n97#1:156,2\n97#1:146,7\n*E\n"})
/* loaded from: classes8.dex */
public final class ReferenceShapes {

    @NotNull
    public static final ReferenceShapes INSTANCE = new ReferenceShapes();
    public static final int SHAPE_REFERENCE = 2000;

    /* renamed from: a */
    public final List<ShapeModel> m35560a(PBDataContext pbDataContext, Collection<String> pageIds, String pageId) {
        boolean contains;
        ShapeReferenceBean shapeReferenceBean;
        ShapeReferenceBean shapeReferenceBean2;
        List<ShapeModel> loadShapeList = pbDataContext.getNoteProviderHolder().getNoteShapeProvider().loadShapeList(ShapeQueryArgsExtKt.loadShapeModelByTypeQuery$default(2000, 0, 2, null).andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_PAGE_ID, pageId)));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadShapeList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            ShapeConnectionBean shapeConnectionBean = ((ShapeModel) next).getShapeConnectionBean();
            if ((shapeConnectionBean == null || (shapeReferenceBean2 = shapeConnectionBean.getShapeReferenceBean()) == null || !shapeReferenceBean2.isValid()) ? false : true) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            Collection<String> collection = pageIds;
            ShapeConnectionBean shapeConnectionBean2 = ((ShapeModel) obj).getShapeConnectionBean();
            contains = CollectionsKt___CollectionsKt.contains(collection, (shapeConnectionBean2 == null || (shapeReferenceBean = shapeConnectionBean2.getShapeReferenceBean()) == null) ? null : shapeReferenceBean.getPageId());
            if (!contains) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    /* renamed from: b */
    public final List<ShapeModel> m35561b(PBDataContext pbDataContext, List<ShapeModel> referenceShapes) {
        Set set;
        List list;
        ShapeReferenceBean shapeReferenceBean;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = referenceShapes.iterator();
        while (it2.hasNext()) {
            ShapeConnectionBean shapeConnectionBean = ((ShapeModel) it2.next()).getShapeConnectionBean();
            String shapeId = (shapeConnectionBean == null || (shapeReferenceBean = shapeConnectionBean.getShapeReferenceBean()) == null) ? null : shapeReferenceBean.getShapeId();
            if (shapeId != null) {
                arrayList.add(shapeId);
            }
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList);
        list = CollectionsKt___CollectionsKt.toList(set);
        return pbDataContext.getNoteProviderHolder().getNoteShapeProvider().loadShapeList(ShapeQueryArgsExtKt.inShapeIdListQuery(list).andWith(CouchUtils.INSTANCE.equalExpression("status", 0)));
    }

    /* renamed from: c */
    public final void m35562c(PBDataContext pbDataContext, String documentId, String pageId, List<ShapeModel> shapeModels) {
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : shapeModels) {
            String pageUniqueId = ((ShapeModel) obj).getPageUniqueId();
            if (pageUniqueId == null) {
                pageUniqueId = "";
            }
            Object obj2 = linkedHashMap.get(pageUniqueId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageUniqueId, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            ShapePBDocumentUtils.INSTANCE.saveToShapeFile(pbDataContext.getNoteProviderHolder(), new ShapeDocumentArgs().setDocumentId(documentId).setPageId(pageId).setPbDirPath(exportNoteArgs.getExportDirPath()), (List) entry.getValue(), false);
        }
    }

    public final void exportReferenceToTargetShapes(@NotNull PBDataContext pbDataContext, @NotNull List<String> pageIds, @NotNull String pageId) {
        List<ShapeRepo> list;
        Object obj;
        Iterator it2;
        Map map;
        ShapeReferenceBean shapeReferenceBean;
        float[] matrixValues;
        ShapeReferenceBean shapeReferenceBean2;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        String documentId = pbDataContext.getDocumentId();
        List<ShapeModel> m35560a = m35560a(pbDataContext, pageIds, pageId);
        List<ShapeModel> list2 = m35560a;
        if (CollectionKt.isNullOrEmpty(list2)) {
            return;
        }
        Map map2 = CollectionKt.toMap(m35561b(pbDataContext, m35560a), new Function1<ShapeModel, String>() { // from class: com.onyx.android.sdk.replicator.note.utils.ReferenceShapes$exportReferenceToTargetShapes$targetShapesGroup$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ShapeModel it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.getUniqueId();
            }
        });
        if (CollectionKt.isNullOrEmpty((Map<?, ?>) map2)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator it3 = m35560a.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            ShapeModel shapeModel = (ShapeModel) it3.next();
            ShapeConnectionBean shapeConnectionBean = shapeModel.getShapeConnectionBean();
            ShapeModel shapeModel2 = (ShapeModel) map2.get((shapeConnectionBean == null || (shapeReferenceBean2 = shapeConnectionBean.getShapeReferenceBean()) == null) ? null : shapeReferenceBean2.getShapeId());
            if (shapeModel2 != null) {
                it2 = it3;
                ShapeModel shapeModel3 = (ShapeModel) JSONUtils.INSTANCE.clone(shapeModel2, ShapeModel.class);
                if (shapeModel3 != null) {
                    String rawUUID = UUIDUtils.INSTANCE.rawUUID();
                    String pageUniqueId = shapeModel.getPageUniqueId();
                    map = map2;
                    if (pageUniqueId == null) {
                        pageUniqueId = "";
                    }
                    linkedHashMap.put(rawUUID, shapeModel3.getUniqueId());
                    String pageUniqueId2 = shapeModel3.getPageUniqueId();
                    linkedHashMap2.put(pageUniqueId, pageUniqueId2 != null ? pageUniqueId2 : "");
                    shapeModel3.setUniqueId(rawUUID);
                    shapeModel3.setPageUniqueId(pageUniqueId);
                    Matrix matrixByValues = MatrixKt.getMatrixByValues(shapeModel3.getMatrixValues());
                    ShapeConnectionBean shapeConnectionBean2 = shapeModel.getShapeConnectionBean();
                    matrixByValues.postConcat((shapeConnectionBean2 == null || (shapeReferenceBean = shapeConnectionBean2.getShapeReferenceBean()) == null || (matrixValues = shapeReferenceBean.getMatrixValues()) == null) ? null : MatrixKt.getMatrixByValues(matrixValues));
                    shapeModel3.setMatrixValues(MatrixKt.toMatrixValues(matrixByValues));
                    shapeModel3.setShapeConnectionBean(null);
                    CollectionKt.safeAdd(exportNoteArgs.getExportResourceIdSet(), shapeModel3.getResourceId());
                    arrayList.add(shapeModel3);
                    shapeModel.setStatus(1);
                    arrayList2.add(shapeModel);
                    it3 = it2;
                    map2 = map;
                }
            } else {
                it2 = it3;
            }
            map = map2;
            it3 = it2;
            map2 = map;
        }
        if (CollectionKt.isNullOrEmpty(arrayList)) {
            return;
        }
        final String newRevisionId = ShapeModel.INSTANCE.newRevisionId();
        String str = (String) linkedHashMap2.get(pageId);
        String str2 = str != null ? str : "";
        Map<String, ShapeRepo> loadShapePointList = new PagePointLoader(str2, PointPaths.INSTANCE.appPagePointDir(documentId, str2).toAbsolutePath().toString()).loadShapePointList(CollectionKt.toMapList(arrayList, new Function1<ShapeModel, String>() { // from class: com.onyx.android.sdk.replicator.note.utils.ReferenceShapes$exportReferenceToTargetShapes$revisionShapeIdMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ShapeModel it4) {
                Intrinsics.checkNotNullParameter(it4, "it");
                String revisionId = it4.getRevisionId();
                return revisionId == null ? "" : revisionId;
            }
        }, new Function1<ShapeModel, String>() { // from class: com.onyx.android.sdk.replicator.note.utils.ReferenceShapes$exportReferenceToTargetShapes$revisionShapeIdMap$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ShapeModel it4) {
                Intrinsics.checkNotNullParameter(it4, "it");
                it4.setRevisionId(newRevisionId);
                String str3 = linkedHashMap.get(it4.getUniqueId());
                return str3 == null ? "" : str3;
            }
        }));
        for (Map.Entry<String, ShapeRepo> entry : loadShapePointList.entrySet()) {
            Iterator it4 = linkedHashMap.entrySet().iterator();
            while (true) {
                if (it4.hasNext()) {
                    obj = it4.next();
                    if (Intrinsics.areEqual(((Map.Entry) obj).getValue(), entry.getKey())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            Map.Entry entry2 = (Map.Entry) obj;
            if (entry2 != null) {
                entry.getValue().setShapeUniqueId((String) entry2.getKey());
            }
        }
        PagePointLoader.Companion companion = PagePointLoader.INSTANCE;
        list = CollectionsKt___CollectionsKt.toList(loadShapePointList.values());
        companion.saveToPointFile(list, documentId, pageId, newRevisionId);
        ArrayList arrayList3 = new ArrayList();
        CollectionKt.safeAddAll(arrayList3, arrayList);
        CollectionKt.safeAddAll(arrayList3, list2);
        m35562c(pbDataContext, documentId, pageId, arrayList3);
    }
}
