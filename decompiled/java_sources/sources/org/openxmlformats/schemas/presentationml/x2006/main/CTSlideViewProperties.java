package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSlideViewProperties extends XmlObject {
    public static final DocumentFactory<CTSlideViewProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSlideViewProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctslideviewpropertiesa7e6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCommonSlideViewProperties addNewCSldViewPr();

    CTExtensionList addNewExtLst();

    CTCommonSlideViewProperties getCSldViewPr();

    CTExtensionList getExtLst();

    boolean isSetExtLst();

    void setCSldViewPr(CTCommonSlideViewProperties cTCommonSlideViewProperties);

    void setExtLst(CTExtensionList cTExtensionList);

    void unsetExtLst();
}
