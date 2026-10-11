package com.vdurmont.emoji;

import com.vdurmont.emoji.EmojiParser;
import com.vdurmont.emoji.EmojiTrie;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes10.dex */
public class EmojiManager {

    /* renamed from: a */
    public static final String f94446a = "/emojis.json";

    /* renamed from: b */
    public static final Map<String, Emoji> f94447b = new HashMap();

    /* renamed from: c */
    public static final Map<String, Set<Emoji>> f94448c = new HashMap();

    /* renamed from: d */
    public static final List<Emoji> f94449d;

    /* renamed from: e */
    public static final EmojiTrie f94450e;

    /* renamed from: com.vdurmont.emoji.EmojiManager$a */
    /* loaded from: classes10.dex */
    public static class C17025a implements Comparator<Emoji> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Emoji emoji, Emoji emoji2) {
            return emoji2.getUnicode().length() - emoji.getUnicode().length();
        }
    }

    static {
        try {
            InputStream resourceAsStream = EmojiLoader.class.getResourceAsStream(f94446a);
            List<Emoji> loadEmojis = EmojiLoader.loadEmojis(resourceAsStream);
            f94449d = loadEmojis;
            for (Emoji emoji : loadEmojis) {
                for (String str : emoji.getTags()) {
                    Map<String, Set<Emoji>> map = f94448c;
                    if (map.get(str) == null) {
                        map.put(str, new HashSet());
                    }
                    map.get(str).add(emoji);
                }
                Iterator<String> it2 = emoji.getAliases().iterator();
                while (it2.hasNext()) {
                    f94447b.put(it2.next(), emoji);
                }
            }
            f94450e = new EmojiTrie(loadEmojis);
            Collections.sort(f94449d, new C17025a());
            resourceAsStream.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public static String m60829a(String str) {
        int length = str.length();
        int i = str.charAt(0) == ':' ? 1 : 0;
        int i2 = length - 1;
        if (str.charAt(i2) == ':') {
            length = i2;
        }
        return str.substring(i, length);
    }

    public static boolean containsEmoji(String str) {
        return (str == null || EmojiParser.getNextUnicodeCandidate(str.toCharArray(), 0) == null) ? false : true;
    }

    public static Collection<Emoji> getAll() {
        return f94449d;
    }

    public static Collection<String> getAllTags() {
        return f94448c.keySet();
    }

    public static Emoji getByUnicode(String str) {
        if (str == null) {
            return null;
        }
        return f94450e.getEmoji(str);
    }

    public static Emoji getForAlias(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return f94447b.get(m60829a(str));
    }

    public static Set<Emoji> getForTag(String str) {
        if (str == null) {
            return null;
        }
        return f94448c.get(str);
    }

    public static boolean isEmoji(String str) {
        EmojiParser.UnicodeCandidate nextUnicodeCandidate;
        return str != null && (nextUnicodeCandidate = EmojiParser.getNextUnicodeCandidate(str.toCharArray(), 0)) != null && nextUnicodeCandidate.getEmojiStartIndex() == 0 && nextUnicodeCandidate.getFitzpatrickEndIndex() == str.length();
    }

    public static boolean isOnlyEmojis(String str) {
        return str != null && EmojiParser.removeAllEmojis(str).isEmpty();
    }

    public static EmojiTrie.Matches isEmoji(char[] cArr) {
        return f94450e.isEmoji(cArr);
    }
}
