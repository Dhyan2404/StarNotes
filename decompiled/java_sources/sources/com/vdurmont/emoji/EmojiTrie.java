package com.vdurmont.emoji;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public class EmojiTrie {

    /* renamed from: a */
    public final C17035b f94461a = new C17035b();

    /* renamed from: b */
    public final int f94462b;

    /* loaded from: classes10.dex */
    public enum Matches {
        EXACTLY,
        POSSIBLY,
        IMPOSSIBLE;

        public boolean exactMatch() {
            return this == EXACTLY;
        }

        public boolean impossibleMatch() {
            return this == IMPOSSIBLE;
        }
    }

    /* renamed from: com.vdurmont.emoji.EmojiTrie$b */
    /* loaded from: classes10.dex */
    public class C17035b {

        /* renamed from: a */
        public Map<Character, C17035b> f94463a;

        /* renamed from: b */
        public Emoji f94464b;

        public C17035b() {
            this.f94463a = new HashMap();
        }

        /* renamed from: g */
        public final void m60838g(char c) {
            this.f94463a.put(Character.valueOf(c), new C17035b());
        }

        /* renamed from: h */
        public final C17035b m60839h(char c) {
            return this.f94463a.get(Character.valueOf(c));
        }

        /* renamed from: i */
        public final Emoji m60840i() {
            return this.f94464b;
        }

        /* renamed from: j */
        public final boolean m60841j(char c) {
            return this.f94463a.containsKey(Character.valueOf(c));
        }

        /* renamed from: k */
        public final boolean m60842k() {
            return this.f94464b != null;
        }

        /* renamed from: l */
        public final void m60843l(Emoji emoji) {
            this.f94464b = emoji;
        }
    }

    public EmojiTrie(Collection<Emoji> collection) {
        int i = 0;
        for (Emoji emoji : collection) {
            C17035b c17035b = this.f94461a;
            char[] charArray = emoji.getUnicode().toCharArray();
            i = Math.max(i, charArray.length);
            for (char c : charArray) {
                if (!c17035b.m60841j(c)) {
                    c17035b.m60838g(c);
                }
                c17035b = c17035b.m60839h(c);
            }
            c17035b.m60843l(emoji);
        }
        this.f94462b = i;
    }

    /* renamed from: a */
    public Emoji m60831a(char[] cArr, int i, int i2) {
        if (i < 0 || i > i2 || i2 > cArr.length) {
            throw new ArrayIndexOutOfBoundsException("start " + i + ", end " + i2 + ", length " + cArr.length);
        }
        C17035b c17035b = this.f94461a;
        for (int i3 = 0; i3 < i2; i3++) {
            if (!c17035b.m60841j(cArr[i3])) {
                return null;
            }
            c17035b = c17035b.m60839h(cArr[i3]);
        }
        return c17035b.m60840i();
    }

    public Emoji getEmoji(String str) {
        return m60831a(str.toCharArray(), 0, str.length());
    }

    public Matches isEmoji(char[] cArr) {
        return isEmoji(cArr, 0, cArr.length);
    }

    public Matches isEmoji(char[] cArr, int i, int i2) {
        if (i >= 0 && i <= i2 && i2 <= cArr.length) {
            C17035b c17035b = this.f94461a;
            while (i < i2) {
                if (!c17035b.m60841j(cArr[i])) {
                    return Matches.IMPOSSIBLE;
                }
                c17035b = c17035b.m60839h(cArr[i]);
                i++;
            }
            return c17035b.m60842k() ? Matches.EXACTLY : Matches.POSSIBLY;
        }
        throw new ArrayIndexOutOfBoundsException("start " + i + ", end " + i2 + ", length " + cArr.length);
    }
}
