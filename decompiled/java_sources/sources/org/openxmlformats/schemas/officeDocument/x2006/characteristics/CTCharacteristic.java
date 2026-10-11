package org.openxmlformats.schemas.officeDocument.x2006.characteristics;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.characteristics.STRelation;

/* loaded from: classes14.dex */
public interface CTCharacteristic extends XmlObject {
    public static final DocumentFactory<CTCharacteristic> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCharacteristic> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcharacteristic2b69type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getName();

    STRelation.Enum getRelation();

    String getVal();

    String getVocabulary();

    boolean isSetVocabulary();

    void setName(String str);

    void setRelation(STRelation.Enum r1);

    void setVal(String str);

    void setVocabulary(String str);

    void unsetVocabulary();

    XmlString xgetName();

    STRelation xgetRelation();

    XmlString xgetVal();

    XmlAnyURI xgetVocabulary();

    void xsetName(XmlString xmlString);

    void xsetRelation(STRelation sTRelation);

    void xsetVal(XmlString xmlString);

    void xsetVocabulary(XmlAnyURI xmlAnyURI);
}
