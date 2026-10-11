package com.sun.org.apache.xerces.internal.impl.p055xs.models;

import com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException;
import com.sun.org.apache.xerces.internal.xni.QName;
import java.util.Vector;

/* loaded from: classes10.dex */
public interface XSCMValidator {
    public static final short FIRST_ERROR = -1;
    public static final short SUBSEQUENT_ERROR = -2;

    boolean checkUniqueParticleAttribution(SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException;

    boolean endContentModel(int[] iArr);

    Object oneTransition(QName qName, int[] iArr, SubstitutionGroupHandler substitutionGroupHandler);

    int[] startContentModel();

    Vector whatCanGoHere(int[] iArr);
}
