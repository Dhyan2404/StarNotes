package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STGradientType;

/* loaded from: classes15.dex */
public interface CTGradientFill extends XmlObject {
    public static final DocumentFactory<CTGradientFill> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGradientFill> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgradientfillaf5ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGradientStop addNewStop();

    double getBottom();

    double getDegree();

    double getLeft();

    double getRight();

    CTGradientStop getStopArray(int i);

    CTGradientStop[] getStopArray();

    List<CTGradientStop> getStopList();

    double getTop();

    STGradientType.Enum getType();

    CTGradientStop insertNewStop(int i);

    boolean isSetBottom();

    boolean isSetDegree();

    boolean isSetLeft();

    boolean isSetRight();

    boolean isSetTop();

    boolean isSetType();

    void removeStop(int i);

    void setBottom(double d);

    void setDegree(double d);

    void setLeft(double d);

    void setRight(double d);

    void setStopArray(int i, CTGradientStop cTGradientStop);

    void setStopArray(CTGradientStop[] cTGradientStopArr);

    void setTop(double d);

    void setType(STGradientType.Enum r1);

    int sizeOfStopArray();

    void unsetBottom();

    void unsetDegree();

    void unsetLeft();

    void unsetRight();

    void unsetTop();

    void unsetType();

    XmlDouble xgetBottom();

    XmlDouble xgetDegree();

    XmlDouble xgetLeft();

    XmlDouble xgetRight();

    XmlDouble xgetTop();

    STGradientType xgetType();

    void xsetBottom(XmlDouble xmlDouble);

    void xsetDegree(XmlDouble xmlDouble);

    void xsetLeft(XmlDouble xmlDouble);

    void xsetRight(XmlDouble xmlDouble);

    void xsetTop(XmlDouble xmlDouble);

    void xsetType(STGradientType sTGradientType);
}
