package com.onyx.android.sdk.universal.editor.events.app;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;", "", "", "component1", "component2", "offsetX", "offsetY", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "F", "getOffsetX", "()F", "setOffsetX", "(F)V", "b", "getOffsetY", "setOffsetY", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(FF)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ScrollBeginEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public float offsetX;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public float offsetY;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ScrollBeginEvent() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.events.app.ScrollBeginEvent.<init>():void");
    }

    public static /* synthetic */ ScrollBeginEvent copy$default(ScrollBeginEvent scrollBeginEvent, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = scrollBeginEvent.offsetX;
        }
        if ((i & 2) != 0) {
            f2 = scrollBeginEvent.offsetY;
        }
        return scrollBeginEvent.copy(f, f2);
    }

    /* renamed from: component1, reason: from getter */
    public final float getOffsetX() {
        return this.offsetX;
    }

    /* renamed from: component2, reason: from getter */
    public final float getOffsetY() {
        return this.offsetY;
    }

    @NotNull
    public final ScrollBeginEvent copy(float offsetX, float offsetY) {
        return new ScrollBeginEvent(offsetX, offsetY);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ScrollBeginEvent)) {
            return false;
        }
        ScrollBeginEvent scrollBeginEvent = (ScrollBeginEvent) other;
        return Float.compare(this.offsetX, scrollBeginEvent.offsetX) == 0 && Float.compare(this.offsetY, scrollBeginEvent.offsetY) == 0;
    }

    public final float getOffsetX() {
        return this.offsetX;
    }

    public final float getOffsetY() {
        return this.offsetY;
    }

    public int hashCode() {
        return (Float.hashCode(this.offsetX) * 31) + Float.hashCode(this.offsetY);
    }

    public final void setOffsetX(float f) {
        this.offsetX = f;
    }

    public final void setOffsetY(float f) {
        this.offsetY = f;
    }

    @NotNull
    public String toString() {
        return "ScrollBeginEvent(offsetX=" + this.offsetX + ", offsetY=" + this.offsetY + ')';
    }

    public ScrollBeginEvent(float f, float f2) {
        this.offsetX = f;
        this.offsetY = f2;
    }

    public /* synthetic */ ScrollBeginEvent(float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2);
    }
}
