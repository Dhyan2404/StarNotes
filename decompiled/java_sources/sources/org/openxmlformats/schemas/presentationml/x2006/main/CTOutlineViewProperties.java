package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTOutlineViewProperties extends XmlObject {
    public static final DocumentFactory<CTOutlineViewProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOutlineViewProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctoutlineviewproperties3335type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCommonViewProperties addNewCViewPr();

    CTExtensionList addNewExtLst();

    CTOutlineViewSlideList addNewSldLst();

    CTCommonViewProperties getCViewPr();

    CTExtensionList getExtLst();

    CTOutlineViewSlideList getSldLst();

    boolean isSetExtLst();

    boolean isSetSldLst();

    void setCViewPr(CTCommonViewProperties cTCommonViewProperties);

    void setExtLst(CTExtensionList cTExtensionList);

    void setSldLst(CTOutlineViewSlideList cTOutlineViewSlideList);

    void unsetExtLst();

    void unsetSldLst();
}
