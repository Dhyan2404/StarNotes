package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.internal.RegexCache;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes6.dex */
public class AsYouTypeFormatter {

    /* renamed from: A */
    public static final int f36356A = 3;

    /* renamed from: w */
    public static final char f36359w = ' ';

    /* renamed from: k */
    public String f36373k;

    /* renamed from: l */
    public Phonemetadata.PhoneMetadata f36374l;

    /* renamed from: m */
    public Phonemetadata.PhoneMetadata f36375m;

    /* renamed from: x */
    public static final Phonemetadata.PhoneMetadata f36360x = Phonemetadata.PhoneMetadata.newBuilder().setId("<ignored>").setInternationalPrefix("NA").build();

    /* renamed from: y */
    public static final Pattern f36361y = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*\\$1[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*(\\$\\d[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*)*");

    /* renamed from: z */
    public static final Pattern f36362z = Pattern.compile("[- ]");

    /* renamed from: B */
    public static final String f36357B = "\u2008";

    /* renamed from: C */
    public static final Pattern f36358C = Pattern.compile(f36357B);

    /* renamed from: a */
    public String f36363a = "";

    /* renamed from: b */
    public StringBuilder f36364b = new StringBuilder();

    /* renamed from: c */
    public String f36365c = "";

    /* renamed from: d */
    public StringBuilder f36366d = new StringBuilder();

    /* renamed from: e */
    public StringBuilder f36367e = new StringBuilder();

    /* renamed from: f */
    public boolean f36368f = true;

    /* renamed from: g */
    public boolean f36369g = false;

    /* renamed from: h */
    public boolean f36370h = false;

    /* renamed from: i */
    public boolean f36371i = false;

    /* renamed from: j */
    public final PhoneNumberUtil f36372j = PhoneNumberUtil.getInstance();

    /* renamed from: n */
    public int f36376n = 0;

    /* renamed from: o */
    public int f36377o = 0;

    /* renamed from: p */
    public int f36378p = 0;

    /* renamed from: q */
    public StringBuilder f36379q = new StringBuilder();

    /* renamed from: r */
    public boolean f36380r = false;

    /* renamed from: s */
    public String f36381s = "";

    /* renamed from: t */
    public StringBuilder f36382t = new StringBuilder();

    /* renamed from: u */
    public List<Phonemetadata.NumberFormat> f36383u = new ArrayList();

    /* renamed from: v */
    public RegexCache f36384v = new RegexCache(64);

    public AsYouTypeFormatter(String str) {
        this.f36373k = str;
        Phonemetadata.PhoneMetadata m28422l = m28422l(str);
        this.f36375m = m28422l;
        this.f36374l = m28422l;
    }

    /* renamed from: a */
    public final boolean m28411a() {
        if (this.f36381s.length() > 0) {
            this.f36382t.insert(0, this.f36381s);
            this.f36379q.setLength(this.f36379q.lastIndexOf(this.f36381s));
        }
        return !this.f36381s.equals(m28431u());
    }

    /* renamed from: b */
    public final String m28412b(String str) {
        int length = this.f36379q.length();
        if (!this.f36380r || length <= 0 || this.f36379q.charAt(length - 1) == ' ') {
            return ((Object) this.f36379q) + str;
        }
        return new String(this.f36379q) + ' ' + str;
    }

    /* renamed from: c */
    public final String m28413c() {
        if (this.f36382t.length() < 3) {
            return m28412b(this.f36382t.toString());
        }
        m28419i(this.f36382t.toString());
        String m28417g = m28417g();
        return m28417g.length() > 0 ? m28417g : m28428r() ? m28423m() : this.f36366d.toString();
    }

    public void clear() {
        this.f36363a = "";
        this.f36366d.setLength(0);
        this.f36367e.setLength(0);
        this.f36364b.setLength(0);
        this.f36376n = 0;
        this.f36365c = "";
        this.f36379q.setLength(0);
        this.f36381s = "";
        this.f36382t.setLength(0);
        this.f36368f = true;
        this.f36369g = false;
        this.f36378p = 0;
        this.f36377o = 0;
        this.f36370h = false;
        this.f36371i = false;
        this.f36383u.clear();
        this.f36380r = false;
        if (this.f36375m.equals(this.f36374l)) {
            return;
        }
        this.f36375m = m28422l(this.f36373k);
    }

    /* renamed from: d */
    public final String m28414d() {
        this.f36368f = true;
        this.f36371i = false;
        this.f36383u.clear();
        this.f36376n = 0;
        this.f36364b.setLength(0);
        this.f36365c = "";
        return m28413c();
    }

    /* renamed from: e */
    public final boolean m28415e() {
        StringBuilder sb;
        int m28485k;
        if (this.f36382t.length() == 0 || (m28485k = this.f36372j.m28485k(this.f36382t, (sb = new StringBuilder()))) == 0) {
            return false;
        }
        this.f36382t.setLength(0);
        this.f36382t.append((CharSequence) sb);
        String regionCodeForCountryCode = this.f36372j.getRegionCodeForCountryCode(m28485k);
        if ("001".equals(regionCodeForCountryCode)) {
            this.f36375m = this.f36372j.m28492t(m28485k);
        } else if (!regionCodeForCountryCode.equals(this.f36373k)) {
            this.f36375m = m28422l(regionCodeForCountryCode);
        }
        String num = Integer.toString(m28485k);
        StringBuilder sb2 = this.f36379q;
        sb2.append(num);
        sb2.append(' ');
        this.f36381s = "";
        return true;
    }

    /* renamed from: f */
    public final boolean m28416f() {
        Matcher matcher = this.f36384v.getPatternForRegex("\\+|" + this.f36375m.getInternationalPrefix()).matcher(this.f36367e);
        if (!matcher.lookingAt()) {
            return false;
        }
        this.f36370h = true;
        int end = matcher.end();
        this.f36382t.setLength(0);
        this.f36382t.append(this.f36367e.substring(end));
        this.f36379q.setLength(0);
        this.f36379q.append(this.f36367e.substring(0, end));
        if (this.f36367e.charAt(0) != '+') {
            this.f36379q.append(' ');
        }
        return true;
    }

    /* renamed from: g */
    public String m28417g() {
        for (Phonemetadata.NumberFormat numberFormat : this.f36383u) {
            Matcher matcher = this.f36384v.getPatternForRegex(numberFormat.getPattern()).matcher(this.f36382t);
            if (matcher.matches()) {
                this.f36380r = f36362z.matcher(numberFormat.getNationalPrefixFormattingRule()).find();
                String m28412b = m28412b(matcher.replaceAll(numberFormat.getFormat()));
                if (PhoneNumberUtil.normalizeDiallableCharsOnly(m28412b).contentEquals(this.f36367e)) {
                    return m28412b;
                }
            }
        }
        return "";
    }

    public int getRememberedPosition() {
        if (!this.f36368f) {
            return this.f36377o;
        }
        int i = 0;
        int i2 = 0;
        while (i < this.f36378p && i2 < this.f36363a.length()) {
            if (this.f36367e.charAt(i) == this.f36363a.charAt(i2)) {
                i++;
            }
            i2++;
        }
        return i2;
    }

    /* renamed from: h */
    public final boolean m28418h(Phonemetadata.NumberFormat numberFormat) {
        String pattern = numberFormat.getPattern();
        this.f36364b.setLength(0);
        String m28421k = m28421k(pattern, numberFormat.getFormat());
        if (m28421k.length() <= 0) {
            return false;
        }
        this.f36364b.append(m28421k);
        return true;
    }

    /* renamed from: i */
    public final void m28419i(String str) {
        for (Phonemetadata.NumberFormat numberFormat : (!(this.f36370h && this.f36381s.length() == 0) || this.f36375m.getIntlNumberFormatCount() <= 0) ? this.f36375m.getNumberFormatList() : this.f36375m.getIntlNumberFormatList()) {
            if (this.f36381s.length() <= 0 || !PhoneNumberUtil.m28464r(numberFormat.getNationalPrefixFormattingRule()) || numberFormat.getNationalPrefixOptionalWhenFormatting() || numberFormat.hasDomesticCarrierCodeFormattingRule()) {
                if (this.f36381s.length() != 0 || this.f36370h || PhoneNumberUtil.m28464r(numberFormat.getNationalPrefixFormattingRule()) || numberFormat.getNationalPrefixOptionalWhenFormatting()) {
                    if (f36361y.matcher(numberFormat.getFormat()).matches()) {
                        this.f36383u.add(numberFormat);
                    }
                }
            }
        }
        m28429s(str);
    }

    public String inputDigit(char c) {
        String m28425o = m28425o(c, false);
        this.f36363a = m28425o;
        return m28425o;
    }

    public String inputDigitAndRememberPosition(char c) {
        String m28425o = m28425o(c, true);
        this.f36363a = m28425o;
        return m28425o;
    }

    /* renamed from: j */
    public String m28420j() {
        return this.f36381s;
    }

    /* renamed from: k */
    public final String m28421k(String str, String str2) {
        Matcher matcher = this.f36384v.getPatternForRegex(str).matcher("999999999999999");
        matcher.find();
        String group = matcher.group();
        return group.length() < this.f36382t.length() ? "" : group.replaceAll(str, str2).replaceAll("9", f36357B);
    }

    /* renamed from: l */
    public final Phonemetadata.PhoneMetadata m28422l(String str) {
        Phonemetadata.PhoneMetadata m28493u = this.f36372j.m28493u(this.f36372j.getRegionCodeForCountryCode(this.f36372j.getCountryCodeForRegion(str)));
        return m28493u != null ? m28493u : f36360x;
    }

    /* renamed from: m */
    public final String m28423m() {
        int length = this.f36382t.length();
        if (length <= 0) {
            return this.f36379q.toString();
        }
        String str = "";
        for (int i = 0; i < length; i++) {
            str = m28424n(this.f36382t.charAt(i));
        }
        return this.f36368f ? m28412b(str) : this.f36366d.toString();
    }

    /* renamed from: n */
    public final String m28424n(char c) {
        Matcher matcher = f36358C.matcher(this.f36364b);
        if (!matcher.find(this.f36376n)) {
            if (this.f36383u.size() == 1) {
                this.f36368f = false;
            }
            this.f36365c = "";
            return this.f36366d.toString();
        }
        String replaceFirst = matcher.replaceFirst(Character.toString(c));
        this.f36364b.replace(0, replaceFirst.length(), replaceFirst);
        int start = matcher.start();
        this.f36376n = start;
        return this.f36364b.substring(0, start + 1);
    }

    /* renamed from: o */
    public final String m28425o(char c, boolean z) {
        this.f36366d.append(c);
        if (z) {
            this.f36377o = this.f36366d.length();
        }
        if (m28426p(c)) {
            c = m28430t(c, z);
        } else {
            this.f36368f = false;
            this.f36369g = true;
        }
        if (!this.f36368f) {
            if (this.f36369g) {
                return this.f36366d.toString();
            }
            if (m28416f()) {
                if (m28415e()) {
                    return m28414d();
                }
            } else if (m28411a()) {
                this.f36379q.append(' ');
                return m28414d();
            }
            return this.f36366d.toString();
        }
        int length = this.f36367e.length();
        if (length == 0 || length == 1 || length == 2) {
            return this.f36366d.toString();
        }
        if (length == 3) {
            if (!m28416f()) {
                this.f36381s = m28431u();
                return m28413c();
            }
            this.f36371i = true;
        }
        if (this.f36371i) {
            if (m28415e()) {
                this.f36371i = false;
            }
            return ((Object) this.f36379q) + this.f36382t.toString();
        }
        if (this.f36383u.size() <= 0) {
            return m28413c();
        }
        String m28424n = m28424n(c);
        String m28417g = m28417g();
        if (m28417g.length() > 0) {
            return m28417g;
        }
        m28429s(this.f36382t.toString());
        return m28428r() ? m28423m() : this.f36368f ? m28412b(m28424n) : this.f36366d.toString();
    }

    /* renamed from: p */
    public final boolean m28426p(char c) {
        if (Character.isDigit(c)) {
            return true;
        }
        return this.f36366d.length() == 1 && PhoneNumberUtil.f36412H.matcher(Character.toString(c)).matches();
    }

    /* renamed from: q */
    public final boolean m28427q() {
        return this.f36375m.getCountryCode() == 1 && this.f36382t.charAt(0) == '1' && this.f36382t.charAt(1) != '0' && this.f36382t.charAt(1) != '1';
    }

    /* renamed from: r */
    public final boolean m28428r() {
        Iterator<Phonemetadata.NumberFormat> it2 = this.f36383u.iterator();
        while (it2.hasNext()) {
            Phonemetadata.NumberFormat next = it2.next();
            String pattern = next.getPattern();
            if (this.f36365c.equals(pattern)) {
                return false;
            }
            if (m28418h(next)) {
                this.f36365c = pattern;
                this.f36380r = f36362z.matcher(next.getNationalPrefixFormattingRule()).find();
                this.f36376n = 0;
                return true;
            }
            it2.remove();
        }
        this.f36368f = false;
        return false;
    }

    /* renamed from: s */
    public final void m28429s(String str) {
        int length = str.length() - 3;
        Iterator<Phonemetadata.NumberFormat> it2 = this.f36383u.iterator();
        while (it2.hasNext()) {
            Phonemetadata.NumberFormat next = it2.next();
            if (next.getLeadingDigitsPatternCount() != 0) {
                if (!this.f36384v.getPatternForRegex(next.getLeadingDigitsPattern(Math.min(length, next.getLeadingDigitsPatternCount() - 1))).matcher(str).lookingAt()) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: t */
    public final char m28430t(char c, boolean z) {
        if (c == '+') {
            this.f36367e.append(c);
        } else {
            c = Character.forDigit(Character.digit(c, 10), 10);
            this.f36367e.append(c);
            this.f36382t.append(c);
        }
        if (z) {
            this.f36378p = this.f36367e.length();
        }
        return c;
    }

    /* renamed from: u */
    public final String m28431u() {
        int i = 1;
        if (m28427q()) {
            StringBuilder sb = this.f36379q;
            sb.append('1');
            sb.append(' ');
            this.f36370h = true;
        } else {
            if (this.f36375m.hasNationalPrefixForParsing()) {
                Matcher matcher = this.f36384v.getPatternForRegex(this.f36375m.getNationalPrefixForParsing()).matcher(this.f36382t);
                if (matcher.lookingAt() && matcher.end() > 0) {
                    this.f36370h = true;
                    i = matcher.end();
                    this.f36379q.append(this.f36382t.substring(0, i));
                }
            }
            i = 0;
        }
        String substring = this.f36382t.substring(0, i);
        this.f36382t.delete(0, i);
        return substring;
    }
}
