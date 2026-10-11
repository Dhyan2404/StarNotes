package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STPresetLineDashVal;

/* loaded from: classes14.dex */
public interface CTPresetLineDashProperties extends XmlObject {
    public static final DocumentFactory<CTPresetLineDashProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPresetLineDashProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpresetlinedashproperties4553type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STPresetLineDashVal.Enum getVal();

    boolean isSetVal();

    void setVal(STPresetLineDashVal.Enum r1);

    void unsetVal();

    STPresetLineDashVal xgetVal();

    void xsetVal(STPresetLineDashVal sTPresetLineDashVal);
}
