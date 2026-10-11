package com.onyx.android.sdk.replicator.note.data.point;

import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00030\bH\u0002J\u001a\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003H\u0002J\u0016\u0010\u000f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00030\u0010H\u0002J,\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00120\u00102\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00140\u0010J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J&\u0010\u0019\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u001e\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00102\u0006\u0010\u001b\u001a\u00020\u0003H\u0002J&\u0010\u001c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00032\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00142\u0006\u0010\u000b\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/point/DocumentPointLoader;", "", "documentPointDirPath", "", "(Ljava/lang/String;)V", "buildIndex", "", "revisionPathMap", "", "getPointFilePath", CouchFieldKey.KEY_TOC_PAGE_ID, CouchFieldKey.KEY_REVISION_ID, "isPointFile", "", HuaweiYunQueryArgs.FILE_NAME, "loadRevisionPathMap", "", "loadShapePointList", "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;", "revisionShapeIdMap", "", "parsePointDocument", "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;", "file", "Ljava/io/File;", "parsePointFiles", "parseShapeIdRepoMap", "pointPath", "saveShapePointList", "repoList", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nDocumentPointLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocumentPointLoader.kt\ncom/onyx/android/sdk/replicator/note/data/point/DocumentPointLoader\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,131:1\n215#2,2:132\n*S KotlinDebug\n*F\n+ 1 DocumentPointLoader.kt\ncom/onyx/android/sdk/replicator/note/data/point/DocumentPointLoader\n*L\n45#1:132,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DocumentPointLoader {

    @NotNull
    private String documentPointDirPath;

    public DocumentPointLoader(@NotNull String documentPointDirPath) {
        Intrinsics.checkNotNullParameter(documentPointDirPath, "documentPointDirPath");
        this.documentPointDirPath = documentPointDirPath;
    }

    private final void buildIndex(Map<String, String> revisionPathMap) {
        File[] listFiles;
        if (StringUtils.isEmpty(this.documentPointDirPath) || (listFiles = new File(this.documentPointDirPath).listFiles()) == null) {
            return;
        }
        for (File file : listFiles) {
            if (!file.isFile()) {
                Intrinsics.checkNotNull(file);
                parsePointFiles(revisionPathMap, file);
            }
        }
    }

    private final String getPointFilePath(String pageId, String revisionId) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.documentPointDirPath);
        String str = File.separator;
        sb.append(str);
        sb.append(pageId);
        sb.append(str);
        sb.append(PointDocumentUtils.INSTANCE.getPointFileName(pageId, revisionId));
        return sb.toString();
    }

    private final boolean isPointFile(String fileName) {
        boolean endsWith$default;
        if (StringUtils.isEmpty(fileName)) {
            return false;
        }
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(fileName, PointConstant.POINT_FILE_END, false, 2, null);
        return endsWith$default;
    }

    private final Map<String, String> loadRevisionPathMap() {
        HashMap hashMap = new HashMap();
        Benchmark benchmark = new Benchmark();
        buildIndex(hashMap);
        if (Debug.INSTANCE.getDebug()) {
            benchmark.report(DocumentPointLoader.class + ", initRevisionPathMap, documentPointDirPath = " + this.documentPointDirPath);
        }
        return hashMap;
    }

    private final PointDocument parsePointDocument(File file) {
        try {
            return new PointDocument(file.getAbsolutePath()).parse();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private final void parsePointFiles(Map<String, String> revisionPathMap, File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            String name = file2.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            if (isPointFile(name)) {
                PointDocumentUtils pointDocumentUtils = PointDocumentUtils.INSTANCE;
                String name2 = file2.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                String parseRevisionId = pointDocumentUtils.parseRevisionId(name2);
                String absolutePath = file2.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                revisionPathMap.put(parseRevisionId, absolutePath);
            }
        }
    }

    private final Map<String, ShapeRepo> parseShapeIdRepoMap(String pointPath) {
        PointDocument parsePointDocument = parsePointDocument(new File(pointPath));
        HashMap hashMap = null;
        if (parsePointDocument == null) {
            Debug.INSTANCE.m32059w(DocumentPointLoader.class, "pointDocument empty, " + pointPath, new Object[0]);
            return null;
        }
        List<ShapeRepo> shapeRepoList = parsePointDocument.getShapeRepoList();
        if (shapeRepoList != null) {
            hashMap = new HashMap();
            for (ShapeRepo shapeRepo : shapeRepoList) {
                hashMap.put(shapeRepo.getShapeUniqueId(), shapeRepo);
            }
        }
        return hashMap;
    }

    @NotNull
    public final Map<String, ShapeRepo> loadShapePointList(@NotNull Map<String, ? extends List<String>> revisionShapeIdMap) {
        ShapeRepo shapeRepo;
        Intrinsics.checkNotNullParameter(revisionShapeIdMap, "revisionShapeIdMap");
        HashMap hashMap = new HashMap();
        Map<String, String> loadRevisionPathMap = loadRevisionPathMap();
        for (Map.Entry<String, ? extends List<String>> entry : revisionShapeIdMap.entrySet()) {
            String str = loadRevisionPathMap.get(entry.getKey());
            if (FileUtils.INSTANCE.fileCanRead(str)) {
                Intrinsics.checkNotNull(str);
                Map<String, ShapeRepo> parseShapeIdRepoMap = parseShapeIdRepoMap(str);
                if (!(parseShapeIdRepoMap == null || parseShapeIdRepoMap.isEmpty())) {
                    for (String str2 : entry.getValue()) {
                        if (parseShapeIdRepoMap != null && (shapeRepo = parseShapeIdRepoMap.get(str2)) != null) {
                            hashMap.put(str2, shapeRepo);
                        }
                    }
                }
            } else {
                Debug.INSTANCE.m32059w(DocumentPointLoader.class, "file cannot read, " + str, new Object[0]);
            }
        }
        return hashMap;
    }

    public final boolean saveShapePointList(@NotNull String pageId, @Nullable List<ShapeRepo> repoList, @NotNull String revisionId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(revisionId, "revisionId");
        if (StringUtils.isEmpty(this.documentPointDirPath)) {
            return false;
        }
        try {
            return new PointDocument(getPointFilePath(pageId, revisionId)).setPageUniqueId(pageId).setRevisionId(revisionId).setShapeRepoList(repoList).save();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
