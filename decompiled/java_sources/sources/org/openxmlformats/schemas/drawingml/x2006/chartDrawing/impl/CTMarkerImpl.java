package org.openxmlformats.schemas.drawingml.x2006.chartDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTMarker;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.STMarkerCoordinate;

/* loaded from: classes14.dex */
public class CTMarkerImpl extends XmlComplexContentImpl implements CTMarker {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "x"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "y")};
    private static final long serialVersionUID = 1;

    public CTMarkerImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTMarker
    public double getX() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTMarker
    public double getY() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTMarker
    public void setX(double d) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTMarker
    public void setY(double d) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[1], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[1]);
            }
            simpleValue.setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTMarker
    public STMarkerCoordinate xgetX() {
        STMarkerCoordinate sTMarkerCoordinate;
        synchronized (monitor()) {
            check_orphaned();
            sTMarkerCoordinate = (STMarkerCoordinate) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return sTMarkerCoordinate;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTMarker
    public STMarkerCoordinate xgetY() {
        STMarkerCoordinate sTMarkerCoordinate;
        synchronized (monitor()) {
            check_orphaned();
            sTMarkerCoordinate = (STMarkerCoordinate) get_store().find_element_user(PROPERTY_QNAME[1], 0);
        }
        return sTMarkerCoordinate;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTMarker
    public void xsetX(STMarkerCoordinate sTMarkerCoordinate) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMarkerCoordinate sTMarkerCoordinate2 = (STMarkerCoordinate) typeStore.find_element_user(qNameArr[0], 0);
            if (sTMarkerCoordinate2 == null) {
                sTMarkerCoordinate2 = (STMarkerCoordinate) get_store().add_element_user(qNameArr[0]);
            }
            sTMarkerCoordinate2.set(sTMarkerCoordinate);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTMarker
    public void xsetY(STMarkerCoordinate sTMarkerCoordinate) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMarkerCoordinate sTMarkerCoordinate2 = (STMarkerCoordinate) typeStore.find_element_user(qNameArr[1], 0);
            if (sTMarkerCoordinate2 == null) {
                sTMarkerCoordinate2 = (STMarkerCoordinate) get_store().add_element_user(qNameArr[1]);
            }
            sTMarkerCoordinate2.set(sTMarkerCoordinate);
        }
    }
}
