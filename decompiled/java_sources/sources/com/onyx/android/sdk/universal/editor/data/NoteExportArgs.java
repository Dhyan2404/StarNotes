package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.neopdf.export.ExportPdfPageLinks;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010#\n\u0002\b\f\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0086\b\u0018\u0000 ^2\u00020\u0001:\u0001^B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010S\u001a\u00020\u0003HÆ\u0003J\u000f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010U\u001a\u00020\bHÆ\u0003J\t\u0010V\u001a\u00020\nHÆ\u0003J7\u0010W\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010X\u001a\u00020\n2\b\u0010Y\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010Z\u001a\u00020;HÖ\u0001J\u0006\u0010[\u001a\u00020\nJ\u0006\u0010\\\u001a\u00020\nJ\t\u0010]\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR \u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001a\"\u0004\b$\u0010\u001cR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001a\"\u0004\b&\u0010\u001cR\u001c\u0010'\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b8\u0010\u001fR&\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020;0:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R6\u0010@\u001a\u001e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020B0Aj\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020B`CX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR-\u0010H\u001a\u001e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0Aj\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J`C¢\u0006\b\n\u0000\u001a\u0004\bK\u0010ER\u001e\u0010L\u001a\u00060Mj\u0002`NX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010R¨\u0006_"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "pageIdList", "", "", "noteProgressInfo", "Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;", "exportTemplate", "", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;Z)V", "benchmarkScale", "", "getBenchmarkScale", "()F", "setBenchmarkScale", "(F)V", "exportDraftPageArgs", "Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;", "getExportDraftPageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;", "setExportDraftPageArgs", "(Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;)V", "exportFlattenPage", "getExportFlattenPage", Constants.BOOLEAN_VALUE_SIG, "setExportFlattenPage", "(Z)V", "exportPageIdList", "getExportPageIdList", "()Ljava/util/List;", "setExportPageIdList", "(Ljava/util/List;)V", "exportStashArchivedData", "getExportStashArchivedData", "setExportStashArchivedData", "getExportTemplate", "setExportTemplate", "exportThumbnailPath", "getExportThumbnailPath", "()Ljava/lang/String;", "setExportThumbnailPath", "(Ljava/lang/String;)V", "exportedDraftShapeIds", "", "getExportedDraftShapeIds", "()Ljava/util/Set;", "setExportedDraftShapeIds", "(Ljava/util/Set;)V", "getNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteProgressInfo", "()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;", "setNoteProgressInfo", "(Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;)V", "getPageIdList", "pageIndexMap", "", "", "getPageIndexMap", "()Ljava/util/Map;", "setPageIndexMap", "(Ljava/util/Map;)V", "pendingPdfPageLinkMap", "Ljava/util/LinkedHashMap;", "Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;", "Lkotlin/collections/LinkedHashMap;", "getPendingPdfPageLinkMap", "()Ljava/util/LinkedHashMap;", "setPendingPdfPageLinkMap", "(Ljava/util/LinkedHashMap;)V", "pendingShapeMap", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;", "getPendingShapeMap", "templateLimitSize", "Lcom/onyx/android/sdk/base/data/Size;", "Lcom/onyx/android/sdk/base/data/DataSize;", "getTemplateLimitSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setTemplateLimitSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "component1", "component2", "component3", "component4", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "isPageIdEmpty", "isPageIdMoreThanOne", "toString", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class NoteExportArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int SAVE_PAGE_NATIVE_MEMORY_LIMIT = 31457280;
    private float benchmarkScale;

    @Nullable
    private ExportDraftPageArgs exportDraftPageArgs;
    private boolean exportFlattenPage;

    @NotNull
    private List<String> exportPageIdList;
    private boolean exportStashArchivedData;
    private boolean exportTemplate;

    @Nullable
    private String exportThumbnailPath;

    @Nullable
    private Set<String> exportedDraftShapeIds;

    @NotNull
    private final SyncNoteModel noteModel;

    @NotNull
    private NoteProgressInfo noteProgressInfo;

    @NotNull
    private final List<String> pageIdList;

    @NotNull
    private Map<String, Integer> pageIndexMap;

    @NotNull
    private LinkedHashMap<Integer, ExportPdfPageLinks> pendingPdfPageLinkMap;

    @NotNull
    private final LinkedHashMap<Shape, EmbedShapeArgs> pendingShapeMap;

    @NotNull
    private Size templateLimitSize;

    @Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u000b0\bJ\u001a\u0010\f\u001a\u0004\u0018\u00010\t*\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\b*\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion;", "", "()V", "SAVE_PAGE_NATIVE_MEMORY_LIMIT", "", "getExportArgsListProgress", "", "list", "", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "toNoteExportArgsList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "findByNoteId", "id", "", "setExportFlattenPage", "exportFlattenPage", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nNoteExportArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteExportArgs.kt\ncom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1549#2:78\n1620#2,3:79\n1855#2,2:82\n1855#2,2:84\n1#3:86\n*S KotlinDebug\n*F\n+ 1 NoteExportArgs.kt\ncom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion\n*L\n50#1:78\n50#1:79,3\n60#1:82,2\n67#1:84,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final NoteExportArgs findByNoteId(@NotNull List<NoteExportArgs> list, @NotNull String id) {
            Object obj;
            Intrinsics.checkNotNullParameter(list, "<this>");
            Intrinsics.checkNotNullParameter(id, "id");
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(((NoteExportArgs) obj).getNoteModel().getUniqueId(), id)) {
                    break;
                }
            }
            return (NoteExportArgs) obj;
        }

        public final float getExportArgsListProgress(@NotNull List<NoteExportArgs> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            float f = 0.0f;
            if (list.isEmpty()) {
                return 0.0f;
            }
            float size = 1.0f / CollectionKt.getSize(list);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                f += ((float) ((NoteExportArgs) it2.next()).getNoteProgressInfo().getProgressInfo().getProgress()) * size;
            }
            return f;
        }

        @NotNull
        public final List<NoteExportArgs> setExportFlattenPage(@NotNull List<NoteExportArgs> list, boolean z) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                ((NoteExportArgs) it2.next()).setExportFlattenPage(z);
            }
            return list;
        }

        @NotNull
        public final List<NoteExportArgs> toNoteExportArgsList(@NotNull List<? extends SyncNoteModel> list) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(list, "list");
            List<? extends SyncNoteModel> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(new NoteExportArgs((SyncNoteModel) it2.next(), null, null, false, 14, null));
            }
            return arrayList;
        }

        private Companion() {
        }
    }

    public NoteExportArgs(@NotNull SyncNoteModel noteModel, @NotNull List<String> pageIdList, @NotNull NoteProgressInfo noteProgressInfo, boolean z) {
        List<String> emptyList;
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        Intrinsics.checkNotNullParameter(noteProgressInfo, "noteProgressInfo");
        this.noteModel = noteModel;
        this.pageIdList = pageIdList;
        this.noteProgressInfo = noteProgressInfo;
        this.exportTemplate = z;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.exportPageIdList = emptyList;
        this.exportStashArchivedData = true;
        this.templateLimitSize = Size.INSTANCE.toDataSize(SizeFormat.INSTANCE.getMaxSize());
        this.benchmarkScale = 1.0f;
        this.pendingShapeMap = new LinkedHashMap<>();
        this.pendingPdfPageLinkMap = new LinkedHashMap<>();
        this.pageIndexMap = new LinkedHashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NoteExportArgs copy$default(NoteExportArgs noteExportArgs, SyncNoteModel syncNoteModel, List list, NoteProgressInfo noteProgressInfo, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            syncNoteModel = noteExportArgs.noteModel;
        }
        if ((i & 2) != 0) {
            list = noteExportArgs.pageIdList;
        }
        if ((i & 4) != 0) {
            noteProgressInfo = noteExportArgs.noteProgressInfo;
        }
        if ((i & 8) != 0) {
            z = noteExportArgs.exportTemplate;
        }
        return noteExportArgs.copy(syncNoteModel, list, noteProgressInfo, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final SyncNoteModel getNoteModel() {
        return this.noteModel;
    }

    @NotNull
    public final List<String> component2() {
        return this.pageIdList;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final NoteProgressInfo getNoteProgressInfo() {
        return this.noteProgressInfo;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getExportTemplate() {
        return this.exportTemplate;
    }

    @NotNull
    public final NoteExportArgs copy(@NotNull SyncNoteModel noteModel, @NotNull List<String> pageIdList, @NotNull NoteProgressInfo noteProgressInfo, boolean exportTemplate) {
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        Intrinsics.checkNotNullParameter(noteProgressInfo, "noteProgressInfo");
        return new NoteExportArgs(noteModel, pageIdList, noteProgressInfo, exportTemplate);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NoteExportArgs)) {
            return false;
        }
        NoteExportArgs noteExportArgs = (NoteExportArgs) other;
        return Intrinsics.areEqual(this.noteModel, noteExportArgs.noteModel) && Intrinsics.areEqual(this.pageIdList, noteExportArgs.pageIdList) && Intrinsics.areEqual(this.noteProgressInfo, noteExportArgs.noteProgressInfo) && this.exportTemplate == noteExportArgs.exportTemplate;
    }

    public final float getBenchmarkScale() {
        return this.benchmarkScale;
    }

    @Nullable
    public final ExportDraftPageArgs getExportDraftPageArgs() {
        return this.exportDraftPageArgs;
    }

    public final boolean getExportFlattenPage() {
        return this.exportFlattenPage;
    }

    @NotNull
    public final List<String> getExportPageIdList() {
        return this.exportPageIdList;
    }

    public final boolean getExportStashArchivedData() {
        return this.exportStashArchivedData;
    }

    public final boolean getExportTemplate() {
        return this.exportTemplate;
    }

    @Nullable
    public final String getExportThumbnailPath() {
        return this.exportThumbnailPath;
    }

    @Nullable
    public final Set<String> getExportedDraftShapeIds() {
        return this.exportedDraftShapeIds;
    }

    @NotNull
    public final SyncNoteModel getNoteModel() {
        return this.noteModel;
    }

    @NotNull
    public final NoteProgressInfo getNoteProgressInfo() {
        return this.noteProgressInfo;
    }

    @NotNull
    public final List<String> getPageIdList() {
        return this.pageIdList;
    }

    @NotNull
    public final Map<String, Integer> getPageIndexMap() {
        return this.pageIndexMap;
    }

    @NotNull
    public final LinkedHashMap<Integer, ExportPdfPageLinks> getPendingPdfPageLinkMap() {
        return this.pendingPdfPageLinkMap;
    }

    @NotNull
    public final LinkedHashMap<Shape, EmbedShapeArgs> getPendingShapeMap() {
        return this.pendingShapeMap;
    }

    @NotNull
    public final Size getTemplateLimitSize() {
        return this.templateLimitSize;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.noteModel.hashCode() * 31) + this.pageIdList.hashCode()) * 31) + this.noteProgressInfo.hashCode()) * 31;
        boolean z = this.exportTemplate;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final boolean isPageIdEmpty() {
        return CollectionKt.isNullOrEmpty(this.pageIdList);
    }

    public final boolean isPageIdMoreThanOne() {
        return CollectionKt.getSize(this.pageIdList) > 1;
    }

    public final void setBenchmarkScale(float f) {
        this.benchmarkScale = f;
    }

    public final void setExportDraftPageArgs(@Nullable ExportDraftPageArgs exportDraftPageArgs) {
        this.exportDraftPageArgs = exportDraftPageArgs;
    }

    public final void setExportFlattenPage(boolean z) {
        this.exportFlattenPage = z;
    }

    public final void setExportPageIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.exportPageIdList = list;
    }

    public final void setExportStashArchivedData(boolean z) {
        this.exportStashArchivedData = z;
    }

    public final void setExportTemplate(boolean z) {
        this.exportTemplate = z;
    }

    public final void setExportThumbnailPath(@Nullable String str) {
        this.exportThumbnailPath = str;
    }

    public final void setExportedDraftShapeIds(@Nullable Set<String> set) {
        this.exportedDraftShapeIds = set;
    }

    public final void setNoteProgressInfo(@NotNull NoteProgressInfo noteProgressInfo) {
        Intrinsics.checkNotNullParameter(noteProgressInfo, "<set-?>");
        this.noteProgressInfo = noteProgressInfo;
    }

    public final void setPageIndexMap(@NotNull Map<String, Integer> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.pageIndexMap = map;
    }

    public final void setPendingPdfPageLinkMap(@NotNull LinkedHashMap<Integer, ExportPdfPageLinks> linkedHashMap) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<set-?>");
        this.pendingPdfPageLinkMap = linkedHashMap;
    }

    public final void setTemplateLimitSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.templateLimitSize = size;
    }

    @NotNull
    public String toString() {
        return "NoteExportArgs(noteModel=" + this.noteModel + ", pageIdList=" + this.pageIdList + ", noteProgressInfo=" + this.noteProgressInfo + ", exportTemplate=" + this.exportTemplate + ')';
    }

    public /* synthetic */ NoteExportArgs(SyncNoteModel syncNoteModel, List list, NoteProgressInfo noteProgressInfo, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(syncNoteModel, (i & 2) != 0 ? new ArrayList() : list, (i & 4) != 0 ? new NoteProgressInfo() : noteProgressInfo, (i & 8) != 0 ? true : z);
    }
}
