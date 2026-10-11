package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\r\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;", "", "", "pbDirPath", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "loadDocPBArgsList", "loadDocPBFileNameList", "Ljava/io/File;", "loadDocPBFileList", "", "hasDocPBFile", HuaweiYunQueryArgs.FILE_NAME, "c", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPBDocumentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n1549#2:46\n1620#2,3:47\n1549#2:50\n1620#2,3:51\n*S KotlinDebug\n*F\n+ 1 PBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils\n*L\n18#1:46\n18#1:47,3\n23#1:50\n23#1:51,3\n*E\n"})
/* loaded from: classes8.dex */
public final class PBDocumentUtils {

    @NotNull
    public static final PBDocumentUtils INSTANCE = new PBDocumentUtils();

    /* renamed from: b */
    public static final int m35406b(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: c */
    public final PBDocumentArgs m35407c(String fileName) {
        return new PBDocumentArgs().setRevisionId(fileName);
    }

    public final boolean hasDocPBFile(@NotNull String pbDirPath) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        return CollectionKt.isNonBlank(FileUtils.INSTANCE.listAllFiles(pbDirPath, null));
    }

    @NotNull
    public final List<PBDocumentArgs> loadDocPBArgsList(@NotNull String pbDirPath) {
        int collectionSizeOrDefault;
        List<PBDocumentArgs> list;
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        List<File> loadDocPBFileList = loadDocPBFileList(pbDirPath);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadDocPBFileList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadDocPBFileList.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.m35407c(((File) it2.next()).getName()));
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final List<File> loadDocPBFileList(@NotNull String pbDirPath) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        LinkedList<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(pbDirPath, null);
        final PBDocumentUtils$loadDocPBFileList$1 pBDocumentUtils$loadDocPBFileList$1 = new Function2<File, File, Integer>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils$loadDocPBFileList$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull File o1, @NotNull File o2) {
                PBDocumentArgs m35407c;
                PBDocumentArgs m35407c2;
                Intrinsics.checkNotNullParameter(o1, "o1");
                Intrinsics.checkNotNullParameter(o2, "o2");
                PBDocumentUtils pBDocumentUtils = PBDocumentUtils.INSTANCE;
                m35407c = pBDocumentUtils.m35407c(o1.getName());
                m35407c2 = pBDocumentUtils.m35407c(o2.getName());
                return Integer.valueOf(PBDocumentArgs.INSTANCE.compare(m35407c, m35407c2));
            }
        };
        CollectionsKt___CollectionsKt.sortedWith(listAllFiles, new Comparator() { // from class: com.sunia.HTREnginev2.sjk
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m35406b;
                m35406b = PBDocumentUtils.m35406b(Function2.this, obj, obj2);
                return m35406b;
            }
        });
        return listAllFiles;
    }

    @NotNull
    public final List<String> loadDocPBFileNameList(@NotNull String pbDirPath) {
        int collectionSizeOrDefault;
        List<String> list;
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        List<File> loadDocPBFileList = loadDocPBFileList(pbDirPath);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadDocPBFileList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadDocPBFileList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((File) it2.next()).getName());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }
}
