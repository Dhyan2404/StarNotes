package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HeaderElementIterator;
import org.apache.http.HeaderIterator;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes12.dex */
public class BasicHeaderElementIterator implements HeaderElementIterator {

    /* renamed from: e */
    public final HeaderIterator f111051e;

    /* renamed from: f */
    public final HeaderValueParser f111052f;

    /* renamed from: g */
    public HeaderElement f111053g;

    /* renamed from: h */
    public CharArrayBuffer f111054h;

    /* renamed from: i */
    public ParserCursor f111055i;

    public BasicHeaderElementIterator(HeaderIterator headerIterator, HeaderValueParser headerValueParser) {
        this.f111053g = null;
        this.f111054h = null;
        this.f111055i = null;
        this.f111051e = (HeaderIterator) Args.notNull(headerIterator, "Header iterator");
        this.f111052f = (HeaderValueParser) Args.notNull(headerValueParser, "Parser");
    }

    /* renamed from: a */
    public final void m68590a() {
        this.f111055i = null;
        this.f111054h = null;
        while (this.f111051e.hasNext()) {
            Header nextHeader = this.f111051e.nextHeader();
            if (nextHeader instanceof FormattedHeader) {
                FormattedHeader formattedHeader = (FormattedHeader) nextHeader;
                CharArrayBuffer buffer = formattedHeader.getBuffer();
                this.f111054h = buffer;
                ParserCursor parserCursor = new ParserCursor(0, buffer.length());
                this.f111055i = parserCursor;
                parserCursor.updatePos(formattedHeader.getValuePos());
                return;
            }
            String value = nextHeader.getValue();
            if (value != null) {
                CharArrayBuffer charArrayBuffer = new CharArrayBuffer(value.length());
                this.f111054h = charArrayBuffer;
                charArrayBuffer.append(value);
                this.f111055i = new ParserCursor(0, this.f111054h.length());
                return;
            }
        }
    }

    /* renamed from: b */
    public final void m68591b() {
        HeaderElement parseHeaderElement;
        loop0: while (true) {
            if (!this.f111051e.hasNext() && this.f111055i == null) {
                return;
            }
            ParserCursor parserCursor = this.f111055i;
            if (parserCursor == null || parserCursor.atEnd()) {
                m68590a();
            }
            if (this.f111055i != null) {
                while (!this.f111055i.atEnd()) {
                    parseHeaderElement = this.f111052f.parseHeaderElement(this.f111054h, this.f111055i);
                    if (!parseHeaderElement.getName().isEmpty() || parseHeaderElement.getValue() != null) {
                        break loop0;
                    }
                }
                if (this.f111055i.atEnd()) {
                    this.f111055i = null;
                    this.f111054h = null;
                }
            }
        }
        this.f111053g = parseHeaderElement;
    }

    @Override // org.apache.http.HeaderElementIterator, java.util.Iterator
    public boolean hasNext() {
        if (this.f111053g == null) {
            m68591b();
        }
        return this.f111053g != null;
    }

    @Override // java.util.Iterator
    public final Object next() throws NoSuchElementException {
        return nextElement();
    }

    @Override // org.apache.http.HeaderElementIterator
    public HeaderElement nextElement() throws NoSuchElementException {
        if (this.f111053g == null) {
            m68591b();
        }
        HeaderElement headerElement = this.f111053g;
        if (headerElement == null) {
            throw new NoSuchElementException("No more header elements available");
        }
        this.f111053g = null;
        return headerElement;
    }

    @Override // java.util.Iterator
    public void remove() throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Remove not supported");
    }

    public BasicHeaderElementIterator(HeaderIterator headerIterator) {
        this(headerIterator, BasicHeaderValueParser.INSTANCE);
    }
}
