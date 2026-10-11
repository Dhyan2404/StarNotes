package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTTop10 extends XmlObject {
    public static final DocumentFactory<CTTop10> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTop10> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttop101253type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    double getFilterVal();

    boolean getPercent();

    boolean getTop();

    double getVal();

    boolean isSetFilterVal();

    boolean isSetPercent();

    boolean isSetTop();

    void setFilterVal(double d);

    void setPercent(boolean z);

    void setTop(boolean z);

    void setVal(double d);

    void unsetFilterVal();

    void unsetPercent();

    void unsetTop();

    XmlDouble xgetFilterVal();

    XmlBoolean xgetPercent();

    XmlBoolean xgetTop();

    XmlDouble xgetVal();

    void xsetFilterVal(XmlDouble xmlDouble);

    void xsetPercent(XmlBoolean xmlBoolean);

    void xsetTop(XmlBoolean xmlBoolean);

    void xsetVal(XmlDouble xmlDouble);
}
