package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STBevelPresetType;

/* loaded from: classes14.dex */
public interface CTBevel extends XmlObject {
    public static final DocumentFactory<CTBevel> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBevel> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbevel1aebtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getH();

    STBevelPresetType.Enum getPrst();

    long getW();

    boolean isSetH();

    boolean isSetPrst();

    boolean isSetW();

    void setH(long j);

    void setPrst(STBevelPresetType.Enum r1);

    void setW(long j);

    void unsetH();

    void unsetPrst();

    void unsetW();

    STPositiveCoordinate xgetH();

    STBevelPresetType xgetPrst();

    STPositiveCoordinate xgetW();

    void xsetH(STPositiveCoordinate sTPositiveCoordinate);

    void xsetPrst(STBevelPresetType sTBevelPresetType);

    void xsetW(STPositiveCoordinate sTPositiveCoordinate);
}
