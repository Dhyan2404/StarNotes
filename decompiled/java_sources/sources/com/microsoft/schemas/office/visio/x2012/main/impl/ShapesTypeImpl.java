package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType;
import com.microsoft.schemas.office.visio.x2012.main.ShapesType;
import com.microsoft.schemas.office.visio.x2012.main.impl.ShapesTypeImpl;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ShapesTypeImpl extends XmlComplexContentImpl implements ShapesType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", HWRValues.PART_TYPE_SHAPE)};
    private static final long serialVersionUID = 1;

    public ShapesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ShapesType
    public ShapeSheetType addNewShape() {
        ShapeSheetType shapeSheetType;
        synchronized (monitor()) {
            check_orphaned();
            shapeSheetType = (ShapeSheetType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return shapeSheetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ShapesType
    public ShapeSheetType[] getShapeArray() {
        return (ShapeSheetType[]) getXmlObjectArray(PROPERTY_QNAME[0], new ShapeSheetType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ShapesType
    public List<ShapeSheetType> getShapeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.anm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ShapesTypeImpl.this.getShapeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bnm
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ShapesTypeImpl.this.setShapeArray(((Integer) obj).intValue(), (ShapeSheetType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cnm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ShapesTypeImpl.this.insertNewShape(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dnm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ShapesTypeImpl.this.removeShape(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.enm
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ShapesTypeImpl.this.sizeOfShapeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ShapesType
    public ShapeSheetType insertNewShape(int i) {
        ShapeSheetType shapeSheetType;
        synchronized (monitor()) {
            check_orphaned();
            shapeSheetType = (ShapeSheetType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return shapeSheetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ShapesType
    public void removeShape(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ShapesType
    public void setShapeArray(ShapeSheetType[] shapeSheetTypeArr) {
        check_orphaned();
        arraySetterHelper(shapeSheetTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ShapesType
    public int sizeOfShapeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ShapesType
    public ShapeSheetType getShapeArray(int i) {
        ShapeSheetType shapeSheetType;
        synchronized (monitor()) {
            check_orphaned();
            shapeSheetType = (ShapeSheetType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (shapeSheetType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return shapeSheetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ShapesType
    public void setShapeArray(int i, ShapeSheetType shapeSheetType) {
        generatedSetterHelperImpl(shapeSheetType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
