package org.apache.http.client.utils;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.entity.ContentType;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes12.dex */
public class URLEncodedUtils {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";

    /* renamed from: a */
    public static final char f110228a = '&';

    /* renamed from: b */
    public static final char f110229b = ';';

    /* renamed from: c */
    public static final String f110230c = "=";

    /* renamed from: d */
    public static final char f110231d = '/';

    /* renamed from: e */
    public static final BitSet f110232e;

    /* renamed from: f */
    public static final BitSet f110233f;

    /* renamed from: g */
    public static final BitSet f110234g;

    /* renamed from: h */
    public static final BitSet f110235h;

    /* renamed from: i */
    public static final BitSet f110236i;

    /* renamed from: j */
    public static final BitSet f110237j;

    /* renamed from: k */
    public static final BitSet f110238k;

    /* renamed from: l */
    public static final BitSet f110239l;

    /* renamed from: m */
    public static final BitSet f110240m;

    /* renamed from: n */
    public static final int f110241n = 16;

    static {
        BitSet bitSet = new BitSet(256);
        f110232e = bitSet;
        bitSet.set(47);
        f110233f = new BitSet(256);
        f110234g = new BitSet(256);
        f110235h = new BitSet(256);
        f110236i = new BitSet(256);
        f110237j = new BitSet(256);
        f110238k = new BitSet(256);
        f110239l = new BitSet(256);
        f110240m = new BitSet(256);
        for (int i = 97; i <= 122; i++) {
            f110233f.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            f110233f.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            f110233f.set(i3);
        }
        BitSet bitSet2 = f110233f;
        bitSet2.set(95);
        bitSet2.set(45);
        bitSet2.set(46);
        bitSet2.set(42);
        f110239l.or(bitSet2);
        bitSet2.set(33);
        bitSet2.set(126);
        bitSet2.set(39);
        bitSet2.set(40);
        bitSet2.set(41);
        BitSet bitSet3 = f110234g;
        bitSet3.set(44);
        bitSet3.set(59);
        bitSet3.set(58);
        bitSet3.set(36);
        bitSet3.set(38);
        bitSet3.set(43);
        bitSet3.set(61);
        BitSet bitSet4 = f110235h;
        bitSet4.or(bitSet2);
        bitSet4.or(bitSet3);
        BitSet bitSet5 = f110236i;
        bitSet5.or(bitSet2);
        bitSet5.set(59);
        bitSet5.set(58);
        bitSet5.set(64);
        bitSet5.set(38);
        bitSet5.set(61);
        bitSet5.set(43);
        bitSet5.set(36);
        bitSet5.set(44);
        BitSet bitSet6 = f110240m;
        bitSet6.or(bitSet5);
        bitSet6.set(47);
        BitSet bitSet7 = f110238k;
        bitSet7.set(59);
        bitSet7.set(47);
        bitSet7.set(63);
        bitSet7.set(58);
        bitSet7.set(64);
        bitSet7.set(38);
        bitSet7.set(61);
        bitSet7.set(43);
        bitSet7.set(36);
        bitSet7.set(44);
        bitSet7.set(91);
        bitSet7.set(93);
        BitSet bitSet8 = f110237j;
        bitSet8.or(bitSet7);
        bitSet8.or(bitSet2);
    }

    /* renamed from: a */
    public static List<NameValuePair> m68314a() {
        return new ArrayList(0);
    }

    /* renamed from: b */
    public static String m68315b(String str, String str2) {
        if (str == null) {
            return null;
        }
        return m68324k(str, str2 != null ? Charset.forName(str2) : Consts.UTF_8, true);
    }

    /* renamed from: c */
    public static String m68316c(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return m68324k(str, charset, true);
    }

    /* renamed from: d */
    public static String m68317d(String str, Charset charset) {
        return m68325l(str, charset, f110240m, false);
    }

    /* renamed from: e */
    public static String m68318e(String str, Charset charset) {
        return m68325l(str, charset, f110237j, false);
    }

    /* renamed from: f */
    public static String m68319f(String str, Charset charset) {
        return m68325l(str, charset, f110235h, false);
    }

    public static String format(List<? extends NameValuePair> list, String str) {
        return format(list, '&', str);
    }

    public static String formatSegments(Iterable<String> iterable, Charset charset) {
        Args.notNull(iterable, "Segments");
        StringBuilder sb = new StringBuilder();
        for (String str : iterable) {
            sb.append('/');
            sb.append(m68325l(str, charset, f110236i, false));
        }
        return sb.toString();
    }

    /* renamed from: g */
    public static String m68320g(String str, String str2) {
        if (str == null) {
            return null;
        }
        return m68325l(str, str2 != null ? Charset.forName(str2) : Consts.UTF_8, f110239l, true);
    }

    /* renamed from: h */
    public static String m68321h(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return m68325l(str, charset, f110239l, true);
    }

    /* renamed from: i */
    public static List<String> m68322i(CharSequence charSequence) {
        return m68323j(charSequence, f110232e);
    }

    public static boolean isEncoded(HttpEntity httpEntity) {
        Args.notNull(httpEntity, "HTTP entity");
        Header contentType = httpEntity.getContentType();
        if (contentType != null) {
            HeaderElement[] elements = contentType.getElements();
            if (elements.length > 0) {
                return elements[0].getName().equalsIgnoreCase("application/x-www-form-urlencoded");
            }
        }
        return false;
    }

    /* renamed from: j */
    public static List<String> m68323j(CharSequence charSequence, BitSet bitSet) {
        ParserCursor parserCursor = new ParserCursor(0, charSequence.length());
        if (parserCursor.atEnd()) {
            return Collections.emptyList();
        }
        if (bitSet.get(charSequence.charAt(parserCursor.getPos()))) {
            parserCursor.updatePos(parserCursor.getPos() + 1);
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        while (!parserCursor.atEnd()) {
            char charAt = charSequence.charAt(parserCursor.getPos());
            if (bitSet.get(charAt)) {
                arrayList.add(sb.toString());
                sb.setLength(0);
            } else {
                sb.append(charAt);
            }
            parserCursor.updatePos(parserCursor.getPos() + 1);
        }
        arrayList.add(sb.toString());
        return arrayList;
    }

    /* renamed from: k */
    public static String m68324k(String str, Charset charset, boolean z) {
        if (str == null) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(str.length());
        CharBuffer wrap = CharBuffer.wrap(str);
        while (wrap.hasRemaining()) {
            char c = wrap.get();
            if (c == '%' && wrap.remaining() >= 2) {
                char c2 = wrap.get();
                char c3 = wrap.get();
                int digit = Character.digit(c2, 16);
                int digit2 = Character.digit(c3, 16);
                if (digit == -1 || digit2 == -1) {
                    allocate.put((byte) 37);
                    allocate.put((byte) c2);
                    allocate.put((byte) c3);
                } else {
                    allocate.put((byte) ((digit << 4) + digit2));
                }
            } else if (z && c == '+') {
                allocate.put((byte) 32);
            } else {
                allocate.put((byte) c);
            }
        }
        allocate.flip();
        return charset.decode(allocate).toString();
    }

    /* renamed from: l */
    public static String m68325l(String str, Charset charset, BitSet bitSet, boolean z) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        ByteBuffer encode = charset.encode(str);
        while (encode.hasRemaining()) {
            int i = encode.get() & 255;
            if (bitSet.get(i)) {
                sb.append((char) i);
            } else if (z && i == 32) {
                sb.append(PhoneNumberUtil.f36455s);
            } else {
                sb.append("%");
                char upperCase = Character.toUpperCase(Character.forDigit((i >> 4) & 15, 16));
                char upperCase2 = Character.toUpperCase(Character.forDigit(i & 15, 16));
                sb.append(upperCase);
                sb.append(upperCase2);
            }
        }
        return sb.toString();
    }

    @Deprecated
    public static List<NameValuePair> parse(URI uri, String str) {
        return parse(uri, str != null ? Charset.forName(str) : null);
    }

    public static List<String> parsePathSegments(CharSequence charSequence, Charset charset) {
        Args.notNull(charSequence, "Char sequence");
        List<String> m68322i = m68322i(charSequence);
        for (int i = 0; i < m68322i.size(); i++) {
            m68322i.set(i, m68324k(m68322i.get(i), charset != null ? charset : Consts.UTF_8, false));
        }
        return m68322i;
    }

    public static String format(List<? extends NameValuePair> list, char c, String str) {
        StringBuilder sb = new StringBuilder();
        for (NameValuePair nameValuePair : list) {
            String m68320g = m68320g(nameValuePair.getName(), str);
            String m68320g2 = m68320g(nameValuePair.getValue(), str);
            if (sb.length() > 0) {
                sb.append(c);
            }
            sb.append(m68320g);
            if (m68320g2 != null) {
                sb.append("=");
                sb.append(m68320g2);
            }
        }
        return sb.toString();
    }

    public static List<NameValuePair> parse(URI uri, Charset charset) {
        Args.notNull(uri, "URI");
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && !rawQuery.isEmpty()) {
            return parse(rawQuery, charset);
        }
        return m68314a();
    }

    public static List<String> parsePathSegments(CharSequence charSequence) {
        return parsePathSegments(charSequence, Consts.UTF_8);
    }

    public static String formatSegments(String... strArr) {
        return formatSegments(Arrays.asList(strArr), Consts.UTF_8);
    }

    public static List<NameValuePair> parse(HttpEntity httpEntity) throws IOException {
        Args.notNull(httpEntity, "HTTP entity");
        ContentType contentType = ContentType.get(httpEntity);
        if (contentType != null && contentType.getMimeType().equalsIgnoreCase("application/x-www-form-urlencoded")) {
            long contentLength = httpEntity.getContentLength();
            Args.check(contentLength <= 2147483647L, "HTTP entity is too large");
            Charset charset = contentType.getCharset() != null ? contentType.getCharset() : HTTP.DEF_CONTENT_CHARSET;
            InputStream content = httpEntity.getContent();
            if (content == null) {
                return m68314a();
            }
            try {
                CharArrayBuffer charArrayBuffer = new CharArrayBuffer(contentLength > 0 ? (int) contentLength : 1024);
                InputStreamReader inputStreamReader = new InputStreamReader(content, charset);
                char[] cArr = new char[1024];
                while (true) {
                    int read = inputStreamReader.read(cArr);
                    if (read == -1) {
                        break;
                    }
                    charArrayBuffer.append(cArr, 0, read);
                }
                content.close();
                if (charArrayBuffer.isEmpty()) {
                    return m68314a();
                }
                return parse(charArrayBuffer, charset, '&');
            } catch (Throwable th) {
                content.close();
                throw th;
            }
        }
        return m68314a();
    }

    public static String format(Iterable<? extends NameValuePair> iterable, Charset charset) {
        return format(iterable, '&', charset);
    }

    public static String format(Iterable<? extends NameValuePair> iterable, char c, Charset charset) {
        Args.notNull(iterable, "Parameters");
        StringBuilder sb = new StringBuilder();
        for (NameValuePair nameValuePair : iterable) {
            String m68321h = m68321h(nameValuePair.getName(), charset);
            String m68321h2 = m68321h(nameValuePair.getValue(), charset);
            if (sb.length() > 0) {
                sb.append(c);
            }
            sb.append(m68321h);
            if (m68321h2 != null) {
                sb.append("=");
                sb.append(m68321h2);
            }
        }
        return sb.toString();
    }

    @Deprecated
    public static void parse(List<NameValuePair> list, Scanner scanner, String str) {
        parse(list, scanner, "[&;]", str);
    }

    @Deprecated
    public static void parse(List<NameValuePair> list, Scanner scanner, String str, String str2) {
        String m68315b;
        String str3;
        scanner.useDelimiter(str);
        while (scanner.hasNext()) {
            String next = scanner.next();
            int indexOf = next.indexOf("=");
            if (indexOf != -1) {
                m68315b = m68315b(next.substring(0, indexOf).trim(), str2);
                str3 = m68315b(next.substring(indexOf + 1).trim(), str2);
            } else {
                m68315b = m68315b(next.trim(), str2);
                str3 = null;
            }
            list.add(new BasicNameValuePair(m68315b, str3));
        }
    }

    public static List<NameValuePair> parse(String str, Charset charset) {
        if (str == null) {
            return m68314a();
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        return parse(charArrayBuffer, charset, '&', ';');
    }

    public static List<NameValuePair> parse(String str, Charset charset, char... cArr) {
        if (str == null) {
            return m68314a();
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        return parse(charArrayBuffer, charset, cArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0027 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<org.apache.http.NameValuePair> parse(org.apache.http.util.CharArrayBuffer r7, java.nio.charset.Charset r8, char... r9) {
        /*
            java.lang.String r0 = "Char array buffer"
            org.apache.http.util.Args.notNull(r7, r0)
            org.apache.http.message.TokenParser r0 = org.apache.http.message.TokenParser.INSTANCE
            java.util.BitSet r1 = new java.util.BitSet
            r1.<init>()
            int r2 = r9.length
            r3 = 0
            r4 = r3
        Lf:
            if (r4 >= r2) goto L19
            char r5 = r9[r4]
            r1.set(r5)
            int r4 = r4 + 1
            goto Lf
        L19:
            org.apache.http.message.ParserCursor r9 = new org.apache.http.message.ParserCursor
            int r2 = r7.length()
            r9.<init>(r3, r2)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
        L27:
            boolean r3 = r9.atEnd()
            if (r3 != 0) goto L7e
            r3 = 61
            r1.set(r3)
            java.lang.String r4 = r0.parseToken(r7, r9, r1)
            boolean r5 = r9.atEnd()
            if (r5 != 0) goto L66
            int r5 = r9.getPos()
            char r5 = r7.charAt(r5)
            int r6 = r9.getPos()
            int r6 = r6 + 1
            r9.updatePos(r6)
            if (r5 != r3) goto L66
            r1.clear(r3)
            java.lang.String r3 = r0.parseToken(r7, r9, r1)
            boolean r5 = r9.atEnd()
            if (r5 != 0) goto L67
            int r5 = r9.getPos()
            int r5 = r5 + 1
            r9.updatePos(r5)
            goto L67
        L66:
            r3 = 0
        L67:
            boolean r5 = r4.isEmpty()
            if (r5 != 0) goto L27
            org.apache.http.message.BasicNameValuePair r5 = new org.apache.http.message.BasicNameValuePair
            java.lang.String r4 = m68316c(r4, r8)
            java.lang.String r3 = m68316c(r3, r8)
            r5.<init>(r4, r3)
            r2.add(r5)
            goto L27
        L7e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.client.utils.URLEncodedUtils.parse(org.apache.http.util.CharArrayBuffer, java.nio.charset.Charset, char[]):java.util.List");
    }
}
