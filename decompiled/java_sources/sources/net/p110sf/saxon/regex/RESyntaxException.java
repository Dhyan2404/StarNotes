package net.p110sf.saxon.regex;

/* loaded from: classes11.dex */
public class RESyntaxException extends RuntimeException {
    public RESyntaxException(String str) {
        super(str);
    }

    public RESyntaxException(String str, int i) {
        super("Syntax error at char " + i + " in regular expression: " + str);
    }
}
