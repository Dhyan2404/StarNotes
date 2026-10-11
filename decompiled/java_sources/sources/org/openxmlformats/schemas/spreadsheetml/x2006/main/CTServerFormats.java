package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTServerFormats extends XmlObject {
    public static final DocumentFactory<CTServerFormats> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTServerFormats> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctserverformatsf778type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTServerFormat addNewServerFormat();

    long getCount();

    CTServerFormat getServerFormatArray(int i);

    CTServerFormat[] getServerFormatArray();

    List<CTServerFormat> getServerFormatList();

    CTServerFormat insertNewServerFormat(int i);

    boolean isSetCount();

    void removeServerFormat(int i);

    void setCount(long j);

    void setServerFormatArray(int i, CTServerFormat cTServerFormat);

    void setServerFormatArray(CTServerFormat[] cTServerFormatArr);

    int sizeOfServerFormatArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
