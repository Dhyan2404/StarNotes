package com.onyx.android.sdk.replicator.note.bean;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bE\b\u0086\b\u0018\u0000 Y2\u00020\u0001:\u0001YB£\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0007¢\u0006\u0002\u0010\u0019J\t\u0010C\u001a\u00020\u0003HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\t\u0010E\u001a\u00020\u0015HÆ\u0003J\t\u0010F\u001a\u00020\u0003HÆ\u0003J\t\u0010G\u001a\u00020\u0007HÆ\u0003J\t\u0010H\u001a\u00020\u0007HÆ\u0003J\t\u0010I\u001a\u00020\u0003HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010K\u001a\u00020\u0007HÆ\u0003J\u000f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000f\u0010N\u001a\b\u0012\u0004\u0012\u00020\u000e0\rHÆ\u0003J\t\u0010O\u001a\u00020\u0010HÆ\u0003J\t\u0010P\u001a\u00020\u0007HÆ\u0003J§\u0001\u0010Q\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u0007HÆ\u0001J\u0013\u0010R\u001a\u00020\u00102\b\u0010S\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010T\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010U\u001a\u00020\u0015J\f\u0010V\u001a\b\u0012\u0004\u0012\u00020\u00030\rJ\t\u0010W\u001a\u00020\u0007HÖ\u0001J\t\u0010X\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0016\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001b\"\u0004\b'\u0010\u001dR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010(\"\u0004\b)\u0010*R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001b\"\u0004\b,\u0010\u001dR\u001a\u0010\u0018\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u0010\u0011\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010.\"\u0004\b2\u00100R\u001a\u0010\u0017\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010.\"\u0004\b4\u00100R \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u001b\"\u0004\b:\u0010\u001dR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010.\"\u0004\b<\u00100R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u00106\"\u0004\bB\u00108¨\u0006Z"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "", "noteName", "", "documentId", CouchFieldKey.KEY_PARENT_UNIQUE_ID, "scene", "", "tagList", "", "coverJsonBean", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "paperBeanList", "", "Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;", "isContainsCover", "", "orientation", CouchFieldKey.KEY_SIZE_FORMAT, "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "coverRectF", "Landroid/graphics/RectF;", "contentPath", "pageFillColor", CouchFieldKey.KEY_NOTE_SYNC_STATUS, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;ZILcom/onyx/android/sdk/replicator/note/bean/SizeFormat;Landroid/graphics/RectF;Ljava/lang/String;II)V", "getContentPath", "()Ljava/lang/String;", "setContentPath", "(Ljava/lang/String;)V", "getCoverJsonBean", "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "setCoverJsonBean", "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "getCoverRectF", "()Landroid/graphics/RectF;", "setCoverRectF", "(Landroid/graphics/RectF;)V", "getDocumentId", "setDocumentId", Constants.BOOLEAN_VALUE_SIG, "setContainsCover", "(Z)V", "getNoteName", "setNoteName", "getNoteSyncStatus", "()I", "setNoteSyncStatus", "(I)V", "getOrientation", "setOrientation", "getPageFillColor", "setPageFillColor", "getPaperBeanList", "()Ljava/util/List;", "setPaperBeanList", "(Ljava/util/List;)V", "getParentUniqueId", "setParentUniqueId", "getScene", "setScene", "getSizeFormat", "()Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "setSizeFormat", "(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V", "getTagList", "setTagList", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "firstPaperJsonBean", "firstPaperRectF", "getTagIdList", "hashCode", "toString", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class NoteCreateInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private String contentPath;

    @Nullable
    private TemplateJsonBean coverJsonBean;

    @NotNull
    private RectF coverRectF;

    @NotNull
    private String documentId;
    private boolean isContainsCover;

    @NotNull
    private String noteName;
    private int noteSyncStatus;
    private int orientation;
    private int pageFillColor;

    @NotNull
    private List<PaperBean> paperBeanList;

    @Nullable
    private String parentUniqueId;
    private int scene;

    @Nullable
    private SizeFormat sizeFormat;

    @NotNull
    private List<String> tagList;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\u0006¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo$Companion;", "", "()V", "checkCoverValid", "", "noteCreateInfo", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "checkPaperValid", "checkQuickTemplateValid", "checkValid", "createFromPDF", "path", "", "noteName", "quicklyNoteInfo", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean checkCoverValid(NoteCreateInfo noteCreateInfo) {
            if (!noteCreateInfo.isContainsCover()) {
                return true;
            }
            TemplateJsonBean coverJsonBean = noteCreateInfo.getCoverJsonBean();
            return coverJsonBean != null && FileUtils.INSTANCE.isFileExist(TemplatePaths.INSTANCE.templateResAbsolutePath(coverJsonBean.getRelativePath()));
        }

        private final boolean checkPaperValid(NoteCreateInfo noteCreateInfo) {
            TemplateJsonBean paperJsonBean;
            return (noteCreateInfo.getPaperBeanList().isEmpty() ^ true) && (paperJsonBean = noteCreateInfo.getPaperBeanList().get(0).getPaperJsonBean()) != null && FileUtils.INSTANCE.isFileExist(TemplatePaths.INSTANCE.templateResAbsolutePath(paperJsonBean.getRelativePath()));
        }

        public final boolean checkQuickTemplateValid(@NotNull NoteCreateInfo noteCreateInfo) {
            Intrinsics.checkNotNullParameter(noteCreateInfo, "noteCreateInfo");
            return checkCoverValid(noteCreateInfo) && checkPaperValid(noteCreateInfo);
        }

        public final boolean checkValid(@NotNull NoteCreateInfo noteCreateInfo) {
            Intrinsics.checkNotNullParameter(noteCreateInfo, "noteCreateInfo");
            return !noteCreateInfo.getPaperBeanList().isEmpty();
        }

        @NotNull
        public final NoteCreateInfo createFromPDF(@NotNull String path, @NotNull String noteName) {
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(noteName, "noteName");
            return new NoteCreateInfo(noteName, null, null, 3, null, null, null, false, 0, null, null, path, 0, 0, 14326, null);
        }

        @NotNull
        public final NoteCreateInfo quicklyNoteInfo() {
            NoteCreateInfo noteCreateInfo = new NoteCreateInfo(null, null, null, 0, null, null, null, false, 0, null, null, null, 0, 0, 16383, null);
            noteCreateInfo.setContainsCover(true);
            noteCreateInfo.setSizeFormat(SizeFormat.f45503A4);
            return noteCreateInfo;
        }

        private Companion() {
        }
    }

    public NoteCreateInfo() {
        this(null, null, null, 0, null, null, null, false, 0, null, null, null, 0, 0, 16383, null);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getNoteName() {
        return this.noteName;
    }

    @Nullable
    /* renamed from: component10, reason: from getter */
    public final SizeFormat getSizeFormat() {
        return this.sizeFormat;
    }

    @NotNull
    /* renamed from: component11, reason: from getter */
    public final RectF getCoverRectF() {
        return this.coverRectF;
    }

    @NotNull
    /* renamed from: component12, reason: from getter */
    public final String getContentPath() {
        return this.contentPath;
    }

    /* renamed from: component13, reason: from getter */
    public final int getPageFillColor() {
        return this.pageFillColor;
    }

    /* renamed from: component14, reason: from getter */
    public final int getNoteSyncStatus() {
        return this.noteSyncStatus;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getParentUniqueId() {
        return this.parentUniqueId;
    }

    /* renamed from: component4, reason: from getter */
    public final int getScene() {
        return this.scene;
    }

    @NotNull
    public final List<String> component5() {
        return this.tagList;
    }

    @Nullable
    /* renamed from: component6, reason: from getter */
    public final TemplateJsonBean getCoverJsonBean() {
        return this.coverJsonBean;
    }

    @NotNull
    public final List<PaperBean> component7() {
        return this.paperBeanList;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getIsContainsCover() {
        return this.isContainsCover;
    }

    /* renamed from: component9, reason: from getter */
    public final int getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final NoteCreateInfo copy(@NotNull String noteName, @NotNull String documentId, @Nullable String parentUniqueId, int scene, @NotNull List<String> tagList, @Nullable TemplateJsonBean coverJsonBean, @NotNull List<PaperBean> paperBeanList, boolean isContainsCover, int orientation, @Nullable SizeFormat sizeFormat, @NotNull RectF coverRectF, @NotNull String contentPath, int pageFillColor, int noteSyncStatus) {
        Intrinsics.checkNotNullParameter(noteName, "noteName");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(tagList, "tagList");
        Intrinsics.checkNotNullParameter(paperBeanList, "paperBeanList");
        Intrinsics.checkNotNullParameter(coverRectF, "coverRectF");
        Intrinsics.checkNotNullParameter(contentPath, "contentPath");
        return new NoteCreateInfo(noteName, documentId, parentUniqueId, scene, tagList, coverJsonBean, paperBeanList, isContainsCover, orientation, sizeFormat, coverRectF, contentPath, pageFillColor, noteSyncStatus);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NoteCreateInfo)) {
            return false;
        }
        NoteCreateInfo noteCreateInfo = (NoteCreateInfo) other;
        return Intrinsics.areEqual(this.noteName, noteCreateInfo.noteName) && Intrinsics.areEqual(this.documentId, noteCreateInfo.documentId) && Intrinsics.areEqual(this.parentUniqueId, noteCreateInfo.parentUniqueId) && this.scene == noteCreateInfo.scene && Intrinsics.areEqual(this.tagList, noteCreateInfo.tagList) && Intrinsics.areEqual(this.coverJsonBean, noteCreateInfo.coverJsonBean) && Intrinsics.areEqual(this.paperBeanList, noteCreateInfo.paperBeanList) && this.isContainsCover == noteCreateInfo.isContainsCover && this.orientation == noteCreateInfo.orientation && this.sizeFormat == noteCreateInfo.sizeFormat && Intrinsics.areEqual(this.coverRectF, noteCreateInfo.coverRectF) && Intrinsics.areEqual(this.contentPath, noteCreateInfo.contentPath) && this.pageFillColor == noteCreateInfo.pageFillColor && this.noteSyncStatus == noteCreateInfo.noteSyncStatus;
    }

    @Nullable
    public final TemplateJsonBean firstPaperJsonBean() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.paperBeanList);
        PaperBean paperBean = (PaperBean) firstOrNull;
        if (paperBean != null) {
            return paperBean.getPaperJsonBean();
        }
        return null;
    }

    @NotNull
    public final RectF firstPaperRectF() {
        Object firstOrNull;
        RectF paperRectF;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.paperBeanList);
        PaperBean paperBean = (PaperBean) firstOrNull;
        return (paperBean == null || (paperRectF = paperBean.getPaperRectF()) == null) ? new RectF() : paperRectF;
    }

    @NotNull
    public final String getContentPath() {
        return this.contentPath;
    }

    @Nullable
    public final TemplateJsonBean getCoverJsonBean() {
        return this.coverJsonBean;
    }

    @NotNull
    public final RectF getCoverRectF() {
        return this.coverRectF;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    public final String getNoteName() {
        return this.noteName;
    }

    public final int getNoteSyncStatus() {
        return this.noteSyncStatus;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public final int getPageFillColor() {
        return this.pageFillColor;
    }

    @NotNull
    public final List<PaperBean> getPaperBeanList() {
        return this.paperBeanList;
    }

    @Nullable
    public final String getParentUniqueId() {
        return this.parentUniqueId;
    }

    public final int getScene() {
        return this.scene;
    }

    @Nullable
    public final SizeFormat getSizeFormat() {
        return this.sizeFormat;
    }

    @NotNull
    public final List<String> getTagIdList() {
        List<String> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.tagList);
        return mutableList;
    }

    @NotNull
    public final List<String> getTagList() {
        return this.tagList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.noteName.hashCode() * 31) + this.documentId.hashCode()) * 31;
        String str = this.parentUniqueId;
        int hashCode2 = (((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.scene)) * 31) + this.tagList.hashCode()) * 31;
        TemplateJsonBean templateJsonBean = this.coverJsonBean;
        int hashCode3 = (((hashCode2 + (templateJsonBean == null ? 0 : templateJsonBean.hashCode())) * 31) + this.paperBeanList.hashCode()) * 31;
        boolean z = this.isContainsCover;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int hashCode4 = (((hashCode3 + i) * 31) + Integer.hashCode(this.orientation)) * 31;
        SizeFormat sizeFormat = this.sizeFormat;
        return ((((((((hashCode4 + (sizeFormat != null ? sizeFormat.hashCode() : 0)) * 31) + this.coverRectF.hashCode()) * 31) + this.contentPath.hashCode()) * 31) + Integer.hashCode(this.pageFillColor)) * 31) + Integer.hashCode(this.noteSyncStatus);
    }

    public final boolean isContainsCover() {
        return this.isContainsCover;
    }

    public final void setContainsCover(boolean z) {
        this.isContainsCover = z;
    }

    public final void setContentPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPath = str;
    }

    public final void setCoverJsonBean(@Nullable TemplateJsonBean templateJsonBean) {
        this.coverJsonBean = templateJsonBean;
    }

    public final void setCoverRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.coverRectF = rectF;
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setNoteName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.noteName = str;
    }

    public final void setNoteSyncStatus(int i) {
        this.noteSyncStatus = i;
    }

    public final void setOrientation(int i) {
        this.orientation = i;
    }

    public final void setPageFillColor(int i) {
        this.pageFillColor = i;
    }

    public final void setPaperBeanList(@NotNull List<PaperBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.paperBeanList = list;
    }

    public final void setParentUniqueId(@Nullable String str) {
        this.parentUniqueId = str;
    }

    public final void setScene(int i) {
        this.scene = i;
    }

    public final void setSizeFormat(@Nullable SizeFormat sizeFormat) {
        this.sizeFormat = sizeFormat;
    }

    public final void setTagList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tagList = list;
    }

    @NotNull
    public String toString() {
        return "NoteCreateInfo(noteName=" + this.noteName + ", documentId=" + this.documentId + ", parentUniqueId=" + this.parentUniqueId + ", scene=" + this.scene + ", tagList=" + this.tagList + ", coverJsonBean=" + this.coverJsonBean + ", paperBeanList=" + this.paperBeanList + ", isContainsCover=" + this.isContainsCover + ", orientation=" + this.orientation + ", sizeFormat=" + this.sizeFormat + ", coverRectF=" + this.coverRectF + ", contentPath=" + this.contentPath + ", pageFillColor=" + this.pageFillColor + ", noteSyncStatus=" + this.noteSyncStatus + ')';
    }

    public NoteCreateInfo(@NotNull String noteName, @NotNull String documentId, @Nullable String str, int i, @NotNull List<String> tagList, @Nullable TemplateJsonBean templateJsonBean, @NotNull List<PaperBean> paperBeanList, boolean z, int i2, @Nullable SizeFormat sizeFormat, @NotNull RectF coverRectF, @NotNull String contentPath, int i3, int i4) {
        Intrinsics.checkNotNullParameter(noteName, "noteName");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(tagList, "tagList");
        Intrinsics.checkNotNullParameter(paperBeanList, "paperBeanList");
        Intrinsics.checkNotNullParameter(coverRectF, "coverRectF");
        Intrinsics.checkNotNullParameter(contentPath, "contentPath");
        this.noteName = noteName;
        this.documentId = documentId;
        this.parentUniqueId = str;
        this.scene = i;
        this.tagList = tagList;
        this.coverJsonBean = templateJsonBean;
        this.paperBeanList = paperBeanList;
        this.isContainsCover = z;
        this.orientation = i2;
        this.sizeFormat = sizeFormat;
        this.coverRectF = coverRectF;
        this.contentPath = contentPath;
        this.pageFillColor = i3;
        this.noteSyncStatus = i4;
    }

    public /* synthetic */ NoteCreateInfo(String str, String str2, String str3, int i, List list, TemplateJsonBean templateJsonBean, List list2, boolean z, int i2, SizeFormat sizeFormat, RectF rectF, String str4, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? "" : str, (i5 & 2) != 0 ? UUIDUtils.INSTANCE.rawUUID() : str2, (i5 & 4) != 0 ? null : str3, (i5 & 8) != 0 ? 0 : i, (i5 & 16) != 0 ? new ArrayList() : list, (i5 & 32) != 0 ? null : templateJsonBean, (i5 & 64) != 0 ? new ArrayList() : list2, (i5 & 128) == 0 ? z : false, (i5 & 256) != 0 ? Orientation.PORTRAIT.getValue() : i2, (i5 & 512) == 0 ? sizeFormat : null, (i5 & 1024) != 0 ? new RectF() : rectF, (i5 & 2048) == 0 ? str4 : "", (i5 & 4096) != 0 ? -1 : i3, (i5 & 8192) != 0 ? 1 : i4);
    }
}
