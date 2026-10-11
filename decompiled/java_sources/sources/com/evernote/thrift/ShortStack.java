package com.evernote.thrift;

/* loaded from: classes4.dex */
public class ShortStack {

    /* renamed from: a */
    public short[] f21190a;

    /* renamed from: b */
    public int f21191b = -1;

    public ShortStack(int i) {
        this.f21190a = new short[i];
    }

    /* renamed from: a */
    public final void m17119a() {
        short[] sArr = this.f21190a;
        short[] sArr2 = new short[sArr.length * 2];
        System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
        this.f21190a = sArr2;
    }

    public void clear() {
        this.f21191b = -1;
    }

    public short peek() {
        return this.f21190a[this.f21191b];
    }

    public short pop() {
        short[] sArr = this.f21190a;
        int i = this.f21191b;
        this.f21191b = i - 1;
        return sArr[i];
    }

    public void push(short s) {
        if (this.f21190a.length == this.f21191b + 1) {
            m17119a();
        }
        short[] sArr = this.f21190a;
        int i = this.f21191b + 1;
        this.f21191b = i;
        sArr[i] = s;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<ShortStack vector:[");
        for (int i = 0; i < this.f21190a.length; i++) {
            if (i != 0) {
                sb.append(" ");
            }
            if (i == this.f21191b) {
                sb.append(">>");
            }
            sb.append((int) this.f21190a[i]);
            if (i == this.f21191b) {
                sb.append("<<");
            }
        }
        sb.append("]>");
        return sb.toString();
    }
}
