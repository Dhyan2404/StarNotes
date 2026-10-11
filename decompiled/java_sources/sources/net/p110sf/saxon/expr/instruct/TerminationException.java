package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class TerminationException extends XPathException {
    public TerminationException(String str) {
        super(str);
        setErrorCode("XTMM9000");
    }
}
