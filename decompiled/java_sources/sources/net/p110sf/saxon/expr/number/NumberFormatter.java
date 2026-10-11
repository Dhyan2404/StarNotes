package net.p110sf.saxon.expr.number;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.lib.Numberer;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntUnionPredicate;
import net.p110sf.saxon.regex.charclass.Categories;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class NumberFormatter {

    /* renamed from: d */
    public static final IntPredicateProxy f99889d = IntUnionPredicate.makeUnion(Categories.getCategory("N"), Categories.getCategory("L"));

    /* renamed from: a */
    public ArrayList<UnicodeString> f99890a;

    /* renamed from: b */
    public ArrayList<UnicodeString> f99891b;

    /* renamed from: c */
    public boolean f99892c;

    public static boolean isLetterOrDigit(int i) {
        return i <= 127 ? (i >= 48 && i <= 57) || (i >= 65 && i <= 90) || (i >= 97 && i <= 122) : f99889d.test(i);
    }

    /* renamed from: a */
    public final String m62807a(String str, UnicodeString unicodeString) {
        int codePointAt;
        int digitValue;
        int i;
        if (unicodeString.length() == 0 || (digitValue = Alphanumeric.getDigitValue((codePointAt = unicodeString.codePointAt(0L)))) < 0 || (i = codePointAt - digitValue) == 48) {
            return str;
        }
        int[] iArr = new int[10];
        for (int i2 = 0; i2 <= 9; i2++) {
            iArr[i2] = i + i2;
        }
        StringBuilder sb = new StringBuilder(128);
        for (int i3 = 0; i3 < str.length(); i3++) {
            char charAt = str.charAt(i3);
            if (charAt < '0' || charAt > '9') {
                sb.append(charAt);
            } else {
                sb.appendCodePoint(iArr[charAt - '0']);
            }
        }
        return sb.toString();
    }

    public UnicodeString format(List<Object> list, int i, String str, String str2, String str3, Numberer numberer) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(32);
        int i2 = 0;
        if (this.f99892c) {
            unicodeBuilder.accept(this.f99891b.get(0));
        }
        int i3 = 0;
        while (i2 < list.size()) {
            if (i2 > 0) {
                if (i3 == 0 && this.f99892c) {
                    unicodeBuilder.append(".");
                } else {
                    unicodeBuilder.accept(this.f99891b.get(i3));
                }
            }
            int i4 = i2 + 1;
            Object obj = list.get(i2);
            unicodeBuilder.append(obj instanceof Long ? numberer.format(((Long) obj).longValue(), this.f99890a.get(i3), new RegularGroupFormatter(i, str, EmptyUnicodeString.getInstance()), str2, str3) : obj instanceof BigInteger ? m62807a(new RegularGroupFormatter(i, str, EmptyUnicodeString.getInstance()).format(obj.toString()), this.f99890a.get(i3)) : obj.toString());
            i3++;
            if (i3 == this.f99890a.size()) {
                i3--;
            }
            i2 = i4;
        }
        if (this.f99891b.size() > this.f99890a.size()) {
            unicodeBuilder.accept(this.f99891b.get(r0.size() - 1));
        }
        return unicodeBuilder.toUnicodeString();
    }

    public void prepare(String str) {
        if (str.isEmpty()) {
            str = "1";
        }
        this.f99890a = new ArrayList<>(10);
        this.f99891b = new ArrayList<>(10);
        UnicodeString tidy = StringView.tidy(str);
        int length32 = tidy.length32();
        this.f99892c = true;
        boolean z = true;
        int i = 0;
        while (i < length32) {
            long j = i;
            int codePointAt = tidy.codePointAt(j);
            int i2 = i;
            while (isLetterOrDigit(codePointAt) && (i2 = i2 + 1) != length32) {
                codePointAt = tidy.codePointAt(i2);
            }
            if (i2 > i) {
                this.f99890a.add(tidy.substring(j, i2));
                if (z) {
                    this.f99891b.add(BMPString.m63877of("."));
                    this.f99892c = false;
                    z = false;
                }
            }
            if (i2 == length32) {
                break;
            }
            long j2 = i2;
            int codePointAt2 = tidy.codePointAt(j2);
            int i3 = i2;
            while (true) {
                if (isLetterOrDigit(codePointAt2)) {
                    break;
                }
                i3++;
                if (i3 == length32) {
                    z = false;
                    break;
                } else {
                    codePointAt2 = tidy.codePointAt(i3);
                    z = false;
                }
            }
            i = i3;
            if (i > i2) {
                this.f99891b.add(tidy.substring(j2, i));
            }
        }
        if (this.f99890a.isEmpty()) {
            this.f99890a.add(BMPString.m63877of("1"));
            if (this.f99891b.size() == 1) {
                ArrayList<UnicodeString> arrayList = this.f99891b;
                arrayList.add(arrayList.get(0));
            }
        }
    }
}
