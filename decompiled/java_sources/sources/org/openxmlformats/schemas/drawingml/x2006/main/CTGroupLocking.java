package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGroupLocking extends XmlObject {
    public static final DocumentFactory<CTGroupLocking> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGroupLocking> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgrouplockingcf73type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTOfficeArtExtensionList getExtLst();

    boolean getNoChangeAspect();

    boolean getNoGrp();

    boolean getNoMove();

    boolean getNoResize();

    boolean getNoRot();

    boolean getNoSelect();

    boolean getNoUngrp();

    boolean isSetExtLst();

    boolean isSetNoChangeAspect();

    boolean isSetNoGrp();

    boolean isSetNoMove();

    boolean isSetNoResize();

    boolean isSetNoRot();

    boolean isSetNoSelect();

    boolean isSetNoUngrp();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setNoChangeAspect(boolean z);

    void setNoGrp(boolean z);

    void setNoMove(boolean z);

    void setNoResize(boolean z);

    void setNoRot(boolean z);

    void setNoSelect(boolean z);

    void setNoUngrp(boolean z);

    void unsetExtLst();

    void unsetNoChangeAspect();

    void unsetNoGrp();

    void unsetNoMove();

    void unsetNoResize();

    void unsetNoRot();

    void unsetNoSelect();

    void unsetNoUngrp();

    XmlBoolean xgetNoChangeAspect();

    XmlBoolean xgetNoGrp();

    XmlBoolean xgetNoMove();

    XmlBoolean xgetNoResize();

    XmlBoolean xgetNoRot();

    XmlBoolean xgetNoSelect();

    XmlBoolean xgetNoUngrp();

    void xsetNoChangeAspect(XmlBoolean xmlBoolean);

    void xsetNoGrp(XmlBoolean xmlBoolean);

    void xsetNoMove(XmlBoolean xmlBoolean);

    void xsetNoResize(XmlBoolean xmlBoolean);

    void xsetNoRot(XmlBoolean xmlBoolean);

    void xsetNoSelect(XmlBoolean xmlBoolean);

    void xsetNoUngrp(XmlBoolean xmlBoolean);
}
