package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STRubyAlign;

/* loaded from: classes16.dex */
public interface CTRubyAlign extends XmlObject {
    public static final DocumentFactory<CTRubyAlign> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRubyAlign> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrubyalign41e7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STRubyAlign.Enum getVal();

    void setVal(STRubyAlign.Enum r1);

    STRubyAlign xgetVal();

    void xsetVal(STRubyAlign sTRubyAlign);
}
