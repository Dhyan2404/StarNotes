package org.apache.commons.collections4.sequence;

import java.util.List;
import org.apache.commons.collections4.Equator;
import org.apache.commons.collections4.functors.DefaultEquator;

/* loaded from: classes11.dex */
public class SequencesComparator<T> {

    /* renamed from: a */
    public final List<T> f105292a;

    /* renamed from: b */
    public final List<T> f105293b;

    /* renamed from: c */
    public final Equator<? super T> f105294c;

    /* renamed from: d */
    public final int[] f105295d;

    /* renamed from: e */
    public final int[] f105296e;

    /* renamed from: org.apache.commons.collections4.sequence.SequencesComparator$a */
    /* loaded from: classes11.dex */
    public static class C18811a {

        /* renamed from: a */
        public final int f105297a;

        /* renamed from: b */
        public final int f105298b;

        /* renamed from: c */
        public final int f105299c;

        public C18811a(int i, int i2, int i3) {
            this.f105297a = i;
            this.f105298b = i2;
            this.f105299c = i3;
        }

        /* renamed from: a */
        public int m66038a() {
            return this.f105299c;
        }

        /* renamed from: b */
        public int m66039b() {
            return this.f105298b;
        }

        /* renamed from: c */
        public int m66040c() {
            return this.f105297a;
        }
    }

    public SequencesComparator(List<T> list, List<T> list2) {
        this(list, list2, DefaultEquator.defaultEquator());
    }

    /* renamed from: a */
    public final void m66035a(int i, int i2, int i3, int i4, EditScript<T> editScript) {
        C18811a m66037c = m66037c(i, i2, i3, i4);
        if (m66037c != null && ((m66037c.m66040c() != i2 || m66037c.m66038a() != i2 - i4) && (m66037c.m66039b() != i || m66037c.m66038a() != i - i3))) {
            m66035a(i, m66037c.m66040c(), i3, m66037c.m66040c() - m66037c.m66038a(), editScript);
            for (int m66040c = m66037c.m66040c(); m66040c < m66037c.m66039b(); m66040c++) {
                editScript.append(new KeepCommand<>(this.f105292a.get(m66040c)));
            }
            m66035a(m66037c.m66039b(), i2, m66037c.m66039b() - m66037c.m66038a(), i4, editScript);
            return;
        }
        int i5 = i;
        int i6 = i3;
        while (true) {
            if (i5 >= i2 && i6 >= i4) {
                return;
            }
            if (i5 < i2 && i6 < i4 && this.f105294c.equate(this.f105292a.get(i5), this.f105293b.get(i6))) {
                editScript.append(new KeepCommand<>(this.f105292a.get(i5)));
                i5++;
            } else if (i2 - i > i4 - i3) {
                editScript.append(new DeleteCommand<>(this.f105292a.get(i5)));
                i5++;
            } else {
                editScript.append(new InsertCommand<>(this.f105293b.get(i6)));
            }
            i6++;
        }
    }

    /* renamed from: b */
    public final C18811a m66036b(int i, int i2, int i3, int i4) {
        int i5 = i;
        while (true) {
            int i6 = i5 - i2;
            if (i6 >= i4 || i5 >= i3 || !this.f105294c.equate(this.f105292a.get(i5), this.f105293b.get(i6))) {
                break;
            }
            i5++;
        }
        return new C18811a(i, i5, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0043, code lost:
    
        if (r11[r10 - 1] < r11[r10 + 1]) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00bc, code lost:
    
        if (r11[r12 + 1] <= r11[r12 - 1]) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0123, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f6 A[LOOP:4: B:55:0x00dc->B:59:0x00f6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0104 A[EDGE_INSN: B:60:0x0104->B:61:0x0104 BREAK  A[LOOP:4: B:55:0x00dc->B:59:0x00f6], SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.commons.collections4.sequence.SequencesComparator.C18811a m66037c(int r18, int r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.collections4.sequence.SequencesComparator.m66037c(int, int, int, int):org.apache.commons.collections4.sequence.SequencesComparator$a");
    }

    public EditScript<T> getScript() {
        EditScript<T> editScript = new EditScript<>();
        m66035a(0, this.f105292a.size(), 0, this.f105293b.size(), editScript);
        return editScript;
    }

    public SequencesComparator(List<T> list, List<T> list2, Equator<? super T> equator) {
        this.f105292a = list;
        this.f105293b = list2;
        this.f105294c = equator;
        int size = list.size() + list2.size() + 2;
        this.f105295d = new int[size];
        this.f105296e = new int[size];
    }
}
