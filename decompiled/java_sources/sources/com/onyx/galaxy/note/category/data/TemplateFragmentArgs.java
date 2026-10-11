package com.onyx.galaxy.note.category.data;

import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010 \n\u0002\b\u000b\u0018\u0000 @2\u00020\u0001:\u0001@B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0006R\u001a\u0010\u001d\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0006\"\u0004\b\u001f\u0010\bR\u001e\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0011\u0010'\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b'\u0010\u0006R\u0011\u0010(\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b(\u0010\u0006R\u0011\u0010)\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b)\u0010\u0006R\u0011\u0010*\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b*\u0010\u0006R\u001c\u0010+\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0018\"\u0004\b-\u0010\u001aR\u0011\u0010.\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b/\u0010\u0006R\u0011\u00100\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b1\u0010\u0006R\u001c\u00102\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0012\"\u0004\b4\u0010\u0014R\"\u00105\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u000106X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001a\u0010;\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?¨\u0006A"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;", "", "()V", "changeContainsCover", "", "getChangeContainsCover", Constants.BOOLEAN_VALUE_SIG, "setChangeContainsCover", "(Z)V", "changeType", "Lcom/onyx/galaxy/note/category/data/TemplateChangeType;", "getChangeType", "()Lcom/onyx/galaxy/note/category/data/TemplateChangeType;", "setChangeType", "(Lcom/onyx/galaxy/note/category/data/TemplateChangeType;)V", "coverTemplateJsonBean", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "getCoverTemplateJsonBean", "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "setCoverTemplateJsonBean", "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "folderId", "", "getFolderId", "()Ljava/lang/String;", "setFolderId", "(Ljava/lang/String;)V", "fullWindowShow", "getFullWindowShow", "hasPictureOrPDF", "getHasPictureOrPDF", "setHasPictureOrPDF", "insertAtPageIndex", "", "getInsertAtPageIndex", "()Ljava/lang/Integer;", "setInsertAtPageIndex", "(Ljava/lang/Integer;)V", Constants.INTEGER_SIG, "isBoundlessNoteOperation", "isChangeType", "isCreateType", "isQuicklyType", "noteId", "getNoteId", "setNoteId", "onlyCoverChange", "getOnlyCoverChange", "onlyPaperChange", "getOnlyPaperChange", "paperTemplateJsonBean", "getPaperTemplateJsonBean", "setPaperTemplateJsonBean", CouchFieldKey.KEY_TAG_ID_LIST, "", "getTagIdList", "()Ljava/util/List;", "setTagIdList", "(Ljava/util/List;)V", "type", "getType", "()I", "setType", "(I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class TemplateFragmentArgs {
    public static final int CHANGE_BOUNDLESS_TEMPLATE = 6;
    public static final int CHANGE_COVER_TEMPLATE_BY_NOTE_ID = 4;
    public static final int CHANGE_NEW_PAGE_TEMPLATE = 7;
    public static final int CHANGE_TEMPLATE = 1;
    public static final int CREATE_BOUNDLESS_TEMPLATE = 5;
    public static final int CREATE_TEMPLATE = 0;
    public static final int INSERT_PAGE_TEMPLATE = 2;
    public static final int QUICKLY_NOTE_TEMPLATE_CHANGE = 3;

    @Nullable
    private TemplateJsonBean coverTemplateJsonBean;

    @Nullable
    private String folderId;
    private boolean hasPictureOrPDF;

    @Nullable
    private Integer insertAtPageIndex;

    @Nullable
    private String noteId;

    @Nullable
    private TemplateJsonBean paperTemplateJsonBean;

    @Nullable
    private List<String> tagIdList;
    private int type;

    @NotNull
    private TemplateChangeType changeType = TemplateChangeType.CHANGE_ALL;
    private boolean changeContainsCover = true;

    public final boolean getChangeContainsCover() {
        return this.changeContainsCover;
    }

    @NotNull
    public final TemplateChangeType getChangeType() {
        return this.changeType;
    }

    @Nullable
    public final TemplateJsonBean getCoverTemplateJsonBean() {
        return this.coverTemplateJsonBean;
    }

    @Nullable
    public final String getFolderId() {
        return this.folderId;
    }

    public final boolean getFullWindowShow() {
        int i = this.type;
        return (i == 2 || i == 1 || i == 7 || i == 4 || i == 6) ? false : true;
    }

    public final boolean getHasPictureOrPDF() {
        return this.hasPictureOrPDF;
    }

    @Nullable
    public final Integer getInsertAtPageIndex() {
        return this.insertAtPageIndex;
    }

    @Nullable
    public final String getNoteId() {
        return this.noteId;
    }

    public final boolean getOnlyCoverChange() {
        return this.changeType == TemplateChangeType.CHANGE_COVER;
    }

    public final boolean getOnlyPaperChange() {
        return this.changeType == TemplateChangeType.CHANGE_PAPER || this.type == 6;
    }

    @Nullable
    public final TemplateJsonBean getPaperTemplateJsonBean() {
        return this.paperTemplateJsonBean;
    }

    @Nullable
    public final List<String> getTagIdList() {
        return this.tagIdList;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean isBoundlessNoteOperation() {
        int i = this.type;
        return i == 5 || i == 6;
    }

    public final boolean isChangeType() {
        int i = this.type;
        return i == 1 || i == 2 || i == 4 || i == 6 || i == 7;
    }

    public final boolean isCreateType() {
        int i = this.type;
        return i == 0 || i == 5;
    }

    public final boolean isQuicklyType() {
        return this.type == 3;
    }

    public final void setChangeContainsCover(boolean z) {
        this.changeContainsCover = z;
    }

    public final void setChangeType(@NotNull TemplateChangeType templateChangeType) {
        Intrinsics.checkNotNullParameter(templateChangeType, "<set-?>");
        this.changeType = templateChangeType;
    }

    public final void setCoverTemplateJsonBean(@Nullable TemplateJsonBean templateJsonBean) {
        this.coverTemplateJsonBean = templateJsonBean;
    }

    public final void setFolderId(@Nullable String str) {
        this.folderId = str;
    }

    public final void setHasPictureOrPDF(boolean z) {
        this.hasPictureOrPDF = z;
    }

    public final void setInsertAtPageIndex(@Nullable Integer num) {
        this.insertAtPageIndex = num;
    }

    public final void setNoteId(@Nullable String str) {
        this.noteId = str;
    }

    public final void setPaperTemplateJsonBean(@Nullable TemplateJsonBean templateJsonBean) {
        this.paperTemplateJsonBean = templateJsonBean;
    }

    public final void setTagIdList(@Nullable List<String> list) {
        this.tagIdList = list;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
