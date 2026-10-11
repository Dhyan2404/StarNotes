package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STSmartTagShow;

/* loaded from: classes15.dex */
public interface CTSmartTagPr extends XmlObject {
    public static final DocumentFactory<CTSmartTagPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSmartTagPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsmarttagpr0ebctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getEmbed();

    STSmartTagShow.Enum getShow();

    boolean isSetEmbed();

    boolean isSetShow();

    void setEmbed(boolean z);

    void setShow(STSmartTagShow.Enum r1);

    void unsetEmbed();

    void unsetShow();

    XmlBoolean xgetEmbed();

    STSmartTagShow xgetShow();

    void xsetEmbed(XmlBoolean xmlBoolean);

    void xsetShow(STSmartTagShow sTSmartTagShow);
}
