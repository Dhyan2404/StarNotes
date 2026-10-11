package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STModelId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;

/* loaded from: classes14.dex */
public class STModelIdImpl extends XmlUnionImpl implements STModelId, XmlInt, STGuid {
    private static final long serialVersionUID = 1;

    public STModelIdImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public STModelIdImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
