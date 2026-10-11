package org.apache.xerces.impl.p117xs.identity;

import org.apache.xerces.impl.p117xs.XSAnnotationImpl;
import org.apache.xerces.impl.p117xs.util.StringListImpl;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSIDCDefinition;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObjectList;

/* loaded from: classes13.dex */
public abstract class IdentityConstraint implements XSIDCDefinition {
    protected XSAnnotationImpl[] fAnnotations = null;
    protected final String fElementName;
    protected int fFieldCount;
    protected Field[] fFields;
    protected final String fIdentityConstraintName;
    protected final String fNamespace;
    protected int fNumAnnotations;
    protected Selector fSelector;
    protected short type;

    public IdentityConstraint(String str, String str2, String str3) {
        this.fNamespace = str;
        this.fIdentityConstraintName = str2;
        this.fElementName = str3;
    }

    /* renamed from: a */
    public static final Field[] m70265a(Field[] fieldArr, int i) {
        Field[] fieldArr2 = new Field[i];
        System.arraycopy(fieldArr, 0, fieldArr2, 0, fieldArr.length);
        return fieldArr2;
    }

    public void addAnnotation(XSAnnotationImpl xSAnnotationImpl) {
        if (xSAnnotationImpl == null) {
            return;
        }
        XSAnnotationImpl[] xSAnnotationImplArr = this.fAnnotations;
        if (xSAnnotationImplArr == null) {
            this.fAnnotations = new XSAnnotationImpl[2];
        } else {
            int i = this.fNumAnnotations;
            if (i == xSAnnotationImplArr.length) {
                XSAnnotationImpl[] xSAnnotationImplArr2 = new XSAnnotationImpl[i << 1];
                System.arraycopy(xSAnnotationImplArr, 0, xSAnnotationImplArr2, 0, i);
                this.fAnnotations = xSAnnotationImplArr2;
            }
        }
        XSAnnotationImpl[] xSAnnotationImplArr3 = this.fAnnotations;
        int i2 = this.fNumAnnotations;
        this.fNumAnnotations = i2 + 1;
        xSAnnotationImplArr3[i2] = xSAnnotationImpl;
    }

    public void addField(Field field) {
        Field[] fieldArr = this.fFields;
        if (fieldArr == null) {
            this.fFields = new Field[4];
        } else {
            int i = this.fFieldCount;
            if (i == fieldArr.length) {
                this.fFields = m70265a(fieldArr, i * 2);
            }
        }
        Field[] fieldArr2 = this.fFields;
        int i2 = this.fFieldCount;
        this.fFieldCount = i2 + 1;
        fieldArr2[i2] = field;
    }

    public boolean equals(IdentityConstraint identityConstraint) {
        if (!this.fIdentityConstraintName.equals(identityConstraint.fIdentityConstraintName) || !this.fSelector.toString().equals(identityConstraint.fSelector.toString())) {
            return false;
        }
        if (!(this.fFieldCount == identityConstraint.fFieldCount)) {
            return false;
        }
        for (int i = 0; i < this.fFieldCount; i++) {
            if (!this.fFields[i].toString().equals(identityConstraint.fFields[i].toString())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.xerces.p118xs.XSIDCDefinition
    public XSObjectList getAnnotations() {
        return new XSObjectListImpl(this.fAnnotations, this.fNumAnnotations);
    }

    @Override // org.apache.xerces.p118xs.XSIDCDefinition
    public short getCategory() {
        return this.type;
    }

    public String getElementName() {
        return this.fElementName;
    }

    public Field getFieldAt(int i) {
        return this.fFields[i];
    }

    public int getFieldCount() {
        return this.fFieldCount;
    }

    @Override // org.apache.xerces.p118xs.XSIDCDefinition
    public StringList getFieldStrs() {
        String[] strArr = new String[this.fFieldCount];
        for (int i = 0; i < this.fFieldCount; i++) {
            strArr[i] = this.fFields[i].toString();
        }
        return new StringListImpl(strArr, this.fFieldCount);
    }

    public String getIdentityConstraintName() {
        return this.fIdentityConstraintName;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        return this.fIdentityConstraintName;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return this.fNamespace;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSIDCDefinition
    public XSIDCDefinition getRefKey() {
        return null;
    }

    public Selector getSelector() {
        return this.fSelector;
    }

    @Override // org.apache.xerces.p118xs.XSIDCDefinition
    public String getSelectorStr() {
        Selector selector = this.fSelector;
        if (selector != null) {
            return selector.toString();
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 10;
    }

    public void setSelector(Selector selector) {
        this.fSelector = selector;
    }

    public String toString() {
        String obj = super.toString();
        int lastIndexOf = obj.lastIndexOf(36);
        return (lastIndexOf == -1 && (lastIndexOf = obj.lastIndexOf(46)) == -1) ? obj : obj.substring(lastIndexOf + 1);
    }
}
