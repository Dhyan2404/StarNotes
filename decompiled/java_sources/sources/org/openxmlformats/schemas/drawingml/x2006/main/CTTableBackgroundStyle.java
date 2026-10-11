package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTableBackgroundStyle extends XmlObject {
    public static final DocumentFactory<CTTableBackgroundStyle> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTableBackgroundStyle> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttablebackgroundstyleead0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEffectProperties addNewEffect();

    CTStyleMatrixReference addNewEffectRef();

    CTFillProperties addNewFill();

    CTStyleMatrixReference addNewFillRef();

    CTEffectProperties getEffect();

    CTStyleMatrixReference getEffectRef();

    CTFillProperties getFill();

    CTStyleMatrixReference getFillRef();

    boolean isSetEffect();

    boolean isSetEffectRef();

    boolean isSetFill();

    boolean isSetFillRef();

    void setEffect(CTEffectProperties cTEffectProperties);

    void setEffectRef(CTStyleMatrixReference cTStyleMatrixReference);

    void setFill(CTFillProperties cTFillProperties);

    void setFillRef(CTStyleMatrixReference cTStyleMatrixReference);

    void unsetEffect();

    void unsetEffectRef();

    void unsetFill();

    void unsetFillRef();
}
