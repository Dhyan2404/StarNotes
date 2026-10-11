package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.STLblOffset;
import org.openxmlformats.schemas.drawingml.x2006.chart.STLblOffsetPercent;
import org.openxmlformats.schemas.drawingml.x2006.chart.STLblOffsetUShort;

/* loaded from: classes14.dex */
public class STLblOffsetImpl extends XmlUnionImpl implements STLblOffset, STLblOffsetPercent, STLblOffsetUShort {
    private static final long serialVersionUID = 1;

    public STLblOffsetImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public STLblOffsetImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
