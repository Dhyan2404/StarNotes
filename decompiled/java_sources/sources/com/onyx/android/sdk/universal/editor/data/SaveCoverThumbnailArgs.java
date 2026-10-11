package com.onyx.android.sdk.universal.editor.data;

import android.graphics.Bitmap;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;", "", "documentId", "", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "bitmap", "Landroid/graphics/Bitmap;", "(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/graphics/Bitmap;)V", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", "getNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "setNoteModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SaveCoverThumbnailArgs {

    @Nullable
    private Bitmap bitmap;

    @NotNull
    private String documentId;

    @Nullable
    private SyncNoteModel noteModel;

    public SaveCoverThumbnailArgs(@NotNull String documentId, @Nullable SyncNoteModel syncNoteModel, @Nullable Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.documentId = documentId;
        this.noteModel = syncNoteModel;
        this.bitmap = bitmap;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final SyncNoteModel getNoteModel() {
        return this.noteModel;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setNoteModel(@Nullable SyncNoteModel syncNoteModel) {
        this.noteModel = syncNoteModel;
    }

    public /* synthetic */ SaveCoverThumbnailArgs(String str, SyncNoteModel syncNoteModel, Bitmap bitmap, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : syncNoteModel, (i & 4) != 0 ? null : bitmap);
    }
}
