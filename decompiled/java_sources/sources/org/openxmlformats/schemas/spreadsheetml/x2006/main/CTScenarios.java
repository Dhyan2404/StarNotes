package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTScenarios extends XmlObject {
    public static final DocumentFactory<CTScenarios> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTScenarios> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctscenariosacc2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTScenario addNewScenario();

    long getCurrent();

    CTScenario getScenarioArray(int i);

    CTScenario[] getScenarioArray();

    List<CTScenario> getScenarioList();

    long getShow();

    List getSqref();

    CTScenario insertNewScenario(int i);

    boolean isSetCurrent();

    boolean isSetShow();

    boolean isSetSqref();

    void removeScenario(int i);

    void setCurrent(long j);

    void setScenarioArray(int i, CTScenario cTScenario);

    void setScenarioArray(CTScenario[] cTScenarioArr);

    void setShow(long j);

    void setSqref(List list);

    int sizeOfScenarioArray();

    void unsetCurrent();

    void unsetShow();

    void unsetSqref();

    XmlUnsignedInt xgetCurrent();

    XmlUnsignedInt xgetShow();

    STSqref xgetSqref();

    void xsetCurrent(XmlUnsignedInt xmlUnsignedInt);

    void xsetShow(XmlUnsignedInt xmlUnsignedInt);

    void xsetSqref(STSqref sTSqref);
}
