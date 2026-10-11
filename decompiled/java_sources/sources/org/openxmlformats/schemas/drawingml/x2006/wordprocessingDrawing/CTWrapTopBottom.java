package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTWrapTopBottom extends XmlObject {
    public static final DocumentFactory<CTWrapTopBottom> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWrapTopBottom> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwraptopbottom5e13type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEffectExtent addNewEffectExtent();

    long getDistB();

    long getDistT();

    CTEffectExtent getEffectExtent();

    boolean isSetDistB();

    boolean isSetDistT();

    boolean isSetEffectExtent();

    void setDistB(long j);

    void setDistT(long j);

    void setEffectExtent(CTEffectExtent cTEffectExtent);

    void unsetDistB();

    void unsetDistT();

    void unsetEffectExtent();

    STWrapDistance xgetDistB();

    STWrapDistance xgetDistT();

    void xsetDistB(STWrapDistance sTWrapDistance);

    void xsetDistT(STWrapDistance sTWrapDistance);
}
