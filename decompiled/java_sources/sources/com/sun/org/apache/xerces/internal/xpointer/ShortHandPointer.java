package com.sun.org.apache.xerces.internal.xpointer;

import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.p056xs.AttributePSVI;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XNIException;

/* loaded from: classes10.dex */
class ShortHandPointer implements XPointerPart {
    private boolean fIsFragmentResolved = false;
    int fMatchingChildCount = 0;
    private String fShortHandPointer;
    private SymbolTable fSymbolTable;

    public ShortHandPointer() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002b, code lost:
    
        if (r4.equals(r1.fShortHandPointer) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002d, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean hasMatchingIdentifier(com.sun.org.apache.xerces.internal.xni.QName r2, com.sun.org.apache.xerces.internal.xni.XMLAttributes r3, com.sun.org.apache.xerces.internal.xni.Augmentations r4, int r5) throws com.sun.org.apache.xerces.internal.xni.XNIException {
        /*
            r1 = this;
            r2 = 0
            r4 = 0
            if (r3 == 0) goto L23
            r5 = r2
        L5:
            int r0 = r3.getLength()
            if (r5 >= r0) goto L23
            java.lang.String r4 = r1.getSchemaDeterminedID(r3, r5)
            if (r4 == 0) goto L12
            goto L23
        L12:
            java.lang.String r4 = r1.getChildrenSchemaDeterminedID(r3, r5)
            if (r4 == 0) goto L19
            goto L23
        L19:
            java.lang.String r4 = r1.getDTDDeterminedID(r3, r5)
            if (r4 == 0) goto L20
            goto L23
        L20:
            int r5 = r5 + 1
            goto L5
        L23:
            if (r4 == 0) goto L2f
            java.lang.String r1 = r1.fShortHandPointer
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L2f
            r1 = 1
            return r1
        L2f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.xpointer.ShortHandPointer.hasMatchingIdentifier(com.sun.org.apache.xerces.internal.xni.QName, com.sun.org.apache.xerces.internal.xni.XMLAttributes, com.sun.org.apache.xerces.internal.xni.Augmentations, int):boolean");
    }

    public String getChildrenSchemaDeterminedID(XMLAttributes xMLAttributes, int i) throws XNIException {
        return null;
    }

    public String getDTDDeterminedID(XMLAttributes xMLAttributes, int i) throws XNIException {
        if (xMLAttributes.getType(i).equals("ID")) {
            return xMLAttributes.getValue(i);
        }
        return null;
    }

    public String getSchemaDeterminedID(XMLAttributes xMLAttributes, int i) throws XNIException {
        AttributePSVI attributePSVI = (AttributePSVI) xMLAttributes.getAugmentations(i).getItem("ATTRIBUTE_PSVI");
        if (attributePSVI == null) {
            return null;
        }
        XSTypeDefinition memberTypeDefinition = attributePSVI.getMemberTypeDefinition();
        if (memberTypeDefinition != null) {
            memberTypeDefinition = attributePSVI.getTypeDefinition();
        }
        if (memberTypeDefinition == null || !((XSSimpleType) memberTypeDefinition).isIDType()) {
            return null;
        }
        return attributePSVI.getSchemaNormalizedValue();
    }

    @Override // com.sun.org.apache.xerces.internal.xpointer.XPointerPart
    public String getSchemeData() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xpointer.XPointerPart
    public String getSchemeName() {
        return this.fShortHandPointer;
    }

    @Override // com.sun.org.apache.xerces.internal.xpointer.XPointerPart
    public boolean isChildFragmentResolved() {
        return (this.fMatchingChildCount > 0) & this.fIsFragmentResolved;
    }

    @Override // com.sun.org.apache.xerces.internal.xpointer.XPointerPart
    public boolean isFragmentResolved() {
        return this.fIsFragmentResolved;
    }

    @Override // com.sun.org.apache.xerces.internal.xpointer.XPointerPart
    public void parseXPointer(String str) throws XNIException {
        this.fShortHandPointer = str;
        this.fIsFragmentResolved = false;
    }

    @Override // com.sun.org.apache.xerces.internal.xpointer.XPointerPart
    public boolean resolveXPointer(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations, int i) throws XNIException {
        int i2 = this.fMatchingChildCount;
        if (i2 == 0) {
            this.fIsFragmentResolved = false;
        }
        if (i == 0) {
            if (i2 == 0) {
                this.fIsFragmentResolved = hasMatchingIdentifier(qName, xMLAttributes, augmentations, i);
            }
            if (this.fIsFragmentResolved) {
                this.fMatchingChildCount++;
            }
        } else if (i == 2) {
            if (i2 == 0) {
                this.fIsFragmentResolved = hasMatchingIdentifier(qName, xMLAttributes, augmentations, i);
            }
        } else if (this.fIsFragmentResolved) {
            this.fMatchingChildCount = i2 - 1;
        }
        return this.fIsFragmentResolved;
    }

    @Override // com.sun.org.apache.xerces.internal.xpointer.XPointerPart
    public void setSchemeData(String str) {
    }

    @Override // com.sun.org.apache.xerces.internal.xpointer.XPointerPart
    public void setSchemeName(String str) {
        this.fShortHandPointer = str;
    }

    public ShortHandPointer(SymbolTable symbolTable) {
        this.fSymbolTable = symbolTable;
    }
}
