package org.apache.http.impl.io;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponseFactory;
import org.apache.http.NoHttpResponseException;
import org.apache.http.ParseException;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.LineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
/* loaded from: classes12.dex */
public class HttpResponseParser extends AbstractMessageParser<HttpMessage> {

    /* renamed from: h */
    public final HttpResponseFactory f111013h;

    /* renamed from: i */
    public final CharArrayBuffer f111014i;

    public HttpResponseParser(SessionInputBuffer sessionInputBuffer, LineParser lineParser, HttpResponseFactory httpResponseFactory, HttpParams httpParams) {
        super(sessionInputBuffer, lineParser, httpParams);
        this.f111013h = (HttpResponseFactory) Args.notNull(httpResponseFactory, "Response factory");
        this.f111014i = new CharArrayBuffer(128);
    }

    @Override // org.apache.http.impl.io.AbstractMessageParser
    public HttpMessage parseHead(SessionInputBuffer sessionInputBuffer) throws IOException, HttpException, ParseException {
        this.f111014i.clear();
        if (sessionInputBuffer.readLine(this.f111014i) == -1) {
            throw new NoHttpResponseException("The target server failed to respond");
        }
        return this.f111013h.newHttpResponse(this.lineParser.parseStatusLine(this.f111014i, new ParserCursor(0, this.f111014i.length())), null);
    }
}
