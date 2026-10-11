package net.p110sf.saxon.s9api;

import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SaxonApiException extends Exception {
    public SaxonApiException(Throwable th) {
        super(th);
    }

    public QName getErrorCode() {
        StructuredQName errorCodeQName;
        Throwable cause = getCause();
        if (!(cause instanceof XPathException) || (errorCodeQName = ((XPathException) cause).getErrorCodeQName()) == null) {
            return null;
        }
        return new QName(errorCodeQName);
    }

    public int getLineNumber() {
        Location locator;
        Throwable cause = getCause();
        if (!(cause instanceof XPathException) || (locator = ((XPathException) cause).getLocator()) == null) {
            return -1;
        }
        return locator.getLineNumber();
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return getCause().getMessage();
    }

    public String getSystemId() {
        Location locator;
        Throwable cause = getCause();
        if (!(cause instanceof XPathException) || (locator = ((XPathException) cause).getLocator()) == null) {
            return null;
        }
        return locator.getSystemId();
    }

    public SaxonApiException(UncheckedXPathException uncheckedXPathException) {
        super(uncheckedXPathException.getXPathException());
    }

    public SaxonApiException(String str) {
        super(new XPathException(str));
    }

    public SaxonApiException(String str, Throwable th) {
        super(new XPathException(str, th));
    }
}
