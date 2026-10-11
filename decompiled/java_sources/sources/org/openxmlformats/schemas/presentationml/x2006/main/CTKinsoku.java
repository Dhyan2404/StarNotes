package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTKinsoku extends XmlObject {
    public static final DocumentFactory<CTKinsoku> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTKinsoku> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctkinsoku0179type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getInvalEndChars();

    String getInvalStChars();

    String getLang();

    boolean isSetLang();

    void setInvalEndChars(String str);

    void setInvalStChars(String str);

    void setLang(String str);

    void unsetLang();

    XmlString xgetInvalEndChars();

    XmlString xgetInvalStChars();

    XmlString xgetLang();

    void xsetInvalEndChars(XmlString xmlString);

    void xsetInvalStChars(XmlString xmlString);

    void xsetLang(XmlString xmlString);
}
