package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTNumDataSource extends XmlObject {
    public static final DocumentFactory<CTNumDataSource> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNumDataSource> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnumdatasourcef0bbtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNumData addNewNumLit();

    CTNumRef addNewNumRef();

    CTNumData getNumLit();

    CTNumRef getNumRef();

    boolean isSetNumLit();

    boolean isSetNumRef();

    void setNumLit(CTNumData cTNumData);

    void setNumRef(CTNumRef cTNumRef);

    void unsetNumLit();

    void unsetNumRef();
}
