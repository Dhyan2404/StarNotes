package org.apache.xerces.impl.p117xs.models;

import java.util.Vector;
import org.apache.xerces.impl.p117xs.SubstitutionGroupHandler;
import org.apache.xerces.impl.p117xs.XMLSchemaException;
import org.apache.xerces.impl.p117xs.XSConstraints;
import org.apache.xerces.impl.p117xs.XSElementDecl;
import org.apache.xerces.xni.QName;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes13.dex */
public class XSAllCM implements XSCMValidator {

    /* renamed from: e */
    public static final short f112971e = 0;

    /* renamed from: f */
    public static final short f112972f = 1;

    /* renamed from: g */
    public static final short f112973g = 1;

    /* renamed from: a */
    public final XSElementDecl[] f112974a;

    /* renamed from: b */
    public final boolean[] f112975b;

    /* renamed from: c */
    public final boolean f112976c;

    /* renamed from: d */
    public int f112977d = 0;

    public XSAllCM(boolean z, int i) {
        this.f112976c = z;
        this.f112974a = new XSElementDecl[i];
        this.f112975b = new boolean[i];
    }

    /* renamed from: a */
    public Object m70278a(QName qName, SubstitutionGroupHandler substitutionGroupHandler) {
        XSElementDecl xSElementDecl = null;
        for (int i = 0; i < this.f112977d && (xSElementDecl = substitutionGroupHandler.getMatchingElemDecl(qName, this.f112974a[i])) == null; i++) {
        }
        return xSElementDecl;
    }

    public void addElement(XSElementDecl xSElementDecl, boolean z) {
        XSElementDecl[] xSElementDeclArr = this.f112974a;
        int i = this.f112977d;
        xSElementDeclArr[i] = xSElementDecl;
        this.f112975b[i] = z;
        this.f112977d = i + 1;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public boolean checkUniqueParticleAttribution(SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException {
        int i = 0;
        while (i < this.f112977d) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.f112977d; i3++) {
                XSElementDecl[] xSElementDeclArr = this.f112974a;
                if (XSConstraints.overlapUPA(xSElementDeclArr[i], xSElementDeclArr[i3], substitutionGroupHandler)) {
                    throw new XMLSchemaException(XmlErrorCodes.UNIQUE_PARTICLE_ATTRIBUTION, new Object[]{this.f112974a[i].toString(), this.f112974a[i3].toString()});
                }
            }
            i = i2;
        }
        return false;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public boolean endContentModel(int[] iArr) {
        int i = iArr[0];
        if (i == -1 || i == -2) {
            return false;
        }
        if (this.f112976c && i == 0) {
            return true;
        }
        for (int i2 = 0; i2 < this.f112977d; i2++) {
            if (!this.f112975b[i2] && iArr[i2 + 1] == 0) {
                return false;
            }
        }
        return true;
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
        XSElementDecl matchingElemDecl;
        if (iArr[0] < 0) {
            iArr[0] = -2;
        } else {
            iArr[0] = 1;
            int i = 0;
            while (i < this.f112977d) {
                int i2 = i + 1;
                if (iArr[i2] == 0 && (matchingElemDecl = substitutionGroupHandler.getMatchingElemDecl(qName, this.f112974a[i])) != null) {
                    iArr[i2] = 1;
                    return matchingElemDecl;
                }
                i = i2;
            }
            iArr[0] = -1;
        }
        return m70278a(qName, substitutionGroupHandler);
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public int[] startContentModel() {
        int[] iArr = new int[this.f112977d + 1];
        for (int i = 0; i <= this.f112977d; i++) {
            iArr[i] = 0;
        }
        return iArr;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public Vector whatCanGoHere(int[] iArr) {
        Vector vector = new Vector();
        int i = 0;
        while (i < this.f112977d) {
            int i2 = i + 1;
            if (iArr[i2] == 0) {
                vector.addElement(this.f112974a[i]);
            }
            i = i2;
        }
        return vector;
    }
}
