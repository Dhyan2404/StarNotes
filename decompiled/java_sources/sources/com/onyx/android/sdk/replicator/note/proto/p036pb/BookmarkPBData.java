package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.replicator.note.proto.BookmarkProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.BookmarkPBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\"\u001a\u00020\u001c¢\u0006\u0004\b#\u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016JD\u0010\u0012\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\t0\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\rH\u0002J.\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\t2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rH\u0002J,\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00100\t2\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0018\u001a\u00020\rH\u0002J\b\u0010\u001b\u001a\u00020\rH\u0002R\"\u0010\"\u001a\u00020\u001c8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/BookmarkPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToNote", "exportToDBFromPB", "copyPBDataToDB", "exportToPBFromDB", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "argsList", "", "", "revisionIdList", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;", "b", CouchFieldKey.KEY_REVISION_ID, "d", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument;", "pbDocument", "modelList", "documentId", "e", "a", "c", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBookmarkPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookmarkPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/BookmarkPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n1855#2,2:173\n*S KotlinDebug\n*F\n+ 1 BookmarkPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/BookmarkPBData\n*L\n116#1:173,2\n*E\n"})
/* loaded from: classes8.dex */
public final class BookmarkPBData extends BasePBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type;

    public BookmarkPBData() {
        this(0, 1, null);
    }

    /* renamed from: a */
    public final List<VirtualBookmarkModel> m35436a(BookmarkPBDocument pbDocument, List<PBDocumentArgs> argsList, String documentId) {
        List<VirtualBookmarkModel> list;
        List<VirtualBookmarkModel> fromProtoList;
        List<VirtualBookmarkModel> list2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (argsList.isEmpty()) {
            list2 = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
            return list2;
        }
        for (PBDocumentArgs pBDocumentArgs : argsList) {
            String revisionId = pBDocumentArgs.getRevisionId();
            if (revisionId != null) {
                pBDocumentArgs.setDocumentId(documentId);
                BookmarkProto.BookmarkList data = pbDocument.setArgs(pBDocumentArgs).load().getData();
                if (data != null && (fromProtoList = BookmarkPBDocument.INSTANCE.fromProtoList(data, revisionId)) != null) {
                    for (VirtualBookmarkModel virtualBookmarkModel : fromProtoList) {
                        if (virtualBookmarkModel.getStatus() == 0) {
                            linkedHashMap.put(virtualBookmarkModel.getUniqueId(), virtualBookmarkModel);
                        } else {
                            linkedHashMap.remove(virtualBookmarkModel.getUniqueId());
                        }
                    }
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
        return list;
    }

    /* renamed from: b */
    public final Pair<List<VirtualBookmarkModel>, List<PBDocRecordModel>> m35437b(PBDataContext pbDataContext, List<PBDocumentArgs> argsList, List<String> revisionIdList) {
        List<String> list;
        PBDocRecordModel pBDocRecordModel;
        List<VirtualBookmarkModel> fromProtoList;
        BookmarkPBDocument bookmarkPBDocument = new BookmarkPBDocument();
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
                BookmarkProto.BookmarkList data = bookmarkPBDocument.setArgs(pBDocumentArgs).load().getData();
                if (data != null && (fromProtoList = BookmarkPBDocument.INSTANCE.fromProtoList(data, revisionId)) != null) {
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
    public final String m35438c() {
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
        BookmarkPBDocument bookmarkPBDocument = new BookmarkPBDocument();
        bookmarkPBDocument.setPbDirPath(copyNoteArgs.getSrcDirFilePath());
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(bookmarkPBDocument.getPBFileDirPath(copyNoteArgs.getSrcDocId()));
        if (loadDocPBArgsList.isEmpty()) {
            return;
        }
        String m35438c = m35438c();
        List<VirtualBookmarkModel> m35436a = m35436a(bookmarkPBDocument, loadDocPBArgsList, copyNoteArgs.getSrcDocId());
        for (VirtualBookmarkModel virtualBookmarkModel : m35436a) {
            String pageUniqueId = virtualBookmarkModel.getPageUniqueId();
            String str = copyNoteArgs.getPageIdCopyMap().get(pageUniqueId);
            if (str == null || str.length() == 0) {
                Debug.INSTANCE.m32044e(BookmarkPBData.class, "src = " + pageUniqueId + ", dst is empty, copy fail", new Object[0]);
            } else {
                virtualBookmarkModel.setUniqueId(UUIDUtils.INSTANCE.rawUUID());
                virtualBookmarkModel.setPageUniqueId(str);
                if (virtualBookmarkModel.getUniqueId().length() == 0) {
                    Debug.INSTANCE.m32059w(BookmarkPBData.class, "model " + virtualBookmarkModel + " id is empty, should not happened", new Object[0]);
                }
            }
        }
        bookmarkPBDocument.setPbDirPath(copyNoteArgs.getDstDirFilePath());
        m35440e(bookmarkPBDocument, m35436a, copyNoteArgs.getDstDocId(), m35438c);
        pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualBookmarkList(m35436a);
    }

    /* renamed from: d */
    public final void m35439d(PBDataContext pbDataContext, String revisionId) {
        String documentId = pbDataContext.getDocumentId();
        PBDocRecordModel pBDocRecordModel = new PBDocRecordModel();
        pBDocRecordModel.setUniqueId(revisionId);
        pBDocRecordModel.setDocumentId(documentId);
        pBDocRecordModel.setStatus(2);
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordModel(pBDocRecordModel);
    }

    /* renamed from: e */
    public final void m35440e(BookmarkPBDocument pbDocument, List<VirtualBookmarkModel> modelList, String documentId, String revisionId) {
        pbDocument.setArgs(new PBDocumentArgs().setDocumentId(documentId).setRevisionId(revisionId)).setData(BookmarkPBDocument.INSTANCE.toProtoList(modelList)).save();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToDBFromPB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(new BookmarkPBDocument().getPBFileDirPath(documentId));
        if (loadDocPBArgsList.isEmpty()) {
            return;
        }
        Pair<List<VirtualBookmarkModel>, List<PBDocRecordModel>> m35437b = m35437b(pbDataContext, loadDocPBArgsList, loadRevisions(loadDocPBArgsList));
        pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualBookmarkList(m35437b.getFirst());
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordList(m35437b.getSecond());
        Debug.INSTANCE.m32052i(BookmarkPBData.class, "documentId = " + documentId + ", exportToDBFromPB count: " + m35437b.getFirst().size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        super.exportToNote(pbDataContext);
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        List<VirtualBookmarkModel> loadEnabledVirtualBookmarkModelList = pbDataContext.getNoteProviderHolder().getVirtualModelProvider().loadEnabledVirtualBookmarkModelList();
        if (loadEnabledVirtualBookmarkModelList.isEmpty()) {
            return;
        }
        BookmarkPBDocument bookmarkPBDocument = new BookmarkPBDocument();
        bookmarkPBDocument.setPbDirPath(exportNoteArgs.getExportDirPath());
        m35440e(bookmarkPBDocument, loadEnabledVirtualBookmarkModelList, pbDataContext.getDocumentId(), m35438c());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        super.exportToPBFromDB(pbDataContext);
        String documentId = pbDataContext.getDocumentId();
        List<VirtualBookmarkModel> loadEmptyRevisionIdBookmarkModelList = pbDataContext.getNoteProviderHolder().getVirtualModelProvider().loadEmptyRevisionIdBookmarkModelList();
        if (loadEmptyRevisionIdBookmarkModelList.isEmpty()) {
            return;
        }
        String m35438c = m35438c();
        Iterator<T> it2 = loadEmptyRevisionIdBookmarkModelList.iterator();
        while (it2.hasNext()) {
            ((VirtualBookmarkModel) it2.next()).setRevisionId(m35438c);
        }
        m35440e(new BookmarkPBDocument(), loadEmptyRevisionIdBookmarkModelList, documentId, m35438c);
        m35439d(pbDataContext, m35438c);
        pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualBookmarkList(loadEmptyRevisionIdBookmarkModelList);
        Debug.INSTANCE.m32052i(BookmarkPBData.class, "documentId = " + documentId + ", save excerpt to pb count: " + loadEmptyRevisionIdBookmarkModelList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void setType(int i) {
        this.type = i;
    }

    public BookmarkPBData(int i) {
        this.type = i;
    }

    public /* synthetic */ BookmarkPBData(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 18 : i);
    }
}
