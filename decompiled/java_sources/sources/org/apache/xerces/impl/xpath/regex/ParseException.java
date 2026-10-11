package org.apache.xerces.impl.xpath.regex;

/* loaded from: classes13.dex */
public class ParseException extends RuntimeException {
    static final long serialVersionUID = -7012400318097691370L;
    final int location;

    public ParseException(String str, int i) {
        super(str);
        this.location = i;
    }

    public int getLocation() {
        return this.location;
    }
}
