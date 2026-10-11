package org.jsoup.nodes;

import com.sunia.HTREnginev2.syo;
import java.io.IOException;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.HashMap;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.parser.CharacterReader;
import org.jsoup.parser.Parser;

/* loaded from: classes13.dex */
public class Entities {

    /* renamed from: a */
    public static final int f114084a = -1;

    /* renamed from: b */
    public static final String f114085b = "";

    /* renamed from: c */
    public static final int f114086c = 36;

    /* renamed from: d */
    public static final char[] f114087d = {',', ';'};

    /* renamed from: e */
    public static final HashMap<String, String> f114088e = new HashMap<>();

    /* renamed from: f */
    public static final Document.OutputSettings f114089f = new Document.OutputSettings();

    /* loaded from: classes13.dex */
    public enum EscapeMode {
        xhtml(syo.f84697a, 4),
        base(syo.f84698b, 106),
        extended(syo.f84699c, 2125),
        user(syo.f84700d, 5);


        /* renamed from: a */
        private String[] f114091a;

        /* renamed from: b */
        private int[] f114092b;

        /* renamed from: c */
        private int[] f114093c;

        /* renamed from: d */
        private String[] f114094d;

        EscapeMode(String str, int i) {
            Entities.m71144b(this, str, i);
        }

        /* renamed from: a */
        private int m71149a() {
            return this.f114091a.length;
        }

        public int codepointForName(String str) {
            int binarySearch = Arrays.binarySearch(this.f114091a, str);
            if (binarySearch >= 0) {
                return this.f114092b[binarySearch];
            }
            return -1;
        }

        public String nameForCodepoint(int i) {
            int binarySearch = Arrays.binarySearch(this.f114093c, i);
            if (binarySearch < 0) {
                return "";
            }
            String[] strArr = this.f114094d;
            if (binarySearch < strArr.length - 1) {
                int i2 = binarySearch + 1;
                if (this.f114093c[i2] == i) {
                    return strArr[i2];
                }
            }
            return strArr[binarySearch];
        }
    }

    /* renamed from: org.jsoup.nodes.Entities$a */
    /* loaded from: classes13.dex */
    public enum EnumC20250a {
        ascii,
        utf,
        fallback;

        /* renamed from: b */
        public static EnumC20250a m71152b(String str) {
            return str.equals("US-ASCII") ? ascii : str.startsWith("UTF-") ? utf : fallback;
        }
    }

    /* renamed from: a */
    public static void m71143a(Appendable appendable, EscapeMode escapeMode, int i) throws IOException {
        Appendable append;
        String nameForCodepoint = escapeMode.nameForCodepoint(i);
        if ("".equals(nameForCodepoint)) {
            append = appendable.append("&#x");
            nameForCodepoint = Integer.toHexString(i);
        } else {
            append = appendable.append('&');
        }
        append.append(nameForCodepoint).append(';');
    }

    /* renamed from: b */
    public static void m71144b(EscapeMode escapeMode, String str, int i) {
        int i2;
        escapeMode.f114091a = new String[i];
        escapeMode.f114092b = new int[i];
        escapeMode.f114093c = new int[i];
        escapeMode.f114094d = new String[i];
        CharacterReader characterReader = new CharacterReader(str);
        int i3 = 0;
        while (!characterReader.isEmpty()) {
            String consumeTo = characterReader.consumeTo('=');
            characterReader.advance();
            int parseInt = Integer.parseInt(characterReader.consumeToAny(f114087d), 36);
            char current = characterReader.current();
            characterReader.advance();
            if (current == ',') {
                i2 = Integer.parseInt(characterReader.consumeTo(';'), 36);
                characterReader.advance();
            } else {
                i2 = -1;
            }
            int parseInt2 = Integer.parseInt(characterReader.consumeTo('&'), 36);
            characterReader.advance();
            escapeMode.f114091a[i3] = consumeTo;
            escapeMode.f114092b[i3] = parseInt;
            escapeMode.f114093c[parseInt2] = parseInt;
            escapeMode.f114094d[parseInt2] = consumeTo;
            if (i2 != -1) {
                f114088e.put(consumeTo, new String(new int[]{parseInt, i2}, 0, 2));
            }
            i3++;
        }
        Validate.isTrue(i3 == i, "Unexpected count of entities loaded");
    }

    /* renamed from: c */
    public static boolean m71145c(EnumC20250a enumC20250a, char c, CharsetEncoder charsetEncoder) {
        int i = C20255d.f114117a[enumC20250a.ordinal()];
        if (i == 1) {
            return c < 128;
        }
        if (i != 2) {
            return charsetEncoder.canEncode(c);
        }
        return true;
    }

    public static int codepointsForName(String str, int[] iArr) {
        String str2 = f114088e.get(str);
        if (str2 != null) {
            iArr[0] = str2.codePointAt(0);
            iArr[1] = str2.codePointAt(1);
            return 2;
        }
        int codepointForName = EscapeMode.extended.codepointForName(str);
        if (codepointForName != -1) {
            iArr[0] = codepointForName;
            return 1;
        }
        int codepointForName2 = EscapeMode.user.codepointForName(str);
        if (codepointForName2 == -1) {
            return 0;
        }
        iArr[0] = codepointForName2;
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0050, code lost:
    
        if (m71145c(r12, r8, r1) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0053, code lost:
    
        m71143a(r10, r0, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008b, code lost:
    
        if (r1.canEncode(r8) != false) goto L41;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m71147e(java.lang.Appendable r10, java.lang.String r11, org.jsoup.nodes.Document.OutputSettings r12, boolean r13, boolean r14, boolean r15) throws java.io.IOException {
        /*
            org.jsoup.nodes.Entities$EscapeMode r0 = r12.escapeMode()
            java.nio.charset.CharsetEncoder r1 = r12.m71121a()
            org.jsoup.nodes.Entities$a r12 = r12.f114065h
            int r2 = r11.length()
            r3 = 0
            r4 = r3
            r5 = r4
            r6 = r5
        L12:
            if (r4 >= r2) goto L95
            int r7 = r11.codePointAt(r4)
            if (r14 == 0) goto L33
            boolean r8 = org.jsoup.internal.StringUtil.isWhitespace(r7)
            r9 = 1
            if (r8 == 0) goto L31
            if (r15 == 0) goto L25
            if (r5 == 0) goto L8e
        L25:
            if (r6 == 0) goto L29
            goto L8e
        L29:
            r6 = 32
            r10.append(r6)
            r6 = r9
            goto L8e
        L31:
            r6 = r3
            r5 = r9
        L33:
            r8 = 65536(0x10000, float:9.18355E-41)
            if (r7 >= r8) goto L7e
            char r8 = (char) r7
            r9 = 34
            if (r8 == r9) goto L75
            r9 = 38
            if (r8 == r9) goto L6f
            r9 = 60
            if (r8 == r9) goto L66
            r9 = 62
            if (r8 == r9) goto L61
            r9 = 160(0xa0, float:2.24E-43)
            if (r8 == r9) goto L57
            boolean r9 = m71145c(r12, r8, r1)
            if (r9 == 0) goto L53
            goto L7a
        L53:
            m71143a(r10, r0, r7)
            goto L8e
        L57:
            org.jsoup.nodes.Entities$EscapeMode r8 = org.jsoup.nodes.Entities.EscapeMode.xhtml
            if (r0 == r8) goto L5e
            java.lang.String r8 = "&nbsp;"
            goto L71
        L5e:
            java.lang.String r8 = "&#xa0;"
            goto L71
        L61:
            if (r13 != 0) goto L7a
            java.lang.String r8 = "&gt;"
            goto L71
        L66:
            if (r13 == 0) goto L6c
            org.jsoup.nodes.Entities$EscapeMode r9 = org.jsoup.nodes.Entities.EscapeMode.xhtml
            if (r0 != r9) goto L7a
        L6c:
            java.lang.String r8 = "&lt;"
            goto L71
        L6f:
            java.lang.String r8 = "&amp;"
        L71:
            r10.append(r8)
            goto L8e
        L75:
            if (r13 == 0) goto L7a
            java.lang.String r8 = "&quot;"
            goto L71
        L7a:
            r10.append(r8)
            goto L8e
        L7e:
            java.lang.String r8 = new java.lang.String
            char[] r9 = java.lang.Character.toChars(r7)
            r8.<init>(r9)
            boolean r9 = r1.canEncode(r8)
            if (r9 == 0) goto L53
            goto L71
        L8e:
            int r7 = java.lang.Character.charCount(r7)
            int r4 = r4 + r7
            goto L12
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.Entities.m71147e(java.lang.Appendable, java.lang.String, org.jsoup.nodes.Document$OutputSettings, boolean, boolean, boolean):void");
    }

    public static String escape(String str) {
        return escape(str, f114089f);
    }

    /* renamed from: f */
    public static String m71148f(String str, boolean z) {
        return Parser.unescapeEntities(str, z);
    }

    public static String getByName(String str) {
        String str2 = f114088e.get(str);
        if (str2 != null) {
            return str2;
        }
        int codepointForName = EscapeMode.extended.codepointForName(str);
        if (codepointForName != -1) {
            return new String(new int[]{codepointForName}, 0, 1);
        }
        int codepointForName2 = EscapeMode.user.codepointForName(str);
        return codepointForName2 != -1 ? new String(new int[]{codepointForName2}, 0, 1) : "";
    }

    public static boolean isBaseNamedEntity(String str) {
        return EscapeMode.base.codepointForName(str) != -1;
    }

    public static boolean isNamedEntity(String str) {
        return EscapeMode.extended.codepointForName(str) != -1;
    }

    public static boolean isUserNamedEntity(String str) {
        return EscapeMode.user.codepointForName(str) != -1;
    }

    public static String unescape(String str) {
        return m71148f(str, false);
    }

    public static String escape(String str, Document.OutputSettings outputSettings) {
        if (str == null) {
            return "";
        }
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        try {
            m71147e(borrowBuilder, str, outputSettings, false, false, false);
            return StringUtil.releaseBuilder(borrowBuilder);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }
}
