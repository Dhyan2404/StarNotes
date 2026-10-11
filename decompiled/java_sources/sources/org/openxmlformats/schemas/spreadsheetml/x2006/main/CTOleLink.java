package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTOleLink extends XmlObject {
    public static final DocumentFactory<CTOleLink> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOleLink> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctolelinkda21type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOleItems addNewOleItems();

    String getId();

    CTOleItems getOleItems();

    String getProgId();

    boolean isSetOleItems();

    void setId(String str);

    void setOleItems(CTOleItems cTOleItems);

    void setProgId(String str);

    void unsetOleItems();

    STRelationshipId xgetId();

    STXstring xgetProgId();

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetProgId(STXstring sTXstring);
}
