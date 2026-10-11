package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;

/* loaded from: classes7.dex */
public interface CTPerson extends XmlObject {
    public static final DocumentFactory<CTPerson> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPerson> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctperson1ee6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    String getDisplayName();

    CTExtensionList getExtLst();

    String getId();

    String getProviderId();

    String getUserId();

    boolean isSetExtLst();

    boolean isSetProviderId();

    boolean isSetUserId();

    void setDisplayName(String str);

    void setExtLst(CTExtensionList cTExtensionList);

    void setId(String str);

    void setProviderId(String str);

    void setUserId(String str);

    void unsetExtLst();

    void unsetProviderId();

    void unsetUserId();

    STXstring xgetDisplayName();

    STGuid xgetId();

    STXstring xgetProviderId();

    STXstring xgetUserId();

    void xsetDisplayName(STXstring sTXstring);

    void xsetId(STGuid sTGuid);

    void xsetProviderId(STXstring sTXstring);

    void xsetUserId(STXstring sTXstring);
}
