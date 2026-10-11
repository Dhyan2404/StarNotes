package net.p110sf.saxon.trans;

/* loaded from: classes11.dex */
public class UncheckedXPathException extends RuntimeException {
    public UncheckedXPathException(XPathException xPathException) {
        super(xPathException);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return getCause().getMessage();
    }

    public XPathException getXPathException() {
        return (XPathException) getCause();
    }

    public UncheckedXPathException(String str) {
        super(new XPathException(str));
    }

    public UncheckedXPathException(Throwable th) {
        super(new XPathException(th));
    }
}
