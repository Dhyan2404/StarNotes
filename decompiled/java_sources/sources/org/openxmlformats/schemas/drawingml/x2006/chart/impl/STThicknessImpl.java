package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.STThickness;
import org.openxmlformats.schemas.drawingml.x2006.chart.STThicknessPercent;

/* loaded from: classes14.dex */
public class STThicknessImpl extends XmlUnionImpl implements STThickness, STThicknessPercent, XmlUnsignedInt {
    private static final long serialVersionUID = 1;

    public STThicknessImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public STThicknessImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
