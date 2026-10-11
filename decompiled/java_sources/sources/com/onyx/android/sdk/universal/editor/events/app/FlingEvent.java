package com.onyx.android.sdk.universal.editor.events.app;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b+\u0010,J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J;\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u0007HÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0012\u001a\u00020\u0011HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0017\u001a\u0004\b \u0010\u0019\"\u0004\b!\u0010\u001bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0017\u001a\u0004\b#\u0010\u0019\"\u0004\b$\u0010\u001bR\"\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;", "", "", "component1", "component2", "component3", "component4", "", "component5", "offsetX", "offsetY", "velocityX", "velocityY", "upToDownTime", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "F", "getOffsetX", "()F", "setOffsetX", "(F)V", "b", "getOffsetY", "setOffsetY", "c", "getVelocityX", "setVelocityX", "d", "getVelocityY", "setVelocityY", "e", "J", "getUpToDownTime", "()J", "setUpToDownTime", "(J)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(FFFFJ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class FlingEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public float offsetX;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public float offsetY;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public float velocityX;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public float velocityY;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public long upToDownTime;

    public FlingEvent() {
        this(0.0f, 0.0f, 0.0f, 0.0f, 0L, 31, null);
    }

    public static /* synthetic */ FlingEvent copy$default(FlingEvent flingEvent, float f, float f2, float f3, float f4, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            f = flingEvent.offsetX;
        }
        if ((i & 2) != 0) {
            f2 = flingEvent.offsetY;
        }
        float f5 = f2;
        if ((i & 4) != 0) {
            f3 = flingEvent.velocityX;
        }
        float f6 = f3;
        if ((i & 8) != 0) {
            f4 = flingEvent.velocityY;
        }
        float f7 = f4;
        if ((i & 16) != 0) {
            j = flingEvent.upToDownTime;
        }
        return flingEvent.copy(f, f5, f6, f7, j);
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
    public final float getVelocityX() {
        return this.velocityX;
    }

    /* renamed from: component4, reason: from getter */
    public final float getVelocityY() {
        return this.velocityY;
    }

    /* renamed from: component5, reason: from getter */
    public final long getUpToDownTime() {
        return this.upToDownTime;
    }

    @NotNull
    public final FlingEvent copy(float offsetX, float offsetY, float velocityX, float velocityY, long upToDownTime) {
        return new FlingEvent(offsetX, offsetY, velocityX, velocityY, upToDownTime);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FlingEvent)) {
            return false;
        }
        FlingEvent flingEvent = (FlingEvent) other;
        return Float.compare(this.offsetX, flingEvent.offsetX) == 0 && Float.compare(this.offsetY, flingEvent.offsetY) == 0 && Float.compare(this.velocityX, flingEvent.velocityX) == 0 && Float.compare(this.velocityY, flingEvent.velocityY) == 0 && this.upToDownTime == flingEvent.upToDownTime;
    }

    public final float getOffsetX() {
        return this.offsetX;
    }

    public final float getOffsetY() {
        return this.offsetY;
    }

    public final long getUpToDownTime() {
        return this.upToDownTime;
    }

    public final float getVelocityX() {
        return this.velocityX;
    }

    public final float getVelocityY() {
        return this.velocityY;
    }

    public int hashCode() {
        return (((((((Float.hashCode(this.offsetX) * 31) + Float.hashCode(this.offsetY)) * 31) + Float.hashCode(this.velocityX)) * 31) + Float.hashCode(this.velocityY)) * 31) + Long.hashCode(this.upToDownTime);
    }

    public final void setOffsetX(float f) {
        this.offsetX = f;
    }

    public final void setOffsetY(float f) {
        this.offsetY = f;
    }

    public final void setUpToDownTime(long j) {
        this.upToDownTime = j;
    }

    public final void setVelocityX(float f) {
        this.velocityX = f;
    }

    public final void setVelocityY(float f) {
        this.velocityY = f;
    }

    @NotNull
    public String toString() {
        return "FlingEvent(offsetX=" + this.offsetX + ", offsetY=" + this.offsetY + ", velocityX=" + this.velocityX + ", velocityY=" + this.velocityY + ", upToDownTime=" + this.upToDownTime + ')';
    }

    public FlingEvent(float f, float f2, float f3, float f4, long j) {
        this.offsetX = f;
        this.offsetY = f2;
        this.velocityX = f3;
        this.velocityY = f4;
        this.upToDownTime = j;
    }

    public /* synthetic */ FlingEvent(float f, float f2, float f3, float f4, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2, (i & 4) != 0 ? 0.0f : f3, (i & 8) != 0 ? 0.0f : f4, (i & 16) != 0 ? 0L : j);
    }
}
