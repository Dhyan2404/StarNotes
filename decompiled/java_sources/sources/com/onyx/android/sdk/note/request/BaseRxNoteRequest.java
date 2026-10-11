package com.onyx.android.sdk.note.request;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest;
import com.onyx.android.sdk.note.NoteBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;", "", "safelyExecuteImpl", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "execute", "e", "Lcom/onyx/android/sdk/note/NoteBundle;", "getNoteBundle", "()Lcom/onyx/android/sdk/note/NoteBundle;", "setNoteBundle", "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "getPostShapeChangedEvent", Constants.BOOLEAN_VALUE_SIG, "setPostShapeChangedEvent", "(Z)V", "postShapeChangedEvent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseRxNoteRequest extends RxBaseBenchmarkRequest {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public NoteBundle noteBundle;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean postShapeChangedEvent;

    public BaseRxNoteRequest(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        this.noteBundle = noteBundle;
        this.postShapeChangedEvent = true;
    }

    public abstract void execute(@NotNull NoteBundle noteBundle);

    @NotNull
    public final NoteBundle getNoteBundle() {
        return this.noteBundle;
    }

    public final boolean getPostShapeChangedEvent() {
        return this.postShapeChangedEvent;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest
    public final void safelyExecuteImpl() {
        execute(this.noteBundle);
    }

    public final void setNoteBundle(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "<set-?>");
        this.noteBundle = noteBundle;
    }

    public final void setPostShapeChangedEvent(boolean z) {
        this.postShapeChangedEvent = z;
    }
}
