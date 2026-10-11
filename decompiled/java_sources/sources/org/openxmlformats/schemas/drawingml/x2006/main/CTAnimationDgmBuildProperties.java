package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAnimationDgmBuildProperties extends XmlObject {
    public static final DocumentFactory<CTAnimationDgmBuildProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAnimationDgmBuildProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctanimationdgmbuildproperties34actype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBld();

    boolean getRev();

    boolean isSetBld();

    boolean isSetRev();

    void setBld(String str);

    void setRev(boolean z);

    void unsetBld();

    void unsetRev();

    STAnimationDgmBuildType xgetBld();

    XmlBoolean xgetRev();

    void xsetBld(STAnimationDgmBuildType sTAnimationDgmBuildType);

    void xsetRev(XmlBoolean xmlBoolean);
}
