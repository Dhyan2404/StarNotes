package com.onyx.android.sdk.pen;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001B2\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0018\u001a\u00020\u0011\u0012\u0006\u0010\u001c\u001a\u00020\u0011\u0012\u0006\u0010 \u001a\u00020\u0011ø\u0001\u0000¢\u0006\u0004\b!\u0010\"J\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0007\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR+\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R+\u0010\u001c\u001a\u00020\u00118\u0006@\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R+\u0010 \u001a\u00020\u00118\u0006@\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b\u001d\u0010\u0013\u001a\u0004\b\u001e\u0010\u0015\"\u0004\b\u001f\u0010\u0017\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenBrushInk;", "", Constants.ATTRVAL_OTHER, "", "equals", "", "a", "F", "getX", "()F", "setX", "(F)V", "x", "b", "getY", "setY", "y", "Lkotlin/UByte;", "c", "B", "getSize-w2LRezQ", "()B", "setSize-7apg3OU", "(B)V", "size", "d", "getAngle36-w2LRezQ", "setAngle36-7apg3OU", "angle36", "e", "getAlpha-w2LRezQ", "setAlpha-7apg3OU", "alpha", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(FFBBBLkotlin/jvm/internal/DefaultConstructorMarker;)V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenBrushInk {

    /* renamed from: a, reason: from kotlin metadata */
    public float x;

    /* renamed from: b, reason: from kotlin metadata */
    public float y;

    /* renamed from: c, reason: from kotlin metadata */
    public byte size;

    /* renamed from: d, reason: from kotlin metadata */
    public byte angle36;

    /* renamed from: e, reason: from kotlin metadata */
    public byte alpha;

    public /* synthetic */ PenBrushInk(float f, float f2, byte b, byte b2, byte b3, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, b, b2, b3);
    }

    public boolean equals(@Nullable Object other) {
        if (other == null || !(other instanceof PenBrushInk)) {
            return false;
        }
        PenBrushInk penBrushInk = (PenBrushInk) other;
        if (this.x == penBrushInk.x) {
            return ((this.y > penBrushInk.y ? 1 : (this.y == penBrushInk.y ? 0 : -1)) == 0) && this.size == penBrushInk.size && this.angle36 == penBrushInk.angle36 && this.alpha == penBrushInk.alpha;
        }
        return false;
    }

    /* renamed from: getAlpha-w2LRezQ, reason: not valid java name and from getter */
    public final byte getAlpha() {
        return this.alpha;
    }

    /* renamed from: getAngle36-w2LRezQ, reason: not valid java name and from getter */
    public final byte getAngle36() {
        return this.angle36;
    }

    /* renamed from: getSize-w2LRezQ, reason: not valid java name and from getter */
    public final byte getSize() {
        return this.size;
    }

    public final float getX() {
        return this.x;
    }

    public final float getY() {
        return this.y;
    }

    /* renamed from: setAlpha-7apg3OU, reason: not valid java name */
    public final void m72325setAlpha7apg3OU(byte b) {
        this.alpha = b;
    }

    /* renamed from: setAngle36-7apg3OU, reason: not valid java name */
    public final void m72326setAngle367apg3OU(byte b) {
        this.angle36 = b;
    }

    /* renamed from: setSize-7apg3OU, reason: not valid java name */
    public final void m72327setSize7apg3OU(byte b) {
        this.size = b;
    }

    public final void setX(float f) {
        this.x = f;
    }

    public final void setY(float f) {
        this.y = f;
    }

    public PenBrushInk(float f, float f2, byte b, byte b2, byte b3) {
        this.x = f;
        this.y = f2;
        this.size = b;
        this.angle36 = b2;
        this.alpha = b3;
    }
}
