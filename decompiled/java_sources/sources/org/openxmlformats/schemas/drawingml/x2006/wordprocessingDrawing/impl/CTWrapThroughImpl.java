package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.poi.ss.util.CellUtil;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.STWrapDistance;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.STWrapText;

/* loaded from: classes14.dex */
public class CTWrapThroughImpl extends XmlComplexContentImpl implements CTWrapThrough {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "wrapPolygon"), new QName("", CellUtil.WRAP_TEXT), new QName("", "distL"), new QName("", "distR")};
    private static final long serialVersionUID = 1;

    public CTWrapThroughImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public CTWrapPath addNewWrapPolygon() {
        CTWrapPath cTWrapPath;
        synchronized (monitor()) {
            check_orphaned();
            cTWrapPath = (CTWrapPath) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTWrapPath;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public long getDistL() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public long getDistR() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public CTWrapPath getWrapPolygon() {
        CTWrapPath cTWrapPath;
        synchronized (monitor()) {
            check_orphaned();
            cTWrapPath = (CTWrapPath) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTWrapPath == null) {
                cTWrapPath = null;
            }
        }
        return cTWrapPath;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public STWrapText.Enum getWrapText() {
        STWrapText.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STWrapText.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public boolean isSetDistL() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public boolean isSetDistR() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public void setDistL(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public void setDistR(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public void setWrapPolygon(CTWrapPath cTWrapPath) {
        generatedSetterHelperImpl(cTWrapPath, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public void setWrapText(STWrapText.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public void unsetDistL() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public void unsetDistR() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public STWrapDistance xgetDistL() {
        STWrapDistance sTWrapDistance;
        synchronized (monitor()) {
            check_orphaned();
            sTWrapDistance = (STWrapDistance) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTWrapDistance;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public STWrapDistance xgetDistR() {
        STWrapDistance sTWrapDistance;
        synchronized (monitor()) {
            check_orphaned();
            sTWrapDistance = (STWrapDistance) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTWrapDistance;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public STWrapText xgetWrapText() {
        STWrapText sTWrapText;
        synchronized (monitor()) {
            check_orphaned();
            sTWrapText = (STWrapText) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTWrapText;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public void xsetDistL(STWrapDistance sTWrapDistance) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWrapDistance sTWrapDistance2 = (STWrapDistance) typeStore.find_attribute_user(qNameArr[2]);
            if (sTWrapDistance2 == null) {
                sTWrapDistance2 = (STWrapDistance) get_store().add_attribute_user(qNameArr[2]);
            }
            sTWrapDistance2.set(sTWrapDistance);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public void xsetDistR(STWrapDistance sTWrapDistance) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWrapDistance sTWrapDistance2 = (STWrapDistance) typeStore.find_attribute_user(qNameArr[3]);
            if (sTWrapDistance2 == null) {
                sTWrapDistance2 = (STWrapDistance) get_store().add_attribute_user(qNameArr[3]);
            }
            sTWrapDistance2.set(sTWrapDistance);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapThrough
    public void xsetWrapText(STWrapText sTWrapText) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWrapText sTWrapText2 = (STWrapText) typeStore.find_attribute_user(qNameArr[1]);
            if (sTWrapText2 == null) {
                sTWrapText2 = (STWrapText) get_store().add_attribute_user(qNameArr[1]);
            }
            sTWrapText2.set(sTWrapText);
        }
    }
}
