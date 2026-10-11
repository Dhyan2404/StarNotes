package net.p110sf.saxon.s9api;

import net.p110sf.saxon.transpile.CSharp;

/* loaded from: classes11.dex */
public class SaxonApiUncheckedException extends RuntimeException {
    public SaxonApiUncheckedException(Throwable th) {
        super(th);
        CSharp.emitCode("throw new NotImplementedException(err.Message);");
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return getCause().getMessage();
    }
}
