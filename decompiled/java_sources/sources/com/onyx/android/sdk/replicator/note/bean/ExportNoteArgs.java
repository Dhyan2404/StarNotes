package com.onyx.android.sdk.replicator.note.bean;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.replicator.note.proto.data.ExtraInfoBean;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010#\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010A\u001a\u00020B2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00040DR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR&\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\f\"\u0004\b\u001e\u0010\u000eR\u0017\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040 ¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\f\"\u0004\b%\u0010\u000eR\u001a\u0010&\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\f\"\u0004\b(\u0010\u000eR\u001c\u0010)\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0006\"\u0004\b+\u0010\bR\u001c\u0010,\u001a\u0004\u0018\u00010-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00102\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u000103X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001a\u00108\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\f\"\u0004\b:\u0010\u000eR\u001c\u0010;\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u0006\"\u0004\b=\u0010\bR\u001a\u0010>\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\f\"\u0004\b@\u0010\u000e¨\u0006E"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "", "()V", "documentId", "", "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", "exportDebugData", "", "getExportDebugData", Constants.BOOLEAN_VALUE_SIG, "setExportDebugData", "(Z)V", "exportDirPath", "getExportDirPath", "setExportDirPath", "exportGlobalPage", "getExportGlobalPage", "setExportGlobalPage", "exportPdfPagesResult", "", "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;", "getExportPdfPagesResult", "()Ljava/util/Map;", "setExportPdfPagesResult", "(Ljava/util/Map;)V", "exportRemovedPages", "getExportRemovedPages", "setExportRemovedPages", "exportResourceIdSet", "", "getExportResourceIdSet", "()Ljava/util/Set;", "exportStashArchivedData", "getExportStashArchivedData", "setExportStashArchivedData", "exportTemplate", "getExportTemplate", "setExportTemplate", "exportThumbnailPath", "getExportThumbnailPath", "setExportThumbnailPath", "infoBean", "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;", "getInfoBean", "()Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;", "setInfoBean", "(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)V", "pageIdList", "", "getPageIdList", "()Ljava/util/List;", "setPageIdList", "(Ljava/util/List;)V", "resetViewPortId", "getResetViewPortId", "setResetViewPortId", "title", "getTitle", "setTitle", "transformReferenceShape", "getTransformReferenceShape", "setTransformReferenceShape", "addGlobalPageId", "", "pageIds", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExportNoteArgs {
    public String documentId;
    private boolean exportGlobalPage;

    @Nullable
    private String exportThumbnailPath;

    @Nullable
    private ExtraInfoBean infoBean;

    @Nullable
    private List<String> pageIdList;

    @Nullable
    private String title;
    private boolean transformReferenceShape;

    @NotNull
    private String exportDirPath = "";
    private boolean exportTemplate = true;
    private boolean exportStashArchivedData = true;
    private boolean resetViewPortId = true;

    @NotNull
    private Map<String, ExportPdfPagesResult> exportPdfPagesResult = MapsKt.emptyMap();

    @NotNull
    private final Set<String> exportResourceIdSet = new LinkedHashSet();
    private boolean exportRemovedPages = true;
    private boolean exportDebugData = Debug.INSTANCE.getDebug();

    public final void addGlobalPageId(@NotNull List<String> pageIds) {
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        if (this.exportGlobalPage) {
            pageIds.add(getDocumentId());
        }
    }

    @NotNull
    public final String getDocumentId() {
        String str = this.documentId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("documentId");
        return null;
    }

    public final boolean getExportDebugData() {
        return this.exportDebugData;
    }

    @NotNull
    public final String getExportDirPath() {
        return this.exportDirPath;
    }

    public final boolean getExportGlobalPage() {
        return this.exportGlobalPage;
    }

    @NotNull
    public final Map<String, ExportPdfPagesResult> getExportPdfPagesResult() {
        return this.exportPdfPagesResult;
    }

    public final boolean getExportRemovedPages() {
        return this.exportRemovedPages;
    }

    @NotNull
    public final Set<String> getExportResourceIdSet() {
        return this.exportResourceIdSet;
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
    public final ExtraInfoBean getInfoBean() {
        return this.infoBean;
    }

    @Nullable
    public final List<String> getPageIdList() {
        return this.pageIdList;
    }

    public final boolean getResetViewPortId() {
        return this.resetViewPortId;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final boolean getTransformReferenceShape() {
        return this.transformReferenceShape;
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setExportDebugData(boolean z) {
        this.exportDebugData = z;
    }

    public final void setExportDirPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.exportDirPath = str;
    }

    public final void setExportGlobalPage(boolean z) {
        this.exportGlobalPage = z;
    }

    public final void setExportPdfPagesResult(@NotNull Map<String, ExportPdfPagesResult> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.exportPdfPagesResult = map;
    }

    public final void setExportRemovedPages(boolean z) {
        this.exportRemovedPages = z;
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

    public final void setInfoBean(@Nullable ExtraInfoBean extraInfoBean) {
        this.infoBean = extraInfoBean;
    }

    public final void setPageIdList(@Nullable List<String> list) {
        this.pageIdList = list;
    }

    public final void setResetViewPortId(boolean z) {
        this.resetViewPortId = z;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setTransformReferenceShape(boolean z) {
        this.transformReferenceShape = z;
    }
}
