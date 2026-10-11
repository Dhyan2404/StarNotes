package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.replicator.note.proto.TocProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.TocPBDocument;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016JD\u0010\u0012\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\t0\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\rH\u0002J.\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\t2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rH\u0002J,\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00100\t2\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0018\u001a\u00020\rH\u0002J\b\u0010\u001b\u001a\u00020\rH\u0002R\"\u0010\"\u001a\u00020\u001c8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/TocPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToNote", "exportToDBFromPB", "copyPBDataToDB", "exportToPBFromDB", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "argsList", "", "", "revisionIdList", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;", "b", CouchFieldKey.KEY_REVISION_ID, "d", "Lcom/onyx/android/sdk/replicator/note/proto/doc/TocPBDocument;", "pbDocument", "modelList", "documentId", "e", "a", "c", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTocPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TocPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/TocPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,179:1\n1855#2,2:180\n1855#2,2:182\n*S KotlinDebug\n*F\n+ 1 TocPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/TocPBData\n*L\n93#1:180,2\n123#1:182,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TocPBData extends BasePBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 17;

    /* renamed from: a */
    public final List<VirtualTocModel> m35492a(TocPBDocument pbDocument, List<PBDocumentArgs> argsList, String documentId) {
        List<VirtualTocModel> list;
        List<VirtualTocModel> fromProtoList;
        List<VirtualTocModel> list2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (argsList.isEmpty()) {
            list2 = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
            return list2;
        }
        for (PBDocumentArgs pBDocumentArgs : argsList) {
            String revisionId = pBDocumentArgs.getRevisionId();
            if (revisionId != null) {
                pBDocumentArgs.setDocumentId(documentId);
                TocProto.TocList data = pbDocument.setArgs(pBDocumentArgs).load().getData();
                if (data != null && (fromProtoList = TocPBDocument.INSTANCE.fromProtoList(data, revisionId)) != null) {
                    for (VirtualTocModel virtualTocModel : fromProtoList) {
                        if (virtualTocModel.getStatus() == 0) {
                            linkedHashMap.put(virtualTocModel.getUniqueId(), virtualTocModel);
                        } else {
                            linkedHashMap.remove(virtualTocModel.getUniqueId());
                        }
                    }
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
        return list;
    }

    /* renamed from: b */
    public final Pair<List<VirtualTocModel>, List<PBDocRecordModel>> m35493b(PBDataContext pbDataContext, List<PBDocumentArgs> argsList, List<String> revisionIdList) {
        List<String> list;
        PBDocRecordModel pBDocRecordModel;
        List<VirtualTocModel> fromProtoList;
        TocPBDocument tocPBDocument = new TocPBDocument();
        String documentId = pbDataContext.getDocumentId();
        ArrayList arrayList = new ArrayList();
        PBDocRecordProvider pbDocRecordProvider = pbDataContext.getNoteProviderHolder().getPbDocRecordProvider();
        list = CollectionsKt___CollectionsKt.toList(revisionIdList);
        Map<String, PBDocRecordModel> loadRecordModelMap = pbDocRecordProvider.loadRecordModelMap(documentId, list);
        ArrayList arrayList2 = new ArrayList();
        for (PBDocumentArgs pBDocumentArgs : argsList) {
            String revisionId = pBDocumentArgs.getRevisionId();
            if (revisionId != null && ((pBDocRecordModel = loadRecordModelMap.get(revisionId)) == null || !pBDocRecordModel.isSynced())) {
                pBDocumentArgs.setDocumentId(documentId);
                TocProto.TocList data = tocPBDocument.setArgs(pBDocumentArgs).load().getData();
                if (data != null && (fromProtoList = TocPBDocument.INSTANCE.fromProtoList(data, revisionId)) != null) {
                    arrayList.addAll(fromProtoList);
                    PBDocRecordModel pBDocRecordModel2 = new PBDocRecordModel();
                    pBDocRecordModel2.setUniqueId(revisionId);
                    pBDocRecordModel2.setDocumentId(documentId);
                    pBDocRecordModel2.setStatus(1);
                    arrayList2.add(pBDocRecordModel2);
                }
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    /* renamed from: c */
    public final String m35494c() {
        return UUIDUtils.INSTANCE.timeBasedEpochUUID();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        super.copyPBDataToDB(pbDataContext);
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        TocPBDocument tocPBDocument = new TocPBDocument();
        tocPBDocument.setPbDirPath(copyNoteArgs.getSrcDirFilePath());
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(tocPBDocument.getPBFileDirPath(copyNoteArgs.getSrcDocId()));
        if (loadDocPBArgsList.isEmpty()) {
            return;
        }
        String m35494c = m35494c();
        List<VirtualTocModel> m35492a = m35492a(tocPBDocument, loadDocPBArgsList, copyNoteArgs.getSrcDocId());
        HashMap hashMap = new HashMap();
        Iterator<T> it2 = m35492a.iterator();
        while (it2.hasNext()) {
            hashMap.put(((VirtualTocModel) it2.next()).getUniqueId(), UUIDUtils.INSTANCE.rawUUID());
        }
        for (VirtualTocModel virtualTocModel : m35492a) {
            String pageId = virtualTocModel.getPageId();
            String str = copyNoteArgs.getPageIdCopyMap().get(pageId);
            if (str == null || str.length() == 0) {
                Debug.INSTANCE.m32044e(TocPBData.class, "src = " + pageId + ", dst is empty, copy fail", new Object[0]);
            } else {
                String str2 = (String) hashMap.get(virtualTocModel.getUniqueId());
                if (str2 == null) {
                    str2 = "";
                }
                virtualTocModel.setUniqueId(str2);
                String str3 = (String) hashMap.get(virtualTocModel.getParentId());
                virtualTocModel.setParentId(str3 != null ? str3 : "");
                virtualTocModel.setPageId(str);
                if (virtualTocModel.getUniqueId().length() == 0) {
                    Debug.INSTANCE.m32059w(TocPBData.class, "model " + virtualTocModel + " id is empty, should not happened", new Object[0]);
                }
            }
        }
        tocPBDocument.setPbDirPath(copyNoteArgs.getDstDirFilePath());
        m35496e(tocPBDocument, m35492a, copyNoteArgs.getDstDocId(), m35494c);
        pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualTocList(m35492a);
    }

    /* renamed from: d */
    public final void m35495d(PBDataContext pbDataContext, String revisionId) {
        String documentId = pbDataContext.getDocumentId();
        PBDocRecordModel pBDocRecordModel = new PBDocRecordModel();
        pBDocRecordModel.setUniqueId(revisionId);
        pBDocRecordModel.setDocumentId(documentId);
        pBDocRecordModel.setStatus(2);
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordModel(pBDocRecordModel);
    }

    /* renamed from: e */
    public final void m35496e(TocPBDocument pbDocument, List<VirtualTocModel> modelList, String documentId, String revisionId) {
        pbDocument.setArgs(new PBDocumentArgs().setDocumentId(documentId).setRevisionId(revisionId)).setData(TocPBDocument.INSTANCE.toProtoList(modelList)).save();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToDBFromPB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(new TocPBDocument().getPBFileDirPath(documentId));
        if (loadDocPBArgsList.isEmpty()) {
            return;
        }
        Pair<List<VirtualTocModel>, List<PBDocRecordModel>> m35493b = m35493b(pbDataContext, loadDocPBArgsList, loadRevisions(loadDocPBArgsList));
        pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualTocList(m35493b.getFirst());
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordList(m35493b.getSecond());
        Debug.INSTANCE.m32052i(TocPBData.class, "documentId = " + documentId + ", exportToDBFromPB count: " + m35493b.getFirst().size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        super.exportToNote(pbDataContext);
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        List<VirtualTocModel> loadEnabledVirtualTocModelList = pbDataContext.getNoteProviderHolder().getVirtualModelProvider().loadEnabledVirtualTocModelList();
        if (loadEnabledVirtualTocModelList.isEmpty()) {
            return;
        }
        TocPBDocument tocPBDocument = new TocPBDocument();
        tocPBDocument.setPbDirPath(exportNoteArgs.getExportDirPath());
        m35496e(tocPBDocument, loadEnabledVirtualTocModelList, pbDataContext.getDocumentId(), m35494c());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        super.exportToPBFromDB(pbDataContext);
        String documentId = pbDataContext.getDocumentId();
        List<VirtualTocModel> loadEmptyRevisionIdTocModelList = pbDataContext.getNoteProviderHolder().getVirtualModelProvider().loadEmptyRevisionIdTocModelList();
        if (loadEmptyRevisionIdTocModelList.isEmpty()) {
            return;
        }
        String m35494c = m35494c();
        Iterator<T> it2 = loadEmptyRevisionIdTocModelList.iterator();
        while (it2.hasNext()) {
            ((VirtualTocModel) it2.next()).setRevisionId(m35494c);
        }
        m35496e(new TocPBDocument(), loadEmptyRevisionIdTocModelList, documentId, m35494c);
        m35495d(pbDataContext, m35494c);
        pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualTocList(loadEmptyRevisionIdTocModelList);
        Debug.INSTANCE.m32052i(TocPBData.class, "documentId = " + documentId + ", save toc to pb count: " + loadEmptyRevisionIdTocModelList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void setType(int i) {
        this.type = i;
    }
}
