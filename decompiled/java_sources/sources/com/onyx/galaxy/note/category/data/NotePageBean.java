package com.onyx.galaxy.note.category.data;

import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.PageModelBean;
import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.replicator.note.p035db.model.SortModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\b\u0018\u0000 (2\u00020\u0001:\u0001(B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J+\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010\u0016\u001a\u00020\u0017J\r\u0010\u0018\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0019J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001bJ\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\u0006\u0010 \u001a\u00020\u0014J\u0006\u0010!\u001a\u00020\u0014J\u0006\u0010\"\u001a\u00020\u0014J\u0006\u0010#\u001a\u00020\u0014J\u0006\u0010$\u001a\u00020\u0014J\u0006\u0010%\u001a\u00020\u0014J\u0006\u0010&\u001a\u00020\u0014J\t\u0010'\u001a\u00020\u001dHÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NotePageBean;", "", "type", "", "noteModelBean", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "pageModelBean", "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;", "(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V", "getNoteModelBean", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "getPageModelBean", "()Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;", "getType", "()I", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "getManualOrderIndex", "", "getScene", "()Ljava/lang/Integer;", "getSortCreateAt", "", "getSortName", "", "getSortUpdateAt", "hashCode", "isHeaderType", "isNoteDoc", "isNoteFolder", "isNoteScene", "isNoteType", "isPageType", "isPdfScene", "toString", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final /* data */ class NotePageBean {
    public static final int TYPE_HEADER = 3;
    public static final int TYPE_NOTE = 2;
    public static final int TYPE_PAGE = 1;

    @Nullable
    private final NoteModelBean noteModelBean;

    @Nullable
    private final PageModelBean pageModelBean;
    private final int type;

    public NotePageBean(int i, @Nullable NoteModelBean noteModelBean, @Nullable PageModelBean pageModelBean) {
        this.type = i;
        this.noteModelBean = noteModelBean;
        this.pageModelBean = pageModelBean;
    }

    public static /* synthetic */ NotePageBean copy$default(NotePageBean notePageBean, int i, NoteModelBean noteModelBean, PageModelBean pageModelBean, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = notePageBean.type;
        }
        if ((i2 & 2) != 0) {
            noteModelBean = notePageBean.noteModelBean;
        }
        if ((i2 & 4) != 0) {
            pageModelBean = notePageBean.pageModelBean;
        }
        return notePageBean.copy(i, noteModelBean, pageModelBean);
    }

    /* renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final NoteModelBean getNoteModelBean() {
        return this.noteModelBean;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final PageModelBean getPageModelBean() {
        return this.pageModelBean;
    }

    @NotNull
    public final NotePageBean copy(int type, @Nullable NoteModelBean noteModelBean, @Nullable PageModelBean pageModelBean) {
        return new NotePageBean(type, noteModelBean, pageModelBean);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NotePageBean)) {
            return false;
        }
        NotePageBean notePageBean = (NotePageBean) other;
        return this.type == notePageBean.type && Intrinsics.areEqual(this.noteModelBean, notePageBean.noteModelBean) && Intrinsics.areEqual(this.pageModelBean, notePageBean.pageModelBean);
    }

    public final float getManualOrderIndex() {
        PageModelBean pageModelBean;
        SortModel sortModel;
        if (!isNoteType()) {
            if (!isPageType() || (pageModelBean = this.pageModelBean) == null) {
                return -1.0f;
            }
            return pageModelBean.getOrderIndex();
        }
        NoteModelBean noteModelBean = this.noteModelBean;
        if (noteModelBean == null || (sortModel = noteModelBean.getSortModel()) == null) {
            return -1.0f;
        }
        return sortModel.getOrderIndex();
    }

    @Nullable
    public final NoteModelBean getNoteModelBean() {
        return this.noteModelBean;
    }

    @Nullable
    public final PageModelBean getPageModelBean() {
        return this.pageModelBean;
    }

    @Nullable
    public final Integer getScene() {
        PageModelBean pageModelBean;
        if (isNoteType()) {
            NoteModelBean noteModelBean = this.noteModelBean;
            if (noteModelBean != null) {
                return Integer.valueOf(noteModelBean.getActiveScene());
            }
            return null;
        }
        if (!isPageType() || (pageModelBean = this.pageModelBean) == null) {
            return null;
        }
        return Integer.valueOf(pageModelBean.getScene());
    }

    public final long getSortCreateAt() {
        PageModelBean pageModelBean;
        if (isNoteType()) {
            NoteModelBean noteModelBean = this.noteModelBean;
            if (noteModelBean != null) {
                return noteModelBean.getCreatedAt();
            }
            return 0L;
        }
        if (!isPageType() || (pageModelBean = this.pageModelBean) == null) {
            return 0L;
        }
        return pageModelBean.getDocCreateAt();
    }

    @NotNull
    public final String getSortName() {
        PageModelBean pageModelBean;
        String docName;
        String title;
        if (!isNoteType()) {
            return (!isPageType() || (pageModelBean = this.pageModelBean) == null || (docName = pageModelBean.getDocName()) == null) ? "" : docName;
        }
        NoteModelBean noteModelBean = this.noteModelBean;
        return (noteModelBean == null || (title = noteModelBean.getTitle()) == null) ? "" : title;
    }

    public final long getSortUpdateAt() {
        PageModelBean pageModelBean;
        if (isNoteType()) {
            NoteModelBean noteModelBean = this.noteModelBean;
            if (noteModelBean != null) {
                return noteModelBean.getUpdatedAt();
            }
            return 0L;
        }
        if (!isPageType() || (pageModelBean = this.pageModelBean) == null) {
            return 0L;
        }
        return pageModelBean.getDocUpdatedAt();
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.type) * 31;
        NoteModelBean noteModelBean = this.noteModelBean;
        int hashCode2 = (hashCode + (noteModelBean == null ? 0 : noteModelBean.hashCode())) * 31;
        PageModelBean pageModelBean = this.pageModelBean;
        return hashCode2 + (pageModelBean != null ? pageModelBean.hashCode() : 0);
    }

    public final boolean isHeaderType() {
        return this.type == 3;
    }

    public final boolean isNoteDoc() {
        if (isNoteType()) {
            NoteModelBean noteModelBean = this.noteModelBean;
            Intrinsics.checkNotNull(noteModelBean);
            if (noteModelBean.isDocument()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isNoteFolder() {
        if (isNoteType()) {
            NoteModelBean noteModelBean = this.noteModelBean;
            Intrinsics.checkNotNull(noteModelBean);
            if (noteModelBean.isLibrary()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isNoteScene() {
        Integer scene = getScene();
        if (scene == null) {
            return false;
        }
        return NoteScene.INSTANCE.isNoteScene(scene.intValue());
    }

    public final boolean isNoteType() {
        return this.type == 2;
    }

    public final boolean isPageType() {
        return this.type == 1;
    }

    public final boolean isPdfScene() {
        Integer scene = getScene();
        if (scene == null) {
            return false;
        }
        return NoteScene.INSTANCE.isPdfScribbleScene(scene.intValue());
    }

    @NotNull
    public String toString() {
        return "NotePageBean(type=" + this.type + ", noteModelBean=" + this.noteModelBean + ", pageModelBean=" + this.pageModelBean + ')';
    }

    public /* synthetic */ NotePageBean(int i, NoteModelBean noteModelBean, PageModelBean pageModelBean, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : noteModelBean, (i2 & 4) != 0 ? null : pageModelBean);
    }
}
