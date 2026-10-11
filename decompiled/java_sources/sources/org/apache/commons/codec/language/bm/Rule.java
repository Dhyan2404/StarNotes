package org.apache.commons.codec.language.bm;

import com.google.android.material.motion.MotionUtils;
import com.google.firebase.installations.local.IidStore;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Pattern;
import org.apache.commons.codec.Resources;
import org.apache.commons.codec.language.bm.Languages;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes9.dex */
public class Rule {
    public static final String ALL = "ALL";

    /* renamed from: e */
    public static final String f104837e = "\"";

    /* renamed from: f */
    public static final String f104838f = "#include";

    /* renamed from: a */
    public final RPattern f104840a;

    /* renamed from: b */
    public final String f104841b;

    /* renamed from: c */
    public final PhonemeExpr f104842c;

    /* renamed from: d */
    public final RPattern f104843d;
    public static final RPattern ALL_STRINGS_RMATCHER = new C18681b();

    /* renamed from: g */
    public static final Map<NameType, Map<RuleType, Map<String, Map<String, List<Rule>>>>> f104839g = new EnumMap(NameType.class);

    /* loaded from: classes9.dex */
    public interface PhonemeExpr {
        Iterable<Phoneme> getPhonemes();
    }

    /* loaded from: classes9.dex */
    public static final class PhonemeList implements PhonemeExpr {

        /* renamed from: a */
        public final List<Phoneme> f104846a;

        public PhonemeList(List<Phoneme> list) {
            this.f104846a = list;
        }

        @Override // org.apache.commons.codec.language.bm.Rule.PhonemeExpr
        public List<Phoneme> getPhonemes() {
            return this.f104846a;
        }
    }

    /* loaded from: classes9.dex */
    public interface RPattern {
        boolean isMatch(CharSequence charSequence);
    }

    /* renamed from: org.apache.commons.codec.language.bm.Rule$a */
    /* loaded from: classes9.dex */
    public static class C18680a implements RPattern {

        /* renamed from: a */
        public Pattern f104847a;

        /* renamed from: b */
        public final /* synthetic */ String f104848b;

        public C18680a(String str) {
            this.f104848b = str;
            this.f104847a = Pattern.compile(str);
        }

        @Override // org.apache.commons.codec.language.bm.Rule.RPattern
        public boolean isMatch(CharSequence charSequence) {
            return this.f104847a.matcher(charSequence).find();
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Rule$b */
    /* loaded from: classes9.dex */
    public static class C18681b implements RPattern {
        @Override // org.apache.commons.codec.language.bm.Rule.RPattern
        public boolean isMatch(CharSequence charSequence) {
            return true;
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Rule$c */
    /* loaded from: classes9.dex */
    public static class C18682c extends Rule {

        /* renamed from: h */
        public final int f104849h;

        /* renamed from: i */
        public final String f104850i;

        /* renamed from: j */
        public final /* synthetic */ int f104851j;

        /* renamed from: k */
        public final /* synthetic */ String f104852k;

        /* renamed from: l */
        public final /* synthetic */ String f104853l;

        /* renamed from: m */
        public final /* synthetic */ String f104854m;

        /* renamed from: n */
        public final /* synthetic */ String f104855n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18682c(String str, String str2, String str3, PhonemeExpr phonemeExpr, int i, String str4, String str5, String str6, String str7) {
            super(str, str2, str3, phonemeExpr);
            this.f104851j = i;
            this.f104852k = str4;
            this.f104853l = str5;
            this.f104854m = str6;
            this.f104855n = str7;
            this.f104849h = i;
            this.f104850i = str4;
        }

        public String toString() {
            return "Rule{line=" + this.f104849h + ", loc='" + this.f104850i + Chars.QUOTE + ", pat='" + this.f104853l + Chars.QUOTE + ", lcon='" + this.f104854m + Chars.QUOTE + ", rcon='" + this.f104855n + Chars.QUOTE + '}';
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Rule$d */
    /* loaded from: classes9.dex */
    public static class C18683d implements RPattern {
        @Override // org.apache.commons.codec.language.bm.Rule.RPattern
        public boolean isMatch(CharSequence charSequence) {
            return charSequence.length() == 0;
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Rule$e */
    /* loaded from: classes9.dex */
    public static class C18684e implements RPattern {

        /* renamed from: a */
        public final /* synthetic */ String f104856a;

        public C18684e(String str) {
            this.f104856a = str;
        }

        @Override // org.apache.commons.codec.language.bm.Rule.RPattern
        public boolean isMatch(CharSequence charSequence) {
            return charSequence.equals(this.f104856a);
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Rule$f */
    /* loaded from: classes9.dex */
    public static class C18685f implements RPattern {

        /* renamed from: a */
        public final /* synthetic */ String f104857a;

        public C18685f(String str) {
            this.f104857a = str;
        }

        @Override // org.apache.commons.codec.language.bm.Rule.RPattern
        public boolean isMatch(CharSequence charSequence) {
            return Rule.m65849m(charSequence, this.f104857a);
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Rule$g */
    /* loaded from: classes9.dex */
    public static class C18686g implements RPattern {

        /* renamed from: a */
        public final /* synthetic */ String f104858a;

        public C18686g(String str) {
            this.f104858a = str;
        }

        @Override // org.apache.commons.codec.language.bm.Rule.RPattern
        public boolean isMatch(CharSequence charSequence) {
            return Rule.m65844h(charSequence, this.f104858a);
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Rule$h */
    /* loaded from: classes9.dex */
    public static class C18687h implements RPattern {

        /* renamed from: a */
        public final /* synthetic */ String f104859a;

        /* renamed from: b */
        public final /* synthetic */ boolean f104860b;

        public C18687h(String str, boolean z) {
            this.f104859a = str;
            this.f104860b = z;
        }

        @Override // org.apache.commons.codec.language.bm.Rule.RPattern
        public boolean isMatch(CharSequence charSequence) {
            return charSequence.length() == 1 && Rule.m65840d(this.f104859a, charSequence.charAt(0)) == this.f104860b;
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Rule$i */
    /* loaded from: classes9.dex */
    public static class C18688i implements RPattern {

        /* renamed from: a */
        public final /* synthetic */ String f104861a;

        /* renamed from: b */
        public final /* synthetic */ boolean f104862b;

        public C18688i(String str, boolean z) {
            this.f104861a = str;
            this.f104862b = z;
        }

        @Override // org.apache.commons.codec.language.bm.Rule.RPattern
        public boolean isMatch(CharSequence charSequence) {
            return charSequence.length() > 0 && Rule.m65840d(this.f104861a, charSequence.charAt(0)) == this.f104862b;
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Rule$j */
    /* loaded from: classes9.dex */
    public static class C18689j implements RPattern {

        /* renamed from: a */
        public final /* synthetic */ String f104863a;

        /* renamed from: b */
        public final /* synthetic */ boolean f104864b;

        public C18689j(String str, boolean z) {
            this.f104863a = str;
            this.f104864b = z;
        }

        @Override // org.apache.commons.codec.language.bm.Rule.RPattern
        public boolean isMatch(CharSequence charSequence) {
            return charSequence.length() > 0 && Rule.m65840d(this.f104863a, charSequence.charAt(charSequence.length() - 1)) == this.f104864b;
        }
    }

    static {
        for (NameType nameType : NameType.values()) {
            EnumMap enumMap = new EnumMap(RuleType.class);
            for (RuleType ruleType : RuleType.values()) {
                HashMap hashMap = new HashMap();
                for (String str : Languages.getInstance(nameType).getLanguages()) {
                    try {
                        Scanner m65843g = m65843g(nameType, ruleType, str);
                        try {
                            hashMap.put(str, m65847k(m65843g, m65841e(nameType, ruleType, str)));
                            if (m65843g != null) {
                                m65843g.close();
                            }
                        } finally {
                        }
                    } catch (IllegalStateException e) {
                        throw new IllegalStateException("Problem processing " + m65841e(nameType, ruleType, str), e);
                    }
                }
                if (!ruleType.equals(RuleType.RULES)) {
                    Scanner m65843g2 = m65843g(nameType, ruleType, "common");
                    try {
                        hashMap.put("common", m65847k(m65843g2, m65841e(nameType, ruleType, "common")));
                        if (m65843g2 != null) {
                            m65843g2.close();
                        }
                    } finally {
                    }
                }
                enumMap.put((EnumMap) ruleType, (RuleType) Collections.unmodifiableMap(hashMap));
            }
            f104839g.put(nameType, Collections.unmodifiableMap(enumMap));
        }
    }

    public Rule(String str, String str2, String str3, PhonemeExpr phonemeExpr) {
        this.f104841b = str;
        this.f104840a = m65848l(str2 + "$");
        this.f104843d = m65848l("^" + str3);
        this.f104842c = phonemeExpr;
    }

    /* renamed from: d */
    public static boolean m65840d(CharSequence charSequence, char c) {
        for (int i = 0; i < charSequence.length(); i++) {
            if (charSequence.charAt(i) == c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public static String m65841e(NameType nameType, RuleType ruleType, String str) {
        return String.format("org/apache/commons/codec/language/bm/%s_%s_%s.txt", nameType.getName(), ruleType.getName(), str);
    }

    /* renamed from: f */
    public static Scanner m65842f(String str) {
        return new Scanner(Resources.getInputStream(String.format("org/apache/commons/codec/language/bm/%s.txt", str)), "UTF-8");
    }

    /* renamed from: g */
    public static Scanner m65843g(NameType nameType, RuleType ruleType, String str) {
        return new Scanner(Resources.getInputStream(m65841e(nameType, ruleType, str)), "UTF-8");
    }

    public static List<Rule> getInstance(NameType nameType, RuleType ruleType, Languages.LanguageSet languageSet) {
        Map<String, List<Rule>> instanceMap = getInstanceMap(nameType, ruleType, languageSet);
        ArrayList arrayList = new ArrayList();
        Iterator<List<Rule>> it2 = instanceMap.values().iterator();
        while (it2.hasNext()) {
            arrayList.addAll(it2.next());
        }
        return arrayList;
    }

    public static Map<String, List<Rule>> getInstanceMap(NameType nameType, RuleType ruleType, Languages.LanguageSet languageSet) {
        return languageSet.isSingleton() ? getInstanceMap(nameType, ruleType, languageSet.getAny()) : getInstanceMap(nameType, ruleType, "any");
    }

    /* renamed from: h */
    public static boolean m65844h(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence2.length() > charSequence.length()) {
            return false;
        }
        int length = charSequence.length() - 1;
        for (int length2 = charSequence2.length() - 1; length2 >= 0; length2--) {
            if (charSequence.charAt(length) != charSequence2.charAt(length2)) {
                return false;
            }
            length--;
        }
        return true;
    }

    /* renamed from: i */
    public static Phoneme m65845i(String str) {
        int indexOf = str.indexOf(IteratorUtils.f104923a);
        if (indexOf < 0) {
            return new Phoneme(str, Languages.ANY_LANGUAGE);
        }
        if (str.endsWith(IteratorUtils.f104924b)) {
            return new Phoneme(str.substring(0, indexOf), Languages.LanguageSet.from(new HashSet(Arrays.asList(str.substring(indexOf + 1, str.length() - 1).split("[+]")))));
        }
        throw new IllegalArgumentException("Phoneme expression contains a '[' but does not end in ']'");
    }

    /* renamed from: j */
    public static PhonemeExpr m65846j(String str) {
        if (!str.startsWith(MotionUtils.f31761c)) {
            return m65845i(str);
        }
        if (!str.endsWith(MotionUtils.f31762d)) {
            throw new IllegalArgumentException("Phoneme starts with '(' so must end with ')'");
        }
        ArrayList arrayList = new ArrayList();
        String substring = str.substring(1, str.length() - 1);
        for (String str2 : substring.split("[|]")) {
            arrayList.add(m65845i(str2));
        }
        if (substring.startsWith(IidStore.f35940g) || substring.endsWith(IidStore.f35940g)) {
            arrayList.add(new Phoneme("", Languages.ANY_LANGUAGE));
        }
        return new PhonemeList(arrayList);
    }

    /* renamed from: k */
    public static Map<String, List<Rule>> m65847k(Scanner scanner, String str) {
        String str2;
        int i;
        HashMap hashMap = new HashMap();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (scanner.hasNextLine()) {
            int i5 = i3 + 1;
            String nextLine = scanner.nextLine();
            if (i4 != 0) {
                if (nextLine.endsWith("*/")) {
                    i = i2;
                    i4 = i;
                    i2 = i;
                    i3 = i5;
                }
                i = i2;
                i2 = i;
                i3 = i5;
            } else {
                if (nextLine.startsWith("/*")) {
                    i = i2;
                    i4 = 1;
                } else {
                    int indexOf = nextLine.indexOf("//");
                    String trim = (indexOf >= 0 ? nextLine.substring(i2, indexOf) : nextLine).trim();
                    if (trim.length() == 0) {
                        continue;
                        i3 = i5;
                    } else if (trim.startsWith(f104838f)) {
                        String trim2 = trim.substring(8).trim();
                        if (trim2.contains(" ")) {
                            throw new IllegalArgumentException("Malformed import statement '" + nextLine + "' in " + str);
                        }
                        Scanner m65842f = m65842f(trim2);
                        try {
                            hashMap.putAll(m65847k(m65842f, str + "->" + trim2));
                            if (m65842f != null) {
                                m65842f.close();
                            }
                            i = i2;
                        } finally {
                        }
                    } else {
                        String[] split = trim.split("\\s+");
                        if (split.length != 4) {
                            throw new IllegalArgumentException("Malformed rule statement split into " + split.length + " parts: " + nextLine + CloudStorageConstants.OPERATION_IN + str);
                        }
                        try {
                            String m65850n = m65850n(split[i2]);
                            String m65850n2 = m65850n(split[1]);
                            String m65850n3 = m65850n(split[2]);
                            str2 = "' in ";
                            try {
                                C18682c c18682c = new C18682c(m65850n, m65850n2, m65850n3, m65846j(m65850n(split[3])), i5, str, m65850n, m65850n2, m65850n3);
                                i = 0;
                                String substring = c18682c.f104841b.substring(0, 1);
                                List list = (List) hashMap.get(substring);
                                if (list == null) {
                                    list = new ArrayList();
                                    hashMap.put(substring, list);
                                }
                                list.add(c18682c);
                            } catch (IllegalArgumentException e) {
                                e = e;
                                throw new IllegalStateException("Problem parsing line '" + i5 + str2 + str, e);
                            }
                        } catch (IllegalArgumentException e2) {
                            e = e2;
                            str2 = "' in ";
                        }
                    }
                }
                i2 = i;
                i3 = i5;
            }
        }
        return hashMap;
    }

    /* renamed from: l */
    public static RPattern m65848l(String str) {
        boolean startsWith = str.startsWith("^");
        boolean endsWith = str.endsWith("$");
        int length = str.length();
        if (endsWith) {
            length--;
        }
        String substring = str.substring(startsWith ? 1 : 0, length);
        if (substring.contains(IteratorUtils.f104923a)) {
            boolean startsWith2 = substring.startsWith(IteratorUtils.f104923a);
            boolean endsWith2 = substring.endsWith(IteratorUtils.f104924b);
            if (startsWith2 && endsWith2) {
                String substring2 = substring.substring(1, substring.length() - 1);
                if (!substring2.contains(IteratorUtils.f104923a)) {
                    boolean startsWith3 = substring2.startsWith("^");
                    if (startsWith3) {
                        substring2 = substring2.substring(1);
                    }
                    boolean z = !startsWith3;
                    if (startsWith && endsWith) {
                        return new C18687h(substring2, z);
                    }
                    if (startsWith) {
                        return new C18688i(substring2, z);
                    }
                    if (endsWith) {
                        return new C18689j(substring2, z);
                    }
                }
            }
        } else {
            if (startsWith && endsWith) {
                return substring.length() == 0 ? new C18683d() : new C18684e(substring);
            }
            if ((startsWith || endsWith) && substring.length() == 0) {
                return ALL_STRINGS_RMATCHER;
            }
            if (startsWith) {
                return new C18685f(substring);
            }
            if (endsWith) {
                return new C18686g(substring);
            }
        }
        return new C18680a(str);
    }

    /* renamed from: m */
    public static boolean m65849m(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence2.length() > charSequence.length()) {
            return false;
        }
        for (int i = 0; i < charSequence2.length(); i++) {
            if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: n */
    public static String m65850n(String str) {
        if (str.startsWith("\"")) {
            str = str.substring(1);
        }
        return str.endsWith("\"") ? str.substring(0, str.length() - 1) : str;
    }

    public RPattern getLContext() {
        return this.f104840a;
    }

    public String getPattern() {
        return this.f104841b;
    }

    public PhonemeExpr getPhoneme() {
        return this.f104842c;
    }

    public RPattern getRContext() {
        return this.f104843d;
    }

    public boolean patternAndContextMatches(CharSequence charSequence, int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Can not match pattern at negative indexes");
        }
        int length = this.f104841b.length() + i;
        if (length <= charSequence.length() && charSequence.subSequence(i, length).equals(this.f104841b) && this.f104843d.isMatch(charSequence.subSequence(length, charSequence.length()))) {
            return this.f104840a.isMatch(charSequence.subSequence(0, i));
        }
        return false;
    }

    /* loaded from: classes9.dex */
    public static final class Phoneme implements PhonemeExpr {
        public static final Comparator<Phoneme> COMPARATOR = new C18679a();

        /* renamed from: a */
        public final StringBuilder f104844a;

        /* renamed from: b */
        public final Languages.LanguageSet f104845b;

        /* renamed from: org.apache.commons.codec.language.bm.Rule$Phoneme$a */
        /* loaded from: classes9.dex */
        public static class C18679a implements Comparator<Phoneme> {
            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Phoneme phoneme, Phoneme phoneme2) {
                for (int i = 0; i < phoneme.f104844a.length(); i++) {
                    if (i >= phoneme2.f104844a.length()) {
                        return 1;
                    }
                    int charAt = phoneme.f104844a.charAt(i) - phoneme2.f104844a.charAt(i);
                    if (charAt != 0) {
                        return charAt;
                    }
                }
                return phoneme.f104844a.length() < phoneme2.f104844a.length() ? -1 : 0;
            }
        }

        public Phoneme(CharSequence charSequence, Languages.LanguageSet languageSet) {
            this.f104844a = new StringBuilder(charSequence);
            this.f104845b = languageSet;
        }

        public Phoneme append(CharSequence charSequence) {
            this.f104844a.append(charSequence);
            return this;
        }

        public Languages.LanguageSet getLanguages() {
            return this.f104845b;
        }

        public CharSequence getPhonemeText() {
            return this.f104844a;
        }

        @Override // org.apache.commons.codec.language.bm.Rule.PhonemeExpr
        public Iterable<Phoneme> getPhonemes() {
            return Collections.singleton(this);
        }

        @Deprecated
        public Phoneme join(Phoneme phoneme) {
            return new Phoneme(this.f104844a.toString() + phoneme.f104844a.toString(), this.f104845b.restrictTo(phoneme.f104845b));
        }

        public Phoneme mergeWithLanguage(Languages.LanguageSet languageSet) {
            return new Phoneme(this.f104844a.toString(), this.f104845b.merge(languageSet));
        }

        public String toString() {
            return this.f104844a.toString() + IteratorUtils.f104923a + this.f104845b + IteratorUtils.f104924b;
        }

        public Phoneme(Phoneme phoneme, Phoneme phoneme2) {
            this(phoneme.f104844a, phoneme.f104845b);
            this.f104844a.append((CharSequence) phoneme2.f104844a);
        }

        public Phoneme(Phoneme phoneme, Phoneme phoneme2, Languages.LanguageSet languageSet) {
            this(phoneme.f104844a, languageSet);
            this.f104844a.append((CharSequence) phoneme2.f104844a);
        }
    }

    public static Map<String, List<Rule>> getInstanceMap(NameType nameType, RuleType ruleType, String str) {
        Map<String, List<Rule>> map = f104839g.get(nameType).get(ruleType).get(str);
        if (map != null) {
            return map;
        }
        throw new IllegalArgumentException(String.format("No rules found for %s, %s, %s.", nameType.getName(), ruleType.getName(), str));
    }

    public static List<Rule> getInstance(NameType nameType, RuleType ruleType, String str) {
        return getInstance(nameType, ruleType, Languages.LanguageSet.from(new HashSet(Arrays.asList(str))));
    }
}
