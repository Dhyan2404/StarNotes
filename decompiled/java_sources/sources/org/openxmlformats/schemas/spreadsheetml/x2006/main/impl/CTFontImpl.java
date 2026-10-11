package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.onyx.android.sdk.hwr.data.constant.HWRGestureType;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBooleanProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontFamily;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontName;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontScheme;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontSize;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIntProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUnderlineProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVerticalAlignFontProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTFontImpl;

/* loaded from: classes15.dex */
public class CTFontImpl extends XmlComplexContentImpl implements CTFont {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "name"), new QName(XSSFRelation.NS_SPREADSHEETML, "charset"), new QName(XSSFRelation.NS_SPREADSHEETML, "family"), new QName(XSSFRelation.NS_SPREADSHEETML, "b"), new QName(XSSFRelation.NS_SPREADSHEETML, "i"), new QName(XSSFRelation.NS_SPREADSHEETML, HWRGestureType.STRIKE), new QName(XSSFRelation.NS_SPREADSHEETML, "outline"), new QName(XSSFRelation.NS_SPREADSHEETML, "shadow"), new QName(XSSFRelation.NS_SPREADSHEETML, "condense"), new QName(XSSFRelation.NS_SPREADSHEETML, "extend"), new QName(XSSFRelation.NS_SPREADSHEETML, "color"), new QName(XSSFRelation.NS_SPREADSHEETML, "sz"), new QName(XSSFRelation.NS_SPREADSHEETML, "u"), new QName(XSSFRelation.NS_SPREADSHEETML, "vertAlign"), new QName(XSSFRelation.NS_SPREADSHEETML, "scheme")};
    private static final long serialVersionUID = 1;

    public CTFontImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty addNewB() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTIntProperty addNewCharset() {
        CTIntProperty cTIntProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTIntProperty = (CTIntProperty) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTIntProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTColor addNewColor() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty addNewCondense() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty addNewExtend() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontFamily addNewFamily() {
        CTFontFamily cTFontFamily;
        synchronized (monitor()) {
            check_orphaned();
            cTFontFamily = (CTFontFamily) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTFontFamily;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty addNewI() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontName addNewName() {
        CTFontName cTFontName;
        synchronized (monitor()) {
            check_orphaned();
            cTFontName = (CTFontName) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFontName;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty addNewOutline() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontScheme addNewScheme() {
        CTFontScheme cTFontScheme;
        synchronized (monitor()) {
            check_orphaned();
            cTFontScheme = (CTFontScheme) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTFontScheme;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty addNewShadow() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty addNewStrike() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontSize addNewSz() {
        CTFontSize cTFontSize;
        synchronized (monitor()) {
            check_orphaned();
            cTFontSize = (CTFontSize) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTFontSize;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTUnderlineProperty addNewU() {
        CTUnderlineProperty cTUnderlineProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTUnderlineProperty = (CTUnderlineProperty) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTUnderlineProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTVerticalAlignFontProperty addNewVertAlign() {
        CTVerticalAlignFontProperty cTVerticalAlignFontProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTVerticalAlignFontProperty = (CTVerticalAlignFontProperty) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTVerticalAlignFontProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty[] getBArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTBooleanProperty> getBList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dy3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getBArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ey3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setBArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fy3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewB(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gy3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeB(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hy3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfBArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTIntProperty[] getCharsetArray() {
        return (CTIntProperty[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTIntProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTIntProperty> getCharsetList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ty3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getCharsetArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.uy3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setCharsetArray(((Integer) obj).intValue(), (CTIntProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vy3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewCharset(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wy3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeCharset(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xy3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfCharsetArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTColor[] getColorArray() {
        return (CTColor[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTColor[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTColor> getColorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yy3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getColorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jz3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setColorArray(((Integer) obj).intValue(), (CTColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pz3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewColor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qz3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeColor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rz3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfColorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty[] getCondenseArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTBooleanProperty> getCondenseList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.oy3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getCondenseArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.py3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setCondenseArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qy3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewCondense(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ry3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeCondense(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sy3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfCondenseArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty[] getExtendArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTBooleanProperty> getExtendList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hx3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getExtendArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ix3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setExtendArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jx3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewExtend(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kx3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeExtend(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lx3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfExtendArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontFamily[] getFamilyArray() {
        return (CTFontFamily[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTFontFamily[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTFontFamily> getFamilyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bx3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getFamilyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cx3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setFamilyArray(((Integer) obj).intValue(), (CTFontFamily) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dx3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewFamily(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ex3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeFamily(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fx3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfFamilyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty[] getIArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTBooleanProperty> getIList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xx3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getIArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yx3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setIArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zx3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewI(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ay3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeI(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.by3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfIArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontName[] getNameArray() {
        return (CTFontName[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFontName[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTFontName> getNameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ww3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getNameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xw3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setNameArray(((Integer) obj).intValue(), (CTFontName) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yw3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewName(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zw3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeName(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ax3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfNameArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty[] getOutlineArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTBooleanProperty> getOutlineList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ez3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getOutlineArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fz3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setOutlineArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gz3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewOutline(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hz3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeOutline(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.iz3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfOutlineArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontScheme[] getSchemeArray() {
        return (CTFontScheme[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTFontScheme[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTFontScheme> getSchemeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mx3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getSchemeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nx3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setSchemeArray(((Integer) obj).intValue(), (CTFontScheme) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ox3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewScheme(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.px3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeScheme(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qx3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfSchemeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty[] getShadowArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTBooleanProperty> getShadowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vw3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getShadowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gx3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setShadowArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rx3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewShadow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cy3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeShadow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ny3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfShadowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty[] getStrikeArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTBooleanProperty> getStrikeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kz3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getStrikeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lz3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setStrikeArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mz3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewStrike(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nz3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeStrike(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.oz3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfStrikeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontSize[] getSzArray() {
        return (CTFontSize[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTFontSize[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTFontSize> getSzList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sx3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getSzArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tx3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setSzArray(((Integer) obj).intValue(), (CTFontSize) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ux3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewSz(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vx3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeSz(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wx3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfSzArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTUnderlineProperty[] getUArray() {
        return (CTUnderlineProperty[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTUnderlineProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTUnderlineProperty> getUList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zy3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getUArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.az3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setUArray(((Integer) obj).intValue(), (CTUnderlineProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bz3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewU(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cz3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeU(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dz3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfUArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTVerticalAlignFontProperty[] getVertAlignArray() {
        return (CTVerticalAlignFontProperty[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTVerticalAlignFontProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public List<CTVerticalAlignFontProperty> getVertAlignList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.iy3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.getVertAlignArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jy3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontImpl.this.setVertAlignArray(((Integer) obj).intValue(), (CTVerticalAlignFontProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ky3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontImpl.this.insertNewVertAlign(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ly3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontImpl.this.removeVertAlign(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.my3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontImpl.this.sizeOfVertAlignArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty insertNewB(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTIntProperty insertNewCharset(int i) {
        CTIntProperty cTIntProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTIntProperty = (CTIntProperty) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTIntProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTColor insertNewColor(int i) {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty insertNewCondense(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty insertNewExtend(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontFamily insertNewFamily(int i) {
        CTFontFamily cTFontFamily;
        synchronized (monitor()) {
            check_orphaned();
            cTFontFamily = (CTFontFamily) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTFontFamily;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty insertNewI(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontName insertNewName(int i) {
        CTFontName cTFontName;
        synchronized (monitor()) {
            check_orphaned();
            cTFontName = (CTFontName) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFontName;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty insertNewOutline(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontScheme insertNewScheme(int i) {
        CTFontScheme cTFontScheme;
        synchronized (monitor()) {
            check_orphaned();
            cTFontScheme = (CTFontScheme) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTFontScheme;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty insertNewShadow(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty insertNewStrike(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontSize insertNewSz(int i) {
        CTFontSize cTFontSize;
        synchronized (monitor()) {
            check_orphaned();
            cTFontSize = (CTFontSize) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTFontSize;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTUnderlineProperty insertNewU(int i) {
        CTUnderlineProperty cTUnderlineProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTUnderlineProperty = (CTUnderlineProperty) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTUnderlineProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTVerticalAlignFontProperty insertNewVertAlign(int i) {
        CTVerticalAlignFontProperty cTVerticalAlignFontProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTVerticalAlignFontProperty = (CTVerticalAlignFontProperty) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTVerticalAlignFontProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeB(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeCharset(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeColor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeCondense(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeExtend(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeFamily(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeI(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeName(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeOutline(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeScheme(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeShadow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeStrike(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeSz(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeU(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void removeVertAlign(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setBArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setCharsetArray(CTIntProperty[] cTIntPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTIntPropertyArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setColorArray(CTColor[] cTColorArr) {
        check_orphaned();
        arraySetterHelper(cTColorArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setCondenseArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setExtendArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setFamilyArray(CTFontFamily[] cTFontFamilyArr) {
        check_orphaned();
        arraySetterHelper(cTFontFamilyArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setIArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setNameArray(CTFontName[] cTFontNameArr) {
        check_orphaned();
        arraySetterHelper(cTFontNameArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setOutlineArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setSchemeArray(CTFontScheme[] cTFontSchemeArr) {
        check_orphaned();
        arraySetterHelper(cTFontSchemeArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setShadowArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setStrikeArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setSzArray(CTFontSize[] cTFontSizeArr) {
        check_orphaned();
        arraySetterHelper(cTFontSizeArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setUArray(CTUnderlineProperty[] cTUnderlinePropertyArr) {
        check_orphaned();
        arraySetterHelper(cTUnderlinePropertyArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setVertAlignArray(CTVerticalAlignFontProperty[] cTVerticalAlignFontPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTVerticalAlignFontPropertyArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfBArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfCharsetArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfColorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfCondenseArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfExtendArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfFamilyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfIArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfNameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfOutlineArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfSchemeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfShadowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfStrikeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfSzArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfUArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public int sizeOfVertAlignArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty getBArray(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTBooleanProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTIntProperty getCharsetArray(int i) {
        CTIntProperty cTIntProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTIntProperty = (CTIntProperty) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTIntProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTIntProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTColor getColorArray(int i) {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty getCondenseArray(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTBooleanProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty getExtendArray(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTBooleanProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontFamily getFamilyArray(int i) {
        CTFontFamily cTFontFamily;
        synchronized (monitor()) {
            check_orphaned();
            cTFontFamily = (CTFontFamily) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTFontFamily == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFontFamily;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty getIArray(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTBooleanProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontName getNameArray(int i) {
        CTFontName cTFontName;
        synchronized (monitor()) {
            check_orphaned();
            cTFontName = (CTFontName) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTFontName == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFontName;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty getOutlineArray(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTBooleanProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontScheme getSchemeArray(int i) {
        CTFontScheme cTFontScheme;
        synchronized (monitor()) {
            check_orphaned();
            cTFontScheme = (CTFontScheme) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTFontScheme == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFontScheme;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty getShadowArray(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTBooleanProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTBooleanProperty getStrikeArray(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTBooleanProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTFontSize getSzArray(int i) {
        CTFontSize cTFontSize;
        synchronized (monitor()) {
            check_orphaned();
            cTFontSize = (CTFontSize) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTFontSize == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFontSize;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTUnderlineProperty getUArray(int i) {
        CTUnderlineProperty cTUnderlineProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTUnderlineProperty = (CTUnderlineProperty) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTUnderlineProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTUnderlineProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public CTVerticalAlignFontProperty getVertAlignArray(int i) {
        CTVerticalAlignFontProperty cTVerticalAlignFontProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTVerticalAlignFontProperty = (CTVerticalAlignFontProperty) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTVerticalAlignFontProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTVerticalAlignFontProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setBArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setCharsetArray(int i, CTIntProperty cTIntProperty) {
        generatedSetterHelperImpl(cTIntProperty, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setColorArray(int i, CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setCondenseArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setExtendArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setFamilyArray(int i, CTFontFamily cTFontFamily) {
        generatedSetterHelperImpl(cTFontFamily, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setIArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setNameArray(int i, CTFontName cTFontName) {
        generatedSetterHelperImpl(cTFontName, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setOutlineArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setSchemeArray(int i, CTFontScheme cTFontScheme) {
        generatedSetterHelperImpl(cTFontScheme, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setShadowArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setStrikeArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setSzArray(int i, CTFontSize cTFontSize) {
        generatedSetterHelperImpl(cTFontSize, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setUArray(int i, CTUnderlineProperty cTUnderlineProperty) {
        generatedSetterHelperImpl(cTUnderlineProperty, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont
    public void setVertAlignArray(int i, CTVerticalAlignFontProperty cTVerticalAlignFontProperty) {
        generatedSetterHelperImpl(cTVerticalAlignFontProperty, PROPERTY_QNAME[13], i, (short) 2);
    }
}
