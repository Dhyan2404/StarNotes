package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTAutoCaption extends XmlObject {
    public static final DocumentFactory<CTAutoCaption> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAutoCaption> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctautocaption8c3btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCaption();

    String getName();

    void setCaption(String str);

    void setName(String str);

    STString xgetCaption();

    STString xgetName();

    void xsetCaption(STString sTString);

    void xsetName(STString sTString);
}
