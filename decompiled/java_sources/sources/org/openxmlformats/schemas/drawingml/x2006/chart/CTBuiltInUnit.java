package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBuiltInUnit;

/* loaded from: classes14.dex */
public interface CTBuiltInUnit extends XmlObject {
    public static final DocumentFactory<CTBuiltInUnit> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBuiltInUnit> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbuiltinunit469ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STBuiltInUnit.Enum getVal();

    boolean isSetVal();

    void setVal(STBuiltInUnit.Enum r1);

    void unsetVal();

    STBuiltInUnit xgetVal();

    void xsetVal(STBuiltInUnit sTBuiltInUnit);
}
