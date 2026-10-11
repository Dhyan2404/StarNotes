package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTAudioFile extends XmlObject {
    public static final DocumentFactory<CTAudioFile> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAudioFile> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctaudiofile1563type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    String getContentType();

    CTOfficeArtExtensionList getExtLst();

    String getLink();

    boolean isSetContentType();

    boolean isSetExtLst();

    void setContentType(String str);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setLink(String str);

    void unsetContentType();

    void unsetExtLst();

    XmlString xgetContentType();

    STRelationshipId xgetLink();

    void xsetContentType(XmlString xmlString);

    void xsetLink(STRelationshipId sTRelationshipId);
}
