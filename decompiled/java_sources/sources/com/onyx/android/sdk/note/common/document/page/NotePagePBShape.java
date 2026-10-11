package com.onyx.android.sdk.note.common.document.page;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.NoteShapePBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b \u0010!J\u001e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J8\u0010\u0010\u001a\u00020\u000f2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00072\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\fH\u0002J<\u0010\u0016\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\n2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00040\u00122\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00040\u0012H\u0002J\u001e\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00190\f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J(\u0010\u001d\u001a\u00020\u0015*\u00020\u00022\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00190\f2\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J.\u0010\u001f\u001a\u00020\u0015*\u00020\u00022\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00040\u0012H\u0002¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/page/NotePagePBShape;", "", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "shapeModelList", "checkPbShape", "", "", "infoRevisionIdList", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "documentArgsList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;", "recordModelMap", "", "a", "args", "", "shapeModelMap", "removeShapeMap", "", "c", "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;", "shapeProtoList", "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;", "b", "shapeProtoMap", "shapeModel", "e", "protoShapeModels", "d", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotePagePBShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePagePBShape.kt\ncom/onyx/android/sdk/note/common/document/page/NotePagePBShape\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n1855#2,2:178\n*S KotlinDebug\n*F\n+ 1 NotePagePBShape.kt\ncom/onyx/android/sdk/note/common/document/page/NotePagePBShape\n*L\n120#1:178,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NotePagePBShape {

    @NotNull
    public static final NotePagePBShape INSTANCE = new NotePagePBShape();

    /* renamed from: a */
    public final boolean m33784a(List<String> infoRevisionIdList, List<ShapeDocumentArgs> documentArgsList, Map<String, PBDocRecordModel> recordModelMap) {
        List reversed;
        reversed = CollectionsKt___CollectionsKt.reversed(documentArgsList);
        Iterator it2 = reversed.iterator();
        while (it2.hasNext()) {
            PBDocRecordModel pBDocRecordModel = recordModelMap.get(((ShapeDocumentArgs) it2.next()).getRevisionId());
            if (pBDocRecordModel != null && pBDocRecordModel.isSynced()) {
                return !infoRevisionIdList.contains(r3.getRevisionId());
            }
        }
        return false;
    }

    /* renamed from: b */
    public final Map<String, NoteShapeDocProto.ShapeInfoProto> m33785b(NoteShapeDocProto.ShapeInfoProtoList shapeProtoList) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (shapeProtoList != null) {
            int protoCount = shapeProtoList.getProtoCount();
            for (int i = 0; i < protoCount; i++) {
                NoteShapeDocProto.ShapeInfoProto proto = shapeProtoList.getProto(i);
                if (JSONUtils.INSTANCE.isJSONString(proto.getResource())) {
                    String uniqueId = proto.getUniqueId();
                    Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
                    Intrinsics.checkNotNull(proto);
                    linkedHashMap.put(uniqueId, proto);
                }
            }
        }
        return linkedHashMap;
    }

    /* renamed from: c */
    public final void m33786c(NotePage notePage, ShapeDocumentArgs shapeDocumentArgs, Map<String, ShapeModel> map, Map<String, ShapeModel> map2) {
        NoteShapeDocProto.ShapeInfoProtoList data = new NoteShapePBDocument(new ShapeDocumentArgs().setDocumentId(notePage.getDocumentUniqueId()).setPageId(notePage.getPageUniqueId()).setRevisionId(shapeDocumentArgs.getRevisionId()).setCreateAt(shapeDocumentArgs.getCreateAt())).load().getData();
        List<ShapeModel> fromShapeInfoProtoList$default = NoteShapePBDocument.Companion.fromShapeInfoProtoList$default(NoteShapePBDocument.INSTANCE, data, null, 2, null);
        ArrayList arrayList = new ArrayList();
        Map<String, NoteShapeDocProto.ShapeInfoProto> m33785b = m33785b(data);
        m33787d(notePage, fromShapeInfoProtoList$default, map2);
        for (ShapeModel shapeModel : fromShapeInfoProtoList$default) {
            String uniqueId = shapeModel.getUniqueId();
            ShapeModel shapeModel2 = map.get(uniqueId);
            if (shapeModel2 == null) {
                shapeModel2 = map2.get(uniqueId);
            }
            if (shapeModel2 == null || shapeModel2.getUpdatedAt() <= shapeModel.getUpdatedAt()) {
                arrayList.add(shapeModel);
                shapeModel.setPageUniqueId(notePage.getPageUniqueId());
                shapeModel.setDocumentUniqueId(notePage.getDocumentUniqueId());
                shapeModel.setPointSaveType(1);
                shapeModel.setCoordType(1);
                map.put(shapeModel.getUniqueId(), shapeModel);
            } else {
                Debug.INSTANCE.m32052i(NotePage.class, uniqueId + " is newer on dbflow", new Object[0]);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            INSTANCE.m33788e(notePage, m33785b, (ShapeModel) it2.next());
        }
        Debug.INSTANCE.m32052i(NotePage.class, "pageId: " + notePage.getPageUniqueId() + " revisionId: " + shapeDocumentArgs.getRevisionId() + " update shape count: " + map.size(), new Object[0]);
        notePage.getProviderHolder().getNoteShapeProvider().saveShapeList(arrayList);
    }

    @NotNull
    public final Collection<ShapeModel> checkPbShape(@NotNull NotePage notePage, @NotNull Collection<ShapeModel> shapeModelList) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shapeModelList, "shapeModelList");
        HashMap hashMap = new HashMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (ShapeModel shapeModel : shapeModelList) {
            linkedHashMap.put(shapeModel.getUniqueId(), shapeModel);
        }
        List<ShapeDocumentArgs> docPageShapeArgsList = ShapeDocumentUtils.INSTANCE.docPageShapeArgsList(notePage.getDocumentUniqueId(), notePage.getPageUniqueId());
        if (docPageShapeArgsList.isEmpty()) {
            return shapeModelList;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ShapeDocumentArgs> it2 = docPageShapeArgsList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getRevisionId());
        }
        List<String> loadPageShapeInfoRevisionList = notePage.getProviderHolder().getNoteShapeProvider().loadPageShapeInfoRevisionList(notePage.getPageUniqueId());
        Map<String, PBDocRecordModel> loadRecordModelMap = notePage.getProviderHolder().getPbDocRecordProvider().loadRecordModelMap(notePage.getDocumentUniqueId(), arrayList);
        boolean m33784a = m33784a(loadPageShapeInfoRevisionList, new ArrayList(docPageShapeArgsList), loadRecordModelMap);
        if (m33784a) {
            Debug.INSTANCE.m32052i(NotePage.class, notePage.getPageUniqueId() + " is need reload shape", new Object[0]);
        }
        ArrayList arrayList2 = new ArrayList();
        for (ShapeDocumentArgs shapeDocumentArgs : docPageShapeArgsList) {
            PBDocRecordModel pBDocRecordModel = loadRecordModelMap.get(shapeDocumentArgs.getRevisionId());
            boolean z = pBDocRecordModel != null && pBDocRecordModel.isSynced();
            if (m33784a || !z) {
                m33786c(notePage, shapeDocumentArgs, linkedHashMap, hashMap);
                if (!z) {
                    PBDocRecordModel pBDocRecordModel2 = new PBDocRecordModel();
                    pBDocRecordModel2.setUniqueId(shapeDocumentArgs.getRevisionId());
                    pBDocRecordModel2.setDocumentId(notePage.getDocumentUniqueId());
                    pBDocRecordModel2.setPageId(notePage.getPageUniqueId());
                    pBDocRecordModel2.setStatus(1);
                    pBDocRecordModel2.setTimeStamp(shapeDocumentArgs.getCreateAt());
                    arrayList2.add(pBDocRecordModel2);
                }
            }
        }
        notePage.getProviderHolder().getPbDocRecordProvider().saveRecordList(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        Iterator<Map.Entry<String, ShapeModel>> it3 = linkedHashMap.entrySet().iterator();
        while (it3.hasNext()) {
            ShapeModel value = it3.next().getValue();
            if (value.isEnabled()) {
                arrayList3.add(value);
            }
        }
        return arrayList3;
    }

    /* renamed from: d */
    public final void m33787d(NotePage notePage, List<ShapeModel> list, Map<String, ShapeModel> map) {
        ArrayList arrayList = new ArrayList();
        Iterator<ShapeModel> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getUniqueId());
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i += NoteConstant.INSTANCE.getCOMMON_BATCH_DATA_COUNT()) {
            for (ShapeModel shapeModel : notePage.getProviderHolder().getNoteShapeProvider().loadShapeListByIds(CollectionKt.safelySubList(arrayList, i, NoteConstant.INSTANCE.getCOMMON_BATCH_DATA_COUNT() + i))) {
                map.put(shapeModel.getUniqueId(), shapeModel);
            }
        }
    }

    /* renamed from: e */
    public final void m33788e(NotePage notePage, Map<String, NoteShapeDocProto.ShapeInfoProto> map, ShapeModel shapeModel) {
        ShapeResource shapeResource;
        ResourceModel fromShapeResource;
        String resourceId = shapeModel.getResourceId();
        if (resourceId == null) {
            return;
        }
        NoteShapeDocProto.ShapeInfoProto shapeInfoProto = map.get(shapeModel.getUniqueId());
        String resource = shapeInfoProto != null ? shapeInfoProto.getResource() : null;
        if (resource == null || notePage.getProviderHolder().getNoteResourceProvider().loadResourceModel(resourceId) != null || (shapeResource = (ShapeResource) JSONUtils.INSTANCE.parseObject(resource, ShapeResource.class)) == null || (fromShapeResource = ResourceModels.INSTANCE.fromShapeResource(shapeResource)) == null) {
            return;
        }
        notePage.getProviderHolder().getNoteResourceProvider().saveResourceModel(fromShapeResource);
    }
}
