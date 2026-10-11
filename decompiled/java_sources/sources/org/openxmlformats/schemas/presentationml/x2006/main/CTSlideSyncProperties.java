package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.Calendar;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSlideSyncProperties extends XmlObject {
    public static final DocumentFactory<CTSlideSyncProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSlideSyncProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctslidesyncproperties01b0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    Calendar getClientInsertedTime();

    CTExtensionList getExtLst();

    String getServerSldId();

    Calendar getServerSldModifiedTime();

    boolean isSetExtLst();

    void setClientInsertedTime(Calendar calendar);

    void setExtLst(CTExtensionList cTExtensionList);

    void setServerSldId(String str);

    void setServerSldModifiedTime(Calendar calendar);

    void unsetExtLst();

    XmlDateTime xgetClientInsertedTime();

    XmlString xgetServerSldId();

    XmlDateTime xgetServerSldModifiedTime();

    void xsetClientInsertedTime(XmlDateTime xmlDateTime);

    void xsetServerSldId(XmlString xmlString);

    void xsetServerSldModifiedTime(XmlDateTime xmlDateTime);
}
