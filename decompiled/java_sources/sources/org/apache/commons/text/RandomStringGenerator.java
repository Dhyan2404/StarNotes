package org.apache.commons.text;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ThreadLocalRandom;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public final class RandomStringGenerator {

    /* renamed from: a */
    public final int f109945a;

    /* renamed from: b */
    public final int f109946b;

    /* renamed from: c */
    public final Set<CharacterPredicate> f109947c;

    /* renamed from: d */
    public final TextRandomProvider f109948d;

    /* renamed from: e */
    public final List<Character> f109949e;

    /* loaded from: classes12.dex */
    public static class Builder implements org.apache.commons.text.Builder<RandomStringGenerator> {
        public static final int DEFAULT_LENGTH = 0;
        public static final int DEFAULT_MAXIMUM_CODE_POINT = 1114111;
        public static final int DEFAULT_MINIMUM_CODE_POINT = 0;

        /* renamed from: e */
        public int f109950e = 0;

        /* renamed from: f */
        public int f109951f = 1114111;

        /* renamed from: g */
        public Set<CharacterPredicate> f109952g;

        /* renamed from: h */
        public TextRandomProvider f109953h;

        /* renamed from: i */
        public List<Character> f109954i;

        public Builder filteredBy(CharacterPredicate... characterPredicateArr) {
            if (characterPredicateArr == null || characterPredicateArr.length == 0) {
                this.f109952g = null;
                return this;
            }
            Set<CharacterPredicate> set = this.f109952g;
            if (set == null) {
                this.f109952g = new HashSet();
            } else {
                set.clear();
            }
            Collections.addAll(this.f109952g, characterPredicateArr);
            return this;
        }

        public Builder selectFrom(char... cArr) {
            this.f109954i = new ArrayList();
            for (char c : cArr) {
                this.f109954i.add(Character.valueOf(c));
            }
            return this;
        }

        public Builder usingRandom(TextRandomProvider textRandomProvider) {
            this.f109953h = textRandomProvider;
            return this;
        }

        public Builder withinRange(int i, int i2) {
            Validate.isTrue(i <= i2, "Minimum code point %d is larger than maximum code point %d", Integer.valueOf(i), Integer.valueOf(i2));
            Validate.isTrue(i >= 0, "Minimum code point %d is negative", i);
            Validate.isTrue(i2 <= 1114111, "Value %d is larger than Character.MAX_CODE_POINT.", i2);
            this.f109950e = i;
            this.f109951f = i2;
            return this;
        }

        @Override // org.apache.commons.text.Builder
        public RandomStringGenerator build() {
            return new RandomStringGenerator(this.f109950e, this.f109951f, this.f109952g, this.f109953h, this.f109954i);
        }

        public Builder withinRange(char[]... cArr) {
            this.f109954i = new ArrayList();
            for (char[] cArr2 : cArr) {
                Validate.isTrue(cArr2.length == 2, "Each pair must contain minimum and maximum code point", new Object[0]);
                char c = cArr2[0];
                char c2 = cArr2[1];
                Validate.isTrue(c <= c2, "Minimum code point %d is larger than maximum code point %d", Integer.valueOf(c), Integer.valueOf(c2));
                for (int i = c; i <= c2; i++) {
                    this.f109954i.add(Character.valueOf((char) i));
                }
            }
            return this;
        }
    }

    /* renamed from: a */
    public final int m68239a(int i, int i2) {
        TextRandomProvider textRandomProvider = this.f109948d;
        return textRandomProvider != null ? textRandomProvider.nextInt((i2 - i) + 1) + i : ThreadLocalRandom.current().nextInt(i, i2 + 1);
    }

    /* renamed from: b */
    public final int m68240b(List<Character> list) {
        int size = list.size();
        TextRandomProvider textRandomProvider = this.f109948d;
        return textRandomProvider != null ? String.valueOf(list.get(textRandomProvider.nextInt(size))).codePointAt(0) : String.valueOf(list.get(ThreadLocalRandom.current().nextInt(0, size))).codePointAt(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005b, code lost:
    
        if (r5 == false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String generate(int r8) {
        /*
            r7 = this;
            if (r8 != 0) goto L5
            java.lang.String r7 = ""
            return r7
        L5:
            r0 = 1
            r1 = 0
            if (r8 <= 0) goto Lb
            r2 = r0
            goto Lc
        Lb:
            r2 = r1
        Lc:
            long r3 = (long) r8
            java.lang.String r5 = "Length %d is smaller than zero."
            org.apache.commons.lang3.Validate.isTrue(r2, r5, r3)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r8)
        L17:
            java.util.List<java.lang.Character> r8 = r7.f109949e
            if (r8 == 0) goto L28
            boolean r8 = r8.isEmpty()
            if (r8 != 0) goto L28
            java.util.List<java.lang.Character> r8 = r7.f109949e
            int r8 = r7.m68240b(r8)
            goto L30
        L28:
            int r8 = r7.f109945a
            int r5 = r7.f109946b
            int r8 = r7.m68239a(r8, r5)
        L30:
            int r5 = java.lang.Character.getType(r8)
            if (r5 == 0) goto L64
            r6 = 18
            if (r5 == r6) goto L64
            r6 = 19
            if (r5 == r6) goto L64
            java.util.Set<org.apache.commons.text.CharacterPredicate> r5 = r7.f109947c
            if (r5 == 0) goto L5e
            java.util.Iterator r5 = r5.iterator()
        L46:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L5a
            java.lang.Object r6 = r5.next()
            org.apache.commons.text.CharacterPredicate r6 = (org.apache.commons.text.CharacterPredicate) r6
            boolean r6 = r6.test(r8)
            if (r6 == 0) goto L46
            r5 = r0
            goto L5b
        L5a:
            r5 = r1
        L5b:
            if (r5 != 0) goto L5e
            goto L64
        L5e:
            r2.appendCodePoint(r8)
            r5 = 1
            long r3 = r3 - r5
        L64:
            r5 = 0
            int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r8 != 0) goto L17
            java.lang.String r7 = r2.toString()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.text.RandomStringGenerator.generate(int):java.lang.String");
    }

    public RandomStringGenerator(int i, int i2, Set<CharacterPredicate> set, TextRandomProvider textRandomProvider, List<Character> list) {
        this.f109945a = i;
        this.f109946b = i2;
        this.f109947c = set;
        this.f109948d = textRandomProvider;
        this.f109949e = list;
    }

    public String generate(int i, int i2) {
        Validate.isTrue(i >= 0, "Minimum length %d is smaller than zero.", i);
        Validate.isTrue(i <= i2, "Maximum length %d is smaller than minimum length %d.", Integer.valueOf(i2), Integer.valueOf(i));
        return generate(m68239a(i, i2));
    }
}
