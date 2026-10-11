package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.replicator.note.proto.TocProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/TocPBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/TocProto$TocList;", "()V", "getDataFilePath", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "getPBFileDirPath", CouchFieldKey.KEY_UNIQUE_ID, "parseFrom", "fin", "Ljava/io/FileInputStream;", "writeTo", "", "data", "fout", "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TocPBDocument extends BasePBDocument<TocProto.TocList> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/TocPBDocument$Companion;", "", "()V", "fromProtoList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "Lcom/onyx/android/sdk/replicator/note/proto/TocProto$TocList;", CouchFieldKey.KEY_REVISION_ID, "", "toProtoList", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nTocPBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TocPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/TocPBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,80:1\n1855#2,2:81\n1549#2:83\n1620#2,3:84\n*S KotlinDebug\n*F\n+ 1 TocPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/TocPBDocument$Companion\n*L\n45#1:81,2\n64#1:83\n64#1:84,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<VirtualTocModel> fromProtoList(@Nullable TocProto.TocList tocList, @NotNull String revisionId) {
            List<TocProto.Toc> protoList;
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            if (tocList == null || (protoList = tocList.getProtoList()) == null) {
                return new ArrayList();
            }
            List<TocProto.Toc> list = protoList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TocProto.Toc toc : list) {
                VirtualTocModel virtualTocModel = new VirtualTocModel();
                virtualTocModel.setStatus(toc.getStatus());
                String title = toc.getTitle();
                Intrinsics.checkNotNullExpressionValue(title, "getTitle(...)");
                virtualTocModel.setTitle(title);
                virtualTocModel.setPageIndex(toc.getPageIndex());
                String pageUniqueId = toc.getPageUniqueId();
                Intrinsics.checkNotNullExpressionValue(pageUniqueId, "getPageUniqueId(...)");
                virtualTocModel.setPageId(pageUniqueId);
                virtualTocModel.setOrderIndex(toc.getOrderIndex());
                virtualTocModel.setParentId(toc.getParentId());
                String uuid = toc.getUuid();
                Intrinsics.checkNotNullExpressionValue(uuid, "getUuid(...)");
                virtualTocModel.setUniqueId(uuid);
                virtualTocModel.setCreatedAt(toc.getCreatedAt());
                virtualTocModel.setUpdatedAt(toc.getUpdatedAt());
                virtualTocModel.setRevisionId(revisionId);
                arrayList.add(virtualTocModel);
            }
            return arrayList;
        }

        @NotNull
        public final TocProto.TocList toProtoList(@NotNull List<VirtualTocModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            TocProto.TocList.Builder newBuilder = TocProto.TocList.newBuilder();
            for (VirtualTocModel virtualTocModel : list) {
                TocProto.Toc.Builder status = TocProto.Toc.newBuilder().setUuid(virtualTocModel.getUniqueId()).setCreatedAt(virtualTocModel.getCreatedAt()).setUpdatedAt(virtualTocModel.getUpdatedAt()).setPageUniqueId(virtualTocModel.getPageId()).setPageIndex(virtualTocModel.getPageIndex()).setOrderIndex(virtualTocModel.getOrderIndex()).setTitle(virtualTocModel.getTitle()).setStatus(virtualTocModel.getStatus());
                String parentId = virtualTocModel.getParentId();
                if (parentId == null) {
                    parentId = "";
                }
                newBuilder.addProto(status.setParentId(parentId).build());
            }
            TocProto.TocList build = newBuilder.build();
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
        StringBuilder sb = new StringBuilder();
        SyncConstant syncConstant = SyncConstant.INSTANCE;
        String pbDirPath = getPbDirPath();
        Intrinsics.checkNotNull(uniqueId);
        sb.append(syncConstant.docDirFilePath(pbDirPath, uniqueId));
        String str = File.separator;
        sb.append(str);
        sb.append(SyncConstant.LOCAL_TOC_DIR_NAME);
        sb.append(str);
        sb.append("pb");
        sb.append(str);
        return sb.toString();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public TocProto.TocList parseFrom(@Nullable FileInputStream fin) throws IOException {
        TocProto.TocList parseFrom = TocProto.TocList.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull TocProto.TocList data, @Nullable FileOutputStream fout) throws IOException {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(fout);
    }
}
