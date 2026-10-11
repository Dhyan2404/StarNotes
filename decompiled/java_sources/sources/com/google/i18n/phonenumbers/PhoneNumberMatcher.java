package com.google.i18n.phonenumbers;

import com.google.android.material.motion.MotionUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.internal.RegexCache;
import com.google.i18n.phonenumbers.metadata.DefaultMetadataDependenciesProvider;
import java.lang.Character;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes6.dex */
public final class PhoneNumberMatcher implements Iterator<PhoneNumberMatch> {

    /* renamed from: n */
    public static final Pattern f36388n;

    /* renamed from: s */
    public static final Pattern f36393s;

    /* renamed from: u */
    public static final Pattern f36395u;

    /* renamed from: e */
    public final PhoneNumberUtil f36396e;

    /* renamed from: f */
    public final CharSequence f36397f;

    /* renamed from: g */
    public final String f36398g;

    /* renamed from: h */
    public final PhoneNumberUtil.Leniency f36399h;

    /* renamed from: i */
    public long f36400i;

    /* renamed from: j */
    public State f36401j = State.NOT_READY;

    /* renamed from: k */
    public PhoneNumberMatch f36402k = null;

    /* renamed from: l */
    public int f36403l = 0;

    /* renamed from: m */
    public final RegexCache f36404m = new RegexCache(32);

    /* renamed from: o */
    public static final Pattern f36389o = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");

    /* renamed from: p */
    public static final Pattern f36390p = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");

    /* renamed from: q */
    public static final Pattern f36391q = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");

    /* renamed from: r */
    public static final Pattern f36392r = Pattern.compile(":[0-5]\\d");

    /* renamed from: t */
    public static final Pattern[] f36394t = {Pattern.compile("/+(.*)"), Pattern.compile("(\\([^(]*)"), Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"), Pattern.compile("[‒-―－]\\p{Z}*(.+)"), Pattern.compile("\\.+\\p{Z}*([^.]+)"), Pattern.compile("\\p{Z}+(\\P{Z}+)")};

    /* loaded from: classes6.dex */
    public enum State {
        NOT_READY,
        READY,
        DONE
    }

    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberMatcher$a */
    /* loaded from: classes6.dex */
    public interface InterfaceC6607a {
        /* renamed from: a */
        boolean mo28449a(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr);
    }

    static {
        String str = "[^(\\[（［)\\]）］" + IteratorUtils.f104924b;
        f36393s = Pattern.compile("(?:[(\\[（［])?(?:" + str + "+[)\\]）］])?" + str + "+(?:[(\\[（［" + IteratorUtils.f104924b + str + "+[)\\]）］])" + m28441n(0, 3) + str + "*");
        String m28441n = m28441n(0, 2);
        String m28441n2 = m28441n(0, 4);
        String m28441n3 = m28441n(0, 20);
        String str2 = "[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]" + m28441n2;
        String str3 = PhoneNumberUtil.f36409E + m28441n(1, 20);
        String str4 = IteratorUtils.f104923a + ("(\\[（［" + PhoneNumberUtil.f36411G) + IteratorUtils.f104924b;
        f36395u = Pattern.compile(str4);
        f36388n = Pattern.compile("(?:" + str4 + str2 + MotionUtils.f31762d + m28441n + str3 + "(?:" + str2 + str3 + MotionUtils.f31762d + m28441n3 + "(?:" + PhoneNumberUtil.f36425U + ")?", 66);
    }

    public PhoneNumberMatcher(PhoneNumberUtil phoneNumberUtil, String str, String str2, PhoneNumberUtil.Leniency leniency, long j) {
        if (phoneNumberUtil == null) {
            throw null;
        }
        if (leniency == null) {
            throw null;
        }
        if (j < 0) {
            throw new IllegalArgumentException();
        }
        this.f36396e = phoneNumberUtil;
        this.f36397f = str == null ? "" : str;
        this.f36398g = str2;
        this.f36399h = leniency;
        this.f36400i = j;
    }

    /* renamed from: a */
    public static boolean m28432a(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
        String[] split = PhoneNumberUtil.f36437g0.split(sb.toString());
        int length = phoneNumber.hasExtension() ? split.length - 2 : split.length - 1;
        if (split.length == 1 || split[length].contains(phoneNumberUtil.getNationalSignificantNumber(phoneNumber))) {
            return true;
        }
        int length2 = strArr.length - 1;
        while (length2 > 0 && length >= 0) {
            if (!split[length].equals(strArr[length2])) {
                return false;
            }
            length2--;
            length--;
        }
        return length >= 0 && split[length].endsWith(strArr[0]);
    }

    /* renamed from: b */
    public static boolean m28433b(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
        int i;
        if (phoneNumber.getCountryCodeSource() != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            String num = Integer.toString(phoneNumber.getCountryCode());
            i = sb.indexOf(num) + num.length();
        } else {
            i = 0;
        }
        for (int i2 = 0; i2 < strArr.length; i2++) {
            int indexOf = sb.indexOf(strArr[i2], i);
            if (indexOf < 0) {
                return false;
            }
            i = indexOf + strArr[i2].length();
            if (i2 == 0 && i < sb.length() && phoneNumberUtil.getNddPrefixForRegion(phoneNumberUtil.getRegionCodeForCountryCode(phoneNumber.getCountryCode()), true) != null && Character.isDigit(sb.charAt(i))) {
                return sb.substring(i - strArr[i2].length()).startsWith(phoneNumberUtil.getNationalSignificantNumber(phoneNumber));
            }
        }
        return sb.substring(i).contains(phoneNumber.getExtension());
    }

    /* renamed from: d */
    public static boolean m28434d(Phonenumber.PhoneNumber phoneNumber, String str) {
        int indexOf;
        int indexOf2 = str.indexOf(47);
        if (indexOf2 < 0 || (indexOf = str.indexOf(47, indexOf2 + 1)) < 0) {
            return false;
        }
        if ((phoneNumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN || phoneNumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN) && PhoneNumberUtil.normalizeDigitsOnly(str.substring(0, indexOf2)).equals(Integer.toString(phoneNumber.getCountryCode()))) {
            return str.substring(indexOf + 1).contains("/");
        }
        return true;
    }

    /* renamed from: e */
    public static boolean m28435e(Phonenumber.PhoneNumber phoneNumber, String str, PhoneNumberUtil phoneNumberUtil) {
        int i = 0;
        while (i < str.length() - 1) {
            char charAt = str.charAt(i);
            if (charAt == 'x' || charAt == 'X') {
                int i2 = i + 1;
                char charAt2 = str.charAt(i2);
                if (charAt2 == 'x' || charAt2 == 'X') {
                    if (phoneNumberUtil.isNumberMatch(phoneNumber, str.substring(i2)) != PhoneNumberUtil.MatchType.NSN_MATCH) {
                        return false;
                    }
                    i = i2;
                } else if (!PhoneNumberUtil.normalizeDigitsOnly(str.substring(i)).equals(phoneNumber.getExtension())) {
                    return false;
                }
            }
            i++;
        }
        return true;
    }

    /* renamed from: i */
    public static String[] m28436i(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber) {
        String format = phoneNumberUtil.format(phoneNumber, PhoneNumberUtil.PhoneNumberFormat.RFC3966);
        int indexOf = format.indexOf(59);
        if (indexOf < 0) {
            indexOf = format.length();
        }
        return format.substring(format.indexOf(45) + 1, indexOf).split("-");
    }

    /* renamed from: j */
    public static String[] m28437j(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, Phonemetadata.NumberFormat numberFormat) {
        return phoneNumberUtil.m28489p(phoneNumberUtil.getNationalSignificantNumber(phoneNumber), numberFormat, PhoneNumberUtil.PhoneNumberFormat.RFC3966).split("-");
    }

    /* renamed from: k */
    public static boolean m28438k(char c) {
        return c == '%' || Character.getType(c) == 26;
    }

    /* renamed from: l */
    public static boolean m28439l(char c) {
        if (!Character.isLetter(c) && Character.getType(c) != 6) {
            return false;
        }
        Character.UnicodeBlock of = Character.UnicodeBlock.of(c);
        return of.equals(Character.UnicodeBlock.BASIC_LATIN) || of.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_A) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_B) || of.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS);
    }

    /* renamed from: m */
    public static boolean m28440m(Phonenumber.PhoneNumber phoneNumber, PhoneNumberUtil phoneNumberUtil) {
        Phonemetadata.PhoneMetadata m28493u;
        if (phoneNumber.getCountryCodeSource() != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY || (m28493u = phoneNumberUtil.m28493u(phoneNumberUtil.getRegionCodeForCountryCode(phoneNumber.getCountryCode()))) == null) {
            return true;
        }
        Phonemetadata.NumberFormat m28484c = phoneNumberUtil.m28484c(m28493u.getNumberFormatList(), phoneNumberUtil.getNationalSignificantNumber(phoneNumber));
        if (m28484c == null || m28484c.getNationalPrefixFormattingRule().length() <= 0 || m28484c.getNationalPrefixOptionalWhenFormatting() || PhoneNumberUtil.m28464r(m28484c.getNationalPrefixFormattingRule())) {
            return true;
        }
        return phoneNumberUtil.m28475L(new StringBuilder(PhoneNumberUtil.normalizeDigitsOnly(phoneNumber.getRawInput())), m28493u, null);
    }

    /* renamed from: n */
    public static String m28441n(int i, int i2) {
        if (i < 0 || i2 <= 0 || i2 < i) {
            throw new IllegalArgumentException();
        }
        return "{" + i + "," + i2 + "}";
    }

    /* renamed from: q */
    public static CharSequence m28442q(Pattern pattern, CharSequence charSequence) {
        Matcher matcher = pattern.matcher(charSequence);
        return matcher.find() ? charSequence.subSequence(0, matcher.start()) : charSequence;
    }

    /* renamed from: c */
    public boolean m28443c(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, InterfaceC6607a interfaceC6607a) {
        StringBuilder m28452N = PhoneNumberUtil.m28452N(charSequence, true);
        if (interfaceC6607a.mo28449a(phoneNumberUtil, phoneNumber, m28452N, m28436i(phoneNumberUtil, phoneNumber))) {
            return true;
        }
        Phonemetadata.PhoneMetadata formattingMetadataForCountryCallingCode = DefaultMetadataDependenciesProvider.getInstance().getAlternateFormatsMetadataSource().getFormattingMetadataForCountryCallingCode(phoneNumber.getCountryCode());
        String nationalSignificantNumber = phoneNumberUtil.getNationalSignificantNumber(phoneNumber);
        if (formattingMetadataForCountryCallingCode != null) {
            for (Phonemetadata.NumberFormat numberFormat : formattingMetadataForCountryCallingCode.getNumberFormatList()) {
                if (numberFormat.getLeadingDigitsPatternCount() <= 0 || this.f36404m.getPatternForRegex(numberFormat.getLeadingDigitsPattern(0)).matcher(nationalSignificantNumber).lookingAt()) {
                    if (interfaceC6607a.mo28449a(phoneNumberUtil, phoneNumber, m28452N, m28437j(phoneNumberUtil, phoneNumber, numberFormat))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: f */
    public final PhoneNumberMatch m28444f(CharSequence charSequence, int i) {
        for (Pattern pattern : f36394t) {
            Matcher matcher = pattern.matcher(charSequence);
            boolean z = true;
            while (matcher.find() && this.f36400i > 0) {
                if (z) {
                    PhoneNumberMatch m28448p = m28448p(m28442q(PhoneNumberUtil.f36420P, charSequence.subSequence(0, matcher.start())), i);
                    if (m28448p != null) {
                        return m28448p;
                    }
                    this.f36400i--;
                    z = false;
                }
                PhoneNumberMatch m28448p2 = m28448p(m28442q(PhoneNumberUtil.f36420P, matcher.group(1)), matcher.start(1) + i);
                if (m28448p2 != null) {
                    return m28448p2;
                }
                this.f36400i--;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final PhoneNumberMatch m28445g(CharSequence charSequence, int i) {
        if (f36390p.matcher(charSequence).find()) {
            return null;
        }
        if (f36391q.matcher(charSequence).find()) {
            if (f36392r.matcher(this.f36397f.toString().substring(charSequence.length() + i)).lookingAt()) {
                return null;
            }
        }
        PhoneNumberMatch m28448p = m28448p(charSequence, i);
        return m28448p != null ? m28448p : m28444f(charSequence, i);
    }

    /* renamed from: h */
    public final PhoneNumberMatch m28446h(int i) {
        Matcher matcher = f36388n.matcher(this.f36397f);
        while (this.f36400i > 0 && matcher.find(i)) {
            int start = matcher.start();
            CharSequence m28442q = m28442q(PhoneNumberUtil.f36418N, this.f36397f.subSequence(start, matcher.end()));
            PhoneNumberMatch m28445g = m28445g(m28442q, start);
            if (m28445g != null) {
                return m28445g;
            }
            i = start + m28442q.length();
            this.f36400i--;
        }
        return null;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f36401j == State.NOT_READY) {
            PhoneNumberMatch m28446h = m28446h(this.f36403l);
            this.f36402k = m28446h;
            if (m28446h == null) {
                this.f36401j = State.DONE;
            } else {
                this.f36403l = m28446h.end();
                this.f36401j = State.READY;
            }
        }
        return this.f36401j == State.READY;
    }

    @Override // java.util.Iterator
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public PhoneNumberMatch next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        PhoneNumberMatch phoneNumberMatch = this.f36402k;
        this.f36402k = null;
        this.f36401j = State.NOT_READY;
        return phoneNumberMatch;
    }

    /* renamed from: p */
    public final PhoneNumberMatch m28448p(CharSequence charSequence, int i) {
        try {
            if (f36393s.matcher(charSequence).matches() && !f36389o.matcher(charSequence).find()) {
                if (this.f36399h.compareTo(PhoneNumberUtil.Leniency.VALID) >= 0) {
                    if (i > 0 && !f36395u.matcher(charSequence).lookingAt()) {
                        char charAt = this.f36397f.charAt(i - 1);
                        if (m28438k(charAt) || m28439l(charAt)) {
                            return null;
                        }
                    }
                    int length = charSequence.length() + i;
                    if (length < this.f36397f.length()) {
                        char charAt2 = this.f36397f.charAt(length);
                        if (m28438k(charAt2) || m28439l(charAt2)) {
                            return null;
                        }
                    }
                }
                Phonenumber.PhoneNumber parseAndKeepRawInput = this.f36396e.parseAndKeepRawInput(charSequence, this.f36398g);
                if (this.f36399h.verify(parseAndKeepRawInput, charSequence, this.f36396e, this)) {
                    parseAndKeepRawInput.clearCountryCodeSource();
                    parseAndKeepRawInput.clearRawInput();
                    parseAndKeepRawInput.clearPreferredDomesticCarrierCode();
                    return new PhoneNumberMatch(i, charSequence.toString(), parseAndKeepRawInput);
                }
            }
        } catch (NumberParseException unused) {
        }
        return null;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
