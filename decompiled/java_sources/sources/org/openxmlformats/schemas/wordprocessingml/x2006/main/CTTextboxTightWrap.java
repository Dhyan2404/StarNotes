package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTextboxTightWrap;

/* loaded from: classes16.dex */
public interface CTTextboxTightWrap extends XmlObject {
    public static final DocumentFactory<CTTextboxTightWrap> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTextboxTightWrap> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttextboxtightwrap2e7etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTextboxTightWrap.Enum getVal();

    void setVal(STTextboxTightWrap.Enum r1);

    STTextboxTightWrap xgetVal();

    void xsetVal(STTextboxTightWrap sTTextboxTightWrap);
}
