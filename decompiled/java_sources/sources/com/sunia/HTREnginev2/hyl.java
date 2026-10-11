package com.sunia.HTREnginev2;

import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class hyl {

    /* renamed from: b */
    public int f72684b = 0;

    /* renamed from: c */
    public int f72685c = 0;

    /* renamed from: a */
    public int[] f72683a = new int[16];

    /* renamed from: a */
    public void m54644a(int i) {
        m54645b();
        int[] iArr = this.f72683a;
        int i2 = this.f72684b;
        this.f72684b = i2 + 1;
        iArr[i2] = i;
    }

    /* renamed from: b */
    public final void m54645b() {
        int[] iArr = this.f72683a;
        int length = iArr.length;
        int i = this.f72684b;
        if (length == i) {
            int[] iArr2 = new int[i << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f72683a = iArr2;
        }
    }

    /* renamed from: c */
    public int m54646c(int i) {
        return this.f72683a[i];
    }

    /* renamed from: d */
    public int[] m54647d() {
        int i = this.f72684b;
        int[] iArr = new int[i];
        System.arraycopy(this.f72683a, 0, iArr, 0, i);
        return iArr;
    }

    /* renamed from: e */
    public boolean m54648e() {
        return this.f72685c < this.f72684b;
    }

    /* renamed from: f */
    public int m54649f() {
        return this.f72684b;
    }

    /* renamed from: g */
    public int m54650g() {
        int i = this.f72685c;
        if (i >= this.f72684b) {
            throw new NoSuchElementException("No element");
        }
        int[] iArr = this.f72683a;
        this.f72685c = i + 1;
        return iArr[i];
    }

    /* renamed from: h */
    public void m54651h() {
        this.f72685c = 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f72684b * 5);
        sb.append('[');
        for (int i = 0; i < this.f72684b; i++) {
            if (i != 0) {
                sb.append(',');
            }
            sb.append(this.f72683a[i]);
        }
        sb.append(']');
        return sb.toString();
    }
}
