package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ComparisonException extends ClassCastException {
    XPathException reason;

    public ComparisonException(XPathException xPathException) {
        this.reason = xPathException;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.reason.getMessage();
    }

    public XPathException getReason() {
        return this.reason;
    }
}
