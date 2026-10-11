package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STParameterId;

/* loaded from: classes14.dex */
public interface CTParameter extends XmlObject {
    public static final DocumentFactory<CTParameter> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTParameter> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctparameterd792type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STParameterId.Enum getType();

    Object getVal();

    void setType(STParameterId.Enum r1);

    void setVal(Object obj);

    STParameterId xgetType();

    STParameterVal xgetVal();

    void xsetType(STParameterId sTParameterId);

    void xsetVal(STParameterVal sTParameterVal);
}
