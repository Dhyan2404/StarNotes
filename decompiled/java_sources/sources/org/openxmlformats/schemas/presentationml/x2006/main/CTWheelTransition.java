package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTWheelTransition extends XmlObject {
    public static final DocumentFactory<CTWheelTransition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWheelTransition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwheeltransition34bftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getSpokes();

    boolean isSetSpokes();

    void setSpokes(long j);

    void unsetSpokes();

    XmlUnsignedInt xgetSpokes();

    void xsetSpokes(XmlUnsignedInt xmlUnsignedInt);
}
