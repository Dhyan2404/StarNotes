package org.apache.http.impl.cookie;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookiePriorityComparator;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.message.BufferedHeader;
import org.apache.http.message.ParserCursor;
import org.apache.http.message.TokenParser;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public class RFC6265CookieSpec implements CookieSpec {

    /* renamed from: d */
    public static final char f110886d = ';';

    /* renamed from: e */
    public static final char f110887e = ',';

    /* renamed from: f */
    public static final char f110888f = '=';

    /* renamed from: g */
    public static final char f110889g = '\"';

    /* renamed from: h */
    public static final char f110890h = '\\';

    /* renamed from: i */
    public static final BitSet f110891i = TokenParser.INIT_BITSET(61, 59);

    /* renamed from: j */
    public static final BitSet f110892j = TokenParser.INIT_BITSET(59);

    /* renamed from: k */
    public static final BitSet f110893k = TokenParser.INIT_BITSET(32, 34, 44, 59, 92);

    /* renamed from: a */
    public final CookieAttributeHandler[] f110894a;

    /* renamed from: b */
    public final Map<String, CookieAttributeHandler> f110895b;

    /* renamed from: c */
    public final TokenParser f110896c;

    public RFC6265CookieSpec(CommonCookieAttributeHandler... commonCookieAttributeHandlerArr) {
        this.f110894a = (CookieAttributeHandler[]) commonCookieAttributeHandlerArr.clone();
        this.f110895b = new ConcurrentHashMap(commonCookieAttributeHandlerArr.length);
        for (CommonCookieAttributeHandler commonCookieAttributeHandler : commonCookieAttributeHandlerArr) {
            this.f110895b.put(commonCookieAttributeHandler.getAttributeName().toLowerCase(Locale.ROOT), commonCookieAttributeHandler);
        }
        this.f110896c = TokenParser.INSTANCE;
    }

    /* renamed from: c */
    public static String m68559c(CookieOrigin cookieOrigin) {
        return cookieOrigin.getHost();
    }

    /* renamed from: d */
    public static String m68560d(CookieOrigin cookieOrigin) {
        String path = cookieOrigin.getPath();
        int lastIndexOf = path.lastIndexOf(47);
        if (lastIndexOf < 0) {
            return path;
        }
        if (lastIndexOf == 0) {
            lastIndexOf = 1;
        }
        return path.substring(0, lastIndexOf);
    }

    /* renamed from: a */
    public boolean m68561a(CharSequence charSequence, BitSet bitSet) {
        for (int i = 0; i < charSequence.length(); i++) {
            if (bitSet.get(charSequence.charAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public boolean m68562b(CharSequence charSequence) {
        return m68561a(charSequence, f110893k);
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Header> formatCookies(List<Cookie> list) {
        Args.notEmpty(list, "List of cookies");
        if (list.size() > 1) {
            ArrayList arrayList = new ArrayList(list);
            Collections.sort(arrayList, CookiePriorityComparator.INSTANCE);
            list = arrayList;
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(list.size() * 20);
        charArrayBuffer.append("Cookie");
        charArrayBuffer.append(": ");
        for (int i = 0; i < list.size(); i++) {
            Cookie cookie = list.get(i);
            if (i > 0) {
                charArrayBuffer.append(';');
                charArrayBuffer.append(' ');
            }
            charArrayBuffer.append(cookie.getName());
            String value = cookie.getValue();
            if (value != null) {
                charArrayBuffer.append('=');
                if (m68562b(value)) {
                    charArrayBuffer.append('\"');
                    for (int i2 = 0; i2 < value.length(); i2++) {
                        char charAt = value.charAt(i2);
                        if (charAt == '\"' || charAt == '\\') {
                            charArrayBuffer.append('\\');
                        }
                        charArrayBuffer.append(charAt);
                    }
                    charArrayBuffer.append('\"');
                } else {
                    charArrayBuffer.append(value);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(1);
        arrayList2.add(new BufferedHeader(charArrayBuffer));
        return arrayList2;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public final int getVersion() {
        return 0;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public final Header getVersionHeader() {
        return null;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public final boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, "Cookie");
        Args.notNull(cookieOrigin, "Cookie origin");
        for (CookieAttributeHandler cookieAttributeHandler : this.f110894a) {
            if (!cookieAttributeHandler.match(cookie, cookieOrigin)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public final List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        CharArrayBuffer charArrayBuffer;
        ParserCursor parserCursor;
        String str;
        Args.notNull(header, "Header");
        Args.notNull(cookieOrigin, "Cookie origin");
        if (!header.getName().equalsIgnoreCase("Set-Cookie")) {
            throw new MalformedCookieException("Unrecognized cookie header: '" + header.toString() + CloudStorageConstants.SINGLE_QUOTES);
        }
        if (header instanceof FormattedHeader) {
            FormattedHeader formattedHeader = (FormattedHeader) header;
            charArrayBuffer = formattedHeader.getBuffer();
            parserCursor = new ParserCursor(formattedHeader.getValuePos(), charArrayBuffer.length());
        } else {
            String value = header.getValue();
            if (value == null) {
                throw new MalformedCookieException("Header value is null");
            }
            charArrayBuffer = new CharArrayBuffer(value.length());
            charArrayBuffer.append(value);
            parserCursor = new ParserCursor(0, charArrayBuffer.length());
        }
        String parseToken = this.f110896c.parseToken(charArrayBuffer, parserCursor, f110891i);
        if (!parseToken.isEmpty() && !parserCursor.atEnd()) {
            char charAt = charArrayBuffer.charAt(parserCursor.getPos());
            parserCursor.updatePos(parserCursor.getPos() + 1);
            if (charAt != '=') {
                throw new MalformedCookieException("Cookie value is invalid: '" + header.toString() + CloudStorageConstants.SINGLE_QUOTES);
            }
            String parseValue = this.f110896c.parseValue(charArrayBuffer, parserCursor, f110892j);
            if (!parserCursor.atEnd()) {
                parserCursor.updatePos(parserCursor.getPos() + 1);
            }
            BasicClientCookie basicClientCookie = new BasicClientCookie(parseToken, parseValue);
            basicClientCookie.setPath(m68560d(cookieOrigin));
            basicClientCookie.setDomain(m68559c(cookieOrigin));
            basicClientCookie.setCreationDate(new Date());
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (!parserCursor.atEnd()) {
                String lowerCase = this.f110896c.parseToken(charArrayBuffer, parserCursor, f110891i).toLowerCase(Locale.ROOT);
                if (!parserCursor.atEnd()) {
                    char charAt2 = charArrayBuffer.charAt(parserCursor.getPos());
                    parserCursor.updatePos(parserCursor.getPos() + 1);
                    if (charAt2 == '=') {
                        str = this.f110896c.parseToken(charArrayBuffer, parserCursor, f110892j);
                        if (!parserCursor.atEnd()) {
                            parserCursor.updatePos(parserCursor.getPos() + 1);
                        }
                        basicClientCookie.setAttribute(lowerCase, str);
                        linkedHashMap.put(lowerCase, str);
                    }
                }
                str = null;
                basicClientCookie.setAttribute(lowerCase, str);
                linkedHashMap.put(lowerCase, str);
            }
            if (linkedHashMap.containsKey(ClientCookie.MAX_AGE_ATTR)) {
                linkedHashMap.remove(ClientCookie.EXPIRES_ATTR);
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                String str2 = (String) entry.getKey();
                String str3 = (String) entry.getValue();
                CookieAttributeHandler cookieAttributeHandler = this.f110895b.get(str2);
                if (cookieAttributeHandler != null) {
                    cookieAttributeHandler.parse(basicClientCookie, str3);
                }
            }
            return Collections.singletonList(basicClientCookie);
        }
        return Collections.emptyList();
    }

    @Override // org.apache.http.cookie.CookieSpec
    public final void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, "Cookie");
        Args.notNull(cookieOrigin, "Cookie origin");
        for (CookieAttributeHandler cookieAttributeHandler : this.f110894a) {
            cookieAttributeHandler.validate(cookie, cookieOrigin);
        }
    }
}
