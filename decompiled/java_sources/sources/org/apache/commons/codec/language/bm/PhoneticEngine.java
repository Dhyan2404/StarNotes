package org.apache.commons.codec.language.bm;

import com.google.android.material.motion.MotionUtils;
import com.google.firebase.installations.local.IidStore;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import org.apache.commons.codec.language.bm.Languages;
import org.apache.commons.codec.language.bm.Rule;

/* loaded from: classes9.dex */
public class PhoneticEngine {

    /* renamed from: f */
    public static final Map<NameType, Set<String>> f104822f;

    /* renamed from: g */
    public static final int f104823g = 20;

    /* renamed from: a */
    public final Lang f104824a;

    /* renamed from: b */
    public final NameType f104825b;

    /* renamed from: c */
    public final RuleType f104826c;

    /* renamed from: d */
    public final boolean f104827d;

    /* renamed from: e */
    public final int f104828e;

    /* renamed from: org.apache.commons.codec.language.bm.PhoneticEngine$a */
    /* loaded from: classes9.dex */
    public static /* synthetic */ class C18676a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f104829a;

        static {
            int[] iArr = new int[NameType.values().length];
            f104829a = iArr;
            try {
                iArr[NameType.SEPHARDIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f104829a[NameType.ASHKENAZI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f104829a[NameType.GENERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.PhoneticEngine$b */
    /* loaded from: classes9.dex */
    public static final class C18677b {

        /* renamed from: a */
        public final Set<Rule.Phoneme> f104830a;

        public /* synthetic */ C18677b(Set set, C18676a c18676a) {
            this((Set<Rule.Phoneme>) set);
        }

        /* renamed from: c */
        public static C18677b m65828c(Languages.LanguageSet languageSet) {
            return new C18677b(new Rule.Phoneme("", languageSet));
        }

        /* renamed from: a */
        public void m65829a(CharSequence charSequence) {
            Iterator<Rule.Phoneme> it2 = this.f104830a.iterator();
            while (it2.hasNext()) {
                it2.next().append(charSequence);
            }
        }

        /* renamed from: b */
        public void m65830b(Rule.PhonemeExpr phonemeExpr, int i) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(i);
            loop0: for (Rule.Phoneme phoneme : this.f104830a) {
                for (Rule.Phoneme phoneme2 : phonemeExpr.getPhonemes()) {
                    Languages.LanguageSet restrictTo = phoneme.getLanguages().restrictTo(phoneme2.getLanguages());
                    if (!restrictTo.isEmpty()) {
                        Rule.Phoneme phoneme3 = new Rule.Phoneme(phoneme, phoneme2, restrictTo);
                        if (linkedHashSet.size() < i) {
                            linkedHashSet.add(phoneme3);
                            if (linkedHashSet.size() >= i) {
                                break loop0;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            this.f104830a.clear();
            this.f104830a.addAll(linkedHashSet);
        }

        /* renamed from: d */
        public Set<Rule.Phoneme> m65831d() {
            return this.f104830a;
        }

        /* renamed from: e */
        public String m65832e() {
            StringBuilder sb = new StringBuilder();
            for (Rule.Phoneme phoneme : this.f104830a) {
                if (sb.length() > 0) {
                    sb.append(IidStore.f35940g);
                }
                sb.append(phoneme.getPhonemeText());
            }
            return sb.toString();
        }

        public C18677b(Rule.Phoneme phoneme) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            this.f104830a = linkedHashSet;
            linkedHashSet.add(phoneme);
        }

        public C18677b(Set<Rule.Phoneme> set) {
            this.f104830a = set;
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.PhoneticEngine$c */
    /* loaded from: classes9.dex */
    public static final class C18678c {

        /* renamed from: a */
        public final Map<String, List<Rule>> f104831a;

        /* renamed from: b */
        public final CharSequence f104832b;

        /* renamed from: c */
        public final C18677b f104833c;

        /* renamed from: d */
        public int f104834d;

        /* renamed from: e */
        public final int f104835e;

        /* renamed from: f */
        public boolean f104836f;

        public C18678c(Map<String, List<Rule>> map, CharSequence charSequence, C18677b c18677b, int i, int i2) {
            Objects.requireNonNull(map, "finalRules");
            this.f104831a = map;
            this.f104833c = c18677b;
            this.f104832b = charSequence;
            this.f104834d = i;
            this.f104835e = i2;
        }

        /* renamed from: a */
        public int m65833a() {
            return this.f104834d;
        }

        /* renamed from: b */
        public C18677b m65834b() {
            return this.f104833c;
        }

        /* renamed from: c */
        public C18678c m65835c() {
            int i;
            this.f104836f = false;
            Map<String, List<Rule>> map = this.f104831a;
            CharSequence charSequence = this.f104832b;
            int i2 = this.f104834d;
            List<Rule> list = map.get(charSequence.subSequence(i2, i2 + 1));
            if (list != null) {
                Iterator<Rule> it2 = list.iterator();
                i = 1;
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Rule next = it2.next();
                    int length = next.getPattern().length();
                    if (next.patternAndContextMatches(this.f104832b, this.f104834d)) {
                        this.f104833c.m65830b(next.getPhoneme(), this.f104835e);
                        this.f104836f = true;
                        i = length;
                        break;
                    }
                    i = length;
                }
            } else {
                i = 1;
            }
            this.f104834d += this.f104836f ? i : 1;
            return this;
        }

        /* renamed from: d */
        public boolean m65836d() {
            return this.f104836f;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(NameType.class);
        f104822f = enumMap;
        enumMap.put((EnumMap) NameType.ASHKENAZI, (NameType) Collections.unmodifiableSet(new HashSet(Arrays.asList("bar", "ben", "da", OcrValues.LANG_GERMAN, "van", "von"))));
        enumMap.put((EnumMap) NameType.SEPHARDIC, (NameType) Collections.unmodifiableSet(new HashSet(Arrays.asList("al", "el", "da", "dal", OcrValues.LANG_GERMAN, "del", "dela", "de la", "della", "des", "di", "do", "dos", "du", "van", "von"))));
        enumMap.put((EnumMap) NameType.GENERIC, (NameType) Collections.unmodifiableSet(new HashSet(Arrays.asList("da", "dal", OcrValues.LANG_GERMAN, "del", "dela", "de la", "della", "des", "di", "do", "dos", "du", "van", "von"))));
    }

    public PhoneticEngine(NameType nameType, RuleType ruleType, boolean z) {
        this(nameType, ruleType, z, 20);
    }

    /* renamed from: b */
    public static String m65826b(Iterable<String> iterable, String str) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it2 = iterable.iterator();
        if (it2.hasNext()) {
            sb.append(it2.next());
        }
        while (it2.hasNext()) {
            sb.append(str);
            sb.append(it2.next());
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final C18677b m65827a(C18677b c18677b, Map<String, List<Rule>> map) {
        Objects.requireNonNull(map, "finalRules");
        if (map.isEmpty()) {
            return c18677b;
        }
        TreeMap treeMap = new TreeMap(Rule.Phoneme.COMPARATOR);
        for (Rule.Phoneme phoneme : c18677b.m65831d()) {
            C18677b m65828c = C18677b.m65828c(phoneme.getLanguages());
            String charSequence = phoneme.getPhonemeText().toString();
            C18677b c18677b2 = m65828c;
            int i = 0;
            while (i < charSequence.length()) {
                C18678c m65835c = new C18678c(map, charSequence, c18677b2, i, this.f104828e).m65835c();
                boolean m65836d = m65835c.m65836d();
                c18677b2 = m65835c.m65834b();
                if (!m65836d) {
                    c18677b2.m65829a(charSequence.subSequence(i, i + 1));
                }
                i = m65835c.m65833a();
            }
            for (Rule.Phoneme phoneme2 : c18677b2.m65831d()) {
                if (treeMap.containsKey(phoneme2)) {
                    Rule.Phoneme mergeWithLanguage = ((Rule.Phoneme) treeMap.remove(phoneme2)).mergeWithLanguage(phoneme2.getLanguages());
                    treeMap.put(mergeWithLanguage, mergeWithLanguage);
                } else {
                    treeMap.put(phoneme2, phoneme2);
                }
            }
        }
        return new C18677b(treeMap.keySet(), null);
    }

    public String encode(String str) {
        return encode(str, this.f104824a.guessLanguages(str));
    }

    public Lang getLang() {
        return this.f104824a;
    }

    public int getMaxPhonemes() {
        return this.f104828e;
    }

    public NameType getNameType() {
        return this.f104825b;
    }

    public RuleType getRuleType() {
        return this.f104826c;
    }

    public boolean isConcat() {
        return this.f104827d;
    }

    public PhoneticEngine(NameType nameType, RuleType ruleType, boolean z, int i) {
        RuleType ruleType2 = RuleType.RULES;
        if (ruleType != ruleType2) {
            this.f104825b = nameType;
            this.f104826c = ruleType;
            this.f104827d = z;
            this.f104824a = Lang.instance(nameType);
            this.f104828e = i;
            return;
        }
        throw new IllegalArgumentException("ruleType must not be " + ruleType2);
    }

    public String encode(String str, Languages.LanguageSet languageSet) {
        String str2;
        Map<String, List<Rule>> instanceMap = Rule.getInstanceMap(this.f104825b, RuleType.RULES, languageSet);
        Map<String, List<Rule>> instanceMap2 = Rule.getInstanceMap(this.f104825b, this.f104826c, "common");
        Map<String, List<Rule>> instanceMap3 = Rule.getInstanceMap(this.f104825b, this.f104826c, languageSet);
        String trim = str.toLowerCase(Locale.ENGLISH).replace('-', ' ').trim();
        if (this.f104825b == NameType.GENERIC) {
            if (trim.length() >= 2 && trim.substring(0, 2).equals("d'")) {
                String substring = trim.substring(2);
                return MotionUtils.f31761c + encode(substring) + ")-(" + encode("d" + substring) + MotionUtils.f31762d;
            }
            for (String str3 : f104822f.get(this.f104825b)) {
                if (trim.startsWith(str3 + " ")) {
                    String substring2 = trim.substring(str3.length() + 1);
                    return MotionUtils.f31761c + encode(substring2) + ")-(" + encode(str3 + substring2) + MotionUtils.f31762d;
                }
            }
        }
        List asList = Arrays.asList(trim.split("\\s+"));
        ArrayList<String> arrayList = new ArrayList();
        int i = C18676a.f104829a[this.f104825b.ordinal()];
        if (i == 1) {
            Iterator it2 = asList.iterator();
            while (it2.hasNext()) {
                String[] split = ((String) it2.next()).split(CloudStorageConstants.SINGLE_QUOTES);
                arrayList.add(split[split.length - 1]);
            }
            arrayList.removeAll(f104822f.get(this.f104825b));
        } else if (i == 2) {
            arrayList.addAll(asList);
            arrayList.removeAll(f104822f.get(this.f104825b));
        } else if (i == 3) {
            arrayList.addAll(asList);
        } else {
            throw new IllegalStateException("Unreachable case: " + this.f104825b);
        }
        if (this.f104827d) {
            str2 = m65826b(arrayList, " ");
        } else if (arrayList.size() == 1) {
            str2 = (String) asList.iterator().next();
        } else {
            StringBuilder sb = new StringBuilder();
            for (String str4 : arrayList) {
                sb.append("-");
                sb.append(encode(str4));
            }
            return sb.substring(1);
        }
        int i2 = 0;
        C18677b m65828c = C18677b.m65828c(languageSet);
        while (i2 < str2.length()) {
            C18678c m65835c = new C18678c(instanceMap, str2, m65828c, i2, this.f104828e).m65835c();
            i2 = m65835c.m65833a();
            m65828c = m65835c.m65834b();
        }
        return m65827a(m65827a(m65828c, instanceMap2), instanceMap3).m65832e();
    }
}
