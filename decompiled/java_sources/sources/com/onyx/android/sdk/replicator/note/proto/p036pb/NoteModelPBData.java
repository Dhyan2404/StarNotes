package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.p027db.BaseModel;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.data.info.Association;
import com.onyx.android.sdk.replicator.note.data.info.Encryption;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.data.pen.PenInfo;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.proto.NoteInfoProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.NoteInfoPBDocument;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\"\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002R\"\u0010\u0011\u001a\u00020\u000b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\n\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToNote", "Lcom/onyx/android/sdk/replicator/note/proto/doc/NoteInfoPBDocument;", "infoPBDocument", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "a", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteModelPBData extends BasePBData {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 5;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\u00020\u0004J\f\u0010\b\u001a\u00020\u0007*\u00020\u0003H\u0002J\f\u0010\t\u001a\u00020\u0003*\u00020\u0007H\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;", "toProtoList", "fromProtoList", "Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;", "b", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nNoteModelPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteModelPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x0198, code lost:
        
            r1 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r1);
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel m35462a(com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfo r5) {
            /*
                Method dump skipped, instructions count: 454
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.p036pb.NoteModelPBData.Companion.m35462a(com.onyx.android.sdk.replicator.note.proto.NoteInfoProto$NoteInfo):com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel");
        }

        /* renamed from: b */
        public final NoteInfoProto.NoteInfo m35463b(SyncNoteModel syncNoteModel) {
            NoteInfoProto.NoteInfo.Builder newBuilder = NoteInfoProto.NoteInfo.newBuilder();
            BaseModel.Companion companion = BaseModel.INSTANCE;
            NoteInfoProto.NoteInfo.Builder source = newBuilder.setUniqueId(companion.ensureNotNull(syncNoteModel.getUniqueId())).setCreatedAt(syncNoteModel.getCreatedAt()).setUpdatedAt(syncNoteModel.getUpdatedAt()).setParentUniqueId(companion.ensureNotNull(syncNoteModel.getParentUniqueId())).setSubPageName(companion.ensureNotNull(syncNoteModel.getSubPageName())).setSource(companion.ensureNotNull(syncNoteModel.getSource()));
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            NoteInfoProto.NoteInfo.Builder groupId = source.setExtraAttributes(companion.ensureNotNull(jSONUtils.toJson(syncNoteModel.getExtraInfo()))).setAssociateDate(companion.ensureNotNull(syncNoteModel.getAssociateDate())).setGroupId(companion.ensureNotNull(syncNoteModel.getGroupId()));
            Encryption encryption = syncNoteModel.getEncryption();
            NoteInfoProto.NoteInfo.Builder digest = groupId.setDigest(companion.ensureNotNull(encryption != null ? encryption.getDigest() : null));
            Association association = syncNoteModel.getAssociation();
            NoteInfoProto.NoteInfo.Builder associationId = digest.setAssociationId(companion.ensureNotNull(association != null ? association.getAssociationId() : null));
            PenInfo penInfo = syncNoteModel.getPenInfo();
            NoteInfoProto.NoteInfo.Builder type = associationId.setNotePenInfo(companion.ensureNotNull(jSONUtils.toJson(penInfo != null ? penInfo.getPenData() : null))).setNotePageInfo(companion.ensureNotNull(jSONUtils.toJson(syncNoteModel.getNotePageInfo()))).setNoteBackground(companion.ensureNotNull(jSONUtils.toJson(syncNoteModel.getNoteBackground()))).setPageNameList(companion.ensureNotNull(jSONUtils.toJson(syncNoteModel.getPageNameList()))).setRichTextPageNameList(companion.ensureNotNull(jSONUtils.toJson(syncNoteModel.getRichTextPageNameList()))).setRemovePageList(companion.ensureNotNull(jSONUtils.toJson(syncNoteModel.getRemovePageList()))).setDeviceInfo(companion.ensureNotNull(jSONUtils.toJson(syncNoteModel.getDeviceInfo()))).setThumbnailRes(companion.ensureNotNull(jSONUtils.toJson(syncNoteModel.getThumbnailRes()))).setTitle(companion.ensureNotNull(syncNoteModel.getTitle())).setStatus(syncNoteModel.getStatus()).setNoteSyncStatus(syncNoteModel.getNoteSyncStatus()).setType(syncNoteModel.getType());
            PenInfo penInfo2 = syncNoteModel.getPenInfo();
            NoteInfoProto.NoteInfo.Builder strokeWidth = type.setStrokeWidth(penInfo2 != null ? penInfo2.getStrokeWidth() : 0.0f);
            PenInfo penInfo3 = syncNoteModel.getPenInfo();
            NoteInfoProto.NoteInfo.Builder eraserWidth = strokeWidth.setEraserWidth(penInfo3 != null ? penInfo3.getEraserWidth() : 0.0f);
            PenInfo penInfo4 = syncNoteModel.getPenInfo();
            NoteInfoProto.NoteInfo.Builder strokeColor = eraserWidth.setStrokeColor(penInfo4 != null ? penInfo4.getStrokeColor() : 0);
            PenInfo penInfo5 = syncNoteModel.getPenInfo();
            NoteInfoProto.NoteInfo.Builder activeScene = strokeColor.setCurrentShapeType(penInfo5 != null ? penInfo5.getCurrentShapeType() : 0).setPosition(syncNoteModel.getPosition()).setFavorite(syncNoteModel.getFavorite()).setActiveScene(syncNoteModel.getActiveScene());
            Encryption encryption2 = syncNoteModel.getEncryption();
            NoteInfoProto.NoteInfo.Builder encryptionType = activeScene.setEncryptionType(encryption2 != null ? encryption2.getEncryptionType() : 0);
            Association association2 = syncNoteModel.getAssociation();
            NoteInfoProto.NoteInfo build = encryptionType.setAssociationType(association2 != null ? association2.getAssociationType() : 0).setVersion(syncNoteModel.getVersion()).setCloudNoteSize(syncNoteModel.getNotePointSize()).setUserId(companion.ensureNotNull(syncNoteModel.getUser())).setTagIdList(jSONUtils.toJson(syncNoteModel.getTagIdList())).setStyle(jSONUtils.toJson(syncNoteModel.getStyle())).setOrderIndex(syncNoteModel.getOrderIndex()).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final List<SyncNoteModel> fromProtoList(@NotNull NoteInfoProto.NoteInfoList noteInfoList) {
            Intrinsics.checkNotNullParameter(noteInfoList, "<this>");
            ArrayList arrayList = new ArrayList();
            for (NoteInfoProto.NoteInfo noteInfo : noteInfoList.getProtoList()) {
                Intrinsics.checkNotNull(noteInfo);
                arrayList.add(m35462a(noteInfo));
            }
            return arrayList;
        }

        @NotNull
        public final NoteInfoProto.NoteInfoList toProtoList(@NotNull List<? extends SyncNoteModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ArrayList arrayList = new ArrayList();
            Iterator<? extends SyncNoteModel> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(m35463b(it2.next()));
            }
            NoteInfoProto.NoteInfoList build = NoteInfoProto.NoteInfoList.newBuilder().addAllProto(arrayList).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final void m35461a(PBDataContext pbDataContext, NoteInfoPBDocument infoPBDocument, SyncNoteModel noteModel) {
        if (noteModel == null) {
            Debug.INSTANCE.m32044e(NoteModelPBData.class, "save note to pb null note", new Object[0]);
            return;
        }
        noteModel.setFavorite(0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(noteModel);
        arrayList.addAll(NoteModelProviderKt.loadParentNotes(pbDataContext.getNoteProviderHolder().getNoteProvider(), noteModel));
        NoteInfoProto.NoteInfoList protoList = INSTANCE.toProtoList(arrayList);
        infoPBDocument.setArgs(new PBDocumentArgs().setDocumentId(noteModel.getUniqueId()).setRevisionId(NoteInfoPBDocument.NOTE_INFO_FILE_NAME));
        infoPBDocument.setData(protoList);
        infoPBDocument.save();
        Debug.INSTANCE.m32052i(NoteModelPBData.class, "documentId = " + noteModel.getUniqueId() + ", note model saveToPB count: " + arrayList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        NoteInfoPBDocument noteInfoPBDocument = new NoteInfoPBDocument();
        noteInfoPBDocument.setPbDirPath(exportNoteArgs.getExportDirPath());
        SyncNoteModel loadNote = NoteModelProviderKt.loadNote(pbDataContext.getNoteProviderHolder().getNoteProvider(), pbDataContext.getDocumentId());
        if (loadNote == null) {
            return;
        }
        String title = exportNoteArgs.getTitle();
        if (title == null) {
            title = loadNote.getTitle();
        }
        loadNote.setTitle(title);
        PageNameList pageNameList = new PageNameList();
        pageNameList.addAll(exportNoteArgs.getPageIdList());
        loadNote.setPageNameList(pageNameList);
        loadNote.setEncryption(null);
        m35461a(pbDataContext, noteInfoPBDocument, loadNote);
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
