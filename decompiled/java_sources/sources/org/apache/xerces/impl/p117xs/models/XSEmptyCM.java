package org.apache.xerces.impl.p117xs.models;

import java.util.Vector;
import org.apache.xerces.impl.p117xs.SubstitutionGroupHandler;
import org.apache.xerces.impl.p117xs.XMLSchemaException;
import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class XSEmptyCM implements XSCMValidator {

    /* renamed from: a */
    public static final short f113006a = 0;

    /* renamed from: b */
    public static final Vector f113007b = new Vector(0);

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public boolean checkUniqueParticleAttribution(SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException {
        return false;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public boolean endContentModel(int[] iArr) {
        return iArr[0] >= 0;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public String getTermName(int i) {
        return null;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public boolean isCompactedForUPA() {
        return false;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public int[] occurenceInfo(int[] iArr) {
        return null;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public Object oneTransition(QName qName, int[] iArr, SubstitutionGroupHandler substitutionGroupHandler) {
        if (iArr[0] < 0) {
            iArr[0] = -2;
            return null;
        }
        iArr[0] = -1;
        return null;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public int[] startContentModel() {
        return new int[]{0};
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public Vector whatCanGoHere(int[] iArr) {
        return f113007b;
    }
}
