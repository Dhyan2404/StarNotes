package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTOptionalBlackTransition extends XmlObject {
    public static final DocumentFactory<CTOptionalBlackTransition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOptionalBlackTransition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctoptionalblacktransition811btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getThruBlk();

    boolean isSetThruBlk();

    void setThruBlk(boolean z);

    void unsetThruBlk();

    XmlBoolean xgetThruBlk();

    void xsetThruBlk(XmlBoolean xmlBoolean);
}
