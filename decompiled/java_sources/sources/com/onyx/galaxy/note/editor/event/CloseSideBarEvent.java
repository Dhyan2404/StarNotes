package com.onyx.galaxy.note.editor.event;

import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/CloseSideBarEvent;", "", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "a", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "getType", "()Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "type", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CloseSideBarEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final SlideBarType type;

    /* JADX WARN: Multi-variable type inference failed */
    public CloseSideBarEvent() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Nullable
    public final SlideBarType getType() {
        return this.type;
    }

    public CloseSideBarEvent(@Nullable SlideBarType slideBarType) {
        this.type = slideBarType;
    }

    public /* synthetic */ CloseSideBarEvent(SlideBarType slideBarType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : slideBarType);
    }
}
