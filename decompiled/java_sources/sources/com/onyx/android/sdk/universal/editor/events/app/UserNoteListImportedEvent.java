package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;", "", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "component1", "copyNoteListArgs", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "getCopyNoteListArgs", "()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class UserNoteListImportedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final CopyNoteListArgs copyNoteListArgs;

    public UserNoteListImportedEvent(@NotNull CopyNoteListArgs copyNoteListArgs) {
        Intrinsics.checkNotNullParameter(copyNoteListArgs, "copyNoteListArgs");
        this.copyNoteListArgs = copyNoteListArgs;
    }

    public static /* synthetic */ UserNoteListImportedEvent copy$default(UserNoteListImportedEvent userNoteListImportedEvent, CopyNoteListArgs copyNoteListArgs, int i, Object obj) {
        if ((i & 1) != 0) {
            copyNoteListArgs = userNoteListImportedEvent.copyNoteListArgs;
        }
        return userNoteListImportedEvent.copy(copyNoteListArgs);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final CopyNoteListArgs getCopyNoteListArgs() {
        return this.copyNoteListArgs;
    }

    @NotNull
    public final UserNoteListImportedEvent copy(@NotNull CopyNoteListArgs copyNoteListArgs) {
        Intrinsics.checkNotNullParameter(copyNoteListArgs, "copyNoteListArgs");
        return new UserNoteListImportedEvent(copyNoteListArgs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UserNoteListImportedEvent) && Intrinsics.areEqual(this.copyNoteListArgs, ((UserNoteListImportedEvent) other).copyNoteListArgs);
    }

    @NotNull
    public final CopyNoteListArgs getCopyNoteListArgs() {
        return this.copyNoteListArgs;
    }

    public int hashCode() {
        return this.copyNoteListArgs.hashCode();
    }

    @NotNull
    public String toString() {
        return "UserNoteListImportedEvent(copyNoteListArgs=" + this.copyNoteListArgs + ')';
    }
}
