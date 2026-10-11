package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTDdeLink extends XmlObject {
    public static final DocumentFactory<CTDdeLink> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDdeLink> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctddelink931etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDdeItems addNewDdeItems();

    CTDdeItems getDdeItems();

    String getDdeService();

    String getDdeTopic();

    boolean isSetDdeItems();

    void setDdeItems(CTDdeItems cTDdeItems);

    void setDdeService(String str);

    void setDdeTopic(String str);

    void unsetDdeItems();

    STXstring xgetDdeService();

    STXstring xgetDdeTopic();

    void xsetDdeService(STXstring sTXstring);

    void xsetDdeTopic(STXstring sTXstring);
}
