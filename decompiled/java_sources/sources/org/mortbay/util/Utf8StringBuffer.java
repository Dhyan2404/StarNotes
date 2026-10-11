package org.mortbay.util;

import com.alibaba.fastjson2.JSONB;
import com.blankj.utilcode.util.ThreadUtils;

/* loaded from: classes13.dex */
public class Utf8StringBuffer {

    /* renamed from: a */
    public StringBuffer f115389a;

    /* renamed from: b */
    public int f115390b;

    /* renamed from: c */
    public int f115391c;

    /* renamed from: d */
    public boolean f115392d;

    public Utf8StringBuffer() {
        this.f115389a = new StringBuffer();
    }

    public void append(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3) {
            append(bArr[i]);
            i++;
        }
    }

    public StringBuffer getStringBuffer() {
        return this.f115389a;
    }

    public boolean isError() {
        return this.f115392d || this.f115390b > 0;
    }

    public int length() {
        return this.f115389a.length();
    }

    public void reset() {
        this.f115389a.setLength(0);
        this.f115390b = 0;
        this.f115391c = 0;
        this.f115392d = false;
    }

    public String toString() {
        return this.f115389a.toString();
    }

    public void append(byte b) {
        if (b >= 0) {
            if (this.f115390b > 0) {
                this.f115389a.append('?');
                this.f115390b = 0;
                this.f115391c = 0;
                return;
            }
            this.f115389a.append((char) (b & Byte.MAX_VALUE));
            return;
        }
        int i = this.f115390b;
        if (i != 0) {
            if ((b & 192) == 192) {
                this.f115389a.append('?');
                this.f115390b = 0;
                this.f115391c = 0;
                this.f115392d = true;
                return;
            }
            int i2 = (b & 63) | (this.f115391c << 6);
            this.f115391c = i2;
            int i3 = i - 1;
            this.f115390b = i3;
            if (i3 == 0) {
                this.f115389a.append((char) i2);
                return;
            }
            return;
        }
        if ((b & 192) != 192) {
            this.f115389a.append('?');
            this.f115390b = 0;
            this.f115391c = 0;
            return;
        }
        if ((b & 224) == 192) {
            this.f115390b = 1;
            this.f115391c = b & 31;
            return;
        }
        if ((b & JSONB.Constants.BC_INT32_NUM_MIN) == 224) {
            this.f115390b = 2;
            this.f115391c = b & 15;
            return;
        }
        if ((b & ThreadUtils.f14117i) == 240) {
            this.f115390b = 3;
            this.f115391c = b & 7;
        } else if ((b & 252) == 248) {
            this.f115390b = 4;
            this.f115391c = b & 3;
        } else if ((b & 254) == 252) {
            this.f115390b = 5;
            this.f115391c = b & 1;
        }
    }

    public Utf8StringBuffer(int i) {
        this.f115389a = new StringBuffer(i);
    }
}
