package com.onyx.android.sdk.media.event;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J'\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0002HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\f\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/media/event/PlayChangeEvent;", "", "", "component1", "component2", "component3", "currentPosition", "duration", "currentWindowIndex", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getCurrentPosition", "()I", "b", "getDuration", "c", "getCurrentWindowIndex", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(III)V", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class PlayChangeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int currentPosition;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int duration;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int currentWindowIndex;

    public PlayChangeEvent(int i, int i2, int i3) {
        this.currentPosition = i;
        this.duration = i2;
        this.currentWindowIndex = i3;
    }

    public static /* synthetic */ PlayChangeEvent copy$default(PlayChangeEvent playChangeEvent, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = playChangeEvent.currentPosition;
        }
        if ((i4 & 2) != 0) {
            i2 = playChangeEvent.duration;
        }
        if ((i4 & 4) != 0) {
            i3 = playChangeEvent.currentWindowIndex;
        }
        return playChangeEvent.copy(i, i2, i3);
    }

    /* renamed from: component1, reason: from getter */
    public final int getCurrentPosition() {
        return this.currentPosition;
    }

    /* renamed from: component2, reason: from getter */
    public final int getDuration() {
        return this.duration;
    }

    /* renamed from: component3, reason: from getter */
    public final int getCurrentWindowIndex() {
        return this.currentWindowIndex;
    }

    @NotNull
    public final PlayChangeEvent copy(int currentPosition, int duration, int currentWindowIndex) {
        return new PlayChangeEvent(currentPosition, duration, currentWindowIndex);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayChangeEvent)) {
            return false;
        }
        PlayChangeEvent playChangeEvent = (PlayChangeEvent) other;
        return this.currentPosition == playChangeEvent.currentPosition && this.duration == playChangeEvent.duration && this.currentWindowIndex == playChangeEvent.currentWindowIndex;
    }

    public final int getCurrentPosition() {
        return this.currentPosition;
    }

    public final int getCurrentWindowIndex() {
        return this.currentWindowIndex;
    }

    public final int getDuration() {
        return this.duration;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.currentPosition) * 31) + Integer.hashCode(this.duration)) * 31) + Integer.hashCode(this.currentWindowIndex);
    }

    @NotNull
    public String toString() {
        return "PlayChangeEvent(currentPosition=" + this.currentPosition + ", duration=" + this.duration + ", currentWindowIndex=" + this.currentWindowIndex + ')';
    }
}
