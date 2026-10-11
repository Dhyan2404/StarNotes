package com.onyx.android.sdk.note.request;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocSave;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/CreateNoteDocumentRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;", "noteDocBean", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;", "getNoteDocBean", "()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;", "setNoteDocBean", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;)V", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateNoteDocumentRequest extends BaseRxNoteRequest {
    public NoteDocBean noteDocBean;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateNoteDocumentRequest(@NotNull NoteBundle noteBundle) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        m34110f();
    }

    /* renamed from: f */
    public final void m34110f() {
        getNoteBundle().getNoteDoc().handle(getNoteDocBean());
        NoteDocSave.INSTANCE.save(getNoteBundle().getNoteDoc());
    }

    @NotNull
    public final NoteDocBean getNoteDocBean() {
        NoteDocBean noteDocBean = this.noteDocBean;
        if (noteDocBean != null) {
            return noteDocBean;
        }
        Intrinsics.throwUninitializedPropertyAccessException("noteDocBean");
        return null;
    }

    public final void setNoteDocBean(@NotNull NoteDocBean noteDocBean) {
        Intrinsics.checkNotNullParameter(noteDocBean, "<set-?>");
        this.noteDocBean = noteDocBean;
    }
}
