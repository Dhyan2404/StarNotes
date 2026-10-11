package com.google.i18n.phonenumbers;

import com.google.android.material.motion.MotionUtils;
import com.google.firebase.installations.local.IidStore;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberMatcher;
import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.internal.MatcherApi;
import com.google.i18n.phonenumbers.internal.RegexBasedMatcher;
import com.google.i18n.phonenumbers.internal.RegexCache;
import com.google.i18n.phonenumbers.metadata.DefaultMetadataDependenciesProvider;
import com.google.i18n.phonenumbers.metadata.source.MetadataSource;
import com.google.i18n.phonenumbers.metadata.source.MetadataSourceImpl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes6.dex */
public class PhoneNumberUtil {

    /* renamed from: A */
    public static final Map<Character, Character> f36405A;

    /* renamed from: B */
    public static final Map<Character, Character> f36406B;

    /* renamed from: C */
    public static final Pattern f36407C;

    /* renamed from: D */
    public static final String f36408D = "-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～";

    /* renamed from: E */
    public static final String f36409E = "\\p{Nd}";

    /* renamed from: F */
    public static final String f36410F;

    /* renamed from: G */
    public static final String f36411G = "+＋";

    /* renamed from: H */
    public static final Pattern f36412H;

    /* renamed from: I */
    public static final Pattern f36413I;

    /* renamed from: J */
    public static final Pattern f36414J;

    /* renamed from: K */
    public static final String f36415K = "[+＋\\p{Nd}]";

    /* renamed from: L */
    public static final Pattern f36416L;

    /* renamed from: M */
    public static final String f36417M = "[\\\\/] *x";

    /* renamed from: N */
    public static final Pattern f36418N;

    /* renamed from: O */
    public static final String f36419O = "[[\\P{N}&&\\P{L}]&&[^#]]+$";

    /* renamed from: P */
    public static final Pattern f36420P;

    /* renamed from: Q */
    public static final Pattern f36421Q;

    /* renamed from: R */
    public static final String f36422R;
    public static final String REGION_CODE_FOR_NON_GEO_ENTITY = "001";

    /* renamed from: S */
    public static final String f36423S = " ext. ";

    /* renamed from: T */
    public static final String f36424T;

    /* renamed from: U */
    public static final String f36425U;

    /* renamed from: V */
    public static final String f36426V = "[\\-\\.\\(\\)]?";

    /* renamed from: W */
    public static final String f36427W = "(\\p{Nd}|[\\-\\.\\(\\)]?)";

    /* renamed from: X */
    public static final String f36428X = "^\\+(\\p{Nd}|[\\-\\.\\(\\)]?)*\\p{Nd}(\\p{Nd}|[\\-\\.\\(\\)]?)*$";

    /* renamed from: Y */
    public static final Pattern f36429Y;

    /* renamed from: Z */
    public static final String f36430Z;

    /* renamed from: a0 */
    public static final String f36431a0;

    /* renamed from: b0 */
    public static final String f36432b0;

    /* renamed from: c0 */
    public static final String f36433c0;

    /* renamed from: d0 */
    public static final Pattern f36434d0;

    /* renamed from: e0 */
    public static final Pattern f36435e0;

    /* renamed from: f0 */
    public static final Pattern f36436f0;

    /* renamed from: g0 */
    public static final Pattern f36437g0;

    /* renamed from: h */
    public static final Logger f36438h = Logger.getLogger(PhoneNumberUtil.class.getName());

    /* renamed from: h0 */
    public static final Pattern f36439h0;

    /* renamed from: i */
    public static final int f36440i = 66;

    /* renamed from: i0 */
    public static final String f36441i0 = "$NP";

    /* renamed from: j */
    public static final int f36442j = 2;

    /* renamed from: j0 */
    public static final String f36443j0 = "$FG";

    /* renamed from: k */
    public static final int f36444k = 17;

    /* renamed from: k0 */
    public static final String f36445k0 = "$CC";

    /* renamed from: l */
    public static final int f36446l = 3;

    /* renamed from: l0 */
    public static final Pattern f36447l0;

    /* renamed from: m */
    public static final int f36448m = 250;

    /* renamed from: m0 */
    public static PhoneNumberUtil f36449m0 = null;

    /* renamed from: n */
    public static final String f36450n = "ZZ";

    /* renamed from: o */
    public static final int f36451o = 1;

    /* renamed from: p */
    public static final Map<Integer, String> f36452p;

    /* renamed from: q */
    public static final Set<Integer> f36453q;

    /* renamed from: r */
    public static final Set<Integer> f36454r;

    /* renamed from: s */
    public static final char f36455s = '+';

    /* renamed from: t */
    public static final char f36456t = '*';

    /* renamed from: u */
    public static final String f36457u = ";ext=";

    /* renamed from: v */
    public static final String f36458v = "tel:";

    /* renamed from: w */
    public static final String f36459w = ";phone-context=";

    /* renamed from: x */
    public static final String f36460x = ";isub=";

    /* renamed from: y */
    public static final Map<Character, Character> f36461y;

    /* renamed from: z */
    public static final Map<Character, Character> f36462z;

    /* renamed from: a */
    public final MetadataSource f36463a;

    /* renamed from: b */
    public final Map<Integer, List<String>> f36464b;

    /* renamed from: c */
    public final MatcherApi f36465c = RegexBasedMatcher.create();

    /* renamed from: d */
    public final Set<String> f36466d = new HashSet(35);

    /* renamed from: e */
    public final RegexCache f36467e = new RegexCache(100);

    /* renamed from: f */
    public final Set<String> f36468f = new HashSet(320);

    /* renamed from: g */
    public final Set<Integer> f36469g = new HashSet();

    /* loaded from: classes6.dex */
    public enum Leniency {
        POSSIBLE { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.1
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            public boolean verify(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, PhoneNumberMatcher phoneNumberMatcher) {
                return phoneNumberUtil.isPossibleNumber(phoneNumber);
            }
        },
        VALID { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.2
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            public boolean verify(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, PhoneNumberMatcher phoneNumberMatcher) {
                if (phoneNumberUtil.isValidNumber(phoneNumber) && PhoneNumberMatcher.m28435e(phoneNumber, charSequence.toString(), phoneNumberUtil)) {
                    return PhoneNumberMatcher.m28440m(phoneNumber, phoneNumberUtil);
                }
                return false;
            }
        },
        STRICT_GROUPING { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.3

            /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$Leniency$3$a */
            /* loaded from: classes6.dex */
            public class a implements PhoneNumberMatcher.InterfaceC6607a {
                public a() {
                }

                @Override // com.google.i18n.phonenumbers.PhoneNumberMatcher.InterfaceC6607a
                /* renamed from: a */
                public boolean mo28449a(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
                    return PhoneNumberMatcher.m28433b(phoneNumberUtil, phoneNumber, sb, strArr);
                }
            }

            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            public boolean verify(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, PhoneNumberMatcher phoneNumberMatcher) {
                String charSequence2 = charSequence.toString();
                if (phoneNumberUtil.isValidNumber(phoneNumber) && PhoneNumberMatcher.m28435e(phoneNumber, charSequence2, phoneNumberUtil) && !PhoneNumberMatcher.m28434d(phoneNumber, charSequence2) && PhoneNumberMatcher.m28440m(phoneNumber, phoneNumberUtil)) {
                    return phoneNumberMatcher.m28443c(phoneNumber, charSequence, phoneNumberUtil, new a());
                }
                return false;
            }
        },
        EXACT_GROUPING { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.4

            /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$Leniency$4$a */
            /* loaded from: classes6.dex */
            public class a implements PhoneNumberMatcher.InterfaceC6607a {
                public a() {
                }

                @Override // com.google.i18n.phonenumbers.PhoneNumberMatcher.InterfaceC6607a
                /* renamed from: a */
                public boolean mo28449a(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
                    return PhoneNumberMatcher.m28432a(phoneNumberUtil, phoneNumber, sb, strArr);
                }
            }

            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            public boolean verify(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, PhoneNumberMatcher phoneNumberMatcher) {
                String charSequence2 = charSequence.toString();
                if (phoneNumberUtil.isValidNumber(phoneNumber) && PhoneNumberMatcher.m28435e(phoneNumber, charSequence2, phoneNumberUtil) && !PhoneNumberMatcher.m28434d(phoneNumber, charSequence2) && PhoneNumberMatcher.m28440m(phoneNumber, phoneNumberUtil)) {
                    return phoneNumberMatcher.m28443c(phoneNumber, charSequence, phoneNumberUtil, new a());
                }
                return false;
            }
        };

        public abstract boolean verify(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, PhoneNumberMatcher phoneNumberMatcher);

        /* synthetic */ Leniency(C6612a c6612a) {
            this();
        }
    }

    /* loaded from: classes6.dex */
    public enum MatchType {
        NOT_A_NUMBER,
        NO_MATCH,
        SHORT_NSN_MATCH,
        NSN_MATCH,
        EXACT_MATCH
    }

    /* loaded from: classes6.dex */
    public enum PhoneNumberFormat {
        E164,
        INTERNATIONAL,
        NATIONAL,
        RFC3966
    }

    /* loaded from: classes6.dex */
    public enum PhoneNumberType {
        FIXED_LINE,
        MOBILE,
        FIXED_LINE_OR_MOBILE,
        TOLL_FREE,
        PREMIUM_RATE,
        SHARED_COST,
        VOIP,
        PERSONAL_NUMBER,
        PAGER,
        UAN,
        VOICEMAIL,
        UNKNOWN
    }

    /* loaded from: classes6.dex */
    public enum ValidationResult {
        IS_POSSIBLE,
        IS_POSSIBLE_LOCAL_ONLY,
        INVALID_COUNTRY_CODE,
        TOO_SHORT,
        INVALID_LENGTH,
        TOO_LONG
    }

    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$a */
    /* loaded from: classes6.dex */
    public class C6612a implements Iterable<PhoneNumberMatch> {

        /* renamed from: e */
        public final /* synthetic */ CharSequence f36472e;

        /* renamed from: f */
        public final /* synthetic */ String f36473f;

        /* renamed from: g */
        public final /* synthetic */ Leniency f36474g;

        /* renamed from: h */
        public final /* synthetic */ long f36475h;

        public C6612a(CharSequence charSequence, String str, Leniency leniency, long j) {
            this.f36472e = charSequence;
            this.f36473f = str;
            this.f36474g = leniency;
            this.f36475h = j;
        }

        @Override // java.lang.Iterable
        public Iterator<PhoneNumberMatch> iterator() {
            return new PhoneNumberMatcher(PhoneNumberUtil.this, this.f36472e, this.f36473f, this.f36474g, this.f36475h);
        }
    }

    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$b */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6613b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f36477a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f36478b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f36479c;

        static {
            int[] iArr = new int[PhoneNumberType.values().length];
            f36479c = iArr;
            try {
                iArr[PhoneNumberType.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36479c[PhoneNumberType.TOLL_FREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36479c[PhoneNumberType.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36479c[PhoneNumberType.FIXED_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f36479c[PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f36479c[PhoneNumberType.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f36479c[PhoneNumberType.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f36479c[PhoneNumberType.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f36479c[PhoneNumberType.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f36479c[PhoneNumberType.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f36479c[PhoneNumberType.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr2 = new int[PhoneNumberFormat.values().length];
            f36478b = iArr2;
            try {
                iArr2[PhoneNumberFormat.E164.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f36478b[PhoneNumberFormat.INTERNATIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f36478b[PhoneNumberFormat.RFC3966.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f36478b[PhoneNumberFormat.NATIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            int[] iArr3 = new int[Phonenumber.PhoneNumber.CountryCodeSource.values().length];
            f36477a = iArr3;
            try {
                iArr3[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f36477a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f36477a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f36477a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(54, "9");
        f36452p = Collections.unmodifiableMap(hashMap);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        f36453q = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        hashSet2.add(54);
        hashSet2.add(55);
        hashSet2.add(62);
        hashSet2.addAll(hashSet);
        f36454r = Collections.unmodifiableSet(hashSet2);
        HashMap hashMap2 = new HashMap();
        hashMap2.put('0', '0');
        hashMap2.put('1', '1');
        hashMap2.put('2', '2');
        hashMap2.put('3', '3');
        hashMap2.put('4', '4');
        hashMap2.put('5', '5');
        hashMap2.put('6', '6');
        hashMap2.put('7', '7');
        hashMap2.put('8', '8');
        hashMap2.put('9', '9');
        HashMap hashMap3 = new HashMap(40);
        hashMap3.put('A', '2');
        hashMap3.put('B', '2');
        hashMap3.put('C', '2');
        hashMap3.put('D', '3');
        hashMap3.put('E', '3');
        hashMap3.put('F', '3');
        hashMap3.put('G', '4');
        hashMap3.put('H', '4');
        hashMap3.put('I', '4');
        hashMap3.put('J', '5');
        hashMap3.put('K', '5');
        hashMap3.put('L', '5');
        hashMap3.put('M', '6');
        hashMap3.put('N', '6');
        hashMap3.put('O', '6');
        hashMap3.put('P', '7');
        hashMap3.put('Q', '7');
        hashMap3.put('R', '7');
        hashMap3.put('S', '7');
        hashMap3.put('T', '8');
        hashMap3.put('U', '8');
        hashMap3.put('V', '8');
        hashMap3.put('W', '9');
        hashMap3.put('X', '9');
        hashMap3.put('Y', '9');
        hashMap3.put('Z', '9');
        Map<Character, Character> unmodifiableMap = Collections.unmodifiableMap(hashMap3);
        f36462z = unmodifiableMap;
        HashMap hashMap4 = new HashMap(100);
        hashMap4.putAll(unmodifiableMap);
        hashMap4.putAll(hashMap2);
        f36405A = Collections.unmodifiableMap(hashMap4);
        HashMap hashMap5 = new HashMap();
        hashMap5.putAll(hashMap2);
        Character valueOf = Character.valueOf(f36455s);
        hashMap5.put(valueOf, valueOf);
        hashMap5.put('*', '*');
        hashMap5.put('#', '#');
        f36461y = Collections.unmodifiableMap(hashMap5);
        HashMap hashMap6 = new HashMap();
        Iterator<Character> it2 = unmodifiableMap.keySet().iterator();
        while (it2.hasNext()) {
            char charValue = it2.next().charValue();
            hashMap6.put(Character.valueOf(Character.toLowerCase(charValue)), Character.valueOf(charValue));
            hashMap6.put(Character.valueOf(charValue), Character.valueOf(charValue));
        }
        hashMap6.putAll(hashMap2);
        hashMap6.put('-', '-');
        hashMap6.put((char) 65293, '-');
        hashMap6.put((char) 8208, '-');
        hashMap6.put((char) 8209, '-');
        hashMap6.put((char) 8210, '-');
        hashMap6.put(Character.valueOf(Typography.ndash), '-');
        hashMap6.put(Character.valueOf(Typography.mdash), '-');
        hashMap6.put((char) 8213, '-');
        hashMap6.put((char) 8722, '-');
        hashMap6.put('/', '/');
        hashMap6.put((char) 65295, '/');
        hashMap6.put(' ', ' ');
        hashMap6.put((char) 12288, ' ');
        hashMap6.put((char) 8288, ' ');
        hashMap6.put('.', '.');
        hashMap6.put((char) 65294, '.');
        f36406B = Collections.unmodifiableMap(hashMap6);
        f36407C = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
        StringBuilder sb = new StringBuilder();
        Map<Character, Character> map = f36462z;
        sb.append(Arrays.toString(map.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
        sb.append(Arrays.toString(map.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
        String sb2 = sb.toString();
        f36410F = sb2;
        f36412H = Pattern.compile("[+＋]+");
        f36413I = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        f36414J = Pattern.compile("(\\p{Nd})");
        f36416L = Pattern.compile(f36415K);
        f36418N = Pattern.compile(f36417M);
        f36420P = Pattern.compile(f36419O);
        f36421Q = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        String str = "\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*" + sb2 + f36409E + "]*";
        f36422R = str;
        String m28457e = m28457e(true);
        f36424T = m28457e;
        f36425U = m28457e(false);
        f36429Y = Pattern.compile(f36428X);
        String str2 = sb2 + f36409E;
        f36430Z = str2;
        String str3 = IteratorUtils.f104923a + str2 + "]+((\\-)*[" + str2 + "])*";
        f36431a0 = str3;
        String str4 = IteratorUtils.f104923a + sb2 + "]+((\\-)*[" + str2 + "])*";
        f36432b0 = str4;
        String str5 = "^(" + str3 + "\\.)*" + str4 + "\\.?$";
        f36433c0 = str5;
        f36434d0 = Pattern.compile(str5);
        f36435e0 = Pattern.compile("(?:" + m28457e + ")$", 66);
        f36436f0 = Pattern.compile(str + "(?:" + m28457e + ")?", 66);
        f36437g0 = Pattern.compile("(\\D+)");
        f36439h0 = Pattern.compile("(\\$\\d)");
        f36447l0 = Pattern.compile("\\(?\\$1\\)?");
        f36449m0 = null;
    }

    public PhoneNumberUtil(MetadataSource metadataSource, Map<Integer, List<String>> map) {
        this.f36463a = metadataSource;
        this.f36464b = map;
        for (Map.Entry<Integer, List<String>> entry : map.entrySet()) {
            List<String> value = entry.getValue();
            if (value.size() == 1 && "001".equals(value.get(0))) {
                this.f36469g.add(entry.getKey());
            } else {
                this.f36468f.addAll(value);
            }
        }
        if (this.f36468f.remove("001")) {
            f36438h.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.f36466d.addAll(map.get(1));
    }

    /* renamed from: G */
    public static boolean m28450G(CharSequence charSequence) {
        if (charSequence.length() < 2) {
            return false;
        }
        return f36436f0.matcher(charSequence).matches();
    }

    /* renamed from: M */
    public static StringBuilder m28451M(StringBuilder sb) {
        if (f36421Q.matcher(sb).matches()) {
            sb.replace(0, sb.length(), m28453O(sb, f36405A, true));
        } else {
            sb.replace(0, sb.length(), normalizeDigitsOnly(sb));
        }
        return sb;
    }

    /* renamed from: N */
    public static StringBuilder m28452N(CharSequence charSequence, boolean z) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            int digit = Character.digit(charAt, 10);
            if (digit != -1) {
                sb.append(digit);
            } else if (z) {
                sb.append(charAt);
            }
        }
        return sb;
    }

    /* renamed from: O */
    public static String m28453O(CharSequence charSequence, Map<Character, Character> map, boolean z) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            Character ch = map.get(Character.valueOf(Character.toUpperCase(charAt)));
            if (ch != null) {
                sb.append(ch);
            } else if (!z) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* renamed from: T */
    public static synchronized void m28454T(PhoneNumberUtil phoneNumberUtil) {
        synchronized (PhoneNumberUtil.class) {
            f36449m0 = phoneNumberUtil;
        }
    }

    /* renamed from: U */
    public static void m28455U(CharSequence charSequence, Phonenumber.PhoneNumber phoneNumber) {
        if (charSequence.length() <= 1 || charSequence.charAt(0) != '0') {
            return;
        }
        phoneNumber.setItalianLeadingZero(true);
        int i = 1;
        while (i < charSequence.length() - 1 && charSequence.charAt(i) == '0') {
            i++;
        }
        if (i != 1) {
            phoneNumber.setNumberOfLeadingZeros(i);
        }
    }

    public static String convertAlphaCharactersInNumber(CharSequence charSequence) {
        return m28453O(charSequence, f36405A, false);
    }

    public static PhoneNumberUtil createInstance(MetadataLoader metadataLoader) {
        if (metadataLoader != null) {
            return m28458f(new MetadataSourceImpl(DefaultMetadataDependenciesProvider.getInstance().getPhoneNumberMetadataFileNameProvider(), metadataLoader, DefaultMetadataDependenciesProvider.getInstance().getMetadataParser()));
        }
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }

    /* renamed from: d */
    public static Phonenumber.PhoneNumber m28456d(Phonenumber.PhoneNumber phoneNumber) {
        Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
        phoneNumber2.setCountryCode(phoneNumber.getCountryCode());
        phoneNumber2.setNationalNumber(phoneNumber.getNationalNumber());
        if (phoneNumber.getExtension().length() > 0) {
            phoneNumber2.setExtension(phoneNumber.getExtension());
        }
        if (phoneNumber.isItalianLeadingZero()) {
            phoneNumber2.setItalianLeadingZero(true);
            phoneNumber2.setNumberOfLeadingZeros(phoneNumber.getNumberOfLeadingZeros());
        }
        return phoneNumber2;
    }

    /* renamed from: e */
    public static String m28457e(boolean z) {
        String str = (f36457u + m28462j(20)) + IidStore.f35940g + ("[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|доб|anexo)[:\\.．]?[  \\t,-]*" + m28462j(20) + "#?") + IidStore.f35940g + ("[  \\t,]*(?:[xｘ#＃~～]|int|ｉｎｔ)[:\\.．]?[  \\t,-]*" + m28462j(9) + "#?") + IidStore.f35940g + ("[- ]+" + m28462j(6) + "#");
        if (!z) {
            return str;
        }
        return str + IidStore.f35940g + ("[  \\t]*(?:,{2}|;)[:\\.．]?[  \\t,-]*" + m28462j(15) + "#?") + IidStore.f35940g + ("[  \\t]*(?:,)+[:\\.．]?[  \\t,-]*" + m28462j(9) + "#?");
    }

    /* renamed from: f */
    public static PhoneNumberUtil m28458f(MetadataSource metadataSource) {
        if (metadataSource != null) {
            return new PhoneNumberUtil(metadataSource, CountryCodeToRegionCodeMap.getCountryCodeToRegionCodeMap());
        }
        throw new IllegalArgumentException("metadataSource could not be null.");
    }

    /* renamed from: g */
    public static boolean m28459g(Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        return phoneNumberDesc.hasExampleNumber() || m28460h(phoneNumberDesc) || phoneNumberDesc.hasNationalNumberPattern();
    }

    public static String getCountryMobileToken(int i) {
        Map<Integer, String> map = f36452p;
        return map.containsKey(Integer.valueOf(i)) ? map.get(Integer.valueOf(i)) : "";
    }

    public static synchronized PhoneNumberUtil getInstance() {
        PhoneNumberUtil phoneNumberUtil;
        synchronized (PhoneNumberUtil.class) {
            if (f36449m0 == null) {
                m28454T(createInstance(DefaultMetadataDependenciesProvider.getInstance().getMetadataLoader()));
            }
            phoneNumberUtil = f36449m0;
        }
        return phoneNumberUtil;
    }

    /* renamed from: h */
    public static boolean m28460h(Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        return (phoneNumberDesc.getPossibleLengthCount() == 1 && phoneNumberDesc.getPossibleLength(0) == -1) ? false : true;
    }

    /* renamed from: i */
    public static void m28461i(Phonemetadata.PhoneMetadata phoneMetadata, String str) {
        if (phoneMetadata == null) {
            throw new MissingMetadataException(str);
        }
    }

    /* renamed from: j */
    public static String m28462j(int i) {
        return "(\\p{Nd}{1," + i + "})";
    }

    /* renamed from: m */
    public static CharSequence m28463m(CharSequence charSequence) {
        Matcher matcher = f36416L.matcher(charSequence);
        if (!matcher.find()) {
            return "";
        }
        CharSequence subSequence = charSequence.subSequence(matcher.start(), charSequence.length());
        Matcher matcher2 = f36420P.matcher(subSequence);
        if (matcher2.find()) {
            subSequence = subSequence.subSequence(0, matcher2.start());
        }
        Matcher matcher3 = f36418N.matcher(subSequence);
        return matcher3.find() ? subSequence.subSequence(0, matcher3.start()) : subSequence;
    }

    public static String normalizeDiallableCharsOnly(CharSequence charSequence) {
        return m28453O(charSequence, f36461y, true);
    }

    public static String normalizeDigitsOnly(CharSequence charSequence) {
        return m28452N(charSequence, false).toString();
    }

    /* renamed from: r */
    public static boolean m28464r(String str) {
        return str.length() == 0 || f36447l0.matcher(str).matches();
    }

    /* renamed from: A */
    public final boolean m28465A(Phonenumber.PhoneNumber phoneNumber) {
        int countryCode = phoneNumber.getCountryCode();
        Phonemetadata.PhoneMetadata m28494v = m28494v(countryCode, getRegionCodeForCountryCode(countryCode));
        if (m28494v == null) {
            return false;
        }
        return m28484c(m28494v.getNumberFormatList(), getNationalSignificantNumber(phoneNumber)) != null;
    }

    /* renamed from: B */
    public final boolean m28466B(int i) {
        return this.f36464b.containsKey(Integer.valueOf(i));
    }

    /* renamed from: C */
    public final boolean m28467C(Phonenumber.PhoneNumber phoneNumber, Phonenumber.PhoneNumber phoneNumber2) {
        String valueOf = String.valueOf(phoneNumber.getNationalNumber());
        String valueOf2 = String.valueOf(phoneNumber2.getNationalNumber());
        return valueOf.endsWith(valueOf2) || valueOf2.endsWith(valueOf);
    }

    /* renamed from: D */
    public boolean m28468D(String str, Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        int length = str.length();
        List<Integer> possibleLengthList = phoneNumberDesc.getPossibleLengthList();
        if (possibleLengthList.size() <= 0 || possibleLengthList.contains(Integer.valueOf(length))) {
            return this.f36465c.matchNationalNumber(str, phoneNumberDesc, false);
        }
        return false;
    }

    /* renamed from: E */
    public final boolean m28469E(String str) {
        if (str == null) {
            return true;
        }
        if (str.length() == 0) {
            return false;
        }
        return f36429Y.matcher(str).matches() || f36434d0.matcher(str).matches();
    }

    /* renamed from: F */
    public final boolean m28470F(String str) {
        return str != null && this.f36468f.contains(str);
    }

    /* renamed from: H */
    public final void m28471H(Phonenumber.PhoneNumber phoneNumber, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        if (!phoneNumber.hasExtension() || phoneNumber.getExtension().length() <= 0) {
            return;
        }
        if (phoneNumberFormat == PhoneNumberFormat.RFC3966) {
            sb.append(f36457u);
            sb.append(phoneNumber.getExtension());
        } else if (phoneMetadata.hasPreferredExtnPrefix()) {
            sb.append(phoneMetadata.getPreferredExtnPrefix());
            sb.append(phoneNumber.getExtension());
        } else {
            sb.append(f36423S);
            sb.append(phoneNumber.getExtension());
        }
    }

    /* renamed from: I */
    public int m28472I(CharSequence charSequence, Phonemetadata.PhoneMetadata phoneMetadata, StringBuilder sb, boolean z, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        if (charSequence.length() == 0) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder(charSequence);
        Phonenumber.PhoneNumber.CountryCodeSource m28474K = m28474K(sb2, phoneMetadata != null ? phoneMetadata.getInternationalPrefix() : "NonMatch");
        if (z) {
            phoneNumber.setCountryCodeSource(m28474K);
        }
        if (m28474K != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            if (sb2.length() <= 2) {
                throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
            }
            int m28485k = m28485k(sb2, sb);
            if (m28485k == 0) {
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
            }
            phoneNumber.setCountryCode(m28485k);
            return m28485k;
        }
        if (phoneMetadata != null) {
            int countryCode = phoneMetadata.getCountryCode();
            String valueOf = String.valueOf(countryCode);
            String sb3 = sb2.toString();
            if (sb3.startsWith(valueOf)) {
                StringBuilder sb4 = new StringBuilder(sb3.substring(valueOf.length()));
                Phonemetadata.PhoneNumberDesc generalDesc = phoneMetadata.getGeneralDesc();
                m28475L(sb4, phoneMetadata, null);
                if ((!this.f36465c.matchNationalNumber(sb2, generalDesc, false) && this.f36465c.matchNationalNumber(sb4, generalDesc, false)) || m28480V(sb2, phoneMetadata) == ValidationResult.TOO_LONG) {
                    sb.append((CharSequence) sb4);
                    if (z) {
                        phoneNumber.setCountryCodeSource(Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN);
                    }
                    phoneNumber.setCountryCode(countryCode);
                    return countryCode;
                }
            }
        }
        phoneNumber.setCountryCode(0);
        return 0;
    }

    /* renamed from: J */
    public String m28473J(StringBuilder sb) {
        Matcher matcher = f36435e0.matcher(sb);
        if (!matcher.find() || !m28450G(sb.substring(0, matcher.start()))) {
            return "";
        }
        int groupCount = matcher.groupCount();
        for (int i = 1; i <= groupCount; i++) {
            if (matcher.group(i) != null) {
                String group = matcher.group(i);
                sb.delete(matcher.start(), sb.length());
                return group;
            }
        }
        return "";
    }

    /* renamed from: K */
    public Phonenumber.PhoneNumber.CountryCodeSource m28474K(StringBuilder sb, String str) {
        if (sb.length() == 0) {
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = f36412H.matcher(sb);
        if (matcher.lookingAt()) {
            sb.delete(0, matcher.end());
            m28451M(sb);
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern patternForRegex = this.f36467e.getPatternForRegex(str);
        m28451M(sb);
        return m28477Q(patternForRegex, sb) ? Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD : Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
    }

    /* renamed from: L */
    public boolean m28475L(StringBuilder sb, Phonemetadata.PhoneMetadata phoneMetadata, StringBuilder sb2) {
        int length = sb.length();
        String nationalPrefixForParsing = phoneMetadata.getNationalPrefixForParsing();
        if (length != 0 && nationalPrefixForParsing.length() != 0) {
            Matcher matcher = this.f36467e.getPatternForRegex(nationalPrefixForParsing).matcher(sb);
            if (matcher.lookingAt()) {
                Phonemetadata.PhoneNumberDesc generalDesc = phoneMetadata.getGeneralDesc();
                boolean matchNationalNumber = this.f36465c.matchNationalNumber(sb, generalDesc, false);
                int groupCount = matcher.groupCount();
                String nationalPrefixTransformRule = phoneMetadata.getNationalPrefixTransformRule();
                if (nationalPrefixTransformRule == null || nationalPrefixTransformRule.length() == 0 || matcher.group(groupCount) == null) {
                    if (matchNationalNumber && !this.f36465c.matchNationalNumber(sb.substring(matcher.end()), generalDesc, false)) {
                        return false;
                    }
                    if (sb2 != null && groupCount > 0 && matcher.group(groupCount) != null) {
                        sb2.append(matcher.group(1));
                    }
                    sb.delete(0, matcher.end());
                    return true;
                }
                StringBuilder sb3 = new StringBuilder(sb);
                sb3.replace(0, length, matcher.replaceFirst(nationalPrefixTransformRule));
                if (matchNationalNumber && !this.f36465c.matchNationalNumber(sb3.toString(), generalDesc, false)) {
                    return false;
                }
                if (sb2 != null && groupCount > 1) {
                    sb2.append(matcher.group(1));
                }
                sb.replace(0, sb.length(), sb3.toString());
                return true;
            }
        }
        return false;
    }

    /* renamed from: P */
    public final void m28476P(CharSequence charSequence, String str, boolean z, boolean z2, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        int m28472I;
        if (charSequence == null) {
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The phone number supplied was null.");
        }
        if (charSequence.length() > 250) {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied was too long to parse.");
        }
        StringBuilder sb = new StringBuilder();
        String charSequence2 = charSequence.toString();
        m28482a(charSequence2, sb);
        if (!m28450G(sb)) {
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
        }
        if (z2 && !m28483b(sb, str)) {
            throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
        }
        if (z) {
            phoneNumber.setRawInput(charSequence2);
        }
        String m28473J = m28473J(sb);
        if (m28473J.length() > 0) {
            phoneNumber.setExtension(m28473J);
        }
        Phonemetadata.PhoneMetadata m28493u = m28493u(str);
        StringBuilder sb2 = new StringBuilder();
        try {
            m28472I = m28472I(sb, m28493u, sb2, z, phoneNumber);
        } catch (NumberParseException e) {
            Matcher matcher = f36412H.matcher(sb);
            if (e.getErrorType() != NumberParseException.ErrorType.INVALID_COUNTRY_CODE || !matcher.lookingAt()) {
                throw new NumberParseException(e.getErrorType(), e.getMessage());
            }
            m28472I = m28472I(sb.substring(matcher.end()), m28493u, sb2, z, phoneNumber);
            if (m28472I == 0) {
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
            }
        }
        if (m28472I != 0) {
            String regionCodeForCountryCode = getRegionCodeForCountryCode(m28472I);
            if (!regionCodeForCountryCode.equals(str)) {
                m28493u = m28494v(m28472I, regionCodeForCountryCode);
            }
        } else {
            sb2.append((CharSequence) m28451M(sb));
            if (str != null) {
                phoneNumber.setCountryCode(m28493u.getCountryCode());
            } else if (z) {
                phoneNumber.clearCountryCodeSource();
            }
        }
        if (sb2.length() < 2) {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
        }
        if (m28493u != null) {
            StringBuilder sb3 = new StringBuilder();
            StringBuilder sb4 = new StringBuilder(sb2);
            m28475L(sb4, m28493u, sb3);
            ValidationResult m28480V = m28480V(sb4, m28493u);
            if (m28480V != ValidationResult.TOO_SHORT && m28480V != ValidationResult.IS_POSSIBLE_LOCAL_ONLY && m28480V != ValidationResult.INVALID_LENGTH) {
                if (z && sb3.length() > 0) {
                    phoneNumber.setPreferredDomesticCarrierCode(sb3.toString());
                }
                sb2 = sb4;
            }
        }
        int length = sb2.length();
        if (length < 2) {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
        }
        if (length > 17) {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied is too long to be a phone number.");
        }
        m28455U(sb2, phoneNumber);
        phoneNumber.setNationalNumber(Long.parseLong(sb2.toString()));
    }

    /* renamed from: Q */
    public final boolean m28477Q(Pattern pattern, StringBuilder sb) {
        Matcher matcher = pattern.matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        int end = matcher.end();
        Matcher matcher2 = f36414J.matcher(sb.substring(end));
        if (matcher2.find() && normalizeDigitsOnly(matcher2.group(1)).equals("0")) {
            return false;
        }
        sb.delete(0, end);
        return true;
    }

    /* renamed from: R */
    public final void m28478R(int i, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        int i2 = C6613b.f36478b[phoneNumberFormat.ordinal()];
        if (i2 == 1) {
            sb.insert(0, i).insert(0, f36455s);
        } else if (i2 == 2) {
            sb.insert(0, " ").insert(0, i).insert(0, f36455s);
        } else {
            if (i2 != 3) {
                return;
            }
            sb.insert(0, "-").insert(0, i).insert(0, f36455s).insert(0, f36458v);
        }
    }

    /* renamed from: S */
    public final boolean m28479S(String str, String str2, String str3) {
        String normalizeDigitsOnly = normalizeDigitsOnly(str);
        if (normalizeDigitsOnly.startsWith(str2)) {
            try {
                return isValidNumber(parse(normalizeDigitsOnly.substring(str2.length()), str3));
            } catch (NumberParseException unused) {
            }
        }
        return false;
    }

    /* renamed from: V */
    public final ValidationResult m28480V(CharSequence charSequence, Phonemetadata.PhoneMetadata phoneMetadata) {
        return m28481W(charSequence, phoneMetadata, PhoneNumberType.UNKNOWN);
    }

    /* renamed from: W */
    public final ValidationResult m28481W(CharSequence charSequence, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberType phoneNumberType) {
        Phonemetadata.PhoneNumberDesc m28495w = m28495w(phoneMetadata, phoneNumberType);
        List<Integer> possibleLengthList = m28495w.getPossibleLengthList().isEmpty() ? phoneMetadata.getGeneralDesc().getPossibleLengthList() : m28495w.getPossibleLengthList();
        List<Integer> possibleLengthLocalOnlyList = m28495w.getPossibleLengthLocalOnlyList();
        if (phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE) {
            if (!m28460h(m28495w(phoneMetadata, PhoneNumberType.FIXED_LINE))) {
                return m28481W(charSequence, phoneMetadata, PhoneNumberType.MOBILE);
            }
            Phonemetadata.PhoneNumberDesc m28495w2 = m28495w(phoneMetadata, PhoneNumberType.MOBILE);
            if (m28460h(m28495w2)) {
                ArrayList arrayList = new ArrayList(possibleLengthList);
                arrayList.addAll(m28495w2.getPossibleLengthCount() == 0 ? phoneMetadata.getGeneralDesc().getPossibleLengthList() : m28495w2.getPossibleLengthList());
                Collections.sort(arrayList);
                if (possibleLengthLocalOnlyList.isEmpty()) {
                    possibleLengthLocalOnlyList = m28495w2.getPossibleLengthLocalOnlyList();
                } else {
                    ArrayList arrayList2 = new ArrayList(possibleLengthLocalOnlyList);
                    arrayList2.addAll(m28495w2.getPossibleLengthLocalOnlyList());
                    Collections.sort(arrayList2);
                    possibleLengthLocalOnlyList = arrayList2;
                }
                possibleLengthList = arrayList;
            }
        }
        if (possibleLengthList.get(0).intValue() == -1) {
            return ValidationResult.INVALID_LENGTH;
        }
        int length = charSequence.length();
        if (possibleLengthLocalOnlyList.contains(Integer.valueOf(length))) {
            return ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
        }
        int intValue = possibleLengthList.get(0).intValue();
        return intValue == length ? ValidationResult.IS_POSSIBLE : intValue > length ? ValidationResult.TOO_SHORT : possibleLengthList.get(possibleLengthList.size() - 1).intValue() < length ? ValidationResult.TOO_LONG : possibleLengthList.subList(1, possibleLengthList.size()).contains(Integer.valueOf(length)) ? ValidationResult.IS_POSSIBLE : ValidationResult.INVALID_LENGTH;
    }

    /* renamed from: a */
    public final void m28482a(String str, StringBuilder sb) throws NumberParseException {
        int indexOf = str.indexOf(f36459w);
        String m28486l = m28486l(str, indexOf);
        if (!m28469E(m28486l)) {
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The phone-context value is invalid.");
        }
        if (m28486l != null) {
            if (m28486l.charAt(0) == '+') {
                sb.append(m28486l);
            }
            int indexOf2 = str.indexOf(f36458v);
            sb.append(str.substring(indexOf2 >= 0 ? indexOf2 + 4 : 0, indexOf));
        } else {
            sb.append(m28463m(str));
        }
        int indexOf3 = sb.indexOf(f36460x);
        if (indexOf3 > 0) {
            sb.delete(indexOf3, sb.length());
        }
    }

    /* renamed from: b */
    public final boolean m28483b(CharSequence charSequence, String str) {
        if (m28470F(str)) {
            return true;
        }
        return (charSequence == null || charSequence.length() == 0 || !f36412H.matcher(charSequence).lookingAt()) ? false : true;
    }

    /* renamed from: c */
    public Phonemetadata.NumberFormat m28484c(List<Phonemetadata.NumberFormat> list, String str) {
        for (Phonemetadata.NumberFormat numberFormat : list) {
            int leadingDigitsPatternCount = numberFormat.getLeadingDigitsPatternCount();
            if (leadingDigitsPatternCount == 0 || this.f36467e.getPatternForRegex(numberFormat.getLeadingDigitsPattern(leadingDigitsPatternCount - 1)).matcher(str).lookingAt()) {
                if (this.f36467e.getPatternForRegex(numberFormat.getPattern()).matcher(str).matches()) {
                    return numberFormat;
                }
            }
        }
        return null;
    }

    public boolean canBeInternationallyDialled(Phonenumber.PhoneNumber phoneNumber) {
        if (m28493u(getRegionCodeForNumber(phoneNumber)) == null) {
            return true;
        }
        return !m28468D(getNationalSignificantNumber(phoneNumber), r0.getNoInternationalDialling());
    }

    public Iterable<PhoneNumberMatch> findNumbers(CharSequence charSequence, String str) {
        return findNumbers(charSequence, str, Leniency.VALID, Long.MAX_VALUE);
    }

    public String format(Phonenumber.PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat) {
        if (phoneNumber.getNationalNumber() == 0) {
            String rawInput = phoneNumber.getRawInput();
            if (rawInput.length() > 0 || !phoneNumber.hasCountryCode()) {
                return rawInput;
            }
        }
        StringBuilder sb = new StringBuilder(20);
        format(phoneNumber, phoneNumberFormat, sb);
        return sb.toString();
    }

    public String formatByPattern(Phonenumber.PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat, List<Phonemetadata.NumberFormat> list) {
        int countryCode = phoneNumber.getCountryCode();
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        if (!m28466B(countryCode)) {
            return nationalSignificantNumber;
        }
        Phonemetadata.PhoneMetadata m28494v = m28494v(countryCode, getRegionCodeForCountryCode(countryCode));
        StringBuilder sb = new StringBuilder(20);
        Phonemetadata.NumberFormat m28484c = m28484c(list, nationalSignificantNumber);
        if (m28484c == null) {
            sb.append(nationalSignificantNumber);
        } else {
            Phonemetadata.NumberFormat.Builder newBuilder = Phonemetadata.NumberFormat.newBuilder();
            newBuilder.mergeFrom(m28484c);
            String nationalPrefixFormattingRule = m28484c.getNationalPrefixFormattingRule();
            if (nationalPrefixFormattingRule.length() > 0) {
                String nationalPrefix = m28494v.getNationalPrefix();
                if (nationalPrefix.length() > 0) {
                    newBuilder.setNationalPrefixFormattingRule(nationalPrefixFormattingRule.replace(f36441i0, nationalPrefix).replace(f36443j0, "$1"));
                } else {
                    newBuilder.clearNationalPrefixFormattingRule();
                }
            }
            sb.append(m28489p(nationalSignificantNumber, newBuilder.build(), phoneNumberFormat));
        }
        m28471H(phoneNumber, m28494v, phoneNumberFormat, sb);
        m28478R(countryCode, phoneNumberFormat, sb);
        return sb.toString();
    }

    public String formatInOriginalFormat(Phonenumber.PhoneNumber phoneNumber, String str) {
        String format;
        String nationalPrefixFormattingRule;
        int indexOf;
        if (phoneNumber.hasRawInput() && !m28465A(phoneNumber)) {
            return phoneNumber.getRawInput();
        }
        if (!phoneNumber.hasCountryCodeSource()) {
            return format(phoneNumber, PhoneNumberFormat.NATIONAL);
        }
        int i = C6613b.f36477a[phoneNumber.getCountryCodeSource().ordinal()];
        if (i == 1) {
            format = format(phoneNumber, PhoneNumberFormat.INTERNATIONAL);
        } else if (i == 2) {
            format = formatOutOfCountryCallingNumber(phoneNumber, str);
        } else if (i != 3) {
            String regionCodeForCountryCode = getRegionCodeForCountryCode(phoneNumber.getCountryCode());
            String nddPrefixForRegion = getNddPrefixForRegion(regionCodeForCountryCode, true);
            PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.NATIONAL;
            format = format(phoneNumber, phoneNumberFormat);
            if (nddPrefixForRegion != null && nddPrefixForRegion.length() != 0 && !m28479S(phoneNumber.getRawInput(), nddPrefixForRegion, regionCodeForCountryCode)) {
                Phonemetadata.NumberFormat m28484c = m28484c(m28493u(regionCodeForCountryCode).getNumberFormatList(), getNationalSignificantNumber(phoneNumber));
                if (m28484c != null && (indexOf = (nationalPrefixFormattingRule = m28484c.getNationalPrefixFormattingRule()).indexOf("$1")) > 0 && normalizeDigitsOnly(nationalPrefixFormattingRule.substring(0, indexOf)).length() != 0) {
                    Phonemetadata.NumberFormat.Builder newBuilder = Phonemetadata.NumberFormat.newBuilder();
                    newBuilder.mergeFrom(m28484c);
                    newBuilder.clearNationalPrefixFormattingRule();
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add(newBuilder.build());
                    format = formatByPattern(phoneNumber, phoneNumberFormat, arrayList);
                }
            }
        } else {
            format = format(phoneNumber, PhoneNumberFormat.INTERNATIONAL).substring(1);
        }
        String rawInput = phoneNumber.getRawInput();
        return (format == null || rawInput.length() <= 0 || normalizeDiallableCharsOnly(format).equals(normalizeDiallableCharsOnly(rawInput))) ? format : rawInput;
    }

    public String formatNationalNumberWithCarrierCode(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence) {
        int countryCode = phoneNumber.getCountryCode();
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        if (!m28466B(countryCode)) {
            return nationalSignificantNumber;
        }
        Phonemetadata.PhoneMetadata m28494v = m28494v(countryCode, getRegionCodeForCountryCode(countryCode));
        StringBuilder sb = new StringBuilder(20);
        PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.NATIONAL;
        sb.append(m28488o(nationalSignificantNumber, m28494v, phoneNumberFormat, charSequence));
        m28471H(phoneNumber, m28494v, phoneNumberFormat, sb);
        m28478R(countryCode, phoneNumberFormat, sb);
        return sb.toString();
    }

    public String formatNationalNumberWithPreferredCarrierCode(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence) {
        if (phoneNumber.getPreferredDomesticCarrierCode().length() > 0) {
            charSequence = phoneNumber.getPreferredDomesticCarrierCode();
        }
        return formatNationalNumberWithCarrierCode(phoneNumber, charSequence);
    }

    public String formatNumberForMobileDialing(Phonenumber.PhoneNumber phoneNumber, String str, boolean z) {
        String format;
        int countryCode = phoneNumber.getCountryCode();
        String str2 = "";
        if (!m28466B(countryCode)) {
            return phoneNumber.hasRawInput() ? phoneNumber.getRawInput() : "";
        }
        Phonenumber.PhoneNumber clearExtension = new Phonenumber.PhoneNumber().mergeFrom(phoneNumber).clearExtension();
        String regionCodeForCountryCode = getRegionCodeForCountryCode(countryCode);
        PhoneNumberType numberType = getNumberType(clearExtension);
        boolean z2 = numberType != PhoneNumberType.UNKNOWN;
        if (str.equals(regionCodeForCountryCode)) {
            boolean z3 = numberType == PhoneNumberType.FIXED_LINE || numberType == PhoneNumberType.MOBILE || numberType == PhoneNumberType.FIXED_LINE_OR_MOBILE;
            if (!regionCodeForCountryCode.equals("BR") || !z3) {
                if (countryCode == 1) {
                    format = (!canBeInternationallyDialled(clearExtension) || m28480V(getNationalSignificantNumber(clearExtension), m28493u(str)) == ValidationResult.TOO_SHORT) ? format(clearExtension, PhoneNumberFormat.NATIONAL) : format(clearExtension, PhoneNumberFormat.INTERNATIONAL);
                } else {
                    format = ((regionCodeForCountryCode.equals("001") || ((regionCodeForCountryCode.equals("MX") || regionCodeForCountryCode.equals("CL") || regionCodeForCountryCode.equals("UZ")) && z3)) && canBeInternationallyDialled(clearExtension)) ? format(clearExtension, PhoneNumberFormat.INTERNATIONAL) : format(clearExtension, PhoneNumberFormat.NATIONAL);
                }
                str2 = format;
            } else if (clearExtension.getPreferredDomesticCarrierCode().length() > 0) {
                str2 = formatNationalNumberWithPreferredCarrierCode(clearExtension, "");
            }
        } else if (z2 && canBeInternationallyDialled(clearExtension)) {
            return z ? format(clearExtension, PhoneNumberFormat.INTERNATIONAL) : format(clearExtension, PhoneNumberFormat.E164);
        }
        return z ? str2 : normalizeDiallableCharsOnly(str2);
    }

    public String formatOutOfCountryCallingNumber(Phonenumber.PhoneNumber phoneNumber, String str) {
        if (!m28470F(str)) {
            f36438h.log(Level.WARNING, "Trying to format number from invalid region " + str + ". International formatting applied.");
            return format(phoneNumber, PhoneNumberFormat.INTERNATIONAL);
        }
        int countryCode = phoneNumber.getCountryCode();
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        if (!m28466B(countryCode)) {
            return nationalSignificantNumber;
        }
        if (countryCode == 1) {
            if (isNANPACountry(str)) {
                return countryCode + " " + format(phoneNumber, PhoneNumberFormat.NATIONAL);
            }
        } else if (countryCode == m28491s(str)) {
            return format(phoneNumber, PhoneNumberFormat.NATIONAL);
        }
        Phonemetadata.PhoneMetadata m28493u = m28493u(str);
        String internationalPrefix = m28493u.getInternationalPrefix();
        if (m28493u.hasPreferredInternationalPrefix()) {
            internationalPrefix = m28493u.getPreferredInternationalPrefix();
        } else if (!f36407C.matcher(internationalPrefix).matches()) {
            internationalPrefix = "";
        }
        Phonemetadata.PhoneMetadata m28494v = m28494v(countryCode, getRegionCodeForCountryCode(countryCode));
        PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.INTERNATIONAL;
        StringBuilder sb = new StringBuilder(m28487n(nationalSignificantNumber, m28494v, phoneNumberFormat));
        m28471H(phoneNumber, m28494v, phoneNumberFormat, sb);
        if (internationalPrefix.length() > 0) {
            sb.insert(0, " ").insert(0, countryCode).insert(0, " ").insert(0, internationalPrefix);
        } else {
            m28478R(countryCode, phoneNumberFormat, sb);
        }
        return sb.toString();
    }

    public String formatOutOfCountryKeepingAlphaChars(Phonenumber.PhoneNumber phoneNumber, String str) {
        String str2;
        int indexOf;
        String rawInput = phoneNumber.getRawInput();
        if (rawInput.length() == 0) {
            return formatOutOfCountryCallingNumber(phoneNumber, str);
        }
        int countryCode = phoneNumber.getCountryCode();
        if (!m28466B(countryCode)) {
            return rawInput;
        }
        String m28453O = m28453O(rawInput, f36406B, true);
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        if (nationalSignificantNumber.length() > 3 && (indexOf = m28453O.indexOf(nationalSignificantNumber.substring(0, 3))) != -1) {
            m28453O = m28453O.substring(indexOf);
        }
        Phonemetadata.PhoneMetadata m28493u = m28493u(str);
        if (countryCode == 1) {
            if (isNANPACountry(str)) {
                return countryCode + " " + m28453O;
            }
        } else if (m28493u != null && countryCode == m28491s(str)) {
            Phonemetadata.NumberFormat m28484c = m28484c(m28493u.getNumberFormatList(), nationalSignificantNumber);
            if (m28484c == null) {
                return m28453O;
            }
            Phonemetadata.NumberFormat.Builder newBuilder = Phonemetadata.NumberFormat.newBuilder();
            newBuilder.mergeFrom(m28484c);
            newBuilder.setPattern("(\\d+)(.*)");
            newBuilder.setFormat("$1$2");
            return m28489p(m28453O, newBuilder.build(), PhoneNumberFormat.NATIONAL);
        }
        if (m28493u != null) {
            str2 = m28493u.getInternationalPrefix();
            if (!f36407C.matcher(str2).matches()) {
                str2 = m28493u.getPreferredInternationalPrefix();
            }
        } else {
            str2 = "";
        }
        StringBuilder sb = new StringBuilder(m28453O);
        Phonemetadata.PhoneMetadata m28494v = m28494v(countryCode, getRegionCodeForCountryCode(countryCode));
        PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.INTERNATIONAL;
        m28471H(phoneNumber, m28494v, phoneNumberFormat, sb);
        if (str2.length() > 0) {
            sb.insert(0, " ").insert(0, countryCode).insert(0, " ").insert(0, str2);
        } else {
            if (!m28470F(str)) {
                f36438h.log(Level.WARNING, "Trying to format number from invalid region " + str + ". International formatting applied.");
            }
            m28478R(countryCode, phoneNumberFormat, sb);
        }
        return sb.toString();
    }

    public AsYouTypeFormatter getAsYouTypeFormatter(String str) {
        return new AsYouTypeFormatter(str);
    }

    public int getCountryCodeForRegion(String str) {
        if (m28470F(str)) {
            return m28491s(str);
        }
        Logger logger = f36438h;
        Level level = Level.WARNING;
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid or missing region code (");
        if (str == null) {
            str = "null";
        }
        sb.append(str);
        sb.append(") provided.");
        logger.log(level, sb.toString());
        return 0;
    }

    public Phonenumber.PhoneNumber getExampleNumber(String str) {
        return getExampleNumberForType(str, PhoneNumberType.FIXED_LINE);
    }

    public Phonenumber.PhoneNumber getExampleNumberForNonGeoEntity(int i) {
        Phonemetadata.PhoneMetadata m28492t = m28492t(i);
        if (m28492t == null) {
            f36438h.log(Level.WARNING, "Invalid or unknown country calling code provided: " + i);
            return null;
        }
        for (Phonemetadata.PhoneNumberDesc phoneNumberDesc : Arrays.asList(m28492t.getMobile(), m28492t.getTollFree(), m28492t.getSharedCost(), m28492t.getVoip(), m28492t.getVoicemail(), m28492t.getUan(), m28492t.getPremiumRate())) {
            if (phoneNumberDesc != null) {
                try {
                    if (phoneNumberDesc.hasExampleNumber()) {
                        return this.parse("+" + i + phoneNumberDesc.getExampleNumber(), f36450n);
                    }
                    continue;
                } catch (NumberParseException e) {
                    f36438h.log(Level.SEVERE, e.toString());
                }
            }
        }
        return null;
    }

    public Phonenumber.PhoneNumber getExampleNumberForType(String str, PhoneNumberType phoneNumberType) {
        if (!m28470F(str)) {
            f36438h.log(Level.WARNING, "Invalid or unknown region code provided: " + str);
            return null;
        }
        Phonemetadata.PhoneNumberDesc m28495w = m28495w(m28493u(str), phoneNumberType);
        try {
            if (m28495w.hasExampleNumber()) {
                return parse(m28495w.getExampleNumber(), str);
            }
        } catch (NumberParseException e) {
            f36438h.log(Level.SEVERE, e.toString());
        }
        return null;
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.BlockNode.getPredecessors()" because "to" is null
        	at jadx.core.dex.visitors.blocks.BlockSplitter.connect(BlockSplitter.java:157)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectSplittersAndHandlers(BlockExceptionHandler.java:480)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.wrapBlocksWithTryCatch(BlockExceptionHandler.java:381)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:90)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:61)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:325)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:51)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    public com.google.i18n.phonenumbers.Phonenumber.PhoneNumber getInvalidExampleNumber(java.lang.String r6) {
        /*
            r5 = this;
            boolean r0 = r5.m28470F(r6)
            r1 = 0
            if (r0 != 0) goto L20
            java.util.logging.Logger r5 = com.google.i18n.phonenumbers.PhoneNumberUtil.f36438h
            java.util.logging.Level r0 = java.util.logging.Level.WARNING
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Invalid or unknown region code provided: "
            r2.append(r3)
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            r5.log(r0, r6)
            return r1
        L20:
            com.google.i18n.phonenumbers.Phonemetadata$PhoneMetadata r0 = r5.m28493u(r6)
            com.google.i18n.phonenumbers.PhoneNumberUtil$PhoneNumberType r2 = com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType.FIXED_LINE
            com.google.i18n.phonenumbers.Phonemetadata$PhoneNumberDesc r0 = r5.m28495w(r0, r2)
            boolean r2 = r0.hasExampleNumber()
            if (r2 != 0) goto L31
            return r1
        L31:
            java.lang.String r0 = r0.getExampleNumber()
            int r2 = r0.length()
            int r2 = r2 + (-1)
        L3b:
            r3 = 2
            if (r2 < r3) goto L51
            r3 = 0
            java.lang.String r3 = r0.substring(r3, r2)
            com.google.i18n.phonenumbers.Phonenumber$PhoneNumber r3 = r5.parse(r3, r6)     // Catch: com.google.i18n.phonenumbers.NumberParseException -> L4e
            boolean r4 = r5.isValidNumber(r3)     // Catch: com.google.i18n.phonenumbers.NumberParseException -> L4e
            if (r4 != 0) goto L4e
            return r3
        L4e:
            int r2 = r2 + (-1)
            goto L3b
        L51:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.PhoneNumberUtil.getInvalidExampleNumber(java.lang.String):com.google.i18n.phonenumbers.Phonenumber$PhoneNumber");
    }

    public int getLengthOfGeographicalAreaCode(Phonenumber.PhoneNumber phoneNumber) {
        Phonemetadata.PhoneMetadata m28493u = m28493u(getRegionCodeForNumber(phoneNumber));
        if (m28493u == null) {
            return 0;
        }
        if (!m28493u.hasNationalPrefix() && !phoneNumber.isItalianLeadingZero()) {
            return 0;
        }
        PhoneNumberType numberType = getNumberType(phoneNumber);
        int countryCode = phoneNumber.getCountryCode();
        if (!(numberType == PhoneNumberType.MOBILE && f36453q.contains(Integer.valueOf(countryCode))) && isNumberGeographical(numberType, countryCode)) {
            return getLengthOfNationalDestinationCode(phoneNumber);
        }
        return 0;
    }

    public int getLengthOfNationalDestinationCode(Phonenumber.PhoneNumber phoneNumber) {
        Phonenumber.PhoneNumber phoneNumber2;
        if (phoneNumber.hasExtension()) {
            phoneNumber2 = new Phonenumber.PhoneNumber();
            phoneNumber2.mergeFrom(phoneNumber);
            phoneNumber2.clearExtension();
        } else {
            phoneNumber2 = phoneNumber;
        }
        String[] split = f36437g0.split(format(phoneNumber2, PhoneNumberFormat.INTERNATIONAL));
        if (split.length <= 3) {
            return 0;
        }
        return (getNumberType(phoneNumber) != PhoneNumberType.MOBILE || getCountryMobileToken(phoneNumber.getCountryCode()).equals("")) ? split[2].length() : split[2].length() + split[3].length();
    }

    public String getNationalSignificantNumber(Phonenumber.PhoneNumber phoneNumber) {
        StringBuilder sb = new StringBuilder();
        if (phoneNumber.isItalianLeadingZero() && phoneNumber.getNumberOfLeadingZeros() > 0) {
            char[] cArr = new char[phoneNumber.getNumberOfLeadingZeros()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(phoneNumber.getNationalNumber());
        return sb.toString();
    }

    public String getNddPrefixForRegion(String str, boolean z) {
        Phonemetadata.PhoneMetadata m28493u = m28493u(str);
        if (m28493u != null) {
            String nationalPrefix = m28493u.getNationalPrefix();
            if (nationalPrefix.length() == 0) {
                return null;
            }
            return z ? nationalPrefix.replace("~", "") : nationalPrefix;
        }
        Logger logger = f36438h;
        Level level = Level.WARNING;
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid or missing region code (");
        if (str == null) {
            str = "null";
        }
        sb.append(str);
        sb.append(") provided.");
        logger.log(level, sb.toString());
        return null;
    }

    public PhoneNumberType getNumberType(Phonenumber.PhoneNumber phoneNumber) {
        Phonemetadata.PhoneMetadata m28494v = m28494v(phoneNumber.getCountryCode(), getRegionCodeForNumber(phoneNumber));
        return m28494v == null ? PhoneNumberType.UNKNOWN : m28496x(getNationalSignificantNumber(phoneNumber), m28494v);
    }

    public String getRegionCodeForCountryCode(int i) {
        List<String> list = this.f36464b.get(Integer.valueOf(i));
        return list == null ? f36450n : list.get(0);
    }

    public String getRegionCodeForNumber(Phonenumber.PhoneNumber phoneNumber) {
        int countryCode = phoneNumber.getCountryCode();
        List<String> list = this.f36464b.get(Integer.valueOf(countryCode));
        if (list != null) {
            return list.size() == 1 ? list.get(0) : m28497y(phoneNumber, list);
        }
        f36438h.log(Level.INFO, "Missing/invalid country_code (" + countryCode + MotionUtils.f31762d);
        return null;
    }

    public List<String> getRegionCodesForCountryCode(int i) {
        List<String> list = this.f36464b.get(Integer.valueOf(i));
        if (list == null) {
            list = new ArrayList<>(0);
        }
        return Collections.unmodifiableList(list);
    }

    public Set<Integer> getSupportedCallingCodes() {
        return Collections.unmodifiableSet(this.f36464b.keySet());
    }

    public Set<Integer> getSupportedGlobalNetworkCallingCodes() {
        return Collections.unmodifiableSet(this.f36469g);
    }

    public Set<String> getSupportedRegions() {
        return Collections.unmodifiableSet(this.f36468f);
    }

    public Set<PhoneNumberType> getSupportedTypesForNonGeoEntity(int i) {
        Phonemetadata.PhoneMetadata m28492t = m28492t(i);
        if (m28492t != null) {
            return m28498z(m28492t);
        }
        f36438h.log(Level.WARNING, "Unknown country calling code for a non-geographical entity provided: " + i);
        return Collections.unmodifiableSet(new TreeSet());
    }

    public Set<PhoneNumberType> getSupportedTypesForRegion(String str) {
        if (m28470F(str)) {
            return m28498z(m28493u(str));
        }
        f36438h.log(Level.WARNING, "Invalid or unknown region code provided: " + str);
        return Collections.unmodifiableSet(new TreeSet());
    }

    public boolean isAlphaNumber(CharSequence charSequence) {
        if (!m28450G(charSequence)) {
            return false;
        }
        StringBuilder sb = new StringBuilder(charSequence);
        m28473J(sb);
        return f36421Q.matcher(sb).matches();
    }

    public boolean isMobileNumberPortableRegion(String str) {
        Phonemetadata.PhoneMetadata m28493u = m28493u(str);
        if (m28493u != null) {
            return m28493u.getMobileNumberPortableRegion();
        }
        f36438h.log(Level.WARNING, "Invalid or unknown region code provided: " + str);
        return false;
    }

    public boolean isNANPACountry(String str) {
        return this.f36466d.contains(str);
    }

    public boolean isNumberGeographical(Phonenumber.PhoneNumber phoneNumber) {
        return isNumberGeographical(getNumberType(phoneNumber), phoneNumber.getCountryCode());
    }

    public MatchType isNumberMatch(Phonenumber.PhoneNumber phoneNumber, Phonenumber.PhoneNumber phoneNumber2) {
        Phonenumber.PhoneNumber m28456d = m28456d(phoneNumber);
        Phonenumber.PhoneNumber m28456d2 = m28456d(phoneNumber2);
        if (m28456d.hasExtension() && m28456d2.hasExtension() && !m28456d.getExtension().equals(m28456d2.getExtension())) {
            return MatchType.NO_MATCH;
        }
        int countryCode = m28456d.getCountryCode();
        int countryCode2 = m28456d2.getCountryCode();
        if (countryCode != 0 && countryCode2 != 0) {
            if (m28456d.exactlySameAs(m28456d2)) {
                return MatchType.EXACT_MATCH;
            }
            if (countryCode == countryCode2 && m28467C(m28456d, m28456d2)) {
                return MatchType.SHORT_NSN_MATCH;
            }
            return MatchType.NO_MATCH;
        }
        m28456d.setCountryCode(countryCode2);
        if (m28456d.exactlySameAs(m28456d2)) {
            return MatchType.NSN_MATCH;
        }
        if (m28467C(m28456d, m28456d2)) {
            return MatchType.SHORT_NSN_MATCH;
        }
        return MatchType.NO_MATCH;
    }

    public boolean isPossibleNumber(Phonenumber.PhoneNumber phoneNumber) {
        ValidationResult isPossibleNumberWithReason = isPossibleNumberWithReason(phoneNumber);
        return isPossibleNumberWithReason == ValidationResult.IS_POSSIBLE || isPossibleNumberWithReason == ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
    }

    public boolean isPossibleNumberForType(Phonenumber.PhoneNumber phoneNumber, PhoneNumberType phoneNumberType) {
        ValidationResult isPossibleNumberForTypeWithReason = isPossibleNumberForTypeWithReason(phoneNumber, phoneNumberType);
        return isPossibleNumberForTypeWithReason == ValidationResult.IS_POSSIBLE || isPossibleNumberForTypeWithReason == ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
    }

    public ValidationResult isPossibleNumberForTypeWithReason(Phonenumber.PhoneNumber phoneNumber, PhoneNumberType phoneNumberType) {
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        int countryCode = phoneNumber.getCountryCode();
        return !m28466B(countryCode) ? ValidationResult.INVALID_COUNTRY_CODE : m28481W(nationalSignificantNumber, m28494v(countryCode, getRegionCodeForCountryCode(countryCode)), phoneNumberType);
    }

    public ValidationResult isPossibleNumberWithReason(Phonenumber.PhoneNumber phoneNumber) {
        return isPossibleNumberForTypeWithReason(phoneNumber, PhoneNumberType.UNKNOWN);
    }

    public boolean isValidNumber(Phonenumber.PhoneNumber phoneNumber) {
        return isValidNumberForRegion(phoneNumber, getRegionCodeForNumber(phoneNumber));
    }

    public boolean isValidNumberForRegion(Phonenumber.PhoneNumber phoneNumber, String str) {
        int countryCode = phoneNumber.getCountryCode();
        Phonemetadata.PhoneMetadata m28494v = m28494v(countryCode, str);
        if (m28494v != null) {
            return ("001".equals(str) || countryCode == m28491s(str)) && m28496x(getNationalSignificantNumber(phoneNumber), m28494v) != PhoneNumberType.UNKNOWN;
        }
        return false;
    }

    /* renamed from: k */
    public int m28485k(StringBuilder sb, StringBuilder sb2) {
        if (sb.length() != 0 && sb.charAt(0) != '0') {
            int length = sb.length();
            for (int i = 1; i <= 3 && i <= length; i++) {
                int parseInt = Integer.parseInt(sb.substring(0, i));
                if (this.f36464b.containsKey(Integer.valueOf(parseInt))) {
                    sb2.append(sb.substring(i));
                    return parseInt;
                }
            }
        }
        return 0;
    }

    /* renamed from: l */
    public final String m28486l(String str, int i) {
        if (i == -1) {
            return null;
        }
        int i2 = i + 15;
        if (i2 >= str.length()) {
            return "";
        }
        int indexOf = str.indexOf(59, i2);
        return indexOf != -1 ? str.substring(i2, indexOf) : str.substring(i2);
    }

    /* renamed from: n */
    public final String m28487n(String str, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberFormat phoneNumberFormat) {
        return m28488o(str, phoneMetadata, phoneNumberFormat, null);
    }

    /* renamed from: o */
    public final String m28488o(String str, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberFormat phoneNumberFormat, CharSequence charSequence) {
        Phonemetadata.NumberFormat m28484c = m28484c((phoneMetadata.getIntlNumberFormatList().size() == 0 || phoneNumberFormat == PhoneNumberFormat.NATIONAL) ? phoneMetadata.getNumberFormatList() : phoneMetadata.getIntlNumberFormatList(), str);
        return m28484c == null ? str : m28490q(str, m28484c, phoneNumberFormat, charSequence);
    }

    /* renamed from: p */
    public String m28489p(String str, Phonemetadata.NumberFormat numberFormat, PhoneNumberFormat phoneNumberFormat) {
        return m28490q(str, numberFormat, phoneNumberFormat, null);
    }

    public Phonenumber.PhoneNumber parse(CharSequence charSequence, String str) throws NumberParseException {
        Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
        parse(charSequence, str, phoneNumber);
        return phoneNumber;
    }

    public Phonenumber.PhoneNumber parseAndKeepRawInput(CharSequence charSequence, String str) throws NumberParseException {
        Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
        parseAndKeepRawInput(charSequence, str, phoneNumber);
        return phoneNumber;
    }

    /* renamed from: q */
    public final String m28490q(String str, Phonemetadata.NumberFormat numberFormat, PhoneNumberFormat phoneNumberFormat, CharSequence charSequence) {
        String replaceAll;
        String format = numberFormat.getFormat();
        Matcher matcher = this.f36467e.getPatternForRegex(numberFormat.getPattern()).matcher(str);
        PhoneNumberFormat phoneNumberFormat2 = PhoneNumberFormat.NATIONAL;
        if (phoneNumberFormat != phoneNumberFormat2 || charSequence == null || charSequence.length() <= 0 || numberFormat.getDomesticCarrierCodeFormattingRule().length() <= 0) {
            String nationalPrefixFormattingRule = numberFormat.getNationalPrefixFormattingRule();
            replaceAll = (phoneNumberFormat != phoneNumberFormat2 || nationalPrefixFormattingRule == null || nationalPrefixFormattingRule.length() <= 0) ? matcher.replaceAll(format) : matcher.replaceAll(f36439h0.matcher(format).replaceFirst(nationalPrefixFormattingRule));
        } else {
            replaceAll = matcher.replaceAll(f36439h0.matcher(format).replaceFirst(numberFormat.getDomesticCarrierCodeFormattingRule().replace(f36445k0, charSequence)));
        }
        if (phoneNumberFormat != PhoneNumberFormat.RFC3966) {
            return replaceAll;
        }
        Matcher matcher2 = f36413I.matcher(replaceAll);
        if (matcher2.lookingAt()) {
            replaceAll = matcher2.replaceFirst("");
        }
        return matcher2.reset(replaceAll).replaceAll("-");
    }

    /* renamed from: s */
    public final int m28491s(String str) {
        Phonemetadata.PhoneMetadata m28493u = m28493u(str);
        if (m28493u != null) {
            return m28493u.getCountryCode();
        }
        throw new IllegalArgumentException("Invalid region code: " + str);
    }

    /* renamed from: t */
    public Phonemetadata.PhoneMetadata m28492t(int i) {
        if (!this.f36469g.contains(Integer.valueOf(i))) {
            return null;
        }
        Phonemetadata.PhoneMetadata metadataForNonGeographicalRegion = this.f36463a.getMetadataForNonGeographicalRegion(i);
        m28461i(metadataForNonGeographicalRegion, "Missing metadata for country code " + i);
        return metadataForNonGeographicalRegion;
    }

    public boolean truncateTooLongNumber(Phonenumber.PhoneNumber phoneNumber) {
        if (isValidNumber(phoneNumber)) {
            return true;
        }
        Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
        phoneNumber2.mergeFrom(phoneNumber);
        long nationalNumber = phoneNumber.getNationalNumber();
        do {
            nationalNumber /= 10;
            phoneNumber2.setNationalNumber(nationalNumber);
            if (isPossibleNumberWithReason(phoneNumber2) == ValidationResult.TOO_SHORT || nationalNumber == 0) {
                return false;
            }
        } while (!isValidNumber(phoneNumber2));
        phoneNumber.setNationalNumber(nationalNumber);
        return true;
    }

    /* renamed from: u */
    public Phonemetadata.PhoneMetadata m28493u(String str) {
        if (!m28470F(str)) {
            return null;
        }
        Phonemetadata.PhoneMetadata metadataForRegion = this.f36463a.getMetadataForRegion(str);
        m28461i(metadataForRegion, "Missing metadata for region code " + str);
        return metadataForRegion;
    }

    /* renamed from: v */
    public final Phonemetadata.PhoneMetadata m28494v(int i, String str) {
        return "001".equals(str) ? m28492t(i) : m28493u(str);
    }

    /* renamed from: w */
    public Phonemetadata.PhoneNumberDesc m28495w(Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberType phoneNumberType) {
        switch (C6613b.f36479c[phoneNumberType.ordinal()]) {
            case 1:
                return phoneMetadata.getPremiumRate();
            case 2:
                return phoneMetadata.getTollFree();
            case 3:
                return phoneMetadata.getMobile();
            case 4:
            case 5:
                return phoneMetadata.getFixedLine();
            case 6:
                return phoneMetadata.getSharedCost();
            case 7:
                return phoneMetadata.getVoip();
            case 8:
                return phoneMetadata.getPersonalNumber();
            case 9:
                return phoneMetadata.getPager();
            case 10:
                return phoneMetadata.getUan();
            case 11:
                return phoneMetadata.getVoicemail();
            default:
                return phoneMetadata.getGeneralDesc();
        }
    }

    /* renamed from: x */
    public final PhoneNumberType m28496x(String str, Phonemetadata.PhoneMetadata phoneMetadata) {
        if (!m28468D(str, phoneMetadata.getGeneralDesc())) {
            return PhoneNumberType.UNKNOWN;
        }
        if (m28468D(str, phoneMetadata.getPremiumRate())) {
            return PhoneNumberType.PREMIUM_RATE;
        }
        if (m28468D(str, phoneMetadata.getTollFree())) {
            return PhoneNumberType.TOLL_FREE;
        }
        if (m28468D(str, phoneMetadata.getSharedCost())) {
            return PhoneNumberType.SHARED_COST;
        }
        if (m28468D(str, phoneMetadata.getVoip())) {
            return PhoneNumberType.VOIP;
        }
        if (m28468D(str, phoneMetadata.getPersonalNumber())) {
            return PhoneNumberType.PERSONAL_NUMBER;
        }
        if (m28468D(str, phoneMetadata.getPager())) {
            return PhoneNumberType.PAGER;
        }
        if (m28468D(str, phoneMetadata.getUan())) {
            return PhoneNumberType.UAN;
        }
        if (m28468D(str, phoneMetadata.getVoicemail())) {
            return PhoneNumberType.VOICEMAIL;
        }
        if (!m28468D(str, phoneMetadata.getFixedLine())) {
            return (phoneMetadata.getSameMobileAndFixedLinePattern() || !m28468D(str, phoneMetadata.getMobile())) ? PhoneNumberType.UNKNOWN : PhoneNumberType.MOBILE;
        }
        if (!phoneMetadata.getSameMobileAndFixedLinePattern() && !m28468D(str, phoneMetadata.getMobile())) {
            return PhoneNumberType.FIXED_LINE;
        }
        return PhoneNumberType.FIXED_LINE_OR_MOBILE;
    }

    /* renamed from: y */
    public final String m28497y(Phonenumber.PhoneNumber phoneNumber, List<String> list) {
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        for (String str : list) {
            Phonemetadata.PhoneMetadata m28493u = m28493u(str);
            if (m28493u.hasLeadingDigits()) {
                if (this.f36467e.getPatternForRegex(m28493u.getLeadingDigits()).matcher(nationalSignificantNumber).lookingAt()) {
                    return str;
                }
            } else if (m28496x(nationalSignificantNumber, m28493u) != PhoneNumberType.UNKNOWN) {
                return str;
            }
        }
        return null;
    }

    /* renamed from: z */
    public final Set<PhoneNumberType> m28498z(Phonemetadata.PhoneMetadata phoneMetadata) {
        TreeSet treeSet = new TreeSet();
        for (PhoneNumberType phoneNumberType : PhoneNumberType.values()) {
            if (phoneNumberType != PhoneNumberType.FIXED_LINE_OR_MOBILE && phoneNumberType != PhoneNumberType.UNKNOWN && m28459g(m28495w(phoneMetadata, phoneNumberType))) {
                treeSet.add(phoneNumberType);
            }
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public Iterable<PhoneNumberMatch> findNumbers(CharSequence charSequence, String str, Leniency leniency, long j) {
        return new C6612a(charSequence, str, leniency, j);
    }

    public boolean isNumberGeographical(PhoneNumberType phoneNumberType, int i) {
        return phoneNumberType == PhoneNumberType.FIXED_LINE || phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE || (f36454r.contains(Integer.valueOf(i)) && phoneNumberType == PhoneNumberType.MOBILE);
    }

    public boolean isPossibleNumber(CharSequence charSequence, String str) {
        try {
            return isPossibleNumber(parse(charSequence, str));
        } catch (NumberParseException unused) {
            return false;
        }
    }

    public void parse(CharSequence charSequence, String str, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        m28476P(charSequence, str, false, true, phoneNumber);
    }

    public void parseAndKeepRawInput(CharSequence charSequence, String str, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        m28476P(charSequence, str, true, true, phoneNumber);
    }

    public void format(Phonenumber.PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        sb.setLength(0);
        int countryCode = phoneNumber.getCountryCode();
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        PhoneNumberFormat phoneNumberFormat2 = PhoneNumberFormat.E164;
        if (phoneNumberFormat == phoneNumberFormat2) {
            sb.append(nationalSignificantNumber);
            m28478R(countryCode, phoneNumberFormat2, sb);
        } else {
            if (!m28466B(countryCode)) {
                sb.append(nationalSignificantNumber);
                return;
            }
            Phonemetadata.PhoneMetadata m28494v = m28494v(countryCode, getRegionCodeForCountryCode(countryCode));
            sb.append(m28487n(nationalSignificantNumber, m28494v, phoneNumberFormat));
            m28471H(phoneNumber, m28494v, phoneNumberFormat, sb);
            m28478R(countryCode, phoneNumberFormat, sb);
        }
    }

    public Phonenumber.PhoneNumber getExampleNumberForType(PhoneNumberType phoneNumberType) {
        Iterator<String> it2 = getSupportedRegions().iterator();
        while (it2.hasNext()) {
            Phonenumber.PhoneNumber exampleNumberForType = getExampleNumberForType(it2.next(), phoneNumberType);
            if (exampleNumberForType != null) {
                return exampleNumberForType;
            }
        }
        Iterator<Integer> it3 = getSupportedGlobalNetworkCallingCodes().iterator();
        while (it3.hasNext()) {
            int intValue = it3.next().intValue();
            Phonemetadata.PhoneNumberDesc m28495w = this.m28495w(this.m28492t(intValue), phoneNumberType);
            try {
            } catch (NumberParseException e) {
                f36438h.log(Level.SEVERE, e.toString());
            }
            if (m28495w.hasExampleNumber()) {
                return this.parse("+" + intValue + m28495w.getExampleNumber(), f36450n);
            }
            continue;
        }
        return null;
    }

    public MatchType isNumberMatch(CharSequence charSequence, CharSequence charSequence2) {
        try {
            return isNumberMatch(parse(charSequence, f36450n), charSequence2);
        } catch (NumberParseException e) {
            if (e.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE) {
                try {
                    return this.isNumberMatch(this.parse(charSequence2, f36450n), charSequence);
                } catch (NumberParseException e2) {
                    if (e2.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE) {
                        try {
                            Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
                            Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
                            this.m28476P(charSequence, null, false, false, phoneNumber);
                            this.m28476P(charSequence2, null, false, false, phoneNumber2);
                            return this.isNumberMatch(phoneNumber, phoneNumber2);
                        } catch (NumberParseException unused) {
                            return MatchType.NOT_A_NUMBER;
                        }
                    }
                    return MatchType.NOT_A_NUMBER;
                }
            }
            return MatchType.NOT_A_NUMBER;
        }
    }

    public MatchType isNumberMatch(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence) {
        try {
            return isNumberMatch(phoneNumber, parse(charSequence, f36450n));
        } catch (NumberParseException e) {
            if (e.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE) {
                String regionCodeForCountryCode = this.getRegionCodeForCountryCode(phoneNumber.getCountryCode());
                try {
                    if (!regionCodeForCountryCode.equals(f36450n)) {
                        MatchType isNumberMatch = this.isNumberMatch(phoneNumber, this.parse(charSequence, regionCodeForCountryCode));
                        return isNumberMatch == MatchType.EXACT_MATCH ? MatchType.NSN_MATCH : isNumberMatch;
                    }
                    Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
                    this.m28476P(charSequence, null, false, false, phoneNumber2);
                    return this.isNumberMatch(phoneNumber, phoneNumber2);
                } catch (NumberParseException unused) {
                    return MatchType.NOT_A_NUMBER;
                }
            }
            return MatchType.NOT_A_NUMBER;
        }
    }
}
