package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTChartFormats extends XmlObject {
    public static final DocumentFactory<CTChartFormats> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTChartFormats> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctchartformats9467type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTChartFormat addNewChartFormat();

    CTChartFormat getChartFormatArray(int i);

    CTChartFormat[] getChartFormatArray();

    List<CTChartFormat> getChartFormatList();

    long getCount();

    CTChartFormat insertNewChartFormat(int i);

    boolean isSetCount();

    void removeChartFormat(int i);

    void setChartFormatArray(int i, CTChartFormat cTChartFormat);

    void setChartFormatArray(CTChartFormat[] cTChartFormatArr);

    void setCount(long j);

    int sizeOfChartFormatArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
