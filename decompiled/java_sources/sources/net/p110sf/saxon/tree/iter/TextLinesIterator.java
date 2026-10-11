package net.p110sf.saxon.tree.iter;

import java.io.IOException;
import java.io.LineNumberReader;
import java.net.URI;
import net.p110sf.saxon.functions.UnparsedTextFunction;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public abstract class TextLinesIterator implements SequenceIterator {
    protected IntPredicateProxy checker;

    /* renamed from: e */
    public StringValue f102463e = null;

    /* renamed from: f */
    public int f102464f = 0;

    /* renamed from: g */
    public SequenceIterator f102465g;
    protected Location location;
    protected LineNumberReader reader;
    protected URI uri;

    public TextLinesIterator() {
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.reader.close();
        } catch (IOException unused) {
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f102465g = SequenceTool.toGroundedValue(this).iterate();
        close();
    }

    /* renamed from: f */
    public final void m64510f(IntPredicateProxy intPredicateProxy, String str) throws XPathException {
        int i;
        for (int i2 = 0; i2 < str.length(); i2 = i) {
            i = i2 + 1;
            int charAt = str.charAt(i2);
            if (UTF16CharacterSet.isHighSurrogate(charAt)) {
                charAt = UTF16CharacterSet.combinePair((char) charAt, str.charAt(i));
                i++;
            }
            if (!intPredicateProxy.test(charAt)) {
                XPathException xPathException = new XPathException("The unparsed-text file contains a character that is illegal in XML (line=" + this.f102464f + " column=" + (i + 1) + " value=hex " + Integer.toHexString(charAt) + ')');
                xPathException.setErrorCode("FOUT1190");
                xPathException.setLocator(this.location);
                throw xPathException;
            }
        }
    }

    public XPathException handleIOError(URI uri, IOException iOException) {
        return UnparsedTextFunction.handleIOError(uri, iOException);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public StringValue next() {
        SequenceIterator sequenceIterator = this.f102465g;
        if (sequenceIterator != null) {
            return (StringValue) sequenceIterator.next();
        }
        if (this.f102464f < 0) {
            close();
            return null;
        }
        try {
            String readLine = this.reader.readLine();
            if (readLine == null) {
                this.f102463e = null;
                this.f102464f = -1;
                close();
                return null;
            }
            if (this.f102464f == 0 && readLine.length() > 0 && readLine.charAt(0) == 65279) {
                readLine = readLine.substring(1);
            }
            m64510f(this.checker, readLine);
            StringValue stringValue = new StringValue(readLine);
            this.f102463e = stringValue;
            this.f102464f++;
            return stringValue;
        } catch (IOException e) {
            close();
            XPathException handleIOError = handleIOError(this.uri, e);
            Location location = this.location;
            if (location != null) {
                handleIOError.setLocator(location);
            }
            throw new UncheckedXPathException(handleIOError);
        } catch (XPathException e2) {
            throw new UncheckedXPathException(e2);
        }
    }

    public TextLinesIterator(LineNumberReader lineNumberReader, Location location, URI uri, IntPredicateProxy intPredicateProxy) throws XPathException {
        this.reader = lineNumberReader;
        this.location = location;
        this.uri = uri;
        this.checker = intPredicateProxy;
    }
}
