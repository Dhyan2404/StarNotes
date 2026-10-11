package com.onyx.android.sdk.note.request;

import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.note.NoteBundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/UpdateNoteViewSizeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "noteBundle", "Lcom/onyx/android/sdk/note/NoteBundle;", "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "size", "Lcom/onyx/android/sdk/base/data/Size;", "getSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "execute", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class UpdateNoteViewSizeRequest extends BaseRxNoteRequest {
    public Size size;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateNoteViewSizeRequest(@NotNull NoteBundle noteBundle) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        noteBundle.getNoteDoc().updateViewSize(getSize());
    }

    @NotNull
    public final Size getSize() {
        Size size = this.size;
        if (size != null) {
            return size;
        }
        Intrinsics.throwUninitializedPropertyAccessException("size");
        return null;
    }

    public final void setSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.size = size;
    }
}
