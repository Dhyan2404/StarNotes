package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STPTabAlignment;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STPTabLeader;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STPTabRelativeTo;

/* loaded from: classes16.dex */
public interface CTPTab extends XmlObject {
    public static final DocumentFactory<CTPTab> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPTab> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctptaba283type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STPTabAlignment.Enum getAlignment();

    STPTabLeader.Enum getLeader();

    STPTabRelativeTo.Enum getRelativeTo();

    void setAlignment(STPTabAlignment.Enum r1);

    void setLeader(STPTabLeader.Enum r1);

    void setRelativeTo(STPTabRelativeTo.Enum r1);

    STPTabAlignment xgetAlignment();

    STPTabLeader xgetLeader();

    STPTabRelativeTo xgetRelativeTo();

    void xsetAlignment(STPTabAlignment sTPTabAlignment);

    void xsetLeader(STPTabLeader sTPTabLeader);

    void xsetRelativeTo(STPTabRelativeTo sTPTabRelativeTo);
}
