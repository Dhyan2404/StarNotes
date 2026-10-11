package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTCustomShow extends XmlObject {
    public static final DocumentFactory<CTCustomShow> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCustomShow> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcustomshow4617type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTSlideRelationshipList addNewSldLst();

    CTExtensionList getExtLst();

    long getId();

    String getName();

    CTSlideRelationshipList getSldLst();

    boolean isSetExtLst();

    void setExtLst(CTExtensionList cTExtensionList);

    void setId(long j);

    void setName(String str);

    void setSldLst(CTSlideRelationshipList cTSlideRelationshipList);

    void unsetExtLst();

    XmlUnsignedInt xgetId();

    STName xgetName();

    void xsetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetName(STName sTName);
}
