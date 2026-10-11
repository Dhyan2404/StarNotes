package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTRelativeOffsetEffect extends XmlObject {
    public static final DocumentFactory<CTRelativeOffsetEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRelativeOffsetEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrelativeoffseteffect220btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getTx();

    Object getTy();

    boolean isSetTx();

    boolean isSetTy();

    void setTx(Object obj);

    void setTy(Object obj);

    void unsetTx();

    void unsetTy();

    STPercentage xgetTx();

    STPercentage xgetTy();

    void xsetTx(STPercentage sTPercentage);

    void xsetTy(STPercentage sTPercentage);
}
