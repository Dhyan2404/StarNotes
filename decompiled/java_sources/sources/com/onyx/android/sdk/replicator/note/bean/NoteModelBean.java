package com.onyx.android.sdk.replicator.note.bean;

import android.content.res.ColorStateList;
import com.blankj.utilcode.util.ColorUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.C7594R;
import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.replicator.note.p035db.model.SortModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\fJ\u0006\u0010\u001c\u001a\u00020\fJ\u0006\u0010\u001d\u001a\u00020\u001eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "()V", "bean", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "docProgress", "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "getDocProgress", "()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "setDocProgress", "(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V", "isPortrait", "", Constants.BOOLEAN_VALUE_SIG, "setPortrait", "(Z)V", "saved", "getSaved", "setSaved", "sortModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;", "getSortModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;", "setSortModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;)V", "getIconColorStateList", "Landroid/content/res/ColorStateList;", "isDocumentNoteScene", "isPdfScene", "setNotSaved", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteModelBean extends SyncNoteModel {

    @Nullable
    private SyncDocProgress docProgress;
    private boolean isPortrait;
    private boolean saved;

    @NotNull
    private SortModel sortModel;

    public NoteModelBean() {
        this.isPortrait = true;
        this.saved = true;
        this.sortModel = new SortModel();
    }

    @Nullable
    public final SyncDocProgress getDocProgress() {
        return this.docProgress;
    }

    @NotNull
    public final ColorStateList getIconColorStateList() {
        ColorStateList valueOf = ColorStateList.valueOf(ColorUtils.setAlphaComponent(getStyle().getColor(), ResManager.INSTANCE.getInteger(C7594R.integer.tree_folder_icon_alpha)));
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
        return valueOf;
    }

    public final boolean getSaved() {
        return this.saved;
    }

    @NotNull
    public final SortModel getSortModel() {
        return this.sortModel;
    }

    public final boolean isDocumentNoteScene() {
        return isDocument() && NoteScene.INSTANCE.isNoteScene(getActiveScene());
    }

    public final boolean isPdfScene() {
        return NoteScene.INSTANCE.isPdfScribbleScene(getActiveScene());
    }

    /* renamed from: isPortrait, reason: from getter */
    public final boolean getIsPortrait() {
        return this.isPortrait;
    }

    public final void setDocProgress(@Nullable SyncDocProgress syncDocProgress) {
        this.docProgress = syncDocProgress;
    }

    public final void setNotSaved() {
        this.saved = false;
    }

    public final void setPortrait(boolean z) {
        this.isPortrait = z;
    }

    public final void setSaved(boolean z) {
        this.saved = z;
    }

    public final void setSortModel(@NotNull SortModel sortModel) {
        Intrinsics.checkNotNullParameter(sortModel, "<set-?>");
        this.sortModel = sortModel;
    }

    public NoteModelBean(@NotNull SyncNoteModel bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        this.isPortrait = true;
        this.saved = true;
        this.sortModel = new SortModel();
        updateModelField(bean);
    }
}
