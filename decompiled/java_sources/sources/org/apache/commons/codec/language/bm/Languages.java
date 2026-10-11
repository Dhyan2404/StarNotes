package org.apache.commons.codec.language.bm;

import com.google.android.material.motion.MotionUtils;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.Set;
import org.apache.commons.codec.Resources;

/* loaded from: classes9.dex */
public class Languages {
    public static final String ANY = "any";
    public static final LanguageSet ANY_LANGUAGE;
    public static final LanguageSet NO_LANGUAGES;

    /* renamed from: b */
    public static final Map<NameType, Languages> f104819b = new EnumMap(NameType.class);

    /* renamed from: a */
    public final Set<String> f104820a;

    /* loaded from: classes9.dex */
    public static abstract class LanguageSet {
        public static LanguageSet from(Set<String> set) {
            return set.isEmpty() ? Languages.NO_LANGUAGES : new SomeLanguages(set, null);
        }

        public abstract boolean contains(String str);

        public abstract String getAny();

        public abstract boolean isEmpty();

        public abstract boolean isSingleton();

        public abstract LanguageSet merge(LanguageSet languageSet);

        public abstract LanguageSet restrictTo(LanguageSet languageSet);
    }

    /* loaded from: classes9.dex */
    public static final class SomeLanguages extends LanguageSet {

        /* renamed from: a */
        public final Set<String> f104821a;

        public /* synthetic */ SomeLanguages(Set set, C18674a c18674a) {
            this(set);
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public boolean contains(String str) {
            return this.f104821a.contains(str);
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public String getAny() {
            return this.f104821a.iterator().next();
        }

        public Set<String> getLanguages() {
            return this.f104821a;
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public boolean isEmpty() {
            return this.f104821a.isEmpty();
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public boolean isSingleton() {
            return this.f104821a.size() == 1;
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public LanguageSet merge(LanguageSet languageSet) {
            if (languageSet == Languages.NO_LANGUAGES) {
                return this;
            }
            if (languageSet == Languages.ANY_LANGUAGE) {
                return languageSet;
            }
            HashSet hashSet = new HashSet(this.f104821a);
            Iterator<String> it2 = ((SomeLanguages) languageSet).f104821a.iterator();
            while (it2.hasNext()) {
                hashSet.add(it2.next());
            }
            return LanguageSet.from(hashSet);
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public LanguageSet restrictTo(LanguageSet languageSet) {
            if (languageSet == Languages.NO_LANGUAGES) {
                return languageSet;
            }
            if (languageSet == Languages.ANY_LANGUAGE) {
                return this;
            }
            SomeLanguages someLanguages = (SomeLanguages) languageSet;
            HashSet hashSet = new HashSet(Math.min(this.f104821a.size(), someLanguages.f104821a.size()));
            for (String str : this.f104821a) {
                if (someLanguages.f104821a.contains(str)) {
                    hashSet.add(str);
                }
            }
            return LanguageSet.from(hashSet);
        }

        public String toString() {
            return "Languages(" + this.f104821a.toString() + MotionUtils.f31762d;
        }

        public SomeLanguages(Set<String> set) {
            this.f104821a = Collections.unmodifiableSet(set);
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Languages$a */
    /* loaded from: classes9.dex */
    public static class C18674a extends LanguageSet {
        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public boolean contains(String str) {
            return false;
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public String getAny() {
            throw new NoSuchElementException("Can't fetch any language from the empty language set.");
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public boolean isEmpty() {
            return true;
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public boolean isSingleton() {
            return false;
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public LanguageSet merge(LanguageSet languageSet) {
            return languageSet;
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public LanguageSet restrictTo(LanguageSet languageSet) {
            return this;
        }

        public String toString() {
            return "NO_LANGUAGES";
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Languages$b */
    /* loaded from: classes9.dex */
    public static class C18675b extends LanguageSet {
        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public boolean contains(String str) {
            return true;
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public String getAny() {
            throw new NoSuchElementException("Can't fetch any language from the any language set.");
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public boolean isEmpty() {
            return false;
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public boolean isSingleton() {
            return false;
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public LanguageSet merge(LanguageSet languageSet) {
            return languageSet;
        }

        @Override // org.apache.commons.codec.language.bm.Languages.LanguageSet
        public LanguageSet restrictTo(LanguageSet languageSet) {
            return languageSet;
        }

        public String toString() {
            return "ANY_LANGUAGE";
        }
    }

    static {
        for (NameType nameType : NameType.values()) {
            f104819b.put(nameType, getInstance(m65825a(nameType)));
        }
        NO_LANGUAGES = new C18674a();
        ANY_LANGUAGE = new C18675b();
    }

    public Languages(Set<String> set) {
        this.f104820a = set;
    }

    /* renamed from: a */
    public static String m65825a(NameType nameType) {
        return String.format("org/apache/commons/codec/language/bm/%s_languages.txt", nameType.getName());
    }

    public static Languages getInstance(NameType nameType) {
        return f104819b.get(nameType);
    }

    public Set<String> getLanguages() {
        return this.f104820a;
    }

    public static Languages getInstance(String str) {
        HashSet hashSet = new HashSet();
        Scanner scanner = new Scanner(Resources.getInputStream(str), "UTF-8");
        while (true) {
            boolean z = false;
            while (scanner.hasNextLine()) {
                try {
                    String trim = scanner.nextLine().trim();
                    if (z) {
                        if (trim.endsWith("*/")) {
                            break;
                        }
                    } else if (trim.startsWith("/*")) {
                        z = true;
                    } else if (trim.length() > 0) {
                        hashSet.add(trim);
                    }
                } finally {
                }
            }
            Languages languages = new Languages(Collections.unmodifiableSet(hashSet));
            scanner.close();
            return languages;
        }
    }
}
