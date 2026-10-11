package net.p110sf.saxon.lib;

import javax.xml.transform.ErrorListener;
import javax.xml.transform.TransformerException;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public class InvalidityHandlerWrappingErrorListener implements InvalidityHandler {

    /* renamed from: e */
    public final ErrorListener f100503e;

    public InvalidityHandlerWrappingErrorListener(ErrorListener errorListener) {
        this.f100503e = errorListener;
    }

    @Override // net.p110sf.saxon.lib.InvalidityHandler
    public Sequence endReporting() {
        return null;
    }

    public ErrorListener getErrorListener() {
        return this.f100503e;
    }

    @Override // net.p110sf.saxon.lib.InvalidityHandler
    public void reportInvalidity(Invalidity invalidity) throws XPathException {
        try {
            this.f100503e.error(((ValidationFailure) invalidity).makeException());
        } catch (TransformerException e) {
            throw XPathException.makeXPathException(e);
        }
    }

    @Override // net.p110sf.saxon.lib.InvalidityHandler
    public void startReporting(String str) throws XPathException {
    }
}
