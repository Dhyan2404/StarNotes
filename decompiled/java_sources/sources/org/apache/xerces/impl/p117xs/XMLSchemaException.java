package org.apache.xerces.impl.p117xs;

/* loaded from: classes13.dex */
public class XMLSchemaException extends Exception {
    static final long serialVersionUID = -9096984648537046218L;
    Object[] args;
    String key;

    public XMLSchemaException(String str, Object[] objArr) {
        this.key = str;
        this.args = objArr;
    }

    public Object[] getArgs() {
        return this.args;
    }

    public String getKey() {
        return this.key;
    }
}
