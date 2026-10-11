package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLTextTargetElement extends XmlObject {
    public static final DocumentFactory<CTTLTextTargetElement> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLTextTargetElement> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttltexttargetelement6f09type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTIndexRange addNewCharRg();

    CTIndexRange addNewPRg();

    CTIndexRange getCharRg();

    CTIndexRange getPRg();

    boolean isSetCharRg();

    boolean isSetPRg();

    void setCharRg(CTIndexRange cTIndexRange);

    void setPRg(CTIndexRange cTIndexRange);

    void unsetCharRg();

    void unsetPRg();
}
