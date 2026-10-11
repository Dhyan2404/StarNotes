package org.apache.http.impl.io;

import java.io.IOException;
import org.apache.http.ConnectionClosedException;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequestFactory;
import org.apache.http.ParseException;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.LineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
/* loaded from: classes12.dex */
public class HttpRequestParser extends AbstractMessageParser<HttpMessage> {

    /* renamed from: h */
    public final HttpRequestFactory f111011h;

    /* renamed from: i */
    public final CharArrayBuffer f111012i;

    public HttpRequestParser(SessionInputBuffer sessionInputBuffer, LineParser lineParser, HttpRequestFactory httpRequestFactory, HttpParams httpParams) {
        super(sessionInputBuffer, lineParser, httpParams);
        this.f111011h = (HttpRequestFactory) Args.notNull(httpRequestFactory, "Request factory");
        this.f111012i = new CharArrayBuffer(128);
    }

    @Override // org.apache.http.impl.io.AbstractMessageParser
    public HttpMessage parseHead(SessionInputBuffer sessionInputBuffer) throws IOException, HttpException, ParseException {
        this.f111012i.clear();
        if (sessionInputBuffer.readLine(this.f111012i) == -1) {
            throw new ConnectionClosedException("Client closed connection");
        }
        return this.f111011h.newHttpRequest(this.lineParser.parseRequestLine(this.f111012i, new ParserCursor(0, this.f111012i.length())));
    }
}
