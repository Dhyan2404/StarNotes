package org.apache.commons.codec.language.bm;

import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.apache.commons.codec.language.bm.Languages;

/* loaded from: classes9.dex */
public class Lang {

    /* renamed from: c */
    public static final Map<NameType, Lang> f104812c = new EnumMap(NameType.class);

    /* renamed from: d */
    public static final String f104813d = "org/apache/commons/codec/language/bm/%s_lang.txt";

    /* renamed from: a */
    public final Languages f104814a;

    /* renamed from: b */
    public final List<C18673b> f104815b;

    /* renamed from: org.apache.commons.codec.language.bm.Lang$b */
    /* loaded from: classes9.dex */
    public static final class C18673b {

        /* renamed from: a */
        public final boolean f104816a;

        /* renamed from: b */
        public final Set<String> f104817b;

        /* renamed from: c */
        public final Pattern f104818c;

        /* renamed from: c */
        public boolean m65824c(String str) {
            return this.f104818c.matcher(str).find();
        }

        public C18673b(Pattern pattern, Set<String> set, boolean z) {
            this.f104818c = pattern;
            this.f104817b = set;
            this.f104816a = z;
        }
    }

    static {
        for (NameType nameType : NameType.values()) {
            f104812c.put(nameType, loadFromResource(String.format(f104813d, nameType.getName()), Languages.getInstance(nameType)));
        }
    }

    public Lang(List<C18673b> list, Languages languages) {
        this.f104815b = Collections.unmodifiableList(list);
        this.f104814a = languages;
    }

    public static Lang instance(NameType nameType) {
        return f104812c.get(nameType);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a2, code lost:
    
        throw new java.lang.IllegalArgumentException("Malformed line '" + r4 + "' in language resource '" + r9 + com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants.SINGLE_QUOTES);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.commons.codec.language.bm.Lang loadFromResource(java.lang.String r9, org.apache.commons.codec.language.bm.Languages r10) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Scanner r1 = new java.util.Scanner
            java.io.InputStream r2 = org.apache.commons.codec.Resources.getInputStream(r9)
            java.lang.String r3 = "UTF-8"
            r1.<init>(r2, r3)
            r2 = 0
        L11:
            r3 = r2
        L12:
            boolean r4 = r1.hasNextLine()     // Catch: java.lang.Throwable -> Lac
            if (r4 == 0) goto La3
            java.lang.String r4 = r1.nextLine()     // Catch: java.lang.Throwable -> Lac
            if (r3 == 0) goto L27
        */
        //  java.lang.String r5 = "*/"
        /*
            boolean r4 = r4.endsWith(r5)     // Catch: java.lang.Throwable -> Lac
            if (r4 == 0) goto L12
            goto L11
        L27:
            java.lang.String r5 = "/*"
            boolean r5 = r4.startsWith(r5)     // Catch: java.lang.Throwable -> Lac
            r6 = 1
            if (r5 == 0) goto L32
            r3 = r6
            goto L12
        L32:
            java.lang.String r5 = "//"
            int r5 = r4.indexOf(r5)     // Catch: java.lang.Throwable -> Lac
            if (r5 < 0) goto L3f
            java.lang.String r5 = r4.substring(r2, r5)     // Catch: java.lang.Throwable -> Lac
            goto L40
        L3f:
            r5 = r4
        L40:
            java.lang.String r5 = r5.trim()     // Catch: java.lang.Throwable -> Lac
            int r7 = r5.length()     // Catch: java.lang.Throwable -> Lac
            if (r7 != 0) goto L4b
            goto L12
        L4b:
            java.lang.String r7 = "\\s+"
            java.lang.String[] r5 = r5.split(r7)     // Catch: java.lang.Throwable -> Lac
            int r7 = r5.length     // Catch: java.lang.Throwable -> Lac
            r8 = 3
            if (r7 != r8) goto L7f
            r4 = r5[r2]     // Catch: java.lang.Throwable -> Lac
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4)     // Catch: java.lang.Throwable -> Lac
            r6 = r5[r6]     // Catch: java.lang.Throwable -> Lac
            java.lang.String r7 = "\\+"
            java.lang.String[] r6 = r6.split(r7)     // Catch: java.lang.Throwable -> Lac
            r7 = 2
            r5 = r5[r7]     // Catch: java.lang.Throwable -> Lac
            java.lang.String r7 = "true"
            boolean r5 = r5.equals(r7)     // Catch: java.lang.Throwable -> Lac
            org.apache.commons.codec.language.bm.Lang$b r7 = new org.apache.commons.codec.language.bm.Lang$b     // Catch: java.lang.Throwable -> Lac
            java.util.HashSet r8 = new java.util.HashSet     // Catch: java.lang.Throwable -> Lac
            java.util.List r6 = java.util.Arrays.asList(r6)     // Catch: java.lang.Throwable -> Lac
            r8.<init>(r6)     // Catch: java.lang.Throwable -> Lac
            r6 = 0
            r7.<init>(r4, r8, r5)     // Catch: java.lang.Throwable -> Lac
            r0.add(r7)     // Catch: java.lang.Throwable -> Lac
            goto L12
        L7f:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> Lac
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lac
            r0.<init>()     // Catch: java.lang.Throwable -> Lac
            java.lang.String r2 = "Malformed line '"
            r0.append(r2)     // Catch: java.lang.Throwable -> Lac
            r0.append(r4)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r2 = "' in language resource '"
            r0.append(r2)     // Catch: java.lang.Throwable -> Lac
            r0.append(r9)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r9 = "'"
            r0.append(r9)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r9 = r0.toString()     // Catch: java.lang.Throwable -> Lac
            r10.<init>(r9)     // Catch: java.lang.Throwable -> Lac
            throw r10     // Catch: java.lang.Throwable -> Lac
        La3:
            r1.close()
            org.apache.commons.codec.language.bm.Lang r9 = new org.apache.commons.codec.language.bm.Lang
            r9.<init>(r0, r10)
            return r9
        Lac:
            r9 = move-exception
            throw r9     // Catch: java.lang.Throwable -> Lae
        Lae:
            r10 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> Lb3
            goto Lb7
        Lb3:
            r0 = move-exception
            r9.addSuppressed(r0)
        Lb7:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.codec.language.bm.Lang.loadFromResource(java.lang.String, org.apache.commons.codec.language.bm.Languages):org.apache.commons.codec.language.bm.Lang");
    }

    public String guessLanguage(String str) {
        Languages.LanguageSet guessLanguages = guessLanguages(str);
        return guessLanguages.isSingleton() ? guessLanguages.getAny() : "any";
    }

    public Languages.LanguageSet guessLanguages(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        HashSet hashSet = new HashSet(this.f104814a.getLanguages());
        for (C18673b c18673b : this.f104815b) {
            if (c18673b.m65824c(lowerCase)) {
                if (c18673b.f104816a) {
                    hashSet.retainAll(c18673b.f104817b);
                } else {
                    hashSet.removeAll(c18673b.f104817b);
                }
            }
        }
        Languages.LanguageSet from = Languages.LanguageSet.from(hashSet);
        return from.equals(Languages.NO_LANGUAGES) ? Languages.ANY_LANGUAGE : from;
    }
}
