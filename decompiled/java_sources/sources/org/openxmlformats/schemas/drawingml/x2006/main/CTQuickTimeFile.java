package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTQuickTimeFile extends XmlObject {
    public static final DocumentFactory<CTQuickTimeFile> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTQuickTimeFile> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctquicktimefile2567type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTOfficeArtExtensionList getExtLst();

    String getLink();

    boolean isSetExtLst();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setLink(String str);

    void unsetExtLst();

    STRelationshipId xgetLink();

    void xsetLink(STRelationshipId sTRelationshipId);
}
