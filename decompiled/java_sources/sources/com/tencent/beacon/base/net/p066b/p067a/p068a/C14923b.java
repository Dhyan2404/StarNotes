package com.tencent.beacon.base.net.p066b.p067a.p068a;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.tencent.beacon.base.net.b.a.a.b */
/* loaded from: classes10.dex */
public class C14923b {

    /* renamed from: a */
    public byte[] f92694a;

    /* renamed from: b */
    InputStream f92695b;

    /* renamed from: c */
    int f92696c;

    /* renamed from: d */
    boolean f92697d;

    /* renamed from: e */
    int f92698e;

    /* renamed from: f */
    public int f92699f;

    /* renamed from: g */
    public int f92700g;

    /* renamed from: h */
    public int f92701h;

    /* renamed from: i */
    int f92702i;

    /* renamed from: j */
    int f92703j;

    /* renamed from: k */
    public int f92704k;

    /* renamed from: a */
    public void m59162a() {
        this.f92694a = null;
    }

    /* renamed from: b */
    public int m59166b(int i, int i2, int i3) {
        if (this.f92697d) {
            int i4 = this.f92701h + i;
            int i5 = i4 + i3;
            int i6 = this.f92704k;
            if (i5 > i6) {
                i3 = i6 - i4;
            }
        }
        int i7 = i2 + 1;
        int i8 = this.f92699f + this.f92701h + i;
        int i9 = 0;
        while (i9 < i3) {
            byte[] bArr = this.f92694a;
            int i10 = i8 + i9;
            if (bArr[i10] != bArr[i10 - i7]) {
                break;
            }
            i9++;
        }
        return i9;
    }

    /* renamed from: c */
    public void mo59156c() throws IOException {
        this.f92699f = 0;
        this.f92701h = 0;
        this.f92704k = 0;
        this.f92697d = false;
        m59169f();
    }

    /* renamed from: d */
    public void m59168d() {
        int i = this.f92699f;
        int i2 = (this.f92701h + i) - this.f92702i;
        if (i2 > 0) {
            i2--;
        }
        int i3 = (i + this.f92704k) - i2;
        for (int i4 = 0; i4 < i3; i4++) {
            byte[] bArr = this.f92694a;
            bArr[i4] = bArr[i2 + i4];
        }
        this.f92699f -= i2;
    }

    /* renamed from: e */
    public void mo59159e() throws IOException {
        int i = this.f92701h + 1;
        this.f92701h = i;
        if (i > this.f92696c) {
            if (this.f92699f + i > this.f92698e) {
                m59168d();
            }
            m59169f();
        }
    }

    /* renamed from: f */
    public void m59169f() throws IOException {
        if (this.f92697d) {
            return;
        }
        while (true) {
            int i = this.f92699f;
            int i2 = (0 - i) + this.f92700g;
            int i3 = this.f92704k;
            int i4 = i2 - i3;
            if (i4 == 0) {
                return;
            }
            int read = this.f92695b.read(this.f92694a, i + i3, i4);
            if (read == -1) {
                int i5 = this.f92704k;
                this.f92696c = i5;
                int i6 = this.f92699f;
                int i7 = i5 + i6;
                int i8 = this.f92698e;
                if (i7 > i8) {
                    this.f92696c = i8 - i6;
                }
                this.f92697d = true;
                return;
            }
            int i9 = this.f92704k + read;
            this.f92704k = i9;
            int i10 = this.f92701h;
            int i11 = this.f92703j;
            if (i9 >= i10 + i11) {
                this.f92696c = i9 - i11;
            }
        }
    }

    /* renamed from: g */
    public void m59170g() {
        this.f92695b = null;
    }

    /* renamed from: a */
    public void m59163a(int i, int i2, int i3) {
        this.f92702i = i;
        this.f92703j = i2;
        int i4 = i + i2 + i3;
        if (this.f92694a == null || this.f92700g != i4) {
            m59162a();
            this.f92700g = i4;
            this.f92694a = new byte[i4];
        }
        this.f92698e = this.f92700g - i2;
    }

    /* renamed from: b */
    public int m59165b() {
        return this.f92704k - this.f92701h;
    }

    /* renamed from: b */
    public void m59167b(int i) {
        this.f92699f += i;
        this.f92696c -= i;
        this.f92701h -= i;
        this.f92704k -= i;
    }

    /* renamed from: a */
    public void m59164a(InputStream inputStream) {
        this.f92695b = inputStream;
    }

    /* renamed from: a */
    public byte m59161a(int i) {
        return this.f92694a[this.f92699f + this.f92701h + i];
    }
}
