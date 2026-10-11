package net.p110sf.saxon.lib;

import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public class InvalidityHandlerWrappingErrorReporter implements InvalidityHandler {

    /* renamed from: e */
    public final ErrorReporter f100504e;

    public InvalidityHandlerWrappingErrorReporter(ErrorReporter errorReporter) {
        this.f100504e = errorReporter;
    }

    @Override // net.p110sf.saxon.lib.InvalidityHandler
    public Sequence endReporting() {
        return null;
    }

    public ErrorReporter getErrorReporter() {
        return this.f100504e;
    }

    @Override // net.p110sf.saxon.lib.InvalidityHandler
    public void reportInvalidity(Invalidity invalidity) throws XPathException {
        this.f100504e.report(new XmlProcessingException(((ValidationFailure) invalidity).makeException()));
    }

    @Override // net.p110sf.saxon.lib.InvalidityHandler
    public void startReporting(String str) throws XPathException {
    }
}
