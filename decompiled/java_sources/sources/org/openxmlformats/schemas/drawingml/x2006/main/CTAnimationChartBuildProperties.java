package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAnimationChartBuildProperties extends XmlObject {
    public static final DocumentFactory<CTAnimationChartBuildProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAnimationChartBuildProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctanimationchartbuildproperties51d8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getAnimBg();

    String getBld();

    boolean isSetAnimBg();

    boolean isSetBld();

    void setAnimBg(boolean z);

    void setBld(String str);

    void unsetAnimBg();

    void unsetBld();

    XmlBoolean xgetAnimBg();

    STAnimationChartBuildType xgetBld();

    void xsetAnimBg(XmlBoolean xmlBoolean);

    void xsetBld(STAnimationChartBuildType sTAnimationChartBuildType);
}
