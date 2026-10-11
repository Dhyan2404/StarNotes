package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTShowInfoBrowse extends XmlObject {
    public static final DocumentFactory<CTShowInfoBrowse> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTShowInfoBrowse> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctshowinfobrowse7a90type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getShowScrollbar();

    boolean isSetShowScrollbar();

    void setShowScrollbar(boolean z);

    void unsetShowScrollbar();

    XmlBoolean xgetShowScrollbar();

    void xsetShowScrollbar(XmlBoolean xmlBoolean);
}
