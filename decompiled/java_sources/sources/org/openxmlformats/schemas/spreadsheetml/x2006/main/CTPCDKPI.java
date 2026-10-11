package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTPCDKPI extends XmlObject {
    public static final DocumentFactory<CTPCDKPI> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPCDKPI> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpcdkpi3f5ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCaption();

    String getDisplayFolder();

    String getGoal();

    String getMeasureGroup();

    String getParent();

    String getStatus();

    String getTime();

    String getTrend();

    String getUniqueName();

    String getValue();

    String getWeight();

    boolean isSetCaption();

    boolean isSetDisplayFolder();

    boolean isSetGoal();

    boolean isSetMeasureGroup();

    boolean isSetParent();

    boolean isSetStatus();

    boolean isSetTime();

    boolean isSetTrend();

    boolean isSetWeight();

    void setCaption(String str);

    void setDisplayFolder(String str);

    void setGoal(String str);

    void setMeasureGroup(String str);

    void setParent(String str);

    void setStatus(String str);

    void setTime(String str);

    void setTrend(String str);

    void setUniqueName(String str);

    void setValue(String str);

    void setWeight(String str);

    void unsetCaption();

    void unsetDisplayFolder();

    void unsetGoal();

    void unsetMeasureGroup();

    void unsetParent();

    void unsetStatus();

    void unsetTime();

    void unsetTrend();

    void unsetWeight();

    STXstring xgetCaption();

    STXstring xgetDisplayFolder();

    STXstring xgetGoal();

    STXstring xgetMeasureGroup();

    STXstring xgetParent();

    STXstring xgetStatus();

    STXstring xgetTime();

    STXstring xgetTrend();

    STXstring xgetUniqueName();

    STXstring xgetValue();

    STXstring xgetWeight();

    void xsetCaption(STXstring sTXstring);

    void xsetDisplayFolder(STXstring sTXstring);

    void xsetGoal(STXstring sTXstring);

    void xsetMeasureGroup(STXstring sTXstring);

    void xsetParent(STXstring sTXstring);

    void xsetStatus(STXstring sTXstring);

    void xsetTime(STXstring sTXstring);

    void xsetTrend(STXstring sTXstring);

    void xsetUniqueName(STXstring sTXstring);

    void xsetValue(STXstring sTXstring);

    void xsetWeight(STXstring sTXstring);
}
