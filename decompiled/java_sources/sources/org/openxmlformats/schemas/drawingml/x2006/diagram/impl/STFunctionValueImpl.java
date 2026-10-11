package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAnimLvlStr;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAnimOneStr;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STDirection;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STFunctionValue;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STHierBranchStyle;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STResizeHandlesStr;

/* loaded from: classes14.dex */
public class STFunctionValueImpl extends XmlUnionImpl implements STFunctionValue, XmlInt, XmlBoolean, STDirection, STHierBranchStyle, STAnimOneStr, STAnimLvlStr, STResizeHandlesStr {
    private static final long serialVersionUID = 1;

    public STFunctionValueImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public STFunctionValueImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
