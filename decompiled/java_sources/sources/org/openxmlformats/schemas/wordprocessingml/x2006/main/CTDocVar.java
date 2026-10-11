package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTDocVar extends XmlObject {
    public static final DocumentFactory<CTDocVar> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocVar> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocvar7639type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getName();

    String getVal();

    void setName(String str);

    void setVal(String str);

    STString xgetName();

    STString xgetVal();

    void xsetName(STString sTString);

    void xsetVal(STString sTString);
}
