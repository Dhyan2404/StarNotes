package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSlideSorterViewProperties extends XmlObject {
    public static final DocumentFactory<CTSlideSorterViewProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSlideSorterViewProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctslidesorterviewpropertiesea5btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCommonViewProperties addNewCViewPr();

    CTExtensionList addNewExtLst();

    CTCommonViewProperties getCViewPr();

    CTExtensionList getExtLst();

    boolean getShowFormatting();

    boolean isSetExtLst();

    boolean isSetShowFormatting();

    void setCViewPr(CTCommonViewProperties cTCommonViewProperties);

    void setExtLst(CTExtensionList cTExtensionList);

    void setShowFormatting(boolean z);

    void unsetExtLst();

    void unsetShowFormatting();

    XmlBoolean xgetShowFormatting();

    void xsetShowFormatting(XmlBoolean xmlBoolean);
}
