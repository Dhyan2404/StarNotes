package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTwipsMeasure;

/* loaded from: classes16.dex */
public interface CTLvlLegacy extends XmlObject {
    public static final DocumentFactory<CTLvlLegacy> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLvlLegacy> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlvllegacy10a7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getLegacy();

    Object getLegacyIndent();

    Object getLegacySpace();

    boolean isSetLegacy();

    boolean isSetLegacyIndent();

    boolean isSetLegacySpace();

    void setLegacy(Object obj);

    void setLegacyIndent(Object obj);

    void setLegacySpace(Object obj);

    void unsetLegacy();

    void unsetLegacyIndent();

    void unsetLegacySpace();

    STOnOff xgetLegacy();

    STSignedTwipsMeasure xgetLegacyIndent();

    STTwipsMeasure xgetLegacySpace();

    void xsetLegacy(STOnOff sTOnOff);

    void xsetLegacyIndent(STSignedTwipsMeasure sTSignedTwipsMeasure);

    void xsetLegacySpace(STTwipsMeasure sTTwipsMeasure);
}
