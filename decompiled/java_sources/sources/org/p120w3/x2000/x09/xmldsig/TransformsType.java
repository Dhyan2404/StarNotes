package org.p120w3.x2000.x09.xmldsig;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface TransformsType extends XmlObject {
    public static final DocumentFactory<TransformsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TransformsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "transformstype659etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    TransformType addNewTransform();

    TransformType getTransformArray(int i);

    TransformType[] getTransformArray();

    List<TransformType> getTransformList();

    TransformType insertNewTransform(int i);

    void removeTransform(int i);

    void setTransformArray(int i, TransformType transformType);

    void setTransformArray(TransformType[] transformTypeArr);

    int sizeOfTransformArray();
}
