package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.ExcerptCollectionProvider;
import com.onyx.android.sdk.replicator.note.p035db.FontProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.PBUserRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.PBUserRecordModel;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.proto.CoverProto;
import com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto;
import com.onyx.android.sdk.replicator.note.proto.NoteInfoProto;
import com.onyx.android.sdk.replicator.note.proto.TemplateProto;
import com.onyx.android.sdk.replicator.note.proto.UserDataProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.TagPBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.UserDataPBDocument;
import com.onyx.android.sdk.replicator.note.proto.p036pb.NoteModelPBData;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\bv\u0010wJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002JL\u0010\u0015\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\n0\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\rH\u0002J\b\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001f\u001a\u00020\u001eH\u0002J\b\u0010 \u001a\u00020\u0006H\u0002J\u0018\u0010!\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u0006J\u0006\u0010\"\u001a\u00020\bJ\u0018\u0010$\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u0006J\u000e\u0010'\u001a\u00020\b2\u0006\u0010&\u001a\u00020%J\t\u0010(\u001a\u00020\u0006HÆ\u0003J\u0013\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u0006HÆ\u0001J\t\u0010*\u001a\u00020\u0006HÖ\u0001J\t\u0010+\u001a\u00020%HÖ\u0001J\u0013\u0010-\u001a\u00020\u00022\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0011\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0005\u0010.\u001a\u0004\b/\u00100R$\u00108\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R$\u0010?\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0017\u0010A\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0015\u0010.\u001a\u0004\b@\u00100R\u001d\u0010F\u001a\b\u0012\u0004\u0012\u00020B0\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010C\u001a\u0004\bD\u0010ER\u001d\u0010I\u001a\b\u0012\u0004\u0012\u00020G0\r8\u0006¢\u0006\f\n\u0004\b\u0019\u0010C\u001a\u0004\bH\u0010ER\u001d\u0010L\u001a\b\u0012\u0004\u0012\u00020J0\r8\u0006¢\u0006\f\n\u0004\b\u001d\u0010C\u001a\u0004\bK\u0010ER\u001d\u0010O\u001a\b\u0012\u0004\u0012\u00020M0\r8\u0006¢\u0006\f\n\u0004\b\u001b\u0010C\u001a\u0004\bN\u0010ER\u001d\u0010R\u001a\b\u0012\u0004\u0012\u00020P0\r8\u0006¢\u0006\f\n\u0004\b \u0010C\u001a\u0004\bQ\u0010ER\u001d\u0010U\u001a\b\u0012\u0004\u0012\u00020S0\r8\u0006¢\u0006\f\n\u0004\b\u0017\u0010C\u001a\u0004\bT\u0010ER\u001d\u0010W\u001a\b\u0012\u0004\u0012\u00020J0\r8\u0006¢\u0006\f\n\u0004\b\u001f\u0010C\u001a\u0004\bV\u0010ER\u001d\u0010Z\u001a\b\u0012\u0004\u0012\u00020X0\r8\u0006¢\u0006\f\n\u0004\b\t\u0010C\u001a\u0004\bY\u0010ER\u001c\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00140\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010CR\u001b\u0010a\u001a\u00020\u001c8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`R\u001b\u0010d\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bb\u0010^\u001a\u0004\b2\u0010cR\u001b\u0010h\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\be\u0010^\u001a\u0004\bf\u0010gR\u001b\u0010l\u001a\u00020\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bi\u0010^\u001a\u0004\bj\u0010kR\u001b\u0010p\u001a\u00020\u001e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bm\u0010^\u001a\u0004\bn\u0010oR\u001b\u0010u\u001a\u00020q8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\br\u0010^\u001a\u0004\bs\u0010t¨\u0006x"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;", "", "", "c", "Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;", "a", "", "messagePrefix", "", "l", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "argsList", "", "e", "Lcom/onyx/android/sdk/replicator/note/proto/doc/UserDataPBDocument;", "userDataPBDocument", Constant.TAG_USER_ID, "revisionIdList", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;", "d", "Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;", "j", "Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;", C4921e.f26537n, "i", "parseDataFromPB", "savePBUserRecord", "userPBDocument", "saveDataToPB", "", "status", "saveUserPBRecord", "component1", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getUserId", "()Ljava/lang/String;", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;", "b", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;", "getExportNoteListArgs", "()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;", "setExportNoteListArgs", "(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;)V", "exportNoteListArgs", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "getCopyNoteListArgs", "()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "setCopyNoteListArgs", "(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;)V", "copyNoteListArgs", "getRevisionId", CouchFieldKey.KEY_REVISION_ID, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Ljava/util/List;", "getTemplateList", "()Ljava/util/List;", "templateList", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "getCoverList", "coverList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "getDocTagList", "docTagList", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "getPageTagList", "pageTagList", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "getExcerptCollectionList", "excerptCollectionList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteFolderList", "noteFolderList", "getTagList", "tagList", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "getFontList", "fontList", "m", "pbDocRecordModelList", GoogleApiAvailabilityLight.f29016b, "Lkotlin/Lazy;", "getNoteProvider", "()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", C4921e.f26528e, "()Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;", "pbUserRecordProvider", "p", "getTemplateProvider", "()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;", "templateProvider", "q", "getCoverProvider", "()Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;", "coverProvider", "r", "getExcerptCollectionProvider", "()Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;", "excerptCollectionProvider", "Lcom/onyx/android/sdk/replicator/note/db/FontProvider;", "s", "getFontProvider", "()Lcom/onyx/android/sdk/replicator/note/db/FontProvider;", "fontProvider", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUserPBDataContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserPBDataContext.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1864#2,3:209\n*S KotlinDebug\n*F\n+ 1 UserPBDataContext.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext\n*L\n95#1:209,3\n*E\n"})
/* loaded from: classes8.dex */
public final /* data */ class UserPBDataContext {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String userId;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public ExportNoteListArgs exportNoteListArgs;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public CopyNoteListArgs copyNoteListArgs;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final String revisionId;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<TemplateModel> templateList;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<CoverModel> coverList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<SyncTagModel> docTagList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<PageTagModel> pageTagList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptCollectionModel> excerptCollectionList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteFolderList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<SyncTagModel> tagList;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final List<FontModel> fontList;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public List<PBUserRecordModel> pbDocRecordModelList;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteProvider;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Lazy pbUserRecordProvider;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Lazy templateProvider;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Lazy coverProvider;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Lazy excerptCollectionProvider;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy fontProvider;

    /* JADX WARN: Multi-variable type inference failed */
    public UserPBDataContext() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ UserPBDataContext copy$default(UserPBDataContext userPBDataContext, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = userPBDataContext.userId;
        }
        return userPBDataContext.copy(str);
    }

    public static /* synthetic */ void parseDataFromPB$default(UserPBDataContext userPBDataContext, UserDataPBDocument userDataPBDocument, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = userPBDataContext.userId;
        }
        userPBDataContext.parseDataFromPB(userDataPBDocument, str);
    }

    public static /* synthetic */ void saveDataToPB$default(UserPBDataContext userPBDataContext, UserDataPBDocument userDataPBDocument, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = userPBDataContext.userId;
        }
        userPBDataContext.saveDataToPB(userDataPBDocument, str);
    }

    /* renamed from: a */
    public final UserDataProto.DataCollection m35498a() {
        UserDataProto.DataCollection.Builder newBuilder = UserDataProto.DataCollection.newBuilder();
        UserDataPBDocument.Companion companion = UserDataPBDocument.INSTANCE;
        UserDataProto.DataCollection.Builder coverList = newBuilder.setTemplateList(companion.toTemplateProtoList(this.templateList)).setCoverList(companion.toCoverProtoList(this.coverList));
        TagPBDocument.Companion companion2 = TagPBDocument.INSTANCE;
        UserDataProto.DataCollection build = coverList.setDocTagList(companion2.toProtoList(this.docTagList)).setPageTagList(companion.toPageTagProtoList(this.pageTagList)).setExcerptCollectionList(companion.toExcerptCollectionProtoList(this.excerptCollectionList)).setNoteInfoList(NoteModelPBData.INSTANCE.toProtoList(this.noteFolderList)).setTagList(companion2.toProtoList(this.tagList)).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    /* renamed from: b */
    public final PBUserRecordProvider m35499b() {
        return (PBUserRecordProvider) this.pbUserRecordProvider.getValue();
    }

    /* renamed from: c */
    public final boolean m35500c() {
        return this.templateList.isEmpty() && this.coverList.isEmpty() && this.docTagList.isEmpty() && this.pageTagList.isEmpty() && this.excerptCollectionList.isEmpty() && this.fontList.isEmpty() && this.noteFolderList.isEmpty() && this.tagList.isEmpty();
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    public final UserPBDataContext copy(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new UserPBDataContext(userId);
    }

    /* renamed from: d */
    public final Pair<List<UserDataProto.DataCollection>, List<PBUserRecordModel>> m35501d(UserDataPBDocument userDataPBDocument, String userId, List<PBDocumentArgs> argsList, List<String> revisionIdList) {
        PBUserRecordModel pBUserRecordModel;
        ArrayList arrayList = new ArrayList();
        Map<String, PBUserRecordModel> loadRecordModelMap = m35499b().loadRecordModelMap(CollectionsKt.toList(revisionIdList));
        ArrayList arrayList2 = new ArrayList();
        for (PBDocumentArgs pBDocumentArgs : argsList) {
            String revisionId = pBDocumentArgs.getRevisionId();
            if (revisionId != null && ((pBUserRecordModel = loadRecordModelMap.get(revisionId)) == null || !pBUserRecordModel.isSynced())) {
                pBDocumentArgs.setUserId(userId);
                UserDataProto.DataCollection data = userDataPBDocument.setArgs(pBDocumentArgs).load().getData();
                if (data != null) {
                    arrayList.add(data);
                    PBUserRecordModel pBUserRecordModel2 = new PBUserRecordModel();
                    pBUserRecordModel2.setUniqueId(revisionId);
                    pBUserRecordModel2.setStatus(1);
                    arrayList2.add(pBUserRecordModel2);
                }
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    /* renamed from: e */
    public final List<String> m35502e(List<PBDocumentArgs> argsList) {
        ArrayList arrayList = new ArrayList();
        if (argsList.isEmpty()) {
            return arrayList;
        }
        Iterator<PBDocumentArgs> it2 = argsList.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, it2.next().getRevisionId());
        }
        return arrayList;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UserPBDataContext) && Intrinsics.areEqual(this.userId, ((UserPBDataContext) other).userId);
    }

    /* renamed from: f */
    public final CoverProvider m35503f() {
        return KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(this.userId));
    }

    /* renamed from: g */
    public final NoteProvider m35504g() {
        return KSyncBundle.INSTANCE.getDbProviderBundle().getNoteProvider(ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(this.userId));
    }

    @Nullable
    public final CopyNoteListArgs getCopyNoteListArgs() {
        return this.copyNoteListArgs;
    }

    @NotNull
    public final List<CoverModel> getCoverList() {
        return this.coverList;
    }

    @NotNull
    public final CoverProvider getCoverProvider() {
        return (CoverProvider) this.coverProvider.getValue();
    }

    @NotNull
    public final List<SyncTagModel> getDocTagList() {
        return this.docTagList;
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        return this.excerptCollectionList;
    }

    @NotNull
    public final ExcerptCollectionProvider getExcerptCollectionProvider() {
        return (ExcerptCollectionProvider) this.excerptCollectionProvider.getValue();
    }

    @Nullable
    public final ExportNoteListArgs getExportNoteListArgs() {
        return this.exportNoteListArgs;
    }

    @NotNull
    public final List<FontModel> getFontList() {
        return this.fontList;
    }

    @NotNull
    public final FontProvider getFontProvider() {
        return (FontProvider) this.fontProvider.getValue();
    }

    @NotNull
    public final List<SyncNoteModel> getNoteFolderList() {
        return this.noteFolderList;
    }

    @NotNull
    public final NoteProvider getNoteProvider() {
        return (NoteProvider) this.noteProvider.getValue();
    }

    @NotNull
    public final List<PageTagModel> getPageTagList() {
        return this.pageTagList;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    @NotNull
    public final List<SyncTagModel> getTagList() {
        return this.tagList;
    }

    @NotNull
    public final List<TemplateModel> getTemplateList() {
        return this.templateList;
    }

    @NotNull
    public final TemplateProvider getTemplateProvider() {
        return (TemplateProvider) this.templateProvider.getValue();
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    /* renamed from: h */
    public final PBUserRecordProvider m35505h() {
        return KSyncBundle.INSTANCE.getDbProviderBundle().getPBUserRecordProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(this.userId));
    }

    public int hashCode() {
        return this.userId.hashCode();
    }

    /* renamed from: i */
    public final String m35506i() {
        return UUIDUtils.INSTANCE.timeBasedEpochUUID();
    }

    /* renamed from: j */
    public final TemplateProvider m35507j() {
        return KSyncBundle.INSTANCE.getDbProviderBundle().getTemplateProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(this.userId));
    }

    /* renamed from: k */
    public final ExcerptCollectionProvider m35508k() {
        return KSyncBundle.INSTANCE.getDbProviderBundle().getExcerptCollectionProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(this.userId));
    }

    /* renamed from: l */
    public final void m35509l(String messagePrefix) {
        Debug.INSTANCE.m32052i(UserPBDataContext.class, messagePrefix + "template count: " + this.templateList.size() + ", cover count: " + this.coverList.size() + ", doc tag count: " + this.docTagList.size() + ", page tag count: " + this.pageTagList.size() + ", font count: " + this.fontList.size() + ", excerpt collection count: " + this.excerptCollectionList.size() + ',', new Object[0]);
    }

    public final void parseDataFromPB(@NotNull UserDataPBDocument userDataPBDocument, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(userDataPBDocument, "userDataPBDocument");
        Intrinsics.checkNotNullParameter(userId, "userId");
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(userDataPBDocument.getPBFileDirPath(userId));
        Pair<List<UserDataProto.DataCollection>, List<PBUserRecordModel>> m35501d = m35501d(userDataPBDocument, userId, loadDocPBArgsList, m35502e(loadDocPBArgsList));
        int i = 0;
        for (Object obj : m35501d.getFirst()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            UserDataProto.DataCollection dataCollection = (UserDataProto.DataCollection) obj;
            String uniqueId = m35501d.getSecond().get(i).getUniqueId();
            List<TemplateModel> list = this.templateList;
            UserDataPBDocument.Companion companion = UserDataPBDocument.INSTANCE;
            TemplateProto.TemplateList templateList = dataCollection.getTemplateList();
            Intrinsics.checkNotNullExpressionValue(templateList, "getTemplateList(...)");
            CollectionKt.safeAddAll(list, companion.fromTemplateProtoList(templateList, uniqueId));
            List<CoverModel> list2 = this.coverList;
            CoverProto.CoverList coverList = dataCollection.getCoverList();
            Intrinsics.checkNotNullExpressionValue(coverList, "getCoverList(...)");
            CollectionKt.safeAddAll(list2, companion.fromCoverProtoList(coverList, uniqueId));
            List<SyncTagModel> list3 = this.docTagList;
            TagPBDocument.Companion companion2 = TagPBDocument.INSTANCE;
            CollectionKt.safeAddAll(list3, companion2.fromProtoList(dataCollection.getDocTagList(), uniqueId));
            CollectionKt.safeAddAll(this.pageTagList, companion.fromPageTagProtoList(dataCollection.getPageTagList(), uniqueId));
            List<ExcerptCollectionModel> list4 = this.excerptCollectionList;
            ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList = dataCollection.getExcerptCollectionList();
            Intrinsics.checkNotNullExpressionValue(excerptCollectionList, "getExcerptCollectionList(...)");
            CollectionKt.safeAddAll(list4, companion.fromExcerptCollectionProtoList(excerptCollectionList, uniqueId));
            List<SyncNoteModel> list5 = this.noteFolderList;
            NoteModelPBData.Companion companion3 = NoteModelPBData.INSTANCE;
            NoteInfoProto.NoteInfoList noteInfoList = dataCollection.getNoteInfoList();
            Intrinsics.checkNotNullExpressionValue(noteInfoList, "getNoteInfoList(...)");
            CollectionKt.safeAddAll(list5, companion3.fromProtoList(noteInfoList));
            CollectionKt.safeAddAll(this.tagList, TagPBDocument.Companion.fromProtoList$default(companion2, dataCollection.getTagList(), null, 1, null));
            i = i2;
        }
        m35509l("parse pb file: ");
        this.pbDocRecordModelList = CollectionsKt.toMutableList((Collection) m35501d.getSecond());
    }

    public final void saveDataToPB(@NotNull UserDataPBDocument userPBDocument, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(userPBDocument, "userPBDocument");
        Intrinsics.checkNotNullParameter(userId, "userId");
        if (m35500c()) {
            return;
        }
        userPBDocument.setArgs(new PBDocumentArgs().setUserId(userId).setRevisionId(this.revisionId)).setData(m35498a()).save();
        m35509l("save data tp pb file: ");
    }

    public final void savePBUserRecord() {
        m35499b().saveRecordList(this.pbDocRecordModelList);
        this.pbDocRecordModelList.clear();
    }

    public final void saveUserPBRecord(int status) {
        PBUserRecordModel pBUserRecordModel = new PBUserRecordModel();
        pBUserRecordModel.setUniqueId(this.revisionId);
        pBUserRecordModel.setStatus(status);
        PBUserRecordProvider m35499b = m35499b();
        List<PBUserRecordModel> singletonList = Collections.singletonList(pBUserRecordModel);
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        m35499b.saveRecordList(singletonList);
    }

    public final void setCopyNoteListArgs(@Nullable CopyNoteListArgs copyNoteListArgs) {
        this.copyNoteListArgs = copyNoteListArgs;
    }

    public final void setExportNoteListArgs(@Nullable ExportNoteListArgs exportNoteListArgs) {
        this.exportNoteListArgs = exportNoteListArgs;
    }

    @NotNull
    public String toString() {
        return "UserPBDataContext(userId=" + this.userId + ')';
    }

    public UserPBDataContext(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        this.revisionId = m35506i();
        this.templateList = new ArrayList();
        this.coverList = new ArrayList();
        this.docTagList = new ArrayList();
        this.pageTagList = new ArrayList();
        this.excerptCollectionList = new ArrayList();
        this.noteFolderList = new ArrayList();
        this.tagList = new ArrayList();
        this.fontList = new ArrayList();
        this.pbDocRecordModelList = new ArrayList();
        this.noteProvider = LazyKt.lazy(new Function0<NoteProvider>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.UserPBDataContext$noteProvider$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteProvider invoke() {
                NoteProvider m35504g;
                m35504g = UserPBDataContext.this.m35504g();
                return m35504g;
            }
        });
        this.pbUserRecordProvider = LazyKt.lazy(new Function0<PBUserRecordProvider>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.UserPBDataContext$pbUserRecordProvider$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PBUserRecordProvider invoke() {
                PBUserRecordProvider m35505h;
                m35505h = UserPBDataContext.this.m35505h();
                return m35505h;
            }
        });
        this.templateProvider = LazyKt.lazy(new Function0<TemplateProvider>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.UserPBDataContext$templateProvider$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TemplateProvider invoke() {
                TemplateProvider m35507j;
                m35507j = UserPBDataContext.this.m35507j();
                return m35507j;
            }
        });
        this.coverProvider = LazyKt.lazy(new Function0<CoverProvider>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.UserPBDataContext$coverProvider$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CoverProvider invoke() {
                CoverProvider m35503f;
                m35503f = UserPBDataContext.this.m35503f();
                return m35503f;
            }
        });
        this.excerptCollectionProvider = LazyKt.lazy(new Function0<ExcerptCollectionProvider>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.UserPBDataContext$excerptCollectionProvider$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExcerptCollectionProvider invoke() {
                ExcerptCollectionProvider m35508k;
                m35508k = UserPBDataContext.this.m35508k();
                return m35508k;
            }
        });
        this.fontProvider = LazyKt.lazy(new Function0<FontProvider>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.UserPBDataContext$fontProvider$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FontProvider invoke() {
                return KSyncBundle.INSTANCE.getAppFontProvider();
            }
        });
    }

    public /* synthetic */ UserPBDataContext(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? AccountDataBundle.INSTANCE.getSyncUserId() : str);
    }
}
