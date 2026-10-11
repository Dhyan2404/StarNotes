package com.vdurmont.emoji;

import com.google.firebase.installations.local.IidStore;
import com.vdurmont.emoji.EmojiTrie;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes10.dex */
public class EmojiParser {

    /* loaded from: classes10.dex */
    public static class AliasCandidate {
        public final Emoji emoji;
        public final int endIndex;
        public final Fitzpatrick fitzpatrick;
        public final int startIndex;

        public /* synthetic */ AliasCandidate(Emoji emoji, Fitzpatrick fitzpatrick, int i, int i2, C17026a c17026a) {
            this(emoji, fitzpatrick, i, i2);
        }

        public AliasCandidate(Emoji emoji, Fitzpatrick fitzpatrick, int i, int i2) {
            this.emoji = emoji;
            this.fitzpatrick = fitzpatrick;
            this.startIndex = i;
            this.endIndex = i2;
        }
    }

    /* loaded from: classes10.dex */
    public interface EmojiTransformer {
        String transform(UnicodeCandidate unicodeCandidate);
    }

    /* loaded from: classes10.dex */
    public enum FitzpatrickAction {
        PARSE,
        REMOVE,
        IGNORE
    }

    /* loaded from: classes10.dex */
    public static class UnicodeCandidate {

        /* renamed from: a */
        public final Emoji f94451a;

        /* renamed from: b */
        public final Fitzpatrick f94452b;

        /* renamed from: c */
        public final int f94453c;

        public /* synthetic */ UnicodeCandidate(Emoji emoji, String str, int i, C17026a c17026a) {
            this(emoji, str, i);
        }

        public Emoji getEmoji() {
            return this.f94451a;
        }

        public int getEmojiEndIndex() {
            return this.f94453c + this.f94451a.getUnicode().length();
        }

        public int getEmojiStartIndex() {
            return this.f94453c;
        }

        public Fitzpatrick getFitzpatrick() {
            return this.f94452b;
        }

        public int getFitzpatrickEndIndex() {
            return getEmojiEndIndex() + (this.f94452b != null ? 2 : 0);
        }

        public String getFitzpatrickType() {
            return hasFitzpatrick() ? this.f94452b.name().toLowerCase() : "";
        }

        public String getFitzpatrickUnicode() {
            return hasFitzpatrick() ? this.f94452b.unicode : "";
        }

        public boolean hasFitzpatrick() {
            return getFitzpatrick() != null;
        }

        public UnicodeCandidate(Emoji emoji, String str, int i) {
            this.f94451a = emoji;
            this.f94452b = Fitzpatrick.fitzpatrickFromUnicode(str);
            this.f94453c = i;
        }
    }

    /* renamed from: com.vdurmont.emoji.EmojiParser$a */
    /* loaded from: classes10.dex */
    public static class C17026a implements EmojiTransformer {

        /* renamed from: a */
        public final /* synthetic */ FitzpatrickAction f94454a;

        public C17026a(FitzpatrickAction fitzpatrickAction) {
            this.f94454a = fitzpatrickAction;
        }

        @Override // com.vdurmont.emoji.EmojiParser.EmojiTransformer
        public String transform(UnicodeCandidate unicodeCandidate) {
            int i = C17033h.f94460a[this.f94454a.ordinal()];
            if (i != 2) {
                if (i == 3) {
                    return ":" + unicodeCandidate.getEmoji().getAliases().get(0) + ":" + unicodeCandidate.getFitzpatrickUnicode();
                }
                if (unicodeCandidate.hasFitzpatrick()) {
                    return ":" + unicodeCandidate.getEmoji().getAliases().get(0) + IidStore.f35940g + unicodeCandidate.getFitzpatrickType() + ":";
                }
            }
            return ":" + unicodeCandidate.getEmoji().getAliases().get(0) + ":";
        }
    }

    /* renamed from: com.vdurmont.emoji.EmojiParser$b */
    /* loaded from: classes10.dex */
    public static class C17027b implements EmojiTransformer {

        /* renamed from: a */
        public final /* synthetic */ String f94455a;

        public C17027b(String str) {
            this.f94455a = str;
        }

        @Override // com.vdurmont.emoji.EmojiParser.EmojiTransformer
        public String transform(UnicodeCandidate unicodeCandidate) {
            return this.f94455a;
        }
    }

    /* renamed from: com.vdurmont.emoji.EmojiParser$c */
    /* loaded from: classes10.dex */
    public static class C17028c implements EmojiTransformer {

        /* renamed from: a */
        public final /* synthetic */ FitzpatrickAction f94456a;

        public C17028c(FitzpatrickAction fitzpatrickAction) {
            this.f94456a = fitzpatrickAction;
        }

        @Override // com.vdurmont.emoji.EmojiParser.EmojiTransformer
        public String transform(UnicodeCandidate unicodeCandidate) {
            if (C17033h.f94460a[this.f94456a.ordinal()] != 3) {
                return unicodeCandidate.getEmoji().getHtmlDecimal();
            }
            return unicodeCandidate.getEmoji().getHtmlDecimal() + unicodeCandidate.getFitzpatrickUnicode();
        }
    }

    /* renamed from: com.vdurmont.emoji.EmojiParser$d */
    /* loaded from: classes10.dex */
    public static class C17029d implements EmojiTransformer {

        /* renamed from: a */
        public final /* synthetic */ FitzpatrickAction f94457a;

        public C17029d(FitzpatrickAction fitzpatrickAction) {
            this.f94457a = fitzpatrickAction;
        }

        @Override // com.vdurmont.emoji.EmojiParser.EmojiTransformer
        public String transform(UnicodeCandidate unicodeCandidate) {
            if (C17033h.f94460a[this.f94457a.ordinal()] != 3) {
                return unicodeCandidate.getEmoji().getHtmlHexadecimal();
            }
            return unicodeCandidate.getEmoji().getHtmlHexadecimal() + unicodeCandidate.getFitzpatrickUnicode();
        }
    }

    /* renamed from: com.vdurmont.emoji.EmojiParser$e */
    /* loaded from: classes10.dex */
    public static class C17030e implements EmojiTransformer {
        @Override // com.vdurmont.emoji.EmojiParser.EmojiTransformer
        public String transform(UnicodeCandidate unicodeCandidate) {
            return "";
        }
    }

    /* renamed from: com.vdurmont.emoji.EmojiParser$f */
    /* loaded from: classes10.dex */
    public static class C17031f implements EmojiTransformer {

        /* renamed from: a */
        public final /* synthetic */ Collection f94458a;

        public C17031f(Collection collection) {
            this.f94458a = collection;
        }

        @Override // com.vdurmont.emoji.EmojiParser.EmojiTransformer
        public String transform(UnicodeCandidate unicodeCandidate) {
            if (this.f94458a.contains(unicodeCandidate.getEmoji())) {
                return "";
            }
            return unicodeCandidate.getEmoji().getUnicode() + unicodeCandidate.getFitzpatrickUnicode();
        }
    }

    /* renamed from: com.vdurmont.emoji.EmojiParser$g */
    /* loaded from: classes10.dex */
    public static class C17032g implements EmojiTransformer {

        /* renamed from: a */
        public final /* synthetic */ Collection f94459a;

        public C17032g(Collection collection) {
            this.f94459a = collection;
        }

        @Override // com.vdurmont.emoji.EmojiParser.EmojiTransformer
        public String transform(UnicodeCandidate unicodeCandidate) {
            if (!this.f94459a.contains(unicodeCandidate.getEmoji())) {
                return "";
            }
            return unicodeCandidate.getEmoji().getUnicode() + unicodeCandidate.getFitzpatrickUnicode();
        }
    }

    /* renamed from: com.vdurmont.emoji.EmojiParser$h */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C17033h {

        /* renamed from: a */
        public static final /* synthetic */ int[] f94460a;

        static {
            int[] iArr = new int[FitzpatrickAction.values().length];
            f94460a = iArr;
            try {
                iArr[FitzpatrickAction.PARSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f94460a[FitzpatrickAction.REMOVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f94460a[FitzpatrickAction.IGNORE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static List<String> extractEmojis(String str) {
        List<UnicodeCandidate> unicodeCandidates = getUnicodeCandidates(str);
        ArrayList arrayList = new ArrayList();
        for (UnicodeCandidate unicodeCandidate : unicodeCandidates) {
            if (unicodeCandidate.getEmoji().supportsFitzpatrick() && unicodeCandidate.hasFitzpatrick()) {
                arrayList.add(unicodeCandidate.getEmoji().getUnicode(unicodeCandidate.getFitzpatrick()));
            } else {
                arrayList.add(unicodeCandidate.getEmoji().getUnicode());
            }
        }
        return arrayList;
    }

    public static AliasCandidate getAliasAt(String str, int i) {
        int indexOf;
        int i2 = i + 2;
        if (str.length() < i2 || str.charAt(i) != ':' || (indexOf = str.indexOf(58, i2)) == -1) {
            return null;
        }
        int indexOf2 = str.indexOf(124, i2);
        if (indexOf2 == -1 || indexOf2 >= indexOf) {
            Emoji forAlias = EmojiManager.getForAlias(str.substring(i, indexOf));
            if (forAlias == null) {
                return null;
            }
            return new AliasCandidate(forAlias, null, i, indexOf, null);
        }
        Emoji forAlias2 = EmojiManager.getForAlias(str.substring(i, indexOf2));
        if (forAlias2 != null && forAlias2.supportsFitzpatrick()) {
            return new AliasCandidate(forAlias2, Fitzpatrick.fitzpatrickFromType(str.substring(indexOf2 + 1, indexOf)), i, indexOf, null);
        }
        return null;
    }

    public static int getEmojiEndPos(char[] cArr, int i) {
        int i2 = -1;
        for (int i3 = i + 1; i3 <= cArr.length; i3++) {
            EmojiTrie.Matches isEmoji = EmojiManager.f94450e.isEmoji(cArr, i, i3);
            if (isEmoji.exactMatch()) {
                i2 = i3;
            } else if (isEmoji.impossibleMatch()) {
                return i2;
            }
        }
        return i2;
    }

    public static AliasCandidate getHtmlEncodedEmojiAt(String str, int i) {
        if (str.length() < i + 4 || str.charAt(i) != '&' || str.charAt(i + 1) != '#') {
            return null;
        }
        int i2 = EmojiManager.f94450e.f94462b;
        char[] cArr = new char[i2];
        int i3 = i;
        Emoji emoji = null;
        int i4 = -1;
        int i5 = 0;
        while (true) {
            int indexOf = str.indexOf(59, i3 + 3);
            if (indexOf == -1) {
                break;
            }
            int i6 = i3 + 2;
            try {
                int i7 = str.charAt(i6) == 'x' ? 16 : 10;
                i5 += Character.toChars(Integer.parseInt(str.substring(i6 + (i7 / 16), indexOf), i7), cArr, i5);
                EmojiTrie emojiTrie = EmojiManager.f94450e;
                Emoji m60831a = emojiTrie.m60831a(cArr, 0, i5);
                if (m60831a != null) {
                    i4 = indexOf;
                    emoji = m60831a;
                }
                int i8 = indexOf + 1;
                if (str.length() <= i8 + 4 || str.charAt(i8) != '&' || str.charAt(i8 + 1) != '#' || i5 >= i2 || emojiTrie.isEmoji(cArr, 0, i5).impossibleMatch()) {
                    break;
                }
                i3 = i8;
            } catch (NumberFormatException | IllegalArgumentException unused) {
            }
        }
        Emoji emoji2 = emoji;
        int i9 = i4;
        if (emoji2 == null) {
            return null;
        }
        return new AliasCandidate(emoji2, null, i, i9, null);
    }

    public static UnicodeCandidate getNextUnicodeCandidate(char[] cArr, int i) {
        while (true) {
            C17026a c17026a = null;
            if (i >= cArr.length) {
                return null;
            }
            int emojiEndPos = getEmojiEndPos(cArr, i);
            if (emojiEndPos != -1) {
                return new UnicodeCandidate(EmojiManager.getByUnicode(new String(cArr, i, emojiEndPos - i)), emojiEndPos + 2 <= cArr.length ? new String(cArr, emojiEndPos, 2) : null, i, c17026a);
            }
            i++;
        }
    }

    public static List<UnicodeCandidate> getUnicodeCandidates(String str) {
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            UnicodeCandidate nextUnicodeCandidate = getNextUnicodeCandidate(charArray, i);
            if (nextUnicodeCandidate == null) {
                return arrayList;
            }
            arrayList.add(nextUnicodeCandidate);
            i = nextUnicodeCandidate.getFitzpatrickEndIndex();
        }
    }

    public static String parseFromUnicode(String str, EmojiTransformer emojiTransformer) {
        StringBuilder sb = new StringBuilder(str.length());
        int i = 0;
        for (UnicodeCandidate unicodeCandidate : getUnicodeCandidates(str)) {
            sb.append((CharSequence) str, i, unicodeCandidate.getEmojiStartIndex());
            sb.append(emojiTransformer.transform(unicodeCandidate));
            i = unicodeCandidate.getFitzpatrickEndIndex();
        }
        sb.append(str.substring(i));
        return sb.toString();
    }

    public static String parseToAliases(String str) {
        return parseToAliases(str, FitzpatrickAction.PARSE);
    }

    public static String parseToHtmlDecimal(String str) {
        return parseToHtmlDecimal(str, FitzpatrickAction.PARSE);
    }

    public static String parseToHtmlHexadecimal(String str) {
        return parseToHtmlHexadecimal(str, FitzpatrickAction.PARSE);
    }

    public static String parseToUnicode(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        int i = 0;
        while (i < str.length()) {
            AliasCandidate aliasAt = getAliasAt(str, i);
            if (aliasAt == null) {
                aliasAt = getHtmlEncodedEmojiAt(str, i);
            }
            if (aliasAt != null) {
                sb.append(aliasAt.emoji.getUnicode());
                i = aliasAt.endIndex;
                Fitzpatrick fitzpatrick = aliasAt.fitzpatrick;
                if (fitzpatrick != null) {
                    sb.append(fitzpatrick.unicode);
                }
            } else {
                sb.append(str.charAt(i));
            }
            i++;
        }
        return sb.toString();
    }

    public static String removeAllEmojis(String str) {
        return parseFromUnicode(str, new C17030e());
    }

    public static String removeAllEmojisExcept(String str, Collection<Emoji> collection) {
        return parseFromUnicode(str, new C17032g(collection));
    }

    public static String removeEmojis(String str, Collection<Emoji> collection) {
        return parseFromUnicode(str, new C17031f(collection));
    }

    public static String replaceAllEmojis(String str, String str2) {
        return parseFromUnicode(str, new C17027b(str2));
    }

    public static String parseToAliases(String str, FitzpatrickAction fitzpatrickAction) {
        return parseFromUnicode(str, new C17026a(fitzpatrickAction));
    }

    public static String parseToHtmlDecimal(String str, FitzpatrickAction fitzpatrickAction) {
        return parseFromUnicode(str, new C17028c(fitzpatrickAction));
    }

    public static String parseToHtmlHexadecimal(String str, FitzpatrickAction fitzpatrickAction) {
        return parseFromUnicode(str, new C17029d(fitzpatrickAction));
    }
}
