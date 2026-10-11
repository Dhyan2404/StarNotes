package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.proto.data.LinkDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.LinkDocuments;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\t\u001a\u00020\u0007J\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0007J\n\u0010\u0013\u001a\u00020\u0007*\u00020\u0005J\n\u0010\u0014\u001a\u00020\u0007*\u00020\u0005J\u0012\u0010\u0014\u001a\u00020\u0007*\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/LinkDocuments;", "", "()V", "docLinkArgsList", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;", "documentId", "", "docLinkArgsListByPath", "docPbFilePath", "docLinkFilePbFileList", "Ljava/io/File;", "docLinkFilePbNameList", "", "linkPbFileDirPath", "pbDirPath", "newRevisionId", "parseInfo", HuaweiYunQueryArgs.FILE_NAME, "getLinkFileName", "linkPbFilePath", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class LinkDocuments {

    @NotNull
    public static final LinkDocuments INSTANCE = new LinkDocuments();

    /* renamed from: b */
    public static final int m35404b(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    @NotNull
    public final List<LinkDocumentArgs> docLinkArgsList(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return docLinkArgsListByPath(linkPbFileDirPath(documentId));
    }

    @NotNull
    public final List<LinkDocumentArgs> docLinkArgsListByPath(@NotNull String docPbFilePath) {
        Intrinsics.checkNotNullParameter(docPbFilePath, "docPbFilePath");
        LinkedList<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(docPbFilePath, null);
        ArrayList arrayList = new ArrayList();
        Iterator<File> it2 = listAllFiles.iterator();
        while (it2.hasNext()) {
            String name = it2.next().getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            arrayList.add(parseInfo(name));
        }
        final LinkDocumentArgs.Companion companion = LinkDocumentArgs.INSTANCE;
        CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: com.sunia.HTREnginev2.uyi
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LinkDocumentArgs.Companion.this.compare((LinkDocumentArgs) obj, (LinkDocumentArgs) obj2);
            }
        });
        return arrayList;
    }

    @NotNull
    public final List<File> docLinkFilePbFileList(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        LinkedList<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(linkPbFileDirPath(documentId), null);
        final LinkDocuments$docLinkFilePbFileList$1 linkDocuments$docLinkFilePbFileList$1 = new Function2<File, File, Integer>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.LinkDocuments$docLinkFilePbFileList$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull File o1, @NotNull File o2) {
                Intrinsics.checkNotNullParameter(o1, "o1");
                Intrinsics.checkNotNullParameter(o2, "o2");
                LinkDocuments linkDocuments = LinkDocuments.INSTANCE;
                String name = o1.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                LinkDocumentArgs parseInfo = linkDocuments.parseInfo(name);
                String name2 = o2.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                return Integer.valueOf(LinkDocumentArgs.INSTANCE.compare(parseInfo, linkDocuments.parseInfo(name2)));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(listAllFiles, new Comparator() { // from class: com.sunia.HTREnginev2.tyi
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m35404b;
                m35404b = LinkDocuments.m35404b(Function2.this, obj, obj2);
                return m35404b;
            }
        });
        return listAllFiles;
    }

    @NotNull
    public final Set<String> docLinkFilePbNameList(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        LinkedList<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(linkPbFileDirPath(documentId), null);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<File> it2 = listAllFiles.iterator();
        while (it2.hasNext()) {
            String name = it2.next().getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            linkedHashSet.add(name);
        }
        return linkedHashSet;
    }

    @NotNull
    public final String getLinkFileName(@NotNull LinkDocumentArgs linkDocumentArgs) {
        Intrinsics.checkNotNullParameter(linkDocumentArgs, "<this>");
        return linkDocumentArgs.getRevisionId();
    }

    @NotNull
    public final String linkPbFileDirPath(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return linkPbFileDirPath(SyncConstant.INSTANCE.appDocDir(), documentId);
    }

    @NotNull
    public final String linkPbFilePath(@NotNull LinkDocumentArgs linkDocumentArgs) {
        Intrinsics.checkNotNullParameter(linkDocumentArgs, "<this>");
        return linkPbFileDirPath(linkDocumentArgs.getDocDirPath(), linkDocumentArgs.getDocumentId()) + getLinkFileName(linkDocumentArgs);
    }

    @NotNull
    public final String newRevisionId() {
        return UUIDUtils.INSTANCE.timeBasedEpochUUID();
    }

    @NotNull
    public final LinkDocumentArgs parseInfo(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return new LinkDocumentArgs().setRevisionId(fileName);
    }

    @NotNull
    public final String linkPbFileDirPath(@NotNull String pbDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        StringBuilder sb = new StringBuilder();
        sb.append(SyncConstant.INSTANCE.docDirFilePath(pbDirPath, documentId));
        String str = File.separator;
        sb.append(str);
        sb.append("link");
        sb.append(str);
        sb.append("pb");
        sb.append(str);
        return sb.toString();
    }

    @NotNull
    public final String linkPbFilePath(@NotNull LinkDocumentArgs linkDocumentArgs, @NotNull String pbDirPath) {
        Intrinsics.checkNotNullParameter(linkDocumentArgs, "<this>");
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        return linkPbFileDirPath(pbDirPath, linkDocumentArgs.getDocumentId()) + getLinkFileName(linkDocumentArgs);
    }
}
