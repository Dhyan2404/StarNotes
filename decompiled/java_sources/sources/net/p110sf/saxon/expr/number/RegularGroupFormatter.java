package net.p110sf.saxon.expr.number;

import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class RegularGroupFormatter extends NumericGroupFormatter {

    /* renamed from: a */
    public final int f99903a;

    /* renamed from: b */
    public final String f99904b;

    public RegularGroupFormatter(int i, String str, UnicodeString unicodeString) {
        this.f99903a = i;
        this.f99904b = str;
        this.adjustedPicture = unicodeString;
    }

    @Override // net.p110sf.saxon.expr.number.NumericGroupFormatter
    public String format(String str) {
        if (this.f99903a <= 0 || this.f99904b.length() <= 0) {
            return str.toString();
        }
        UnicodeString tidy = StringView.tidy(str);
        StringBuilder sb = new StringBuilder(16);
        int length32 = tidy.length32() - 1;
        int i = 0;
        while (length32 >= 0) {
            if (i != 0 && i % this.f99903a == 0) {
                sb.insert(0, this.f99904b);
            }
            StringTool.prependWideChar(sb, tidy.codePointAt(length32));
            length32--;
            i++;
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.number.NumericGroupFormatter
    public String getSeparator() {
        return this.f99904b;
    }
}
