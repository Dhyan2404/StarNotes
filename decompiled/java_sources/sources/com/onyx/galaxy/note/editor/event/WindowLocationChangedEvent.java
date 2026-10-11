package com.onyx.galaxy.note.editor.event;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/WindowLocationChangedEvent;", "", "", "a", Constants.TYPES_INDEX_SIG, "getLocation", "()[I", "location", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "([I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class WindowLocationChangedEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final int[] location;

    public WindowLocationChangedEvent(@NotNull int[] location) {
        Intrinsics.checkNotNullParameter(location, "location");
        this.location = location;
    }

    @NotNull
    public final int[] getLocation() {
        return this.location;
    }
}
