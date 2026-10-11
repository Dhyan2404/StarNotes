package com.onyx.android.sdk.base.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001f\u001a\u00020\tHÆ\u0003J;\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\tHÖ\u0001J\t\u0010%\u001a\u00020&HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/TinyPoint;", "", "x", "", "y", "pressure", "", "size", "time", "", "(FFSSI)V", "getPressure", Constants.GET_NODE_TYPE_SIG, "setPressure", "(S)V", "getSize", "setSize", "getTime", "()I", "setTime", "(I)V", "getX", "()F", "setX", "(F)V", "getY", "setY", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class TinyPoint {
    private short pressure;
    private short size;
    private int time;
    private float x;
    private float y;

    public TinyPoint() {
        this(0.0f, 0.0f, (short) 0, (short) 0, 0, 31, null);
    }

    public static /* synthetic */ TinyPoint copy$default(TinyPoint tinyPoint, float f, float f2, short s, short s2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            f = tinyPoint.x;
        }
        if ((i2 & 2) != 0) {
            f2 = tinyPoint.y;
        }
        float f3 = f2;
        if ((i2 & 4) != 0) {
            s = tinyPoint.pressure;
        }
        short s3 = s;
        if ((i2 & 8) != 0) {
            s2 = tinyPoint.size;
        }
        short s4 = s2;
        if ((i2 & 16) != 0) {
            i = tinyPoint.time;
        }
        return tinyPoint.copy(f, f3, s3, s4, i);
    }

    /* renamed from: component1, reason: from getter */
    public final float getX() {
        return this.x;
    }

    /* renamed from: component2, reason: from getter */
    public final float getY() {
        return this.y;
    }

    /* renamed from: component3, reason: from getter */
    public final short getPressure() {
        return this.pressure;
    }

    /* renamed from: component4, reason: from getter */
    public final short getSize() {
        return this.size;
    }

    /* renamed from: component5, reason: from getter */
    public final int getTime() {
        return this.time;
    }

    @NotNull
    public final TinyPoint copy(float x, float y, short pressure, short size, int time) {
        return new TinyPoint(x, y, pressure, size, time);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TinyPoint)) {
            return false;
        }
        TinyPoint tinyPoint = (TinyPoint) other;
        return Float.compare(this.x, tinyPoint.x) == 0 && Float.compare(this.y, tinyPoint.y) == 0 && this.pressure == tinyPoint.pressure && this.size == tinyPoint.size && this.time == tinyPoint.time;
    }

    public final short getPressure() {
        return this.pressure;
    }

    public final short getSize() {
        return this.size;
    }

    public final int getTime() {
        return this.time;
    }

    public final float getX() {
        return this.x;
    }

    public final float getY() {
        return this.y;
    }

    public int hashCode() {
        return (((((((Float.hashCode(this.x) * 31) + Float.hashCode(this.y)) * 31) + Short.hashCode(this.pressure)) * 31) + Short.hashCode(this.size)) * 31) + Integer.hashCode(this.time);
    }

    public final void setPressure(short s) {
        this.pressure = s;
    }

    public final void setSize(short s) {
        this.size = s;
    }

    public final void setTime(int i) {
        this.time = i;
    }

    public final void setX(float f) {
        this.x = f;
    }

    public final void setY(float f) {
        this.y = f;
    }

    @NotNull
    public String toString() {
        return "TinyPoint(x=" + this.x + ", y=" + this.y + ", pressure=" + ((int) this.pressure) + ", size=" + ((int) this.size) + ", time=" + this.time + ')';
    }

    public TinyPoint(float f, float f2, short s, short s2, int i) {
        this.x = f;
        this.y = f2;
        this.pressure = s;
        this.size = s2;
        this.time = i;
    }

    public /* synthetic */ TinyPoint(float f, float f2, short s, short s2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0.0f : f, (i2 & 2) != 0 ? 0.0f : f2, (i2 & 4) != 0 ? (short) 0 : s, (i2 & 8) != 0 ? (short) 0 : s2, (i2 & 16) != 0 ? 0 : i);
    }
}
