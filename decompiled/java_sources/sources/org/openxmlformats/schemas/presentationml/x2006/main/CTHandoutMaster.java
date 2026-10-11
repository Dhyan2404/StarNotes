package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorMapping;

/* loaded from: classes14.dex */
public interface CTHandoutMaster extends XmlObject {
    public static final DocumentFactory<CTHandoutMaster> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTHandoutMaster> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cthandoutmasterb6aetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCommonSlideData addNewCSld();

    CTColorMapping addNewClrMap();

    CTExtensionListModify addNewExtLst();

    CTHeaderFooter addNewHf();

    CTCommonSlideData getCSld();

    CTColorMapping getClrMap();

    CTExtensionListModify getExtLst();

    CTHeaderFooter getHf();

    boolean isSetExtLst();

    boolean isSetHf();

    void setCSld(CTCommonSlideData cTCommonSlideData);

    void setClrMap(CTColorMapping cTColorMapping);

    void setExtLst(CTExtensionListModify cTExtensionListModify);

    void setHf(CTHeaderFooter cTHeaderFooter);

    void unsetExtLst();

    void unsetHf();
}
