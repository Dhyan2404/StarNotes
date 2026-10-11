package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.fts.model.FTSPageStateModel;
import com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00132\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0012\u0010\t\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0016J\u0016\u0010\u000b\u001a\u00060\u0002j\u0002`\u00032\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u001e\u0010\u000e\u001a\u00020\u000f2\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStateListProto;", "()V", "getDataFilePath", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "getPBFileDirPath", CouchFieldKey.KEY_UNIQUE_ID, "parseFrom", "input", "Ljava/io/FileInputStream;", "writeTo", "", "data", Constants.ELEMNAME_OUTPUT_STRING, "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class FTSPageStatePBDocument extends BasePBDocument<FTSPageStateProto.FTSPageStateList> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\u0006\u0010\b\u001a\u00020\tJ\u0014\u0010\n\u001a\u00060\u0006j\u0002`\u0007*\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument$Companion;", "", "()V", "fromProtoList", "", "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;", "Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStateListProto;", CouchFieldKey.KEY_REVISION_ID, "", "toProtoList", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nFTSPageStatePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSPageStatePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1855#2,2:73\n1549#2:75\n1620#2,3:76\n*S KotlinDebug\n*F\n+ 1 FTSPageStatePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument$Companion\n*L\n41#1:73,2\n58#1:75\n58#1:76,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<FTSPageStateModel> fromProtoList(@Nullable FTSPageStateProto.FTSPageStateList fTSPageStateList, @NotNull String revisionId) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            List<FTSPageStateProto.FTSPageState> protoList = fTSPageStateList != null ? fTSPageStateList.getProtoList() : null;
            if (protoList == null) {
                protoList = new ArrayList<>();
            }
            List<FTSPageStateProto.FTSPageState> list = protoList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (FTSPageStateProto.FTSPageState fTSPageState : list) {
                FTSPageStateModel fTSPageStateModel = new FTSPageStateModel();
                String uniqueId = fTSPageState.getUniqueId();
                Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
                fTSPageStateModel.setUniqueId(uniqueId);
                fTSPageStateModel.setCreatedAt(fTSPageState.getCreatedAt());
                fTSPageStateModel.setUpdatedAt(fTSPageState.getUpdatedAt());
                String pageId = fTSPageState.getPageId();
                Intrinsics.checkNotNullExpressionValue(pageId, "getPageId(...)");
                fTSPageStateModel.setPageId(pageId);
                String type = fTSPageState.getType();
                Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
                fTSPageStateModel.setType(type);
                String lang = fTSPageState.getLang();
                Intrinsics.checkNotNullExpressionValue(lang, "getLang(...)");
                fTSPageStateModel.setLang(lang);
                fTSPageStateModel.setIndexed(fTSPageState.getIndexed());
                fTSPageStateModel.setRevisionId(revisionId);
                arrayList.add(fTSPageStateModel);
            }
            return arrayList;
        }

        @NotNull
        public final FTSPageStateProto.FTSPageStateList toProtoList(@NotNull List<FTSPageStateModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            FTSPageStateProto.FTSPageStateList.Builder newBuilder = FTSPageStateProto.FTSPageStateList.newBuilder();
            for (FTSPageStateModel fTSPageStateModel : list) {
                newBuilder.addProto(FTSPageStateProto.FTSPageState.newBuilder().setUniqueId(fTSPageStateModel.getUniqueId()).setCreatedAt(fTSPageStateModel.getCreatedAt()).setUpdatedAt(fTSPageStateModel.getUpdatedAt()).setPageId(fTSPageStateModel.getPageId()).setType(fTSPageStateModel.getType()).setLang(fTSPageStateModel.getLang()).setIndexed(fTSPageStateModel.getIndexed()).build());
            }
            FTSPageStateProto.FTSPageStateList build = newBuilder.build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        public Companion() {
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getDataFilePath(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return getPBFileDirPath(args.getDocumentId()) + args.getRevisionId();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getPBFileDirPath(@Nullable String uniqueId) {
        SyncConstant syncConstant = SyncConstant.INSTANCE;
        String pbDirPath = getPbDirPath();
        if (uniqueId == null) {
            uniqueId = "";
        }
        String docDirFilePath = syncConstant.docDirFilePath(pbDirPath, uniqueId);
        StringBuilder sb = new StringBuilder();
        sb.append(docDirFilePath);
        String str = File.separator;
        sb.append(str);
        sb.append(SyncConstant.LOCAL_FTS_PAGE_STATE_DIR_NAME);
        sb.append(str);
        sb.append("pb");
        sb.append(str);
        return sb.toString();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public FTSPageStateProto.FTSPageStateList parseFrom(@Nullable FileInputStream input) {
        FTSPageStateProto.FTSPageStateList parseFrom = FTSPageStateProto.FTSPageStateList.parseFrom(input);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull FTSPageStateProto.FTSPageStateList data, @Nullable FileOutputStream output) {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(output);
    }
}
