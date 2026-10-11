package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;

@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public abstract class jyi {

    /* renamed from: a */
    public StringBuilder f74822a = new StringBuilder();

    /* renamed from: b */
    public boolean f74823b;

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m55071a(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            r6 = this;
            boolean r0 = r6.f74823b
            r1 = 0
            r2 = 10
            r3 = 1
            if (r0 == 0) goto L1a
            if (r9 <= 0) goto L1a
            char r0 = r7[r8]
            if (r0 != r2) goto L10
            r0 = r3
            goto L11
        L10:
            r0 = r1
        L11:
            boolean r0 = r6.m55073c(r0)
            if (r0 == 0) goto L1a
            int r0 = r8 + 1
            goto L1b
        L1a:
            r0 = r8
        L1b:
            int r8 = r8 + r9
            r9 = r0
        L1d:
            if (r0 >= r8) goto L52
            char r4 = r7[r0]
            if (r4 == r2) goto L44
            r5 = 13
            if (r4 == r5) goto L28
            goto L50
        L28:
            java.lang.StringBuilder r4 = r6.f74822a
            int r5 = r0 - r9
            r4.append(r7, r9, r5)
            r6.f74823b = r3
            int r9 = r0 + 1
            if (r9 >= r8) goto L4e
            char r4 = r7[r9]
            if (r4 != r2) goto L3b
            r4 = r3
            goto L3c
        L3b:
            r4 = r1
        L3c:
            boolean r4 = r6.m55073c(r4)
            if (r4 == 0) goto L4e
            r0 = r9
            goto L4e
        L44:
            java.lang.StringBuilder r4 = r6.f74822a
            int r5 = r0 - r9
            r4.append(r7, r9, r5)
            r6.m55073c(r3)
        L4e:
            int r9 = r0 + 1
        L50:
            int r0 = r0 + r3
            goto L1d
        L52:
            java.lang.StringBuilder r6 = r6.f74822a
            int r8 = r8 - r9
            r6.append(r7, r9, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.jyi.m55071a(char[], int, int):void");
    }

    /* renamed from: b */
    public void m55072b() throws IOException {
        if (this.f74823b || this.f74822a.length() > 0) {
            m55073c(false);
        }
    }

    @CanIgnoreReturnValue
    /* renamed from: c */
    public final boolean m55073c(boolean z) throws IOException {
        mo27225d(this.f74822a.toString(), this.f74823b ? z ? "\r\n" : "\r" : z ? "\n" : "");
        this.f74822a = new StringBuilder();
        this.f74823b = false;
        return z;
    }

    /* renamed from: d */
    public abstract void mo27225d(String str, String str2) throws IOException;
}
