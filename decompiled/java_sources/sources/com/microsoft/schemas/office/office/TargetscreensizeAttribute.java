package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STScreenSize;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface TargetscreensizeAttribute extends XmlObject {
    public static final DocumentFactory<TargetscreensizeAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TargetscreensizeAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "targetscreensize47a7attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STScreenSize.Enum getTargetscreensize();

    boolean isSetTargetscreensize();

    void setTargetscreensize(STScreenSize.Enum r1);

    void unsetTargetscreensize();

    STScreenSize xgetTargetscreensize();

    void xsetTargetscreensize(STScreenSize sTScreenSize);
}
