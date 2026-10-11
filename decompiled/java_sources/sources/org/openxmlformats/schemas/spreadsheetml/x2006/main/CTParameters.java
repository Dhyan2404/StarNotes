package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTParameters extends XmlObject {
    public static final DocumentFactory<CTParameters> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTParameters> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctparameterse2f3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTParameter addNewParameter();

    long getCount();

    CTParameter getParameterArray(int i);

    CTParameter[] getParameterArray();

    List<CTParameter> getParameterList();

    CTParameter insertNewParameter(int i);

    boolean isSetCount();

    void removeParameter(int i);

    void setCount(long j);

    void setParameterArray(int i, CTParameter cTParameter);

    void setParameterArray(CTParameter[] cTParameterArr);

    int sizeOfParameterArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
