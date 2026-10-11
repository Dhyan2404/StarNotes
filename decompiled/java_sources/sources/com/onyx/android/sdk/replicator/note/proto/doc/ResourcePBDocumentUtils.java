package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.proto.ResourceDocProto;
import com.onyx.android.sdk.replicator.note.proto.data.ResourceDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocumentUtils;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\f2\u0006\u0010\n\u001a\u00020\u0004J\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0004J\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\n\u001a\u00020\u0004J\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\f2\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0004R\u0014\u0010\u0019\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocumentUtils;", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;", "args", "", "getResourceFileName", HuaweiYunQueryArgs.FILE_NAME, "parseInfo", "resourcePbFilePath", "pbDirPath", "documentId", "resourcePbFileDirPath", "", "docResourceArgsList", "docPBPath", "docResourceArgsListByPath", "", "docResourceFilePbNameList", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "loadRemovedResourceModel", "", "currentTimestamp", "newRevisionId", "a", Constants.STRING_SIG, "RESOURCE_FILE_SPLIT_CHAR", "", "b", "I", "RESOURCE_FILE_NAME_SEGMENT_COUNT", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nResourcePBDocumentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourcePBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocumentUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,112:1\n731#2,9:113\n37#3,2:122\n*S KotlinDebug\n*F\n+ 1 ResourcePBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocumentUtils\n*L\n34#1:113,9\n35#1:122,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ResourcePBDocumentUtils {

    @NotNull
    public static final ResourcePBDocumentUtils INSTANCE = new ResourcePBDocumentUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String RESOURCE_FILE_SPLIT_CHAR = "#";

    /* renamed from: b, reason: from kotlin metadata */
    public static final int RESOURCE_FILE_NAME_SEGMENT_COUNT = 2;

    /* renamed from: b */
    public static final int m35412b(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    public final long currentTimestamp() {
        return System.currentTimeMillis();
    }

    @NotNull
    public final List<ResourceDocumentArgs> docResourceArgsList(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return docResourceArgsListByPath(resourcePbFileDirPath(documentId));
    }

    @NotNull
    public final List<ResourceDocumentArgs> docResourceArgsListByPath(@NotNull String docPBPath) {
        Intrinsics.checkNotNullParameter(docPBPath, "docPBPath");
        LinkedList<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(docPBPath, null);
        ArrayList arrayList = new ArrayList();
        Iterator<File> it2 = listAllFiles.iterator();
        while (it2.hasNext()) {
            String name = it2.next().getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            CollectionKt.safeAdd(arrayList, parseInfo(name));
        }
        final ResourcePBDocumentUtils$docResourceArgsListByPath$1 resourcePBDocumentUtils$docResourceArgsListByPath$1 = new Function2<ResourceDocumentArgs, ResourceDocumentArgs, Integer>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocumentUtils$docResourceArgsListByPath$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@Nullable ResourceDocumentArgs resourceDocumentArgs, @Nullable ResourceDocumentArgs resourceDocumentArgs2) {
                return Integer.valueOf(ResourceDocumentArgs.INSTANCE.compare(resourceDocumentArgs, resourceDocumentArgs2));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: com.sunia.HTREnginev2.sll
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m35412b;
                m35412b = ResourcePBDocumentUtils.m35412b(Function2.this, obj, obj2);
                return m35412b;
            }
        });
        return arrayList;
    }

    @NotNull
    public final Set<String> docResourceFilePbNameList(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        LinkedList<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(resourcePbFileDirPath(documentId), null);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<File> it2 = listAllFiles.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(linkedHashSet, it2.next().getName());
        }
        return linkedHashSet;
    }

    @NotNull
    public final String getResourceFileName(@NotNull ResourceDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return args.getRevisionId() + '#' + args.getCreateAt();
    }

    @NotNull
    public final List<ResourceModel> loadRemovedResourceModel(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        List<ResourceDocumentArgs> docResourceArgsList = docResourceArgsList(documentId);
        ArrayList arrayList = new ArrayList();
        for (ResourceDocumentArgs resourceDocumentArgs : docResourceArgsList) {
            Intrinsics.checkNotNull(resourceDocumentArgs);
            resourceDocumentArgs.setDocumentId(documentId);
            ResourceDocProto.ResourceProtoList data = new ResourcePBDocument(resourceDocumentArgs).load().getData();
            if (data != null) {
                for (ResourceDocProto.ResourceProto resourceProto : data.getProtoList()) {
                    if (resourceProto.getStatus() == 1) {
                        ResourceModels resourceModels = ResourceModels.INSTANCE;
                        Intrinsics.checkNotNull(resourceProto);
                        arrayList.add(resourceModels.fromResourceProto(resourceProto));
                    }
                }
            }
        }
        return arrayList;
    }

    @NotNull
    public final String newRevisionId() {
        return UUIDUtils.INSTANCE.rawUUID();
    }

    @Nullable
    public final ResourceDocumentArgs parseInfo(@NotNull String fileName) {
        List emptyList;
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        List<String> split = new Regex("#").split(fileName, 0);
        if (!split.isEmpty()) {
            ListIterator<String> listIterator = split.listIterator(split.size());
            while (listIterator.hasPrevious()) {
                if (!(listIterator.previous().length() == 0)) {
                    emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        String[] strArr = (String[]) emptyList.toArray(new String[0]);
        if (strArr.length != 2) {
            return null;
        }
        return new ResourceDocumentArgs().setRevisionId(strArr[0]).setCreateAt(MathUtils.INSTANCE.parseLong(strArr[1]));
    }

    @NotNull
    public final String resourcePbFileDirPath(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return resourcePbFileDirPath(SyncConstant.INSTANCE.appDocDir(), documentId);
    }

    @NotNull
    public final String resourcePbFilePath(@NotNull ResourceDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return resourcePbFileDirPath(args.getDocDirPath(), args.getDocumentId()) + getResourceFileName(args);
    }

    @NotNull
    public final String resourcePbFileDirPath(@NotNull String pbDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        StringBuilder sb = new StringBuilder();
        sb.append(SyncConstant.INSTANCE.docDirFilePath(pbDirPath, documentId));
        String str = File.separator;
        sb.append(str);
        sb.append("resource");
        sb.append(str);
        sb.append("pb");
        sb.append(str);
        return sb.toString();
    }

    @NotNull
    public final String resourcePbFilePath(@NotNull String pbDirPath, @NotNull ResourceDocumentArgs args) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(args, "args");
        return resourcePbFileDirPath(pbDirPath, args.getDocumentId()) + getResourceFileName(args);
    }
}
