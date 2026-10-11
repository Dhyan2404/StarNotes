package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STHierBranchStyle;

/* loaded from: classes14.dex */
public interface CTHierBranchStyle extends XmlObject {
    public static final DocumentFactory<CTHierBranchStyle> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTHierBranchStyle> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cthierbranchstyle439atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STHierBranchStyle.Enum getVal();

    boolean isSetVal();

    void setVal(STHierBranchStyle.Enum r1);

    void unsetVal();

    STHierBranchStyle xgetVal();

    void xsetVal(STHierBranchStyle sTHierBranchStyle);
}
