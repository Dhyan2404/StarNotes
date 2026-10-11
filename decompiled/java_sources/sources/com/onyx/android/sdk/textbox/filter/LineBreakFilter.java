package com.onyx.android.sdk.textbox.filter;

import android.text.InputFilter;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J>\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0016¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/filter/LineBreakFilter;", "Landroid/text/InputFilter;", "()V", "filter", "", "source", gon.f71290o0, "", "end", "dest", "Landroid/text/Spanned;", "dstart", "dend", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class LineBreakFilter implements InputFilter {
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        r10 = kotlin.text.StringsKt___StringsKt.getOrNull(r11, r12 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
    
        r7 = kotlin.text.StringsKt___StringsKt.firstOrNull(r0);
     */
    @Override // android.text.InputFilter
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence filter(@org.jetbrains.annotations.Nullable java.lang.CharSequence r8, int r9, int r10, @org.jetbrains.annotations.Nullable android.text.Spanned r11, int r12, int r13) {
        /*
            r7 = this;
            boolean r7 = r8 instanceof android.text.Spannable
            if (r7 != 0) goto L6c
            r7 = 1
            r9 = 0
            if (r8 == 0) goto L11
            int r10 = r8.length()
            if (r10 != 0) goto Lf
            goto L11
        Lf:
            r10 = r9
            goto L12
        L11:
            r10 = r7
        L12:
            if (r10 == 0) goto L15
            goto L6c
        L15:
            com.onegravity.rteditor.utils.LineBreakExt r10 = com.onegravity.rteditor.utils.LineBreakExt.INSTANCE
            java.lang.String r0 = r10.replaceToValidNBSP(r8)
            r8 = 32
            if (r11 == 0) goto L2e
            int r12 = r12 - r7
            java.lang.Character r10 = kotlin.text.StringsKt.getOrNull(r11, r12)
            if (r10 != 0) goto L27
            goto L2e
        L27:
            char r10 = r10.charValue()
            if (r10 != r8) goto L2e
            goto L2f
        L2e:
            r7 = r9
        L2f:
            if (r7 == 0) goto L49
            java.lang.Character r7 = kotlin.text.StringsKt.firstOrNull(r0)
            if (r7 != 0) goto L38
            goto L49
        L38:
            char r7 = r7.charValue()
            if (r7 != r8) goto L49
            r1 = 32
            r2 = 160(0xa0, float:2.24E-43)
            r3 = 0
            r4 = 4
            r5 = 0
            java.lang.String r0 = kotlin.text.StringsKt.replaceFirst$default(r0, r1, r2, r3, r4, r5)
        L49:
            r7 = 2
            r8 = 0
            r10 = 13
            boolean r7 = kotlin.text.StringsKt.contains$default(r0, r10, r9, r7, r8)
            if (r7 == 0) goto L6b
            kotlin.text.Regex r7 = new kotlin.text.Regex
            java.lang.String r8 = "\r\n"
            r7.<init>(r8)
            java.lang.String r8 = "\n"
            java.lang.String r1 = r7.replace(r0, r8)
            java.lang.String r2 = "\r"
            java.lang.String r3 = "\n"
            r4 = 0
            r5 = 4
            r6 = 0
            java.lang.String r0 = kotlin.text.StringsKt.replace$default(r1, r2, r3, r4, r5, r6)
        L6b:
            return r0
        L6c:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.textbox.filter.LineBreakFilter.filter(java.lang.CharSequence, int, int, android.text.Spanned, int, int):java.lang.CharSequence");
    }
}
