package net.p110sf.saxon.dom;

import org.w3c.dom.DOMException;

/* loaded from: classes11.dex */
public class DOMExceptionImpl extends DOMException {
    public static final short INVALID_ACCESS_ERR = 15;
    public static final short INVALID_MODIFICATION_ERR = 13;
    public static final short INVALID_STATE_ERR = 11;
    public static final short NAMESPACE_ERR = 14;
    public static final short SYNTAX_ERR = 12;
    public short code;

    public DOMExceptionImpl(short s, String str) {
        super(s, str);
    }
}
