package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.ResourceQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.proto.data.ResourceDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocumentUtils;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.sun.org.apache.bcel.internal.Constants;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0002JF\u0010\u0013\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\t0\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\u0018\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\r0\tH\u0002R\"\u0010\u001d\u001a\u00020\u00178\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/ResourcePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToDBFromPB", "exportToPBFromDB", "exportToNote", "copyPBDataToDB", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;", "argsList", "", "", "c", "revisionIdList", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;", "d", "a", "pbFilePaths", "b", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nResourcePBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourcePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ResourcePBData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,272:1\n1#2:273\n1#2:285\n1855#3:274\n1603#3,9:275\n1855#3:284\n1856#3:286\n1612#3:287\n1856#3:288\n*S KotlinDebug\n*F\n+ 1 ResourcePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ResourcePBData\n*L\n189#1:285\n183#1:274\n189#1:275,9\n189#1:284\n189#1:286\n189#1:287\n183#1:288\n*E\n"})
/* loaded from: classes8.dex */
public final class ResourcePBData extends BasePBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 2;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        r4 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r4);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m35473a(com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext r8) {
        /*
            r7 = this;
            java.lang.String r7 = r8.getDocumentId()
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs r1 = r8.getExportNoteArgs()
            r2 = 0
            if (r1 != 0) goto L11
            return r2
        L11:
            com.onyx.android.sdk.replicator.provider.NoteProviderHolder r3 = r8.getNoteProviderHolder()
            com.onyx.android.sdk.replicator.note.db.NoteProvider r3 = r3.getNoteProvider()
            com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel r3 = com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt.loadNote(r3, r7)
            if (r3 != 0) goto L20
            return r2
        L20:
            java.util.List r4 = r1.getPageIdList()
            if (r4 == 0) goto Lf7
            java.util.Collection r4 = (java.util.Collection) r4
            java.util.List r4 = kotlin.collections.CollectionsKt.toMutableList(r4)
            if (r4 != 0) goto L30
            goto Lf7
        L30:
            r1.addGlobalPageId(r4)
            com.onyx.android.sdk.replicator.note.data.background.NoteBackground r1 = r3.getNoteBackground()
            if (r1 == 0) goto L86
            com.onyx.android.sdk.replicator.note.data.background.NoteBackground r1 = r3.getNoteBackground()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            java.util.Map r1 = r1.getPageBKGroundMap()
            java.util.Set r1 = r1.entrySet()
            java.util.Iterator r1 = r1.iterator()
        L4c:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L72
            java.lang.Object r2 = r1.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r5 = r2.getKey()
            boolean r5 = r4.contains(r5)
            if (r5 == 0) goto L4c
            com.onyx.android.sdk.replicator.note.data.background.BkGroundRes$Companion r5 = com.onyx.android.sdk.replicator.note.data.background.BkGroundRes.INSTANCE
            java.lang.Object r2 = r2.getValue()
            com.onyx.android.sdk.replicator.note.data.background.BkGroundRes r2 = (com.onyx.android.sdk.replicator.note.data.background.BkGroundRes) r2
            java.lang.String r2 = r5.getBKGroundResourceId(r2)
            com.onyx.android.sdk.base.extension.CollectionKt.add(r0, r2)
            goto L4c
        L72:
            com.onyx.android.sdk.replicator.note.data.background.BkGroundRes$Companion r1 = com.onyx.android.sdk.replicator.note.data.background.BkGroundRes.INSTANCE
            com.onyx.android.sdk.replicator.note.data.background.NoteBackground r2 = r3.getNoteBackground()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            com.onyx.android.sdk.replicator.note.data.background.BkGroundRes r2 = r2.getDocBKGround()
            java.lang.String r1 = r1.getBKGroundResourceId(r2)
            com.onyx.android.sdk.base.extension.CollectionKt.add(r0, r1)
        L86:
            com.onyx.android.sdk.replicator.note.data.constant.NoteConstant r1 = com.onyx.android.sdk.replicator.note.data.constant.NoteConstant.INSTANCE
            int r1 = r1.getCOMMON_BATCH_DATA_COUNT()
            java.util.List r1 = com.onyx.android.sdk.base.extension.CollectionKt.split(r4, r1)
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.Iterator r1 = r1.iterator()
        L96:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto Lf2
            java.lang.Object r2 = r1.next()
            java.util.List r2 = (java.util.List) r2
            java.util.Collection r2 = (java.util.Collection) r2
            com.onyx.android.sdk.data.couchbase.CBQueryArgs r2 = com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt.loadPageShapeListWithResourceQuery(r7, r2)
            r3 = 1
            com.couchbase.lite.SelectResult[] r4 = new com.couchbase.lite.SelectResult[r3]
            java.lang.String r5 = "resourceId"
            com.couchbase.lite.SelectResult$As r5 = com.couchbase.lite.SelectResult.property(r5)
            java.lang.String r6 = "property(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            r6 = 0
            r4[r6] = r5
            com.onyx.android.sdk.data.couchbase.CBQueryArgs r2 = r2.setVarargSelectResults(r4)
            com.onyx.android.sdk.data.couchbase.CBQueryArgs r2 = r2.setDistinct(r3)
            com.onyx.android.sdk.replicator.provider.NoteProviderHolder r3 = r8.getNoteProviderHolder()
            com.onyx.android.sdk.replicator.note.db.NoteShapeProvider r3 = r3.getNoteShapeProvider()
            java.util.List r2 = r3.loadShapeList(r2)
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.Iterator r2 = r2.iterator()
        Ld8:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto Lee
            java.lang.Object r4 = r2.next()
            com.onyx.android.sdk.replicator.note.db.model.ShapeModel r4 = (com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel) r4
            java.lang.String r4 = r4.getResourceId()
            if (r4 == 0) goto Ld8
            r3.add(r4)
            goto Ld8
        Lee:
            r0.addAll(r3)
            goto L96
        Lf2:
            java.util.List r7 = kotlin.collections.CollectionsKt.toList(r0)
            return r7
        Lf7:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.p036pb.ResourcePBData.m35473a(com.onyx.android.sdk.replicator.note.proto.pb.PBDataContext):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0009 A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel> m35474b(java.util.List<java.lang.String> r6) {
        /*
            r5 = this;
            java.util.LinkedHashMap r5 = new java.util.LinkedHashMap
            r5.<init>()
            java.util.Iterator r6 = r6.iterator()
        L9:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L6a
            java.lang.Object r0 = r6.next()
            java.lang.String r0 = (java.lang.String) r0
            r1 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L33
            r2.<init>(r0)     // Catch: java.lang.Exception -> L33
            com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$ResourceProtoList r0 = com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoList.parseFrom(r2)     // Catch: java.lang.Throwable -> L27
            kotlin.Unit r3 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L25
            kotlin.io.CloseableKt.closeFinally(r2, r1)     // Catch: java.lang.Exception -> L31
            goto L3c
        L25:
            r1 = move-exception
            goto L2b
        L27:
            r0 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L2b:
            throw r1     // Catch: java.lang.Throwable -> L2c
        L2c:
            r3 = move-exception
            kotlin.io.CloseableKt.closeFinally(r2, r1)     // Catch: java.lang.Exception -> L31
            throw r3     // Catch: java.lang.Exception -> L31
        L31:
            r1 = move-exception
            goto L37
        L33:
            r0 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L37:
            com.onyx.android.sdk.base.utils.Debug r2 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            r2.m32048e(r1)
        L3c:
            if (r0 != 0) goto L3f
            goto L9
        L3f:
            com.onyx.android.sdk.replicator.utils.ResourceModels r1 = com.onyx.android.sdk.replicator.utils.ResourceModels.INSTANCE
            java.util.List r0 = r1.fromResourceProtoList(r0)
            java.util.Iterator r0 = r0.iterator()
        L49:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L9
            java.lang.Object r1 = r0.next()
            com.onyx.android.sdk.replicator.note.db.model.ResourceModel r1 = (com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel) r1
            java.lang.String r2 = r1.getUniqueId()
            if (r2 != 0) goto L5c
            goto L49
        L5c:
            boolean r3 = r1.isRemoved()
            if (r3 == 0) goto L66
            r5.remove(r2)
            goto L49
        L66:
            r5.put(r2, r1)
            goto L49
        L6a:
            java.util.Collection r5 = r5.values()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.List r5 = kotlin.collections.CollectionsKt.toList(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.p036pb.ResourcePBData.m35474b(java.util.List):java.util.List");
    }

    /* renamed from: c */
    public final List<String> m35475c(List<ResourceDocumentArgs> argsList) {
        ArrayList arrayList = new ArrayList();
        Iterator<ResourceDocumentArgs> it2 = argsList.iterator();
        while (it2.hasNext()) {
            ResourceDocumentArgs next = it2.next();
            if ((next != null ? next.getRevisionId() : null) != null) {
                CollectionKt.add(arrayList, next.getRevisionId());
            }
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        ResourcePBDocumentUtils resourcePBDocumentUtils = ResourcePBDocumentUtils.INSTANCE;
        List<ResourceDocumentArgs> docResourceArgsListByPath = resourcePBDocumentUtils.docResourceArgsListByPath(resourcePBDocumentUtils.resourcePbFileDirPath(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId()));
        if (docResourceArgsListByPath.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (ResourceDocumentArgs resourceDocumentArgs : docResourceArgsListByPath) {
            if (resourceDocumentArgs != null) {
                resourceDocumentArgs.setDocumentId(copyNoteArgs.getSrcDocId());
                arrayList.add(ResourcePBDocumentUtils.INSTANCE.resourcePbFilePath(copyNoteArgs.getSrcDirFilePath(), resourceDocumentArgs));
            }
        }
        List<ResourceModel> m35474b = m35474b(arrayList);
        String newRevisionId = ResourcePBDocumentUtils.INSTANCE.newRevisionId();
        for (ResourceModel resourceModel : m35474b) {
            String uniqueId = resourceModel.getUniqueId();
            resourceModel.setDocumentId(copyNoteArgs.getDstDocId());
            resourceModel.setRevisionId(newRevisionId);
            resourceModel.setUniqueId(copyNoteArgs.ensureCopyResourceId(uniqueId));
        }
        new ResourcePBDocument(new ResourceDocumentArgs().setDocDirPath(copyNoteArgs.getDstDirFilePath()).setDocumentId(copyNoteArgs.getDstDocId()).setRevisionId(newRevisionId).setCreateAt(ResourcePBDocumentUtils.INSTANCE.currentTimestamp())).setData(ResourceModels.INSTANCE.toResourceProtoList(m35474b)).save();
        saveDocPBRecord(pbDataContext.getNoteProviderHolder().getPbDocRecordProvider(), copyNoteArgs.getDstDocId(), newRevisionId, 2);
        List<ResourceModel> list = m35474b;
        pbDataContext.getNoteProviderHolder().getNoteResourceProvider().saveResourceList(list);
        Paths paths = Paths.INSTANCE;
        ResourcePaths resourcePaths = ResourcePaths.INSTANCE;
        FileUtils.copyDirectory(paths.asFile(resourcePaths.resourceDataDirPathByDocDir(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId())), paths.asFile(resourcePaths.appResourceDataDir(copyNoteArgs.getDstDocId())));
        Debug.INSTANCE.m32052i(ResourcePBData.class, "documentId = " + copyNoteArgs.getDstDocId() + ", copy resource count: " + CollectionKt.getSize(list), new Object[0]);
    }

    /* renamed from: d */
    public final Pair<List<ResourceModel>, List<PBDocRecordModel>> m35476d(PBDataContext pbDataContext, List<ResourceDocumentArgs> argsList, List<String> revisionIdList) {
        List<String> list;
        String documentId;
        Path appResourceDataDir;
        Path append;
        String obj;
        PBDocRecordModel pBDocRecordModel;
        String documentId2 = pbDataContext.getDocumentId();
        ArrayList<ResourceModel> arrayList = new ArrayList();
        PBDocRecordProvider pbDocRecordProvider = pbDataContext.getNoteProviderHolder().getPbDocRecordProvider();
        list = CollectionsKt___CollectionsKt.toList(revisionIdList);
        Map<String, PBDocRecordModel> loadRecordModelMap = pbDocRecordProvider.loadRecordModelMap(documentId2, list);
        ArrayList arrayList2 = new ArrayList();
        for (ResourceDocumentArgs resourceDocumentArgs : argsList) {
            if (resourceDocumentArgs != null && ((pBDocRecordModel = loadRecordModelMap.get(resourceDocumentArgs.getRevisionId())) == null || !pBDocRecordModel.isSynced())) {
                resourceDocumentArgs.setDocumentId(documentId2);
                arrayList.addAll(ResourceModels.INSTANCE.fromResourceProtoList(new ResourcePBDocument(resourceDocumentArgs).load().getData()));
                PBDocRecordModel pBDocRecordModel2 = new PBDocRecordModel();
                String revisionId = resourceDocumentArgs.getRevisionId();
                if (revisionId == null) {
                    revisionId = "";
                }
                pBDocRecordModel2.setUniqueId(revisionId);
                pBDocRecordModel2.setDocumentId(documentId2);
                pBDocRecordModel2.setStatus(1);
                pBDocRecordModel2.setTimeStamp(resourceDocumentArgs.getCreateAt());
                arrayList2.add(pBDocRecordModel2);
            }
        }
        for (ResourceModel resourceModel : arrayList) {
            if (resourceModel.isRemoved() && (documentId = resourceModel.getDocumentId()) != null && (appResourceDataDir = ResourcePaths.INSTANCE.appResourceDataDir(documentId)) != null && (append = Paths.INSTANCE.append(appResourceDataDir, resourceModel.getRelativePath())) != null && (obj = append.toAbsolutePath().toString()) != null && com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.deleteFileExt(obj)) {
                Debug.INSTANCE.m32052i(ResourcePBData.class, "delete resource file: " + obj, new Object[0]);
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToDBFromPB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        List<ResourceDocumentArgs> docResourceArgsList = ResourcePBDocumentUtils.INSTANCE.docResourceArgsList(documentId);
        if (docResourceArgsList.isEmpty()) {
            return;
        }
        Pair<List<ResourceModel>, List<PBDocRecordModel>> m35476d = m35476d(pbDataContext, docResourceArgsList, m35475c(docResourceArgsList));
        pbDataContext.getNoteProviderHolder().getNoteResourceProvider().saveResourceList(m35476d.getFirst());
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordList(m35476d.getSecond());
        Debug.INSTANCE.m32052i(ResourcePBData.class, "documentId = " + documentId + ", save resource to data base count: " + m35476d.getFirst().size(), new Object[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
    
        r3 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r3);
     */
    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void exportToNote(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext r10) {
        /*
            r9 = this;
            java.lang.String r0 = "pbDataContext"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs r0 = r10.getExportNoteArgs()
            if (r0 != 0) goto Lc
            return
        Lc:
            java.lang.String r1 = r10.getDocumentId()
            com.onyx.android.sdk.base.utils.Benchmark r2 = new com.onyx.android.sdk.base.utils.Benchmark
            r2.<init>()
            java.util.List r3 = r9.m35473a(r10)
            if (r3 == 0) goto Lf3
            java.util.Collection r3 = (java.util.Collection) r3
            java.util.List r3 = kotlin.collections.CollectionsKt.toMutableList(r3)
            if (r3 != 0) goto L25
            goto Lf3
        L25:
            r4 = r3
            java.util.Collection r4 = (java.util.Collection) r4
            java.util.Set r5 = r0.getExportResourceIdSet()
            com.onyx.android.sdk.base.extension.CollectionKt.addIfNotContains(r4, r5)
            com.onyx.android.sdk.replicator.utils.ResourceModels r4 = com.onyx.android.sdk.replicator.utils.ResourceModels.INSTANCE
            com.onyx.android.sdk.replicator.provider.NoteProviderHolder r10 = r10.getNoteProviderHolder()
            com.onyx.android.sdk.replicator.note.db.ResourceProvider r10 = r10.getNoteResourceProvider()
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            java.util.List r3 = kotlin.collections.CollectionsKt.toList(r3)
            java.util.List r10 = r10.loadResourceList(r3)
            java.util.List r10 = r4.filterExportPBResourceModel(r10)
            com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocumentUtils r3 = com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocumentUtils.INSTANCE
            java.lang.String r3 = r3.newRevisionId()
            java.util.Iterator r4 = r10.iterator()
        L51:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L9e
            java.lang.Object r5 = r4.next()
            com.onyx.android.sdk.replicator.note.db.model.ResourceModel r5 = (com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel) r5
            com.onyx.android.sdk.replicator.utils.ResourceModels r6 = com.onyx.android.sdk.replicator.utils.ResourceModels.INSTANCE
            r6.copyFileToDocDir(r5)
            r5.setRevisionId(r3)
            java.lang.String r5 = r5.getPath()
            if (r5 != 0) goto L6c
            goto L51
        L6c:
            java.io.File r6 = new java.io.File
            r6.<init>(r5)
            boolean r6 = r6.exists()
            if (r6 != 0) goto L78
            goto L51
        L78:
            com.onyx.android.sdk.base.extension.Paths r6 = com.onyx.android.sdk.base.extension.Paths.INSTANCE
            com.onyx.android.sdk.data.common.path.ResourcePaths r7 = com.onyx.android.sdk.data.common.path.ResourcePaths.INSTANCE
            java.lang.String r8 = r0.getExportDirPath()
            java.nio.file.Path r7 = r7.resourceDataDirPathByDocDir(r8, r1)
            java.io.File r8 = new java.io.File
            r8.<init>(r5)
            java.lang.String r8 = r8.getName()
            java.nio.file.Path r7 = r6.append(r7, r8)
            java.io.File r6 = r6.asFile(r7)
            java.io.File r7 = new java.io.File
            r7.<init>(r5)
            onyx.org.apache.commons.io.FileUtils.copyFile(r7, r6)
            goto L51
        L9e:
            com.onyx.android.sdk.replicator.utils.ResourceModels r4 = com.onyx.android.sdk.replicator.utils.ResourceModels.INSTANCE
            com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$ResourceProtoList r4 = r4.toResourceProtoList(r10)
            com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocument r5 = new com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocument
            com.onyx.android.sdk.replicator.note.proto.data.ResourceDocumentArgs r6 = new com.onyx.android.sdk.replicator.note.proto.data.ResourceDocumentArgs
            r6.<init>()
            com.onyx.android.sdk.replicator.note.proto.data.ResourceDocumentArgs r6 = r6.setDocumentId(r1)
            com.onyx.android.sdk.replicator.note.proto.data.ResourceDocumentArgs r3 = r6.setRevisionId(r3)
            java.lang.String r0 = r0.getExportDirPath()
            com.onyx.android.sdk.replicator.note.proto.data.ResourceDocumentArgs r0 = r3.setDocDirPath(r0)
            com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocumentUtils r3 = com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocumentUtils.INSTANCE
            long r6 = r3.currentTimestamp()
            com.onyx.android.sdk.replicator.note.proto.data.ResourceDocumentArgs r0 = r0.setCreateAt(r6)
            r5.<init>(r0)
            com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocument r0 = r5.setData(r4)
            r0.save()
            java.lang.String r9 = com.onyx.android.sdk.base.extension.AnyKt.toSimpleNameString(r9)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "documentId = "
            r0.append(r3)
            r0.append(r1)
            java.lang.String r1 = ", resource exportPB count: "
            r0.append(r1)
            int r10 = r10.size()
            r0.append(r10)
            java.lang.String r10 = r0.toString()
            r2.report(r9, r10)
        Lf3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.p036pb.ResourcePBData.exportToNote(com.onyx.android.sdk.replicator.note.proto.pb.PBDataContext):void");
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        List<ResourceModel> filterExportPBResourceModel = ResourceModels.INSTANCE.filterExportPBResourceModel(pbDataContext.getNoteProviderHolder().getNoteResourceProvider().loadResourceList(ResourceQueryArgsExtKt.loadEmptyRevisionResourceListQuery(pbDataContext.getDocumentId())));
        if (filterExportPBResourceModel.isEmpty()) {
            return;
        }
        String newRevisionId = ResourcePBDocumentUtils.INSTANCE.newRevisionId();
        for (ResourceModel resourceModel : filterExportPBResourceModel) {
            ResourceModels.INSTANCE.copyFileToDocDir(resourceModel);
            resourceModel.setRevisionId(newRevisionId);
        }
        new ResourcePBDocument(new ResourceDocumentArgs().setDocumentId(documentId).setRevisionId(newRevisionId).setSaveExportRecord(true).setCreateAt(ResourcePBDocumentUtils.INSTANCE.currentTimestamp())).setData(ResourceModels.INSTANCE.toResourceProtoList(filterExportPBResourceModel)).save();
        pbDataContext.getNoteProviderHolder().getNoteResourceProvider().saveResourceList(filterExportPBResourceModel);
        Debug.INSTANCE.m32052i(ResourcePBData.class, "documentId = " + documentId + ", saveResourceToFile count: " + filterExportPBResourceModel.size(), new Object[0]);
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
