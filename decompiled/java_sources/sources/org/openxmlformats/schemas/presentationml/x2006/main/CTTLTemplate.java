package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLTemplate extends XmlObject {
    public static final DocumentFactory<CTTLTemplate> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLTemplate> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttltemplate3ab3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTimeNodeList addNewTnLst();

    long getLvl();

    CTTimeNodeList getTnLst();

    boolean isSetLvl();

    void setLvl(long j);

    void setTnLst(CTTimeNodeList cTTimeNodeList);

    void unsetLvl();

    XmlUnsignedInt xgetLvl();

    void xsetLvl(XmlUnsignedInt xmlUnsignedInt);
}
