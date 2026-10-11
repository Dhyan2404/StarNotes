package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.Calendar;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTRevisionHeader extends XmlObject {
    public static final DocumentFactory<CTRevisionHeader> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionHeader> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisionheader6b51type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTReviewedRevisions addNewReviewedList();

    CTSheetIdMap addNewSheetIdMap();

    Calendar getDateTime();

    CTExtensionList getExtLst();

    String getGuid();

    String getId();

    long getMaxRId();

    long getMaxSheetId();

    long getMinRId();

    CTReviewedRevisions getReviewedList();

    CTSheetIdMap getSheetIdMap();

    String getUserName();

    boolean isSetExtLst();

    boolean isSetMaxRId();

    boolean isSetMinRId();

    boolean isSetReviewedList();

    void setDateTime(Calendar calendar);

    void setExtLst(CTExtensionList cTExtensionList);

    void setGuid(String str);

    void setId(String str);

    void setMaxRId(long j);

    void setMaxSheetId(long j);

    void setMinRId(long j);

    void setReviewedList(CTReviewedRevisions cTReviewedRevisions);

    void setSheetIdMap(CTSheetIdMap cTSheetIdMap);

    void setUserName(String str);

    void unsetExtLst();

    void unsetMaxRId();

    void unsetMinRId();

    void unsetReviewedList();

    XmlDateTime xgetDateTime();

    STGuid xgetGuid();

    STRelationshipId xgetId();

    XmlUnsignedInt xgetMaxRId();

    XmlUnsignedInt xgetMaxSheetId();

    XmlUnsignedInt xgetMinRId();

    STXstring xgetUserName();

    void xsetDateTime(XmlDateTime xmlDateTime);

    void xsetGuid(STGuid sTGuid);

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetMaxRId(XmlUnsignedInt xmlUnsignedInt);

    void xsetMaxSheetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetMinRId(XmlUnsignedInt xmlUnsignedInt);

    void xsetUserName(STXstring sTXstring);
}
