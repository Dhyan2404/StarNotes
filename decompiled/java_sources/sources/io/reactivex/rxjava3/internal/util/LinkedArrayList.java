package io.reactivex.rxjava3.internal.util;

import java.util.ArrayList;

/* loaded from: classes10.dex */
public class LinkedArrayList {

    /* renamed from: a */
    public final int f97417a;

    /* renamed from: b */
    public Object[] f97418b;

    /* renamed from: c */
    public Object[] f97419c;

    /* renamed from: d */
    public volatile int f97420d;

    /* renamed from: e */
    public int f97421e;

    public LinkedArrayList(int capacityHint) {
        this.f97417a = capacityHint;
    }

    public void add(Object o) {
        if (this.f97420d == 0) {
            Object[] objArr = new Object[this.f97417a + 1];
            this.f97418b = objArr;
            this.f97419c = objArr;
            objArr[0] = o;
            this.f97421e = 1;
            this.f97420d = 1;
            return;
        }
        int i = this.f97421e;
        int i2 = this.f97417a;
        if (i != i2) {
            this.f97419c[i] = o;
            this.f97421e = i + 1;
            this.f97420d++;
        } else {
            Object[] objArr2 = new Object[i2 + 1];
            objArr2[0] = o;
            this.f97419c[i2] = objArr2;
            this.f97419c = objArr2;
            this.f97421e = 1;
            this.f97420d++;
        }
    }

    public Object[] head() {
        return this.f97418b;
    }

    public int size() {
        return this.f97420d;
    }

    public String toString() {
        int i = this.f97417a;
        int i2 = this.f97420d;
        ArrayList arrayList = new ArrayList(i2 + 1);
        Object[] head = head();
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            arrayList.add(head[i4]);
            i3++;
            i4++;
            if (i4 == i) {
                head = (Object[]) head[i];
                i4 = 0;
            }
        }
        return arrayList.toString();
    }
}
