package com.onyx.android.sdk.replicator.note.data.point;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.path.PointPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000  2\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u0002J\u0016\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00030\fH\u0002J\"\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f0\u000ej\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f`\u0010J2\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f0\u000ej\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f`\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J,\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f0\f2\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00150\fJ\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J(\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u001e\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u00010\f2\u0006\u0010\u001c\u001a\u00020\u0003H\u0002J \u0010\u001d\u001a\u00020\t2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00152\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003J\u0010\u0010\u001f\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;", "", CouchFieldKey.KEY_PAGE_ID, "", "pagePointDirPath", "(Ljava/lang/String;Ljava/lang/String;)V", CouchFieldKey.KEY_REVISION_ID, "getPointFilePath", "isPointFile", "", HuaweiYunQueryArgs.FILE_NAME, "loadRevisionPathMap", "", "loadShapePointList", "Ljava/util/LinkedHashMap;", "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;", "Lkotlin/collections/LinkedHashMap;", gon.f71290o0, "", "count", "revisionShapeIdMap", "", "parsePointDocument", "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;", "file", "Ljava/io/File;", "parsePointFile", "parseShapeIdRepoMap", "pointPath", "saveShapePointList", "repoList", "setRevisionId", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPagePointLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagePointLoader.kt\ncom/onyx/android/sdk/replicator/note/data/point/PagePointLoader\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,166:1\n13309#2:167\n13310#2:170\n1855#3,2:168\n215#4,2:171\n*S KotlinDebug\n*F\n+ 1 PagePointLoader.kt\ncom/onyx/android/sdk/replicator/note/data/point/PagePointLoader\n*L\n37#1:167\n37#1:170\n41#1:168,2\n98#1:171,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PagePointLoader {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private String pagePointDirPath;

    @NotNull
    private String pageUniqueId;

    @Nullable
    private String revisionId;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader$Companion;", "", "()V", "saveToPointFile", "", "", "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;", EditorConstants.ARGS_DOC_ID, "", CouchFieldKey.KEY_TOC_PAGE_ID, CouchFieldKey.KEY_REVISION_ID, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void saveToPointFile(@NotNull List<ShapeRepo> list, @NotNull String docId, @NotNull String pageId, @NotNull String revisionId) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            Intrinsics.checkNotNullParameter(docId, "docId");
            Intrinsics.checkNotNullParameter(pageId, "pageId");
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            if (list.isEmpty()) {
                return;
            }
            PagePointLoader pagePointLoader = new PagePointLoader(pageId, PointPaths.INSTANCE.appPagePointDir(docId, pageId).toAbsolutePath().toString());
            pagePointLoader.setRevisionId(revisionId);
            pagePointLoader.saveShapePointList(list, revisionId);
        }

        private Companion() {
        }
    }

    public PagePointLoader(@NotNull String pageUniqueId, @NotNull String pagePointDirPath) {
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        Intrinsics.checkNotNullParameter(pagePointDirPath, "pagePointDirPath");
        this.pageUniqueId = pageUniqueId;
        this.pagePointDirPath = pagePointDirPath;
    }

    private final boolean isPointFile(String fileName) {
        boolean startsWith$default;
        boolean endsWith$default;
        if (StringUtils.isEmpty(fileName)) {
            return false;
        }
        if (StringUtils.isEmpty(this.revisionId)) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(fileName, this.pageUniqueId, false, 2, null);
            if (!startsWith$default) {
                return false;
            }
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(fileName, PointConstant.POINT_FILE_END, false, 2, null);
            return endsWith$default;
        }
        PointDocumentUtils pointDocumentUtils = PointDocumentUtils.INSTANCE;
        String str = this.pageUniqueId;
        String str2 = this.revisionId;
        Intrinsics.checkNotNull(str2);
        return StringUtils.equals(fileName, pointDocumentUtils.getPointFileName(str, str2));
    }

    private final Map<String, String> loadRevisionPathMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        File[] listFiles = new File(this.pagePointDirPath).listFiles();
        if (listFiles == null) {
            return linkedHashMap;
        }
        for (File file : listFiles) {
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            if (isPointFile(name)) {
                PointDocumentUtils pointDocumentUtils = PointDocumentUtils.INSTANCE;
                String name2 = file.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                String parseRevisionId = pointDocumentUtils.parseRevisionId(name2);
                String absolutePath = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                linkedHashMap.put(parseRevisionId, absolutePath);
            }
        }
        return linkedHashMap;
    }

    private final PointDocument parsePointDocument(File file) {
        try {
            return new PointDocument(file.getAbsolutePath()).parse();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private final List<ShapeRepo> parsePointFile(File file, int start, int count) {
        try {
            return new PointDocument(file.getAbsolutePath()).parse(start, count).getShapeRepoList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private final Map<String, ShapeRepo> parseShapeIdRepoMap(String pointPath) {
        PointDocument parsePointDocument = parsePointDocument(new File(pointPath));
        HashMap hashMap = null;
        if (parsePointDocument == null) {
            Debug.INSTANCE.m32059w(PagePointLoader.class, "pointDocument empty, " + pointPath, new Object[0]);
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
    public final String getPointFilePath(@Nullable String revisionId) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.pagePointDirPath);
        sb.append(File.separator);
        PointDocumentUtils pointDocumentUtils = PointDocumentUtils.INSTANCE;
        String str = this.pageUniqueId;
        Intrinsics.checkNotNull(revisionId);
        sb.append(pointDocumentUtils.getPointFileName(str, revisionId));
        return sb.toString();
    }

    @NotNull
    public final LinkedHashMap<String, ShapeRepo> loadShapePointList() {
        return loadShapePointList(0, Integer.MAX_VALUE);
    }

    public final boolean saveShapePointList(@Nullable List<ShapeRepo> repoList, @Nullable String revisionId) {
        List<ShapeRepo> list = repoList;
        if (!(list == null || list.isEmpty()) && !StringUtils.isEmpty(this.pagePointDirPath)) {
            try {
                return new PointDocument(getPointFilePath(revisionId)).setPageUniqueId(this.pageUniqueId).setRevisionId(revisionId).setShapeRepoList(repoList).save();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @NotNull
    public final PagePointLoader setRevisionId(@Nullable String revisionId) {
        this.revisionId = revisionId;
        return this;
    }

    @NotNull
    public final LinkedHashMap<String, ShapeRepo> loadShapePointList(int start, int count) {
        File[] listFiles;
        LinkedHashMap<String, ShapeRepo> linkedHashMap = new LinkedHashMap<>();
        if (StringUtils.isEmpty(this.pagePointDirPath) || (listFiles = new File(this.pagePointDirPath).listFiles()) == null) {
            return linkedHashMap;
        }
        for (File file : listFiles) {
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            if (isPointFile(name)) {
                Intrinsics.checkNotNull(file);
                List<ShapeRepo> parsePointFile = parsePointFile(file, start, count);
                if (parsePointFile != null) {
                    for (ShapeRepo shapeRepo : parsePointFile) {
                        linkedHashMap.put(shapeRepo.getShapeUniqueId(), shapeRepo);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    @NotNull
    public final Map<String, ShapeRepo> loadShapePointList(@NotNull Map<String, ? extends List<String>> revisionShapeIdMap) {
        ShapeRepo shapeRepo;
        Intrinsics.checkNotNullParameter(revisionShapeIdMap, "revisionShapeIdMap");
        HashMap hashMap = new HashMap();
        Map<String, String> loadRevisionPathMap = loadRevisionPathMap();
        for (Map.Entry<String, ? extends List<String>> entry : revisionShapeIdMap.entrySet()) {
            String str = loadRevisionPathMap.get(entry.getKey());
            if (!FileUtils.INSTANCE.fileCanRead(str)) {
                Debug.INSTANCE.m32059w(PagePointLoader.class, "file cannot read, " + str, new Object[0]);
            } else {
                Intrinsics.checkNotNull(str);
                Map<String, ShapeRepo> parseShapeIdRepoMap = parseShapeIdRepoMap(str);
                if (!(parseShapeIdRepoMap == null || parseShapeIdRepoMap.isEmpty())) {
                    for (String str2 : entry.getValue()) {
                        if (parseShapeIdRepoMap != null && (shapeRepo = parseShapeIdRepoMap.get(str2)) != null) {
                            hashMap.put(str2, shapeRepo);
                        }
                    }
                }
            }
        }
        return hashMap;
    }
}
