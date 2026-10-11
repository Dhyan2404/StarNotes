package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J,\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n0\u000eH\u0002R\"\u0010\u0018\u001a\u00020\u00128\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;", "pbDataContext", "", "collectDataToPBFromDB", "saveDataToDB", "collectDataExportToFile", "copyPBToDB", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "a", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "exportNoteArgs", "", "", "docTagMap", "b", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocTagPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1855#2,2:113\n1855#2,2:115\n1855#2,2:117\n1855#2,2:119\n1855#2,2:121\n1855#2:123\n1855#2,2:124\n1855#2,2:126\n1856#2:128\n*S KotlinDebug\n*F\n+ 1 DocTagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData\n*L\n29#1:113,2\n51#1:115,2\n67#1:117,2\n74#1:119,2\n82#1:121,2\n86#1:123\n93#1:124,2\n97#1:126,2\n86#1:128\n*E\n"})
/* loaded from: classes8.dex */
public final class DocTagPBData extends BaseUserPBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 14;

    /* renamed from: a */
    public final List<SyncTagModel> m35442a(UserPBDataContext pbDataContext) {
        NoteProvider noteProvider = pbDataContext.getNoteProvider();
        CBQueryArgs createTagQueryArgs = NoteTagProviderKt.createTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return NoteTagProviderKt.loadTagList(noteProvider, createTagQueryArgs.andWith(couchUtils.equalExpression("type", 2)).andWith(couchUtils.nullOrEqualExpression(CouchFieldKey.KEY_REVISION_ID, "")));
    }

    /* renamed from: b */
    public final void m35443b(UserPBDataContext pbDataContext, ExportNoteArgs exportNoteArgs, Map<String, SyncTagModel> docTagMap) {
        SyncNoteModel loadNote = NoteModelProviderKt.loadNote(pbDataContext.getNoteProvider(), exportNoteArgs.getDocumentId());
        if (loadNote == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAddAll(arrayList, loadNote.getTagIdList());
        NoteProvider noteProvider = pbDataContext.getNoteProvider();
        String documentId = exportNoteArgs.getDocumentId();
        List<String> pageIdList = exportNoteArgs.getPageIdList();
        if (pageIdList == null) {
            pageIdList = CollectionsKt__CollectionsKt.emptyList();
        }
        Iterator<T> it2 = NotePageTagProviderKt.loadPageTagList(noteProvider, documentId, pageIdList).iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageTagModel) it2.next()).getTagId());
        }
        if (CollectionKt.isNullOrEmpty(arrayList)) {
            return;
        }
        for (SyncTagModel syncTagModel : NoteTagProviderKt.loadTagById(pbDataContext.getNoteProvider(), arrayList)) {
            docTagMap.put(syncTagModel.getUniqueId(), syncTagModel);
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataExportToFile(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteListArgs exportNoteListArgs = pbDataContext.getExportNoteListArgs();
        if (exportNoteListArgs == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it2 = exportNoteListArgs.getExportNoteArgsList().iterator();
        while (it2.hasNext()) {
            m35443b(pbDataContext, (ExportNoteArgs) it2.next(), linkedHashMap);
        }
        if (linkedHashMap.isEmpty()) {
            return;
        }
        CollectionKt.safeAddAll(pbDataContext.getDocTagList(), linkedHashMap.values());
        Debug.INSTANCE.m32052i(DocTagPBData.class, "userId = " + pbDataContext.getUserId() + ", exportToNote count: " + linkedHashMap.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataToPBFromDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String userId = pbDataContext.getUserId();
        List<SyncTagModel> m35442a = m35442a(pbDataContext);
        if (m35442a.isEmpty()) {
            return;
        }
        Iterator<T> it2 = m35442a.iterator();
        while (it2.hasNext()) {
            ((SyncTagModel) it2.next()).setRevisionId(pbDataContext.getRevisionId());
        }
        CollectionKt.safeAddAll(pbDataContext.getDocTagList(), m35442a);
        Debug.INSTANCE.m32052i(DocTagPBData.class, "userId = " + userId + ", save template model to pb count: " + m35442a.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void copyPBToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs == null) {
            return;
        }
        for (SyncTagModel syncTagModel : pbDataContext.getDocTagList()) {
            copyNoteListArgs.getExportTagMap().put(syncTagModel.getUniqueId(), syncTagModel);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = copyNoteListArgs.getArgsList().iterator();
        while (it2.hasNext()) {
            SyncNoteModel loadNote = NoteModelProviderKt.loadNote(pbDataContext.getNoteProvider(), ((CopyNoteArgs) it2.next()).getDstDocId());
            if (loadNote != null && !CollectionKt.isNullOrEmpty(loadNote.getTagIdList())) {
                List<SyncTagModel> loadTagById = NoteTagProviderKt.loadTagById(pbDataContext.getNoteProvider(), loadNote.getTagIdList());
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (SyncTagModel syncTagModel2 : loadTagById) {
                    linkedHashMap.put(syncTagModel2.getUniqueId(), syncTagModel2);
                }
                ArrayList arrayList2 = new ArrayList();
                for (String str : loadNote.getTagIdList()) {
                    SyncTagModel syncTagModel3 = copyNoteListArgs.getExportTagMap().get(str);
                    SyncTagModel syncTagModel4 = (SyncTagModel) linkedHashMap.get(str);
                    if (syncTagModel4 != null) {
                        if (Intrinsics.areEqual(syncTagModel3 != null ? syncTagModel3.getContent() : null, syncTagModel4.getContent())) {
                            arrayList2.add(str);
                        }
                    }
                }
                if (arrayList2.size() != loadNote.getTagIdList().size()) {
                    loadNote.setTagIdList(arrayList2);
                    arrayList.add(loadNote);
                }
            }
        }
        NoteModelProviderKt.saveNoteList(pbDataContext.getNoteProvider(), arrayList);
        Debug.INSTANCE.m32052i(DocTagPBData.class, "copyPBDataToDB count: " + arrayList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void saveDataToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        NoteTagProviderKt.saveExportedTagList(pbDataContext.getNoteProvider(), pbDataContext.getDocTagList());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void setType(int i) {
        this.type = i;
    }
}
