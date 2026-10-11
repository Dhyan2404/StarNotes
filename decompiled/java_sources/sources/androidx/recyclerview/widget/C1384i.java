package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C1376a;
import java.util.List;

/* renamed from: androidx.recyclerview.widget.i */
/* loaded from: classes3.dex */
public class C1384i {

    /* renamed from: a */
    public final a f9998a;

    /* renamed from: androidx.recyclerview.widget.i$a */
    /* loaded from: classes3.dex */
    public interface a {
        /* renamed from: a */
        void mo6084a(C1376a.b bVar);

        /* renamed from: b */
        C1376a.b mo6085b(int i, int i2, int i3, Object obj);
    }

    public C1384i(a aVar) {
        this.f9998a = aVar;
    }

    /* renamed from: a */
    public final int m6236a(List<C1376a.b> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f9855a != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public void m6237b(List<C1376a.b> list) {
        while (true) {
            int m6236a = m6236a(list);
            if (m6236a == -1) {
                return;
            } else {
                m6239d(list, m6236a, m6236a + 1);
            }
        }
    }

    /* renamed from: c */
    public final void m6238c(List<C1376a.b> list, int i, C1376a.b bVar, int i2, C1376a.b bVar2) {
        int i3 = bVar.f9858d;
        int i4 = bVar2.f9856b;
        int i5 = i3 < i4 ? -1 : 0;
        int i6 = bVar.f9856b;
        if (i6 < i4) {
            i5++;
        }
        if (i4 <= i6) {
            bVar.f9856b = i6 + bVar2.f9858d;
        }
        int i7 = bVar2.f9856b;
        if (i7 <= i3) {
            bVar.f9858d = i3 + bVar2.f9858d;
        }
        bVar2.f9856b = i7 + i5;
        list.set(i, bVar2);
        list.set(i2, bVar);
    }

    /* renamed from: d */
    public final void m6239d(List<C1376a.b> list, int i, int i2) {
        C1376a.b bVar = list.get(i);
        C1376a.b bVar2 = list.get(i2);
        int i3 = bVar2.f9855a;
        if (i3 == 1) {
            m6238c(list, i, bVar, i2, bVar2);
        } else if (i3 == 2) {
            m6240e(list, i, bVar, i2, bVar2);
        } else {
            if (i3 != 4) {
                return;
            }
            m6241f(list, i, bVar, i2, bVar2);
        }
    }

    /* renamed from: e */
    public void m6240e(List<C1376a.b> list, int i, C1376a.b bVar, int i2, C1376a.b bVar2) {
        boolean z;
        int i3 = bVar.f9856b;
        int i4 = bVar.f9858d;
        boolean z2 = false;
        if (i3 < i4) {
            if (bVar2.f9856b == i3 && bVar2.f9858d == i4 - i3) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (bVar2.f9856b == i4 + 1 && bVar2.f9858d == i3 - i4) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        int i5 = bVar2.f9856b;
        if (i4 < i5) {
            bVar2.f9856b = i5 - 1;
        } else {
            int i6 = bVar2.f9858d;
            if (i4 < i5 + i6) {
                bVar2.f9858d = i6 - 1;
                bVar.f9855a = 2;
                bVar.f9858d = 1;
                if (bVar2.f9858d == 0) {
                    list.remove(i2);
                    this.f9998a.mo6084a(bVar2);
                    return;
                }
                return;
            }
        }
        int i7 = bVar.f9856b;
        int i8 = bVar2.f9856b;
        C1376a.b bVar3 = null;
        if (i7 <= i8) {
            bVar2.f9856b = i8 + 1;
        } else {
            int i9 = bVar2.f9858d;
            if (i7 < i8 + i9) {
                bVar3 = this.f9998a.mo6085b(2, i7 + 1, (i8 + i9) - i7, null);
                bVar2.f9858d = bVar.f9856b - bVar2.f9856b;
            }
        }
        if (z2) {
            list.set(i, bVar2);
            list.remove(i2);
            this.f9998a.mo6084a(bVar);
            return;
        }
        if (z) {
            if (bVar3 != null) {
                int i10 = bVar.f9856b;
                if (i10 > bVar3.f9856b) {
                    bVar.f9856b = i10 - bVar3.f9858d;
                }
                int i11 = bVar.f9858d;
                if (i11 > bVar3.f9856b) {
                    bVar.f9858d = i11 - bVar3.f9858d;
                }
            }
            int i12 = bVar.f9856b;
            if (i12 > bVar2.f9856b) {
                bVar.f9856b = i12 - bVar2.f9858d;
            }
            int i13 = bVar.f9858d;
            if (i13 > bVar2.f9856b) {
                bVar.f9858d = i13 - bVar2.f9858d;
            }
        } else {
            if (bVar3 != null) {
                int i14 = bVar.f9856b;
                if (i14 >= bVar3.f9856b) {
                    bVar.f9856b = i14 - bVar3.f9858d;
                }
                int i15 = bVar.f9858d;
                if (i15 >= bVar3.f9856b) {
                    bVar.f9858d = i15 - bVar3.f9858d;
                }
            }
            int i16 = bVar.f9856b;
            if (i16 >= bVar2.f9856b) {
                bVar.f9856b = i16 - bVar2.f9858d;
            }
            int i17 = bVar.f9858d;
            if (i17 >= bVar2.f9856b) {
                bVar.f9858d = i17 - bVar2.f9858d;
            }
        }
        list.set(i, bVar2);
        if (bVar.f9856b != bVar.f9858d) {
            list.set(i2, bVar);
        } else {
            list.remove(i2);
        }
        if (bVar3 != null) {
            list.add(i, bVar3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6241f(java.util.List<androidx.recyclerview.widget.C1376a.b> r9, int r10, androidx.recyclerview.widget.C1376a.b r11, int r12, androidx.recyclerview.widget.C1376a.b r13) {
        /*
            r8 = this;
            int r0 = r11.f9858d
            int r1 = r13.f9856b
            r2 = 4
            r3 = 1
            r4 = 0
            if (r0 >= r1) goto Ld
            int r1 = r1 - r3
            r13.f9856b = r1
            goto L20
        Ld:
            int r5 = r13.f9858d
            int r1 = r1 + r5
            if (r0 >= r1) goto L20
            int r5 = r5 - r3
            r13.f9858d = r5
            androidx.recyclerview.widget.i$a r0 = r8.f9998a
            int r1 = r11.f9856b
            java.lang.Object r5 = r13.f9857c
            androidx.recyclerview.widget.a$b r0 = r0.mo6085b(r2, r1, r3, r5)
            goto L21
        L20:
            r0 = r4
        L21:
            int r1 = r11.f9856b
            int r5 = r13.f9856b
            if (r1 > r5) goto L2b
            int r5 = r5 + r3
            r13.f9856b = r5
            goto L41
        L2b:
            int r6 = r13.f9858d
            int r7 = r5 + r6
            if (r1 >= r7) goto L41
            int r5 = r5 + r6
            int r5 = r5 - r1
            androidx.recyclerview.widget.i$a r4 = r8.f9998a
            int r1 = r1 + r3
            java.lang.Object r3 = r13.f9857c
            androidx.recyclerview.widget.a$b r4 = r4.mo6085b(r2, r1, r5, r3)
            int r1 = r13.f9858d
            int r1 = r1 - r5
            r13.f9858d = r1
        L41:
            r9.set(r12, r11)
            int r11 = r13.f9858d
            if (r11 <= 0) goto L4c
            r9.set(r10, r13)
            goto L54
        L4c:
            r9.remove(r10)
            androidx.recyclerview.widget.i$a r8 = r8.f9998a
            r8.mo6084a(r13)
        L54:
            if (r0 == 0) goto L59
            r9.add(r10, r0)
        L59:
            if (r4 == 0) goto L5e
            r9.add(r10, r4)
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C1384i.m6241f(java.util.List, int, androidx.recyclerview.widget.a$b, int, androidx.recyclerview.widget.a$b):void");
    }
}
