package org.apache.commons.text.diff;

/* loaded from: classes12.dex */
public class StringsComparator {

    /* renamed from: a */
    public final String f110030a;

    /* renamed from: b */
    public final String f110031b;

    /* renamed from: c */
    public final int[] f110032c;

    /* renamed from: d */
    public final int[] f110033d;

    /* renamed from: org.apache.commons.text.diff.StringsComparator$a */
    /* loaded from: classes12.dex */
    public static class C19329a {

        /* renamed from: a */
        public final int f110034a;

        /* renamed from: b */
        public final int f110035b;

        /* renamed from: c */
        public final int f110036c;

        public C19329a(int i, int i2, int i3) {
            this.f110034a = i;
            this.f110035b = i2;
            this.f110036c = i3;
        }

        /* renamed from: a */
        public int m68265a() {
            return this.f110036c;
        }

        /* renamed from: b */
        public int m68266b() {
            return this.f110035b;
        }

        /* renamed from: c */
        public int m68267c() {
            return this.f110034a;
        }
    }

    public StringsComparator(String str, String str2) {
        this.f110030a = str;
        this.f110031b = str2;
        int length = str.length() + str2.length() + 2;
        this.f110032c = new int[length];
        this.f110033d = new int[length];
    }

    /* renamed from: a */
    public final void m68262a(int i, int i2, int i3, int i4, EditScript<Character> editScript) {
        C19329a m68264c = m68264c(i, i2, i3, i4);
        if (m68264c != null && ((m68264c.m68267c() != i2 || m68264c.m68265a() != i2 - i4) && (m68264c.m68266b() != i || m68264c.m68265a() != i - i3))) {
            m68262a(i, m68264c.m68267c(), i3, m68264c.m68267c() - m68264c.m68265a(), editScript);
            for (int m68267c = m68264c.m68267c(); m68267c < m68264c.m68266b(); m68267c++) {
                editScript.append(new KeepCommand<>(Character.valueOf(this.f110030a.charAt(m68267c))));
            }
            m68262a(m68264c.m68266b(), i2, m68264c.m68266b() - m68264c.m68265a(), i4, editScript);
            return;
        }
        int i5 = i;
        int i6 = i3;
        while (true) {
            if (i5 >= i2 && i6 >= i4) {
                return;
            }
            if (i5 < i2 && i6 < i4 && this.f110030a.charAt(i5) == this.f110031b.charAt(i6)) {
                editScript.append(new KeepCommand<>(Character.valueOf(this.f110030a.charAt(i5))));
                i5++;
            } else if (i2 - i > i4 - i3) {
                editScript.append(new DeleteCommand<>(Character.valueOf(this.f110030a.charAt(i5))));
                i5++;
            } else {
                editScript.append(new InsertCommand<>(Character.valueOf(this.f110031b.charAt(i6))));
            }
            i6++;
        }
    }

    /* renamed from: b */
    public final C19329a m68263b(int i, int i2, int i3, int i4) {
        int i5 = i;
        while (true) {
            int i6 = i5 - i2;
            if (i6 >= i4 || i5 >= i3 || this.f110030a.charAt(i5) != this.f110031b.charAt(i6)) {
                break;
            }
            i5++;
        }
        return new C19329a(i, i5, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
    
        if (r6[r5 - 1] < r6[r5 + 1]) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ac, code lost:
    
        if (r6[r7 + 1] <= r6[r7 - 1]) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0105, code lost:
    
        r0 = r0 + 1;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.commons.text.diff.StringsComparator.C19329a m68264c(int r12, int r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.text.diff.StringsComparator.m68264c(int, int, int, int):org.apache.commons.text.diff.StringsComparator$a");
    }

    public EditScript<Character> getScript() {
        EditScript<Character> editScript = new EditScript<>();
        m68262a(0, this.f110030a.length(), 0, this.f110031b.length(), editScript);
        return editScript;
    }
}
