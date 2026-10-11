package com.google.zxing.qrcode.encoder;

import com.bumptech.glide.load.engine.GlideException;
import java.lang.reflect.Array;

/* loaded from: classes4.dex */
public final class ByteMatrix {

    /* renamed from: a */
    public final byte[][] f38778a;

    /* renamed from: b */
    public final int f38779b;

    /* renamed from: c */
    public final int f38780c;

    public ByteMatrix(int i, int i2) {
        this.f38778a = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i2, i);
        this.f38779b = i;
        this.f38780c = i2;
    }

    public void clear(byte b) {
        for (int i = 0; i < this.f38780c; i++) {
            for (int i2 = 0; i2 < this.f38779b; i2++) {
                this.f38778a[i][i2] = b;
            }
        }
    }

    public byte get(int i, int i2) {
        return this.f38778a[i2][i];
    }

    public byte[][] getArray() {
        return this.f38778a;
    }

    public int getHeight() {
        return this.f38780c;
    }

    public int getWidth() {
        return this.f38779b;
    }

    public void set(int i, int i2, byte b) {
        this.f38778a[i2][i] = b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.f38779b * 2 * this.f38780c) + 2);
        for (int i = 0; i < this.f38780c; i++) {
            for (int i2 = 0; i2 < this.f38779b; i2++) {
                byte b = this.f38778a[i][i2];
                if (b == 0) {
                    sb.append(" 0");
                } else if (b != 1) {
                    sb.append(GlideException.C1935a.f14609h);
                } else {
                    sb.append(" 1");
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    public void set(int i, int i2, int i3) {
        this.f38778a[i2][i] = (byte) i3;
    }

    public void set(int i, int i2, boolean z) {
        this.f38778a[i2][i] = z ? (byte) 1 : (byte) 0;
    }
}
