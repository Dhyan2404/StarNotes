package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STSplitterBarState;

/* loaded from: classes14.dex */
public interface CTNormalViewProperties extends XmlObject {
    public static final DocumentFactory<CTNormalViewProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNormalViewProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnormalviewproperties8546type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTNormalViewPortion addNewRestoredLeft();

    CTNormalViewPortion addNewRestoredTop();

    CTExtensionList getExtLst();

    STSplitterBarState.Enum getHorzBarState();

    boolean getPreferSingleView();

    CTNormalViewPortion getRestoredLeft();

    CTNormalViewPortion getRestoredTop();

    boolean getShowOutlineIcons();

    boolean getSnapVertSplitter();

    STSplitterBarState.Enum getVertBarState();

    boolean isSetExtLst();

    boolean isSetHorzBarState();

    boolean isSetPreferSingleView();

    boolean isSetShowOutlineIcons();

    boolean isSetSnapVertSplitter();

    boolean isSetVertBarState();

    void setExtLst(CTExtensionList cTExtensionList);

    void setHorzBarState(STSplitterBarState.Enum r1);

    void setPreferSingleView(boolean z);

    void setRestoredLeft(CTNormalViewPortion cTNormalViewPortion);

    void setRestoredTop(CTNormalViewPortion cTNormalViewPortion);

    void setShowOutlineIcons(boolean z);

    void setSnapVertSplitter(boolean z);

    void setVertBarState(STSplitterBarState.Enum r1);

    void unsetExtLst();

    void unsetHorzBarState();

    void unsetPreferSingleView();

    void unsetShowOutlineIcons();

    void unsetSnapVertSplitter();

    void unsetVertBarState();

    STSplitterBarState xgetHorzBarState();

    XmlBoolean xgetPreferSingleView();

    XmlBoolean xgetShowOutlineIcons();

    XmlBoolean xgetSnapVertSplitter();

    STSplitterBarState xgetVertBarState();

    void xsetHorzBarState(STSplitterBarState sTSplitterBarState);

    void xsetPreferSingleView(XmlBoolean xmlBoolean);

    void xsetShowOutlineIcons(XmlBoolean xmlBoolean);

    void xsetSnapVertSplitter(XmlBoolean xmlBoolean);

    void xsetVertBarState(STSplitterBarState sTSplitterBarState);
}
