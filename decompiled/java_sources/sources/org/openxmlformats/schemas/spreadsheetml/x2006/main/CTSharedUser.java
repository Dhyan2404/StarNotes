package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.Calendar;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTSharedUser extends XmlObject {
    public static final DocumentFactory<CTSharedUser> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSharedUser> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsharedusera759type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    Calendar getDateTime();

    CTExtensionList getExtLst();

    String getGuid();

    int getId();

    String getName();

    boolean isSetExtLst();

    void setDateTime(Calendar calendar);

    void setExtLst(CTExtensionList cTExtensionList);

    void setGuid(String str);

    void setId(int i);

    void setName(String str);

    void unsetExtLst();

    XmlDateTime xgetDateTime();

    STGuid xgetGuid();

    XmlInt xgetId();

    STXstring xgetName();

    void xsetDateTime(XmlDateTime xmlDateTime);

    void xsetGuid(STGuid sTGuid);

    void xsetId(XmlInt xmlInt);

    void xsetName(STXstring sTXstring);
}
