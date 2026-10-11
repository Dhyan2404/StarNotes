package com.onyx.android.sdk.replicator.note.proto.doc;

import android.graphics.RectF;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.data.MatrixValues;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.onyx.android.sdk.replicator.note.proto.FTSContentProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00132\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0012\u0010\t\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0016J\u0016\u0010\u000b\u001a\u00060\u0002j\u0002`\u00032\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u001e\u0010\u000e\u001a\u00020\u000f2\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentListProto;", "()V", "getDataFilePath", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "getPBFileDirPath", CouchFieldKey.KEY_UNIQUE_ID, "parseFrom", "input", "Ljava/io/FileInputStream;", "writeTo", "", "data", Constants.ELEMNAME_OUTPUT_STRING, "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class FTSContentPBDocument extends BasePBDocument<FTSContentProto.FTSContentList> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\u0006\u0010\b\u001a\u00020\tJ\u0014\u0010\n\u001a\u00060\u0006j\u0002`\u0007*\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion;", "", "()V", "fromProtoList", "", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", "Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentListProto;", CouchFieldKey.KEY_REVISION_ID, "", "toProtoList", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nFTSContentPBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSContentPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n*L\n1#1,81:1\n1855#2,2:82\n1549#2:84\n1620#2,2:85\n1622#2:91\n46#3:87\n50#3,2:88\n46#3:90\n*S KotlinDebug\n*F\n+ 1 FTSContentPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion\n*L\n46#1:82,2\n65#1:84\n65#1:85,2\n65#1:91\n73#1:87\n74#1:88,2\n75#1:90\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<FTSContentModel> fromProtoList(@Nullable FTSContentProto.FTSContentList fTSContentList, @NotNull String revisionId) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            List<FTSContentProto.FTSContent> protoList = fTSContentList != null ? fTSContentList.getProtoList() : null;
            if (protoList == null) {
                protoList = new ArrayList<>();
            }
            List<FTSContentProto.FTSContent> list = protoList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (FTSContentProto.FTSContent fTSContent : list) {
                FTSContentModel fTSContentModel = new FTSContentModel();
                String uniqueId = fTSContent.getUniqueId();
                Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
                fTSContentModel.setUniqueId(uniqueId);
                fTSContentModel.setCreatedAt(fTSContent.getCreatedAt());
                fTSContentModel.setUpdatedAt(fTSContent.getUpdatedAt());
                String type = fTSContent.getType();
                Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
                fTSContentModel.setType(type);
                String pageUniqueId = fTSContent.getPageUniqueId();
                Intrinsics.checkNotNullExpressionValue(pageUniqueId, "getPageUniqueId(...)");
                fTSContentModel.setPageUniqueId(pageUniqueId);
                String content = fTSContent.getContent();
                Intrinsics.checkNotNullExpressionValue(content, "getContent(...)");
                fTSContentModel.setContent(content);
                JSONUtils jSONUtils = JSONUtils.INSTANCE;
                RectF rectF = (RectF) jSONUtils.parseObject(fTSContent.getRect(), RectF.class);
                if (rectF == null) {
                    rectF = new RectF();
                }
                fTSContentModel.setRect(rectF);
                List<? extends RectF> list2 = (List) jSONUtils.parseObject(fTSContent.getCharRectList(), new TypeReference<List<? extends RectF>>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.FTSContentPBDocument$Companion$fromProtoList$lambda$1$$inlined$parseList$1
                });
                if (list2 == null) {
                    list2 = CollectionsKt__CollectionsKt.emptyList();
                }
                fTSContentModel.setCharRectList(list2);
                MatrixValues matrixValues = (MatrixValues) jSONUtils.parseObject(fTSContent.getMatrixValues(), MatrixValues.class);
                if (matrixValues == null) {
                    matrixValues = new MatrixValues(null, 1, null);
                }
                fTSContentModel.setMatrixValues(matrixValues);
                fTSContentModel.setRevisionId(revisionId);
                arrayList.add(fTSContentModel);
            }
            return arrayList;
        }

        @NotNull
        public final FTSContentProto.FTSContentList toProtoList(@NotNull List<FTSContentModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            FTSContentProto.FTSContentList.Builder newBuilder = FTSContentProto.FTSContentList.newBuilder();
            for (FTSContentModel fTSContentModel : list) {
                FTSContentProto.FTSContent.Builder content = FTSContentProto.FTSContent.newBuilder().setUniqueId(fTSContentModel.getUniqueId()).setCreatedAt(fTSContentModel.getCreatedAt()).setUpdatedAt(fTSContentModel.getUpdatedAt()).setType(fTSContentModel.getType()).setPageUniqueId(fTSContentModel.getPageUniqueId()).setContent(fTSContentModel.getContent());
                JSONUtils jSONUtils = JSONUtils.INSTANCE;
                newBuilder.addProto(content.setRect(jSONUtils.asJson(fTSContentModel.getRect())).setCharRectList(jSONUtils.asJson(fTSContentModel.getCharRectList())).setMatrixValues(jSONUtils.asJson(fTSContentModel.getMatrixValues())).build());
            }
            FTSContentProto.FTSContentList build = newBuilder.build();
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
        sb.append(SyncConstant.LOCAL_FTS_CONTENT_DIR_NAME);
        sb.append(str);
        sb.append("pb");
        sb.append(str);
        return sb.toString();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public FTSContentProto.FTSContentList parseFrom(@Nullable FileInputStream input) {
        FTSContentProto.FTSContentList parseFrom = FTSContentProto.FTSContentList.parseFrom(input);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull FTSContentProto.FTSContentList data, @Nullable FileOutputStream output) {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(output);
    }
}
