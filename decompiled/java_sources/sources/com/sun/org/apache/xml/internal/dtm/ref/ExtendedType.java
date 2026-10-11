package com.sun.org.apache.xml.internal.dtm.ref;

/* loaded from: classes10.dex */
public final class ExtendedType {
    private int hash;
    private String localName;
    private String namespace;
    private int nodetype;

    public ExtendedType(int i, String str, String str2) {
        this.nodetype = i;
        this.namespace = str;
        this.localName = str2;
        this.hash = i + str.hashCode() + str2.hashCode();
    }

    public boolean equals(ExtendedType extendedType) {
        try {
            if (extendedType.nodetype == this.nodetype && extendedType.localName.equals(this.localName)) {
                return extendedType.namespace.equals(this.namespace);
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public String getLocalName() {
        return this.localName;
    }

    public String getNamespace() {
        return this.namespace;
    }

    public int getNodeType() {
        return this.nodetype;
    }

    public int hashCode() {
        return this.hash;
    }

    public void redefine(int i, String str, String str2) {
        this.nodetype = i;
        this.namespace = str;
        this.localName = str2;
        this.hash = i + str.hashCode() + str2.hashCode();
    }

    public void redefine(int i, String str, String str2, int i2) {
        this.nodetype = i;
        this.namespace = str;
        this.localName = str2;
        this.hash = i2;
    }

    public ExtendedType(int i, String str, String str2, int i2) {
        this.nodetype = i;
        this.namespace = str;
        this.localName = str2;
        this.hash = i2;
    }
}
