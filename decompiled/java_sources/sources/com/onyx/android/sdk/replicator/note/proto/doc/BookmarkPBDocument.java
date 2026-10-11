package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.replicator.note.proto.BookmarkProto;
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

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;", "()V", "getDataFilePath", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "getPBFileDirPath", CouchFieldKey.KEY_UNIQUE_ID, "parseFrom", "fin", "Ljava/io/FileInputStream;", "writeTo", "", "data", "fout", "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class BookmarkPBDocument extends BasePBDocument<BookmarkProto.BookmarkList> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument$Companion;", "", "()V", "fromProtoList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;", CouchFieldKey.KEY_REVISION_ID, "", "toProtoList", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nBookmarkPBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookmarkPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n1549#2:79\n1620#2,3:80\n*S KotlinDebug\n*F\n+ 1 BookmarkPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument$Companion\n*L\n43#1:77,2\n61#1:79\n61#1:80,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<VirtualBookmarkModel> fromProtoList(@Nullable BookmarkProto.BookmarkList bookmarkList, @NotNull String revisionId) {
            List<BookmarkProto.Bookmark> protoList;
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            if (bookmarkList == null || (protoList = bookmarkList.getProtoList()) == null) {
                return new ArrayList();
            }
            List<BookmarkProto.Bookmark> list = protoList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (BookmarkProto.Bookmark bookmark : list) {
                VirtualBookmarkModel virtualBookmarkModel = new VirtualBookmarkModel();
                virtualBookmarkModel.setStatus(bookmark.getStatus());
                String title = bookmark.getTitle();
                Intrinsics.checkNotNullExpressionValue(title, "getTitle(...)");
                virtualBookmarkModel.setTitle(title);
                virtualBookmarkModel.setQuote(bookmark.getQuote());
                virtualBookmarkModel.setPageIndex(bookmark.getPageIndex());
                String pageUniqueId = bookmark.getPageUniqueId();
                Intrinsics.checkNotNullExpressionValue(pageUniqueId, "getPageUniqueId(...)");
                virtualBookmarkModel.setPageUniqueId(pageUniqueId);
                String uuid = bookmark.getUuid();
                Intrinsics.checkNotNullExpressionValue(uuid, "getUuid(...)");
                virtualBookmarkModel.setUniqueId(uuid);
                virtualBookmarkModel.setCreatedAt(bookmark.getCreatedAt());
                virtualBookmarkModel.setUpdatedAt(bookmark.getUpdatedAt());
                virtualBookmarkModel.setRevisionId(revisionId);
                arrayList.add(virtualBookmarkModel);
            }
            return arrayList;
        }

        @NotNull
        public final BookmarkProto.BookmarkList toProtoList(@NotNull List<VirtualBookmarkModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            BookmarkProto.BookmarkList.Builder newBuilder = BookmarkProto.BookmarkList.newBuilder();
            for (VirtualBookmarkModel virtualBookmarkModel : list) {
                BookmarkProto.Bookmark.Builder title = BookmarkProto.Bookmark.newBuilder().setUuid(virtualBookmarkModel.getUniqueId()).setCreatedAt(virtualBookmarkModel.getCreatedAt()).setUpdatedAt(virtualBookmarkModel.getUpdatedAt()).setPageIndex(virtualBookmarkModel.getPageIndex()).setPageUniqueId(virtualBookmarkModel.getPageUniqueId()).setTitle(virtualBookmarkModel.getTitle());
                String quote = virtualBookmarkModel.getQuote();
                if (quote == null) {
                    quote = "";
                }
                newBuilder.addProto(title.setQuote(quote).setStatus(virtualBookmarkModel.getStatus()).build());
            }
            BookmarkProto.BookmarkList build = newBuilder.build();
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
        sb.append(SyncConstant.LOCAL_BOOKMARK_DIR_NAME);
        sb.append(str);
        sb.append("pb");
        sb.append(str);
        return sb.toString();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public BookmarkProto.BookmarkList parseFrom(@Nullable FileInputStream fin) throws IOException {
        BookmarkProto.BookmarkList parseFrom = BookmarkProto.BookmarkList.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull BookmarkProto.BookmarkList data, @Nullable FileOutputStream fout) {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(fout);
    }
}
