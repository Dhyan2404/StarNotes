package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextBulletSize;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextBulletSizeDecimal;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextBulletSizePercent;

/* loaded from: classes14.dex */
public class STTextBulletSizeImpl extends XmlUnionImpl implements STTextBulletSize, STTextBulletSizePercent, STTextBulletSizeDecimal {
    private static final long serialVersionUID = 1;

    public STTextBulletSizeImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public STTextBulletSizeImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
