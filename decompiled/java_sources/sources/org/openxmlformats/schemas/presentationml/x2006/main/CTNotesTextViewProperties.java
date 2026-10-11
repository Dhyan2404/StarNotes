package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTNotesTextViewProperties extends XmlObject {
    public static final DocumentFactory<CTNotesTextViewProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNotesTextViewProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnotestextviewproperties9c29type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCommonViewProperties addNewCViewPr();

    CTExtensionList addNewExtLst();

    CTCommonViewProperties getCViewPr();

    CTExtensionList getExtLst();

    boolean isSetExtLst();

    void setCViewPr(CTCommonViewProperties cTCommonViewProperties);

    void setExtLst(CTExtensionList cTExtensionList);

    void unsetExtLst();
}
