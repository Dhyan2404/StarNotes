package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTChoose extends XmlObject {
    public static final DocumentFactory<CTChoose> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTChoose> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctchoose5b3atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOtherwise addNewElse();

    CTWhen addNewIf();

    CTOtherwise getElse();

    CTWhen getIfArray(int i);

    CTWhen[] getIfArray();

    List<CTWhen> getIfList();

    String getName();

    CTWhen insertNewIf(int i);

    boolean isSetElse();

    boolean isSetName();

    void removeIf(int i);

    void setElse(CTOtherwise cTOtherwise);

    void setIfArray(int i, CTWhen cTWhen);

    void setIfArray(CTWhen[] cTWhenArr);

    void setName(String str);

    int sizeOfIfArray();

    void unsetElse();

    void unsetName();

    XmlString xgetName();

    void xsetName(XmlString xmlString);
}
