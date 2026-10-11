package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STLang;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTKinsoku extends XmlObject {
    public static final DocumentFactory<CTKinsoku> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTKinsoku> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctkinsokuc8bctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getLang();

    String getVal();

    void setLang(String str);

    void setVal(String str);

    STLang xgetLang();

    STString xgetVal();

    void xsetLang(STLang sTLang);

    void xsetVal(STString sTString);
}
