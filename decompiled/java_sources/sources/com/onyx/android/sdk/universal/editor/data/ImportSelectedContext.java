package com.onyx.android.sdk.universal.editor.data;

import android.net.Uri;
import com.google.firebase.installations.local.IidStore;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0003EFGB\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0014\u0010(\u001a\u00020)2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J\u0014\u0010*\u001a\u00020)2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J?\u0010+\u001a\u00020)2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010,\u001a\u00020\"2!\u0010-\u001a\u001d\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(1\u0012\u0004\u0012\u00020)0.J\b\u00102\u001a\u00020)H\u0002J\u0006\u00103\u001a\u00020\"J\b\u00104\u001a\u0004\u0018\u00010\bJ\b\u00105\u001a\u0004\u0018\u00010\bJ\b\u00106\u001a\u000207H\u0002J\b\u00108\u001a\u000207H\u0002J\u0006\u00109\u001a\u000207J\u0006\u0010:\u001a\u000207J\u0014\u0010;\u001a\u00020)2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J\u000e\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020>J\u000e\u0010?\u001a\u00020)2\u0006\u0010=\u001a\u00020@J\u0016\u0010A\u001a\u00020)2\u0006\u0010B\u001a\u00020\u00042\u0006\u0010C\u001a\u00020\"J\u0012\u0010D\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u0005R\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001a\"\u0004\b\u001e\u0010\u0005R\u001a\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020 0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001a¨\u0006H"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "", "uriList", "", "Landroid/net/Uri;", "(Ljava/util/List;)V", "importInfoMap", "", "", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;", "modifyItem", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;", "getModifyItem", "()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;", "setModifyItem", "(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;)V", "selectedFolderId", "getSelectedFolderId", "()Ljava/lang/String;", "setSelectedFolderId", "(Ljava/lang/String;)V", "selectedFolderName", "getSelectedFolderName", "setSelectedFolderName", "selectedTagIdList", "getSelectedTagIdList", "()Ljava/util/List;", "setSelectedTagIdList", "selectedTagNameList", "getSelectedTagNameList", "setSelectedTagNameList", "taskInfoMap", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;", "totalDocCount", "", "getTotalDocCount", "()I", "setTotalDocCount", "(I)V", "getUriList", "addDefaultImportInfo", "", "addTaskInfo", "completeCount", "importedCount", "importSuccessCallback", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "agr", "countTotalImportInfo", "getCompleteTaskCount", "getModifyFileName", "getModifyName", "isAllComplete", "", "isImportSuccess", "isMultipleDoc", "isOpenDocument", "removeTaskInfo", "resetImportImageAgr", Constants.ELEMNAME_ARG_STRING, "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;", "resetNoteImportArg", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "updateImportInfo", "uri", "totalTaskCount", "toKey", "ImportInfo", "ModifyItem", "TaskInfo", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nImportSelectedContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportSelectedContext.kt\ncom/onyx/android/sdk/universal/editor/data/ImportSelectedContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1045#2:126\n1549#2:130\n1620#2,3:131\n2634#2:134\n2634#2:136\n2634#2:138\n187#3,3:127\n1#4:135\n1#4:137\n1#4:139\n*S KotlinDebug\n*F\n+ 1 ImportSelectedContext.kt\ncom/onyx/android/sdk/universal/editor/data/ImportSelectedContext\n*L\n31#1:126\n61#1:130\n61#1:131,3\n82#1:134\n95#1:136\n103#1:138\n57#1:127,3\n82#1:135\n95#1:137\n103#1:139\n*E\n"})
/* loaded from: classes8.dex */
public final class ImportSelectedContext {

    @NotNull
    private final Map<String, ImportInfo> importInfoMap;

    @Nullable
    private ModifyItem modifyItem;

    @Nullable
    private String selectedFolderId;

    @Nullable
    private String selectedFolderName;

    @Nullable
    private List<String> selectedTagIdList;

    @Nullable
    private List<String> selectedTagNameList;

    @NotNull
    private final Map<String, TaskInfo> taskInfoMap;
    private int totalDocCount;

    @NotNull
    private final List<Uri> uriList;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;", "", HuaweiYunQueryArgs.FILE_NAME, "", "originFileName", "(Ljava/lang/String;Ljava/lang/String;)V", "getFileName", "()Ljava/lang/String;", "getOriginFileName", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class ModifyItem {

        @NotNull
        private final String fileName;

        @Nullable
        private final String originFileName;

        public ModifyItem(@NotNull String fileName, @Nullable String str) {
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            this.fileName = fileName;
            this.originFileName = str;
        }

        @NotNull
        public final String getFileName() {
            return this.fileName;
        }

        @Nullable
        public final String getOriginFileName() {
            return this.originFileName;
        }

        public /* synthetic */ ModifyItem(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : str2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImportSelectedContext(@NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        this.uriList = uriList;
        this.importInfoMap = new LinkedHashMap();
        this.taskInfoMap = new LinkedHashMap();
    }

    private final void countTotalImportInfo() {
        this.totalDocCount = 0;
        Iterator<T> it2 = this.importInfoMap.values().iterator();
        while (it2.hasNext()) {
            this.totalDocCount += ((ImportInfo) it2.next()).getFileCount();
        }
    }

    private final boolean isAllComplete() {
        boolean z;
        int collectionSizeOrDefault;
        List flatten;
        Map<String, TaskInfo> map = this.taskInfoMap;
        if (!map.isEmpty()) {
            Iterator<Map.Entry<String, TaskInfo>> it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                if (!it2.next().getValue().isComplete()) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (!(!z)) {
            return false;
        }
        Collection<TaskInfo> values = this.taskInfoMap.values();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(values, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it3 = values.iterator();
        while (it3.hasNext()) {
            arrayList.add(((TaskInfo) it3.next()).getUriList());
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        return flatten.containsAll(this.uriList);
    }

    private final boolean isImportSuccess() {
        return getCompleteTaskCount() > 0;
    }

    private final String toKey(List<? extends Uri> list) {
        List sortedWith;
        String joinToString$default;
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.data.ImportSelectedContext$toKey$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(((Uri) t).toString(), ((Uri) t2).toString());
                return compareValues;
            }
        });
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(sortedWith, IidStore.f35940g, null, null, 0, null, null, 62, null);
        return joinToString$default;
    }

    public final void addDefaultImportInfo(@NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        for (Uri uri : uriList) {
            Map<String, ImportInfo> map = this.importInfoMap;
            String uri2 = uri.toString();
            Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
            map.put(uri2, new ImportInfo(uri, 0, 2, null));
        }
        countTotalImportInfo();
    }

    public final void addTaskInfo(@NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        this.taskInfoMap.put(toKey(uriList), new TaskInfo(uriList, false, 0, 6, null));
    }

    public final void completeCount(@NotNull List<? extends Uri> uriList, int importedCount, @NotNull Function1<? super ImportSelectedContext, Unit> importSuccessCallback) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        Intrinsics.checkNotNullParameter(importSuccessCallback, "importSuccessCallback");
        TaskInfo taskInfo = this.taskInfoMap.get(toKey(uriList));
        if (taskInfo != null) {
            taskInfo.setComplete(true);
            taskInfo.setImportedCount(importedCount);
        }
        if (isAllComplete() && isImportSuccess()) {
            importSuccessCallback.invoke(this);
        }
    }

    public final int getCompleteTaskCount() {
        int i = 0;
        for (TaskInfo taskInfo : this.taskInfoMap.values()) {
            if (taskInfo.isComplete()) {
                i += taskInfo.getImportedCount();
            }
        }
        return i;
    }

    @Nullable
    public final String getModifyFileName() {
        ModifyItem modifyItem = this.modifyItem;
        if (modifyItem != null) {
            return modifyItem.getFileName();
        }
        return null;
    }

    @Nullable
    public final ModifyItem getModifyItem() {
        return this.modifyItem;
    }

    @Nullable
    public final String getModifyName() {
        String fileName;
        ModifyItem modifyItem = this.modifyItem;
        if (modifyItem == null || (fileName = modifyItem.getFileName()) == null) {
            return null;
        }
        return FileUtils.INSTANCE.getFileBaseName(fileName);
    }

    @Nullable
    public final String getSelectedFolderId() {
        return this.selectedFolderId;
    }

    @Nullable
    public final String getSelectedFolderName() {
        return this.selectedFolderName;
    }

    @Nullable
    public final List<String> getSelectedTagIdList() {
        return this.selectedTagIdList;
    }

    @Nullable
    public final List<String> getSelectedTagNameList() {
        return this.selectedTagNameList;
    }

    public final int getTotalDocCount() {
        return this.totalDocCount;
    }

    @NotNull
    public final List<Uri> getUriList() {
        return this.uriList;
    }

    public final boolean isMultipleDoc() {
        return this.totalDocCount > 1;
    }

    public final boolean isOpenDocument() {
        return !isMultipleDoc();
    }

    public final void removeTaskInfo(@NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        this.taskInfoMap.remove(toKey(uriList));
    }

    public final void resetImportImageAgr(@NotNull ImportImageArgs arg) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        arg.setParentId(this.selectedFolderId);
        List<String> list = this.selectedTagIdList;
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        arg.setTagList(list);
        arg.setImportSelectedContext(this);
    }

    public final void resetNoteImportArg(@NotNull NoteImportArgs arg) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        arg.setImportSelectedContext(this);
        arg.setParentId(this.selectedFolderId);
        arg.setTagIdList(this.selectedTagIdList);
        arg.setImportFolderName(this.selectedFolderName);
        arg.setImportTagNameList(this.selectedTagNameList);
    }

    public final void setModifyItem(@Nullable ModifyItem modifyItem) {
        this.modifyItem = modifyItem;
    }

    public final void setSelectedFolderId(@Nullable String str) {
        this.selectedFolderId = str;
    }

    public final void setSelectedFolderName(@Nullable String str) {
        this.selectedFolderName = str;
    }

    public final void setSelectedTagIdList(@Nullable List<String> list) {
        this.selectedTagIdList = list;
    }

    public final void setSelectedTagNameList(@Nullable List<String> list) {
        this.selectedTagNameList = list;
    }

    public final void setTotalDocCount(int i) {
        this.totalDocCount = i;
    }

    public final void updateImportInfo(@NotNull Uri uri, int totalTaskCount) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        ImportInfo importInfo = this.importInfoMap.get(uri.toString());
        if (importInfo != null) {
            importInfo.setFileCount(Math.max(totalTaskCount, 1));
        }
        countTotalImportInfo();
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;", "", "uri", "Landroid/net/Uri;", "fileCount", "", "(Landroid/net/Uri;I)V", "getFileCount", "()I", "setFileCount", "(I)V", "getUri", "()Landroid/net/Uri;", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final /* data */ class ImportInfo {
        private int fileCount;

        @NotNull
        private final Uri uri;

        public ImportInfo(@NotNull Uri uri, int i) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.uri = uri;
            this.fileCount = i;
        }

        public static /* synthetic */ ImportInfo copy$default(ImportInfo importInfo, Uri uri, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                uri = importInfo.uri;
            }
            if ((i2 & 2) != 0) {
                i = importInfo.fileCount;
            }
            return importInfo.copy(uri, i);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final Uri getUri() {
            return this.uri;
        }

        /* renamed from: component2, reason: from getter */
        public final int getFileCount() {
            return this.fileCount;
        }

        @NotNull
        public final ImportInfo copy(@NotNull Uri uri, int fileCount) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            return new ImportInfo(uri, fileCount);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ImportInfo)) {
                return false;
            }
            ImportInfo importInfo = (ImportInfo) other;
            return Intrinsics.areEqual(this.uri, importInfo.uri) && this.fileCount == importInfo.fileCount;
        }

        public final int getFileCount() {
            return this.fileCount;
        }

        @NotNull
        public final Uri getUri() {
            return this.uri;
        }

        public int hashCode() {
            return (this.uri.hashCode() * 31) + Integer.hashCode(this.fileCount);
        }

        public final void setFileCount(int i) {
            this.fileCount = i;
        }

        @NotNull
        public String toString() {
            return "ImportInfo(uri=" + this.uri + ", fileCount=" + this.fileCount + ')';
        }

        public /* synthetic */ ImportInfo(Uri uri, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(uri, (i2 & 2) != 0 ? 1 : i);
        }
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B'\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0015\u001a\u00020\bHÆ\u0003J-\u0010\u0016\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\bHÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;", "", "uriList", "", "Landroid/net/Uri;", "isComplete", "", "importedCount", "", "(Ljava/util/List;ZI)V", "getImportedCount", "()I", "setImportedCount", "(I)V", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setComplete", "(Z)V", "getUriList", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final /* data */ class TaskInfo {
        private int importedCount;
        private boolean isComplete;

        @NotNull
        private final List<Uri> uriList;

        /* JADX WARN: Multi-variable type inference failed */
        public TaskInfo(@NotNull List<? extends Uri> uriList, boolean z, int i) {
            Intrinsics.checkNotNullParameter(uriList, "uriList");
            this.uriList = uriList;
            this.isComplete = z;
            this.importedCount = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ TaskInfo copy$default(TaskInfo taskInfo, List list, boolean z, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                list = taskInfo.uriList;
            }
            if ((i2 & 2) != 0) {
                z = taskInfo.isComplete;
            }
            if ((i2 & 4) != 0) {
                i = taskInfo.importedCount;
            }
            return taskInfo.copy(list, z, i);
        }

        @NotNull
        public final List<Uri> component1() {
            return this.uriList;
        }

        /* renamed from: component2, reason: from getter */
        public final boolean getIsComplete() {
            return this.isComplete;
        }

        /* renamed from: component3, reason: from getter */
        public final int getImportedCount() {
            return this.importedCount;
        }

        @NotNull
        public final TaskInfo copy(@NotNull List<? extends Uri> uriList, boolean isComplete, int importedCount) {
            Intrinsics.checkNotNullParameter(uriList, "uriList");
            return new TaskInfo(uriList, isComplete, importedCount);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TaskInfo)) {
                return false;
            }
            TaskInfo taskInfo = (TaskInfo) other;
            return Intrinsics.areEqual(this.uriList, taskInfo.uriList) && this.isComplete == taskInfo.isComplete && this.importedCount == taskInfo.importedCount;
        }

        public final int getImportedCount() {
            return this.importedCount;
        }

        @NotNull
        public final List<Uri> getUriList() {
            return this.uriList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = this.uriList.hashCode() * 31;
            boolean z = this.isComplete;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return ((hashCode + i) * 31) + Integer.hashCode(this.importedCount);
        }

        public final boolean isComplete() {
            return this.isComplete;
        }

        public final void setComplete(boolean z) {
            this.isComplete = z;
        }

        public final void setImportedCount(int i) {
            this.importedCount = i;
        }

        @NotNull
        public String toString() {
            return "TaskInfo(uriList=" + this.uriList + ", isComplete=" + this.isComplete + ", importedCount=" + this.importedCount + ')';
        }

        public /* synthetic */ TaskInfo(List list, boolean z, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? 0 : i);
        }
    }
}
