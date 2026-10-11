package org.apache.xerces.impl.p117xs.models;

import java.util.Vector;
import org.apache.xerces.impl.p117xs.SubstitutionGroupHandler;
import org.apache.xerces.impl.p117xs.XMLSchemaException;
import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public interface XSCMValidator {
    public static final short FIRST_ERROR = -1;
    public static final short SUBSEQUENT_ERROR = -2;

    boolean checkUniqueParticleAttribution(SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException;

    boolean endContentModel(int[] iArr);

    String getTermName(int i);

    boolean isCompactedForUPA();

    int[] occurenceInfo(int[] iArr);

    Object oneTransition(QName qName, int[] iArr, SubstitutionGroupHandler substitutionGroupHandler);

    int[] startContentModel();

    Vector whatCanGoHere(int[] iArr);
}
