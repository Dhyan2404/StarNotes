package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBulletEnabled extends XmlObject {
    public static final DocumentFactory<CTBulletEnabled> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBulletEnabled> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbulletenabledf99ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getVal();

    boolean isSetVal();

    void setVal(boolean z);

    void unsetVal();

    XmlBoolean xgetVal();

    void xsetVal(XmlBoolean xmlBoolean);
}
