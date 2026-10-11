package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTName extends XmlObject {
    public static final DocumentFactory<CTName> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTName> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctname2406type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getLang();

    String getVal();

    boolean isSetLang();

    void setLang(String str);

    void setVal(String str);

    void unsetLang();

    XmlString xgetLang();

    XmlString xgetVal();

    void xsetLang(XmlString xmlString);

    void xsetVal(XmlString xmlString);
}
