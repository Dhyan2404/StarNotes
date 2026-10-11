package com.onyx.android.sdk.replicator.note.proto.doc.shape;

import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.sunia.HTREnginev2.xlm;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J:\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u00122\u0006\u0010\u0010\u001a\u00020\u00042\u0018\b\u0002\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\f0\u0014j\b\u0012\u0004\u0012\u00020\f`\u0015J.\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0010\u001a\u00020\u00042\u0018\b\u0002\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\f0\u0014j\b\u0012\u0004\u0012\u00020\f`\u0015J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00182\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\fJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\fJ\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;", "", "()V", "SHAPE_FILE_END", "", "SHAPE_FILE_NAME_SEGMENT_COUNT", "", "SHAPE_FILE_SPLIT_CHAR", "currentTimestamp", "", "docPageShapeArgsList", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "documentId", CouchFieldKey.KEY_TOC_PAGE_ID, "docPageShapeArgsListByPath", "docPbDirPath", "docPageShapeArgsMapByPath", "", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "docShapeArgsListByPath", "docShapeFileNameList", "", "getPageShapeFileName", "args", "parseInfo", HuaweiYunQueryArgs.FILE_NAME, "shapeFileDirPath", "pbDirPath", "shapeFilePath", "shapeZipFilePath", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeDocumentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,121:1\n37#2,2:122\n766#3:124\n857#3,2:125\n766#3:127\n857#3,2:128\n1855#3,2:130\n1477#3:132\n1502#3,3:133\n1505#3,3:143\n372#4,7:136\n*S KotlinDebug\n*F\n+ 1 ShapeDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils\n*L\n34#1:122,2\n82#1:124\n82#1:125,2\n90#1:127\n90#1:128,2\n98#1:130,2\n119#1:132\n119#1:133,3\n119#1:143,3\n119#1:136,7\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeDocumentUtils {

    @NotNull
    public static final ShapeDocumentUtils INSTANCE = new ShapeDocumentUtils();

    @NotNull
    public static final String SHAPE_FILE_END = ".zip";
    public static final int SHAPE_FILE_NAME_SEGMENT_COUNT = 3;

    @NotNull
    public static final String SHAPE_FILE_SPLIT_CHAR = "#";

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Map docPageShapeArgsMapByPath$default(ShapeDocumentUtils shapeDocumentUtils, String str, Comparator comparator, int i, Object obj) {
        if ((i & 2) != 0) {
            comparator = new xlm(ShapeDocumentArgs.INSTANCE);
        }
        return shapeDocumentUtils.docPageShapeArgsMapByPath(str, comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List docShapeArgsListByPath$default(ShapeDocumentUtils shapeDocumentUtils, String str, Comparator comparator, int i, Object obj) {
        if ((i & 2) != 0) {
            comparator = new xlm(ShapeDocumentArgs.INSTANCE);
        }
        return shapeDocumentUtils.docShapeArgsListByPath(str, comparator);
    }

    public final long currentTimestamp() {
        return System.currentTimeMillis();
    }

    @NotNull
    public final List<ShapeDocumentArgs> docPageShapeArgsList(@NotNull String documentId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return docPageShapeArgsListByPath(shapeFileDirPath(documentId), pageId);
    }

    @NotNull
    public final List<ShapeDocumentArgs> docPageShapeArgsListByPath(@NotNull String docPbDirPath, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(docPbDirPath, "docPbDirPath");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        List docShapeArgsListByPath$default = docShapeArgsListByPath$default(this, docPbDirPath, null, 2, null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : docShapeArgsListByPath$default) {
            if (Intrinsics.areEqual(((ShapeDocumentArgs) obj).getPageId(), pageId)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final Map<String, List<ShapeDocumentArgs>> docPageShapeArgsMapByPath(@NotNull String docPbDirPath, @NotNull Comparator<ShapeDocumentArgs> comparator) {
        Intrinsics.checkNotNullParameter(docPbDirPath, "docPbDirPath");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        List<ShapeDocumentArgs> docShapeArgsListByPath = docShapeArgsListByPath(docPbDirPath, comparator);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : docShapeArgsListByPath) {
            String pageId = ((ShapeDocumentArgs) obj).getPageId();
            Object obj2 = linkedHashMap.get(pageId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageId, obj2);
            }
            ((List) obj2).add(obj);
        }
        return linkedHashMap;
    }

    @NotNull
    public final List<ShapeDocumentArgs> docShapeArgsListByPath(@NotNull String docPbDirPath, @NotNull Comparator<ShapeDocumentArgs> comparator) {
        Set set;
        Set set2;
        Set minus;
        Intrinsics.checkNotNullParameter(docPbDirPath, "docPbDirPath");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        List<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(docPbDirPath);
        List<File> list = listAllFiles;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            File file = (File) obj;
            if (file.exists() && file.isFile()) {
                arrayList.add(obj);
            }
        }
        List<File> list2 = listAllFiles;
        if (CollectionKt.getSize(list2) != CollectionKt.getSize(arrayList)) {
            String simpleNameString = AnyKt.toSimpleNameString(this);
            set = CollectionsKt___CollectionsKt.toSet(list);
            set2 = CollectionsKt___CollectionsKt.toSet(arrayList);
            minus = SetsKt___SetsKt.minus(set, (Iterable) set2);
            LogUtils.wTag(simpleNameString, new Exception("docPageShapeArgsListByPath listAllFiles(" + CollectionKt.getSize(list2) + ")!=docFiles(" + CollectionKt.getSize(arrayList) + ')'));
            Iterator it2 = minus.iterator();
            while (it2.hasNext()) {
                LogUtils.wTag(simpleNameString, new Exception("docPageShapeArgsListByPath not exist file:" + ((File) it2.next())));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            String name = ((File) it3.next()).getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            CollectionKt.safeAdd(arrayList2, parseInfo(name));
        }
        CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList2, comparator);
        return arrayList2;
    }

    @NotNull
    public final Set<String> docShapeFileNameList(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        List<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(shapeFileDirPath(documentId));
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
    public final String getPageShapeFileName(@NotNull ShapeDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return args.getPageId() + '#' + args.getRevisionId() + '#' + args.getCreateAt();
    }

    @Nullable
    public final ShapeDocumentArgs parseInfo(@NotNull String fileName) {
        String replace$default;
        List split$default;
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        replace$default = StringsKt__StringsJVMKt.replace$default(fileName, SHAPE_FILE_END, "", false, 4, (Object) null);
        split$default = StringsKt__StringsKt.split$default((CharSequence) replace$default, new String[]{"#"}, false, 0, 6, (Object) null);
        String[] strArr = (String[]) split$default.toArray(new String[0]);
        if (strArr.length != 3) {
            return null;
        }
        return new ShapeDocumentArgs().setPageId(strArr[0]).setRevisionId(strArr[1]).setCreateAt(MathUtils.INSTANCE.parseLong(strArr[2]));
    }

    @NotNull
    public final String shapeFileDirPath(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return shapeFileDirPath(SyncConstant.INSTANCE.appDocDir(), documentId);
    }

    @NotNull
    public final String shapeFilePath(@NotNull ShapeDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return shapeFileDirPath(args.getPbDirPath(), args.getDocumentId()) + getPageShapeFileName(args);
    }

    @NotNull
    public final String shapeZipFilePath(@NotNull ShapeDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return shapeFilePath(args) + SHAPE_FILE_END;
    }

    @NotNull
    public final String shapeFileDirPath(@NotNull String pbDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        StringBuilder sb = new StringBuilder();
        sb.append(SyncConstant.INSTANCE.docDirFilePath(pbDirPath, documentId));
        String str = File.separator;
        sb.append(str);
        sb.append("shape");
        sb.append(str);
        String sb2 = sb.toString();
        FileUtils.INSTANCE.mkdirs(sb2);
        return sb2;
    }
}
