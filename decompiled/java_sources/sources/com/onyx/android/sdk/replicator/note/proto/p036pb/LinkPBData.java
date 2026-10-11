package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.p035db.LinkQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.proto.LinkDataProto;
import com.onyx.android.sdk.replicator.note.proto.data.LinkDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.LinkDocuments;
import com.onyx.android.sdk.replicator.note.proto.doc.LinkPBDocument;
import com.onyx.android.sdk.replicator.utils.LinkModels;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
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

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002JD\u0010\u0013\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\t0\u00102\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J,\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\rH\u0002R\"\u0010\u001d\u001a\u00020\u00178\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/LinkPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToDBFromPB", "exportToPBFromDB", "exportToNote", "copyPBDataToDB", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;", "argsList", "", "", "b", "revisionIdList", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;", "c", "documentId", "dirFilePath", "a", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLinkPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/LinkPBData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n1#2:186\n1855#3,2:187\n1855#3,2:189\n*S KotlinDebug\n*F\n+ 1 LinkPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/LinkPBData\n*L\n82#1:187,2\n109#1:189,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LinkPBData extends BasePBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 3;

    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.replicator.note.p035db.model.LinkModel> m35458a(java.util.List<com.onyx.android.sdk.replicator.note.proto.data.LinkDocumentArgs> r6, java.lang.String r7, java.lang.String r8) {
        /*
            r5 = this;
            java.util.LinkedHashMap r5 = new java.util.LinkedHashMap
            r5.<init>()
            java.util.Iterator r6 = r6.iterator()
        L9:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L75
            java.lang.Object r0 = r6.next()
            com.onyx.android.sdk.replicator.note.proto.data.LinkDocumentArgs r0 = (com.onyx.android.sdk.replicator.note.proto.data.LinkDocumentArgs) r0
            r0.setDocumentId(r7)
            com.onyx.android.sdk.replicator.note.proto.doc.LinkDocuments r1 = com.onyx.android.sdk.replicator.note.proto.doc.LinkDocuments.INSTANCE
            java.lang.String r0 = r1.linkPbFilePath(r0, r8)
            r1 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L3c
            r2.<init>(r0)     // Catch: java.lang.Exception -> L3c
            com.onyx.android.sdk.replicator.note.proto.LinkDataProto$LinkProtoList r0 = com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoList.parseFrom(r2)     // Catch: java.lang.Throwable -> L30
            kotlin.Unit r3 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L2e
            kotlin.io.CloseableKt.closeFinally(r2, r1)     // Catch: java.lang.Exception -> L3a
            goto L45
        L2e:
            r1 = move-exception
            goto L34
        L30:
            r0 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L34:
            throw r1     // Catch: java.lang.Throwable -> L35
        L35:
            r3 = move-exception
            kotlin.io.CloseableKt.closeFinally(r2, r1)     // Catch: java.lang.Exception -> L3a
            throw r3     // Catch: java.lang.Exception -> L3a
        L3a:
            r1 = move-exception
            goto L40
        L3c:
            r0 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L40:
            com.onyx.android.sdk.base.utils.Debug r2 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            r2.m32048e(r1)
        L45:
            if (r0 == 0) goto L9
            com.onyx.android.sdk.replicator.utils.LinkModels r1 = com.onyx.android.sdk.replicator.utils.LinkModels.INSTANCE
            java.util.List r0 = r1.fromProtoList(r0)
            if (r0 != 0) goto L50
            goto L9
        L50:
            java.util.Iterator r0 = r0.iterator()
        L54:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L9
            java.lang.Object r1 = r0.next()
            com.onyx.android.sdk.replicator.note.db.model.LinkModel r1 = (com.onyx.android.sdk.replicator.note.p035db.model.LinkModel) r1
            java.lang.String r2 = r1.getUniqueId()
            if (r2 != 0) goto L67
            goto L54
        L67:
            boolean r3 = r1.isEnabled()
            if (r3 == 0) goto L71
            r5.put(r2, r1)
            goto L54
        L71:
            r5.remove(r2)
            goto L54
        L75:
            java.util.Collection r5 = r5.values()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.List r5 = kotlin.collections.CollectionsKt.toList(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.p036pb.LinkPBData.m35458a(java.util.List, java.lang.String, java.lang.String):java.util.List");
    }

    /* renamed from: b */
    public final List<String> m35459b(List<LinkDocumentArgs> argsList) {
        ArrayList arrayList = new ArrayList();
        if (argsList.isEmpty()) {
            return arrayList;
        }
        Iterator<LinkDocumentArgs> it2 = argsList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getRevisionId());
        }
        return arrayList;
    }

    /* renamed from: c */
    public final Pair<List<LinkModel>, List<PBDocRecordModel>> m35460c(PBDataContext pbDataContext, List<LinkDocumentArgs> argsList, List<String> revisionIdList) {
        List<String> list;
        String documentId = pbDataContext.getDocumentId();
        ArrayList arrayList = new ArrayList();
        PBDocRecordProvider pbDocRecordProvider = pbDataContext.getNoteProviderHolder().getPbDocRecordProvider();
        list = CollectionsKt___CollectionsKt.toList(revisionIdList);
        Map<String, PBDocRecordModel> loadRecordModelMap = pbDocRecordProvider.loadRecordModelMap(documentId, list);
        ArrayList arrayList2 = new ArrayList();
        for (LinkDocumentArgs linkDocumentArgs : argsList) {
            PBDocRecordModel pBDocRecordModel = loadRecordModelMap.get(linkDocumentArgs.getRevisionId());
            if (pBDocRecordModel == null || !pBDocRecordModel.isSynced()) {
                linkDocumentArgs.setDocumentId(documentId);
                LinkDataProto.LinkProtoList data = new LinkPBDocument(linkDocumentArgs).load().getData();
                if (data != null) {
                    arrayList.addAll(LinkModels.INSTANCE.fromProtoList(data));
                }
                PBDocRecordModel pBDocRecordModel2 = new PBDocRecordModel();
                pBDocRecordModel2.setUniqueId(linkDocumentArgs.getRevisionId());
                pBDocRecordModel2.setDocumentId(documentId);
                pBDocRecordModel2.setStatus(1);
                arrayList2.add(pBDocRecordModel2);
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        LinkDocuments linkDocuments = LinkDocuments.INSTANCE;
        List<LinkDocumentArgs> docLinkArgsListByPath = linkDocuments.docLinkArgsListByPath(linkDocuments.linkPbFileDirPath(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId()));
        if (docLinkArgsListByPath.isEmpty()) {
            return;
        }
        List<LinkModel> m35458a = m35458a(docLinkArgsListByPath, copyNoteArgs.getSrcDocId(), copyNoteArgs.getSrcDirFilePath());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String newRevisionId = linkDocuments.newRevisionId();
        for (LinkModel linkModel : m35458a) {
            String uniqueId = linkModel.getUniqueId();
            if (uniqueId != null) {
                String rawUUID = UUIDUtils.INSTANCE.rawUUID();
                linkedHashMap.put(uniqueId, rawUUID);
                linkModel.setUniqueId(rawUUID);
                linkModel.setRevisionId(newRevisionId);
                linkModel.setUserId(copyNoteArgs.getUserId());
                linkModel.setDocumentId(copyNoteArgs.getDstDocId());
                linkModel.setPageUniqueId(copyNoteArgs.getCopyPageId(linkModel.getPageUniqueId()));
                linkModel.setUserId(copyNoteArgs.getUserId());
            }
        }
        copyNoteArgs.setLinkIdCopyMap(linkedHashMap);
        new LinkPBDocument(new LinkDocumentArgs().setDocDirPath(copyNoteArgs.getDstDirFilePath()).setDocumentId(copyNoteArgs.getDstDocId()).setRevisionId(newRevisionId)).setData(LinkModels.INSTANCE.toProtoList(m35458a)).save();
        saveDocPBRecord(pbDataContext.getNoteProviderHolder().getPbDocRecordProvider(), copyNoteArgs.getDstDocId(), newRevisionId, 2);
        List<LinkModel> list = m35458a;
        pbDataContext.getNoteProviderHolder().getNoteLinkProvider().saveLinkList(list);
        Debug.INSTANCE.m32052i(LinkPBData.class, "documentId = " + copyNoteArgs.getDstDocId() + ", link copyPB count: " + CollectionKt.getSize(list), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToDBFromPB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        List<LinkDocumentArgs> docLinkArgsList = LinkDocuments.INSTANCE.docLinkArgsList(documentId);
        if (docLinkArgsList.isEmpty()) {
            return;
        }
        Pair<List<LinkModel>, List<PBDocRecordModel>> m35460c = m35460c(pbDataContext, docLinkArgsList, m35459b(docLinkArgsList));
        pbDataContext.getNoteProviderHolder().getNoteLinkProvider().saveLinkList(m35460c.getFirst());
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordList(m35460c.getSecond());
        Debug.INSTANCE.m32052i(LinkPBData.class, "documentId = " + documentId + ", save link to data base count: " + m35460c.getFirst().size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        List<String> pageIdList;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null || (pageIdList = exportNoteArgs.getPageIdList()) == null || CollectionKt.isNullOrEmpty(pageIdList)) {
            return;
        }
        List<LinkModel> loadLinkList = pbDataContext.getNoteProviderHolder().getNoteLinkProvider().loadLinkList(LinkQueryArgsExtKt.loadPageLinkListQuery(pbDataContext.getDocumentId(), pageIdList));
        if (loadLinkList.isEmpty()) {
            return;
        }
        String newRevisionId = LinkDocuments.INSTANCE.newRevisionId();
        Iterator<T> it2 = loadLinkList.iterator();
        while (it2.hasNext()) {
            ((LinkModel) it2.next()).setRevisionId(newRevisionId);
        }
        new LinkPBDocument(new LinkDocumentArgs().setDocumentId(pbDataContext.getDocumentId()).setRevisionId(newRevisionId).setDocDirPath(exportNoteArgs.getExportDirPath())).setData(LinkModels.INSTANCE.toProtoList(loadLinkList)).save();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        List<LinkModel> loadLinkList = pbDataContext.getNoteProviderHolder().getNoteLinkProvider().loadLinkList(LinkQueryArgsExtKt.loadEmptyRevisionLinkListQuery(pbDataContext.getDocumentId()));
        if (loadLinkList.isEmpty()) {
            return;
        }
        String newRevisionId = LinkDocuments.INSTANCE.newRevisionId();
        Iterator<T> it2 = loadLinkList.iterator();
        while (it2.hasNext()) {
            ((LinkModel) it2.next()).setRevisionId(newRevisionId);
        }
        new LinkPBDocument(new LinkDocumentArgs().setDocumentId(documentId).setRevisionId(newRevisionId)).setData(LinkModels.INSTANCE.toProtoList(loadLinkList)).save();
        pbDataContext.getNoteProviderHolder().getNoteLinkProvider().saveLinkList(loadLinkList);
        Debug.INSTANCE.m32052i(LinkPBData.class, "documentId = " + documentId + ", link saveDirtyToPB count: " + loadLinkList.size(), new Object[0]);
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
