package com.onyx.galaxy.note.editor.event;

import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u001f\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00018\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;", "", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "component1", "component2", "slideBarType", "subEvent", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "getSlideBarType", "()Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.OBJECT_SIG, "getSubEvent", "()Ljava/lang/Object;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/SlideBarType;Ljava/lang/Object;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class OpenSlideBarEvents {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final SlideBarType slideBarType;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final Object subEvent;

    public OpenSlideBarEvents(@NotNull SlideBarType slideBarType, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(slideBarType, "slideBarType");
        this.slideBarType = slideBarType;
        this.subEvent = obj;
    }

    public static /* synthetic */ OpenSlideBarEvents copy$default(OpenSlideBarEvents openSlideBarEvents, SlideBarType slideBarType, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            slideBarType = openSlideBarEvents.slideBarType;
        }
        if ((i & 2) != 0) {
            obj = openSlideBarEvents.subEvent;
        }
        return openSlideBarEvents.copy(slideBarType, obj);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final SlideBarType getSlideBarType() {
        return this.slideBarType;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Object getSubEvent() {
        return this.subEvent;
    }

    @NotNull
    public final OpenSlideBarEvents copy(@NotNull SlideBarType slideBarType, @Nullable Object subEvent) {
        Intrinsics.checkNotNullParameter(slideBarType, "slideBarType");
        return new OpenSlideBarEvents(slideBarType, subEvent);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OpenSlideBarEvents)) {
            return false;
        }
        OpenSlideBarEvents openSlideBarEvents = (OpenSlideBarEvents) other;
        return this.slideBarType == openSlideBarEvents.slideBarType && Intrinsics.areEqual(this.subEvent, openSlideBarEvents.subEvent);
    }

    @NotNull
    public final SlideBarType getSlideBarType() {
        return this.slideBarType;
    }

    @Nullable
    public final Object getSubEvent() {
        return this.subEvent;
    }

    public int hashCode() {
        int hashCode = this.slideBarType.hashCode() * 31;
        Object obj = this.subEvent;
        return hashCode + (obj == null ? 0 : obj.hashCode());
    }

    @NotNull
    public String toString() {
        return "OpenSlideBarEvents(slideBarType=" + this.slideBarType + ", subEvent=" + this.subEvent + ')';
    }
}
