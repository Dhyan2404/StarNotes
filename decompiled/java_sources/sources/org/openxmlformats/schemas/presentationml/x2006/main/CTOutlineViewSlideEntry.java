package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTOutlineViewSlideEntry extends XmlObject {
    public static final DocumentFactory<CTOutlineViewSlideEntry> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOutlineViewSlideEntry> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctoutlineviewslideentry9e67type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getCollapse();

    String getId();

    boolean isSetCollapse();

    void setCollapse(boolean z);

    void setId(String str);

    void unsetCollapse();

    XmlBoolean xgetCollapse();

    STRelationshipId xgetId();

    void xsetCollapse(XmlBoolean xmlBoolean);

    void xsetId(STRelationshipId sTRelationshipId);
}
