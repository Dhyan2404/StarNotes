package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.STHoleSize;
import org.openxmlformats.schemas.drawingml.x2006.chart.STHoleSizePercent;
import org.openxmlformats.schemas.drawingml.x2006.chart.STHoleSizeUByte;

/* loaded from: classes14.dex */
public class STHoleSizeImpl extends XmlUnionImpl implements STHoleSize, STHoleSizePercent, STHoleSizeUByte {
    private static final long serialVersionUID = 1;

    public STHoleSizeImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public STHoleSizeImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
