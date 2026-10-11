package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTSlideLayoutIdListEntry extends XmlObject {
    public static final DocumentFactory<CTSlideLayoutIdListEntry> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSlideLayoutIdListEntry> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctslidelayoutidlistentry8947type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTExtensionList getExtLst();

    long getId();

    String getId2();

    boolean isSetExtLst();

    boolean isSetId();

    void setExtLst(CTExtensionList cTExtensionList);

    void setId(long j);

    void setId2(String str);

    void unsetExtLst();

    void unsetId();

    STSlideLayoutId xgetId();

    STRelationshipId xgetId2();

    void xsetId(STSlideLayoutId sTSlideLayoutId);

    void xsetId2(STRelationshipId sTRelationshipId);
}
