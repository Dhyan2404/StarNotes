package net.p110sf.saxon.expr.number;

import java.util.List;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class IrregularGroupFormatter extends NumericGroupFormatter {

    /* renamed from: a */
    public final IntSet f99884a;

    /* renamed from: b */
    public final List<Integer> f99885b;

    public IrregularGroupFormatter(IntSet intSet, List<Integer> list, UnicodeString unicodeString) {
        this.f99884a = intSet;
        this.f99885b = list;
        this.adjustedPicture = unicodeString;
    }

    @Override // net.p110sf.saxon.expr.number.NumericGroupFormatter
    public String format(String str) {
        StringValue stringValue = new StringValue(str);
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < stringValue.length(); i3++) {
            if (this.f99884a.contains(i3)) {
                i2++;
            }
        }
        int length32 = stringValue.length32() + i2;
        int[] iArr = new int[length32];
        int i4 = length32 - 1;
        for (int length322 = stringValue.length32() - 1; length322 >= 0; length322--) {
            int i5 = i4 - 1;
            iArr[i4] = stringValue.getContent().codePointAt(length322);
            if (length322 <= 0 || !this.f99884a.contains(stringValue.length32() - length322)) {
                i4 = i5;
            } else {
                i4 = i5 - 1;
                iArr[i5] = this.f99885b.get(i).intValue();
                i++;
            }
        }
        return StringTool.fromCodePoints(iArr, length32).toString();
    }

    @Override // net.p110sf.saxon.expr.number.NumericGroupFormatter
    public String getSeparator() {
        if (this.f99885b.size() == 0) {
            return null;
        }
        int intValue = this.f99885b.get(r2.size() - 1).intValue();
        StringBuilder sb = new StringBuilder(16);
        sb.appendCodePoint(intValue);
        return sb.toString();
    }
}
