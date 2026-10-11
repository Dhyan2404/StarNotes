package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSDName extends XmlObject {
    public static final DocumentFactory<CTSDName> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSDName> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsdname5095type");
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
