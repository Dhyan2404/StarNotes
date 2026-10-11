package org.apache.xerces.util;

/* loaded from: classes13.dex */
public final class IntStack {

    /* renamed from: a */
    public int f113492a;

    /* renamed from: b */
    public int[] f113493b;

    /* renamed from: a */
    public final void m70574a(int i) {
        int[] iArr = this.f113493b;
        if (iArr == null) {
            this.f113493b = new int[32];
        } else if (iArr.length <= i) {
            int[] iArr2 = new int[iArr.length * 2];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f113493b = iArr2;
        }
    }

    public void clear() {
        this.f113492a = 0;
    }

    public int elementAt(int i) {
        return this.f113493b[i];
    }

    public int peek() {
        return this.f113493b[this.f113492a - 1];
    }

    public int pop() {
        int[] iArr = this.f113493b;
        int i = this.f113492a - 1;
        this.f113492a = i;
        return iArr[i];
    }

    public void print() {
        System.out.print('(');
        System.out.print(this.f113492a);
        System.out.print(") {");
        int i = 0;
        while (true) {
            if (i >= this.f113492a) {
                break;
            }
            if (i == 3) {
                System.out.print(" ...");
                break;
            }
            System.out.print(' ');
            System.out.print(this.f113493b[i]);
            if (i < this.f113492a - 1) {
                System.out.print(',');
            }
            i++;
        }
        System.out.print(" }");
        System.out.println();
    }

    public void push(int i) {
        m70574a(this.f113492a + 1);
        int[] iArr = this.f113493b;
        int i2 = this.f113492a;
        this.f113492a = i2 + 1;
        iArr[i2] = i;
    }

    public int size() {
        return this.f113492a;
    }
}
