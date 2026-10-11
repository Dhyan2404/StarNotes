package net.p110sf.saxon.trans;

/* loaded from: classes11.dex */
public class NoDynamicContextException extends XPathException {
    public NoDynamicContextException(String str) {
        super("Dynamic context missing: " + str);
    }
}
