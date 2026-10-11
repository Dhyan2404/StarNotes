package com.sun.org.apache.xalan.internal.xsltc.compiler;

/* loaded from: classes10.dex */
public final class CompilerException extends Exception {
    static final long serialVersionUID = 1732939618562742663L;
    private String _msg;

    public CompilerException() {
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        int indexOf = this._msg.indexOf(58);
        return indexOf > -1 ? this._msg.substring(indexOf) : this._msg;
    }

    public CompilerException(Exception exc) {
        super(exc.toString());
        this._msg = exc.toString();
    }

    public CompilerException(String str) {
        super(str);
        this._msg = str;
    }
}
