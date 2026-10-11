package org.w3c.dom.xpath;

/* loaded from: classes16.dex */
public class XPathException extends RuntimeException {
    public static final short INVALID_EXPRESSION_ERR = 51;
    public static final short TYPE_ERR = 52;
    public short code;

    public XPathException(short s, String str) {
        super(str);
        this.code = s;
    }
}
