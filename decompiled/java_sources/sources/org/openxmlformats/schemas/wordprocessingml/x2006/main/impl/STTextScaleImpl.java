package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTextScale;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTextScaleDecimal;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTextScalePercent;

/* loaded from: classes16.dex */
public class STTextScaleImpl extends XmlUnionImpl implements STTextScale, STTextScalePercent, STTextScaleDecimal {
    private static final long serialVersionUID = 1;

    public STTextScaleImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public STTextScaleImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
