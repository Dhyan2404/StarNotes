package net.p110sf.saxon.lib;

import java.util.Objects;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/* loaded from: classes11.dex */
public class StandardErrorHandler implements ErrorHandler {

    /* renamed from: e */
    public final ErrorReporter f100549e;

    /* renamed from: f */
    public int f100550f = 0;

    /* renamed from: g */
    public int f100551g = 0;

    /* renamed from: h */
    public int f100552h = 0;

    /* renamed from: i */
    public boolean f100553i = false;

    public StandardErrorHandler(ErrorReporter errorReporter) {
        Objects.requireNonNull(errorReporter);
        this.f100549e = errorReporter;
    }

    @Override // org.xml.sax.ErrorHandler
    public void error(SAXParseException sAXParseException) throws SAXException {
        this.f100551g++;
        if (this.f100553i) {
            return;
        }
        reportError(sAXParseException, false);
    }

    @Override // org.xml.sax.ErrorHandler
    public void fatalError(SAXParseException sAXParseException) throws SAXException {
        this.f100552h++;
        if (this.f100553i) {
            throw sAXParseException;
        }
        reportError(sAXParseException, true);
        throw sAXParseException;
    }

    public int getErrorCount() {
        return this.f100551g;
    }

    public int getFatalErrorCount() {
        return this.f100552h;
    }

    public int getWarningCount() {
        return this.f100550f;
    }

    public void reportError(SAXParseException sAXParseException, boolean z) {
        try {
            XmlProcessingIncident xmlProcessingIncident = new XmlProcessingIncident(" Error reported by XML parser: " + sAXParseException.getMessage(), SaxonErrorCode.SXXP0003, new Loc(sAXParseException.getSystemId(), sAXParseException.getLineNumber(), sAXParseException.getColumnNumber()));
            xmlProcessingIncident.setCause(sAXParseException);
            this.f100549e.report(xmlProcessingIncident);
        } catch (Exception e) {
            throw new AssertionError(e);
        }
    }

    public void setSilent(boolean z) {
        this.f100553i = z;
    }

    @Override // org.xml.sax.ErrorHandler
    public void warning(SAXParseException sAXParseException) {
        try {
            this.f100550f++;
            if (this.f100553i) {
                return;
            }
            this.f100549e.report(new XmlProcessingException(XPathException.makeXPathException(sAXParseException)).asWarning());
        } catch (Exception unused) {
        }
    }
}
