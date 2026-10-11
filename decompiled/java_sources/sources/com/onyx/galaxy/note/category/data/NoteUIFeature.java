package com.onyx.galaxy.note.category.data;

import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\b\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteUIFeature;", "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;", "syncNoteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "supportAddTags", "", "supportChangeTemplate", "supportExport", "supportLock", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteUIFeature implements UIFeature {

    @NotNull
    private final SyncNoteModel syncNoteModel;

    public NoteUIFeature(@NotNull SyncNoteModel syncNoteModel) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "syncNoteModel");
        this.syncNoteModel = syncNoteModel;
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public int getTemplateType() {
        return UIFeature.DefaultImpls.getTemplateType(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean limitShapeRectInCurrentPage() {
        return UIFeature.DefaultImpls.limitShapeRectInCurrentPage(this);
    }

    public final boolean supportAddTags() {
        return this.syncNoteModel.isDocument();
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportAddToOutline() {
        return UIFeature.DefaultImpls.supportAddToOutline(this);
    }

    public final boolean supportChangeTemplate() {
        return this.syncNoteModel.isDocument() && !NoteScene.INSTANCE.isDraft(this.syncNoteModel.getActiveScene());
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportClearPage() {
        return UIFeature.DefaultImpls.supportClearPage(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportCreatePageLink() {
        return UIFeature.DefaultImpls.supportCreatePageLink(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportDrawPageLayer() {
        return UIFeature.DefaultImpls.supportDrawPageLayer(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportEditPage() {
        return UIFeature.DefaultImpls.supportEditPage(this);
    }

    public final boolean supportExport() {
        return this.syncNoteModel.isDocument();
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportExportPageAsImage() {
        return UIFeature.DefaultImpls.supportExportPageAsImage(this);
    }

    public final boolean supportLock() {
        return this.syncNoteModel.isDocument();
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportMultiPage() {
        return UIFeature.DefaultImpls.supportMultiPage(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportPageBackground() {
        return UIFeature.DefaultImpls.supportPageBackground(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportPageBorder() {
        return UIFeature.DefaultImpls.supportPageBorder(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportRectExcerptLimitRect() {
        return UIFeature.DefaultImpls.supportRectExcerptLimitRect(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportRenderPageContentBitmap() {
        return UIFeature.DefaultImpls.supportRenderPageContentBitmap(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature
    public boolean supportShapesLocationBar() {
        return UIFeature.DefaultImpls.supportShapesLocationBar(this);
    }
}
