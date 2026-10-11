package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTMacroName extends XmlObject {
    public static final DocumentFactory<CTMacroName> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMacroName> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmacroname363btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getVal();

    void setVal(String str);

    STMacroName xgetVal();

    void xsetVal(STMacroName sTMacroName);
}
