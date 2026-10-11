package com.sun.org.apache.xerces.internal.impl.p055xs.models;

import com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException;
import com.sun.org.apache.xerces.internal.xni.QName;
import java.util.Vector;

/* loaded from: classes10.dex */
public class XSEmptyCM implements XSCMValidator {
    private static final Vector EMPTY = new Vector(0);
    private static final short STATE_START = 0;

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator
    public boolean checkUniqueParticleAttribution(SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException {
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator
    public boolean endContentModel(int[] iArr) {
        return iArr[0] >= 0;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator
    public Object oneTransition(QName qName, int[] iArr, SubstitutionGroupHandler substitutionGroupHandler) {
        if (iArr[0] < 0) {
            iArr[0] = -2;
            return null;
        }
        iArr[0] = -1;
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator
    public int[] startContentModel() {
        return new int[]{0};
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator
    public Vector whatCanGoHere(int[] iArr) {
        return EMPTY;
    }
}
