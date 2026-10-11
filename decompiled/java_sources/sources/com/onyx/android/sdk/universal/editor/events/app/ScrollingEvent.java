package com.onyx.android.sdk.universal.editor.events.app;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\r\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;", "", "", "component1", "component2", "", "component3", "offsetX", "offsetY", "source", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "F", "getOffsetX", "()F", "setOffsetX", "(F)V", "b", "getOffsetY", "setOffsetY", "c", "I", "getSource", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(FFI)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ScrollingEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public float offsetX;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public float offsetY;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int source;

    public ScrollingEvent() {
        this(0.0f, 0.0f, 0, 7, null);
    }

    public static /* synthetic */ ScrollingEvent copy$default(ScrollingEvent scrollingEvent, float f, float f2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            f = scrollingEvent.offsetX;
        }
        if ((i2 & 2) != 0) {
            f2 = scrollingEvent.offsetY;
        }
        if ((i2 & 4) != 0) {
            i = scrollingEvent.source;
        }
        return scrollingEvent.copy(f, f2, i);
    }

    /* renamed from: component1, reason: from getter */
    public final float getOffsetX() {
        return this.offsetX;
    }

    /* renamed from: component2, reason: from getter */
    public final float getOffsetY() {
        return this.offsetY;
    }

    /* renamed from: component3, reason: from getter */
    public final int getSource() {
        return this.source;
    }

    @NotNull
    public final ScrollingEvent copy(float offsetX, float offsetY, int source) {
        return new ScrollingEvent(offsetX, offsetY, source);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ScrollingEvent)) {
            return false;
        }
        ScrollingEvent scrollingEvent = (ScrollingEvent) other;
        return Float.compare(this.offsetX, scrollingEvent.offsetX) == 0 && Float.compare(this.offsetY, scrollingEvent.offsetY) == 0 && this.source == scrollingEvent.source;
    }

    public final float getOffsetX() {
        return this.offsetX;
    }

    public final float getOffsetY() {
        return this.offsetY;
    }

    public final int getSource() {
        return this.source;
    }

    public int hashCode() {
        return (((Float.hashCode(this.offsetX) * 31) + Float.hashCode(this.offsetY)) * 31) + Integer.hashCode(this.source);
    }

    public final void setOffsetX(float f) {
        this.offsetX = f;
    }

    public final void setOffsetY(float f) {
        this.offsetY = f;
    }

    @NotNull
    public String toString() {
        return "ScrollingEvent(offsetX=" + this.offsetX + ", offsetY=" + this.offsetY + ", source=" + this.source + ')';
    }

    public ScrollingEvent(float f, float f2, int i) {
        this.offsetX = f;
        this.offsetY = f2;
        this.source = i;
    }

    public /* synthetic */ ScrollingEvent(float f, float f2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0.0f : f, (i2 & 2) != 0 ? 0.0f : f2, (i2 & 4) != 0 ? 0 : i);
    }
}
