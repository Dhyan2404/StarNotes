package org.apache.http.impl.cookie;

import java.util.ArrayList;
import java.util.BitSet;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.message.TokenParser;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class NetscapeDraftHeaderParser {

    /* renamed from: b */
    public static final char f110860b = ';';

    /* renamed from: a */
    public final TokenParser f110863a = TokenParser.INSTANCE;
    public static final NetscapeDraftHeaderParser DEFAULT = new NetscapeDraftHeaderParser();

    /* renamed from: c */
    public static final BitSet f110861c = TokenParser.INIT_BITSET(61, 59);

    /* renamed from: d */
    public static final BitSet f110862d = TokenParser.INIT_BITSET(59);

    /* renamed from: a */
    public final NameValuePair m68550a(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        String parseToken = this.f110863a.parseToken(charArrayBuffer, parserCursor, f110861c);
        if (parserCursor.atEnd()) {
            return new BasicNameValuePair(parseToken, null);
        }
        char charAt = charArrayBuffer.charAt(parserCursor.getPos());
        parserCursor.updatePos(parserCursor.getPos() + 1);
        if (charAt != '=') {
            return new BasicNameValuePair(parseToken, null);
        }
        String parseToken2 = this.f110863a.parseToken(charArrayBuffer, parserCursor, f110862d);
        if (!parserCursor.atEnd()) {
            parserCursor.updatePos(parserCursor.getPos() + 1);
        }
        return new BasicNameValuePair(parseToken, parseToken2);
    }

    public HeaderElement parseHeader(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        NameValuePair m68550a = m68550a(charArrayBuffer, parserCursor);
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            arrayList.add(m68550a(charArrayBuffer, parserCursor));
        }
        return new BasicHeaderElement(m68550a.getName(), m68550a.getValue(), (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]));
    }
}
