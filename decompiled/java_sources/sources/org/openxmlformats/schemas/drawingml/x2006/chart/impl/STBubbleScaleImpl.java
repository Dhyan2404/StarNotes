package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBubbleScale;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBubbleScalePercent;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBubbleScaleUInt;

/* loaded from: classes14.dex */
public class STBubbleScaleImpl extends XmlUnionImpl implements STBubbleScale, STBubbleScalePercent, STBubbleScaleUInt {
    private static final long serialVersionUID = 1;

    public STBubbleScaleImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public STBubbleScaleImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
