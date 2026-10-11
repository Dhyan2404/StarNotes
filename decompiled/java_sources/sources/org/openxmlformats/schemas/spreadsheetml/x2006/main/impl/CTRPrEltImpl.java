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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontName;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontScheme;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontSize;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIntProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUnderlineProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVerticalAlignFontProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTRPrEltImpl;

/* loaded from: classes15.dex */
public class CTRPrEltImpl extends XmlComplexContentImpl implements CTRPrElt {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "rFont"), new QName(XSSFRelation.NS_SPREADSHEETML, "charset"), new QName(XSSFRelation.NS_SPREADSHEETML, "family"), new QName(XSSFRelation.NS_SPREADSHEETML, "b"), new QName(XSSFRelation.NS_SPREADSHEETML, "i"), new QName(XSSFRelation.NS_SPREADSHEETML, HWRGestureType.STRIKE), new QName(XSSFRelation.NS_SPREADSHEETML, "outline"), new QName(XSSFRelation.NS_SPREADSHEETML, "shadow"), new QName(XSSFRelation.NS_SPREADSHEETML, "condense"), new QName(XSSFRelation.NS_SPREADSHEETML, "extend"), new QName(XSSFRelation.NS_SPREADSHEETML, "color"), new QName(XSSFRelation.NS_SPREADSHEETML, "sz"), new QName(XSSFRelation.NS_SPREADSHEETML, "u"), new QName(XSSFRelation.NS_SPREADSHEETML, "vertAlign"), new QName(XSSFRelation.NS_SPREADSHEETML, "scheme")};
    private static final long serialVersionUID = 1;

    public CTRPrEltImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty addNewB() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTIntProperty addNewCharset() {
        CTIntProperty cTIntProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTIntProperty = (CTIntProperty) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTIntProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTColor addNewColor() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty addNewCondense() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty addNewExtend() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTIntProperty addNewFamily() {
        CTIntProperty cTIntProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTIntProperty = (CTIntProperty) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTIntProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty addNewI() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty addNewOutline() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTFontName addNewRFont() {
        CTFontName cTFontName;
        synchronized (monitor()) {
            check_orphaned();
            cTFontName = (CTFontName) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFontName;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTFontScheme addNewScheme() {
        CTFontScheme cTFontScheme;
        synchronized (monitor()) {
            check_orphaned();
            cTFontScheme = (CTFontScheme) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTFontScheme;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty addNewShadow() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty addNewStrike() {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTFontSize addNewSz() {
        CTFontSize cTFontSize;
        synchronized (monitor()) {
            check_orphaned();
            cTFontSize = (CTFontSize) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTFontSize;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTUnderlineProperty addNewU() {
        CTUnderlineProperty cTUnderlineProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTUnderlineProperty = (CTUnderlineProperty) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTUnderlineProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTVerticalAlignFontProperty addNewVertAlign() {
        CTVerticalAlignFontProperty cTVerticalAlignFontProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTVerticalAlignFontProperty = (CTVerticalAlignFontProperty) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTVerticalAlignFontProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty[] getBArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTBooleanProperty> getBList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.r28
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getBArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s28
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setBArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.t28
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewB(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.u28
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeB(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.v28
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfBArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTIntProperty[] getCharsetArray() {
        return (CTIntProperty[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTIntProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTIntProperty> getCharsetList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c38
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getCharsetArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d38
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setCharsetArray(((Integer) obj).intValue(), (CTIntProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e38
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewCharset(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f38
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeCharset(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g38
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfCharsetArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTColor[] getColorArray() {
        return (CTColor[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTColor[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTColor> getColorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q28
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getColorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b38
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setColorArray(((Integer) obj).intValue(), (CTColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m38
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewColor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.x38
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeColor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i48
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfColorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty[] getCondenseArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTBooleanProperty> getCondenseList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getCondenseArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k48
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setCondenseArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewCondense(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m48
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeCondense(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n48
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfCondenseArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty[] getExtendArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTBooleanProperty> getExtendList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h38
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getExtendArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i38
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setExtendArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j38
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewExtend(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k38
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeExtend(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l38
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfExtendArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTIntProperty[] getFamilyArray() {
        return (CTIntProperty[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTIntProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTIntProperty> getFamilyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y38
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getFamilyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z38
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setFamilyArray(((Integer) obj).intValue(), (CTIntProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewFamily(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b48
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeFamily(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c48
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfFamilyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty[] getIArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTBooleanProperty> getIList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getIArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e58
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setIArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k58
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewI(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l58
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeI(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m58
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfIArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty[] getOutlineArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTBooleanProperty> getOutlineList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n38
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getOutlineArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o38
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setOutlineArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p38
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewOutline(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q38
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeOutline(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r38
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfOutlineArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTFontName[] getRFontArray() {
        return (CTFontName[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFontName[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTFontName> getRFontList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.u48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getRFontArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v48
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setRFontArray(((Integer) obj).intValue(), (CTFontName) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewRFont(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.x48
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeRFont(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.y48
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfRFontArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTFontScheme[] getSchemeArray() {
        return (CTFontScheme[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTFontScheme[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTFontScheme> getSchemeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getSchemeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e48
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setSchemeArray(((Integer) obj).intValue(), (CTFontScheme) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.f48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewScheme(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g48
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeScheme(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.h48
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfSchemeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty[] getShadowArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTBooleanProperty> getShadowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.o48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getShadowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.p48
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setShadowArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.q48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewShadow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.r48
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeShadow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.s48
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfShadowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty[] getStrikeArray() {
        return (CTBooleanProperty[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTBooleanProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTBooleanProperty> getStrikeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w28
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getStrikeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x28
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setStrikeArray(((Integer) obj).intValue(), (CTBooleanProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.y28
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewStrike(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.z28
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeStrike(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a38
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfStrikeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTFontSize[] getSzArray() {
        return (CTFontSize[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTFontSize[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTFontSize> getSzList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f58
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getSzArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g58
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setSzArray(((Integer) obj).intValue(), (CTFontSize) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h58
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewSz(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i58
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeSz(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j58
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfSzArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTUnderlineProperty[] getUArray() {
        return (CTUnderlineProperty[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTUnderlineProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTUnderlineProperty> getUList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.z48
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getUArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.a58
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setUArray(((Integer) obj).intValue(), (CTUnderlineProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.b58
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewU(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.c58
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeU(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.d58
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfUArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTVerticalAlignFontProperty[] getVertAlignArray() {
        return (CTVerticalAlignFontProperty[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTVerticalAlignFontProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public List<CTVerticalAlignFontProperty> getVertAlignList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s38
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.getVertAlignArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.t38
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRPrEltImpl.this.setVertAlignArray(((Integer) obj).intValue(), (CTVerticalAlignFontProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.u38
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRPrEltImpl.this.insertNewVertAlign(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.v38
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRPrEltImpl.this.removeVertAlign(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.w38
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRPrEltImpl.this.sizeOfVertAlignArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty insertNewB(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTIntProperty insertNewCharset(int i) {
        CTIntProperty cTIntProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTIntProperty = (CTIntProperty) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTIntProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTColor insertNewColor(int i) {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty insertNewCondense(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty insertNewExtend(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTIntProperty insertNewFamily(int i) {
        CTIntProperty cTIntProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTIntProperty = (CTIntProperty) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTIntProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty insertNewI(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty insertNewOutline(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTFontName insertNewRFont(int i) {
        CTFontName cTFontName;
        synchronized (monitor()) {
            check_orphaned();
            cTFontName = (CTFontName) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFontName;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTFontScheme insertNewScheme(int i) {
        CTFontScheme cTFontScheme;
        synchronized (monitor()) {
            check_orphaned();
            cTFontScheme = (CTFontScheme) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTFontScheme;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty insertNewShadow(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTBooleanProperty insertNewStrike(int i) {
        CTBooleanProperty cTBooleanProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTBooleanProperty = (CTBooleanProperty) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTBooleanProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTFontSize insertNewSz(int i) {
        CTFontSize cTFontSize;
        synchronized (monitor()) {
            check_orphaned();
            cTFontSize = (CTFontSize) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTFontSize;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTUnderlineProperty insertNewU(int i) {
        CTUnderlineProperty cTUnderlineProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTUnderlineProperty = (CTUnderlineProperty) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTUnderlineProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTVerticalAlignFontProperty insertNewVertAlign(int i) {
        CTVerticalAlignFontProperty cTVerticalAlignFontProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTVerticalAlignFontProperty = (CTVerticalAlignFontProperty) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTVerticalAlignFontProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeB(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeCharset(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeColor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeCondense(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeExtend(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeFamily(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeI(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeOutline(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeRFont(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeScheme(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeShadow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeStrike(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeSz(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeU(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void removeVertAlign(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setBArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setCharsetArray(CTIntProperty[] cTIntPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTIntPropertyArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setColorArray(CTColor[] cTColorArr) {
        check_orphaned();
        arraySetterHelper(cTColorArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setCondenseArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setExtendArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setFamilyArray(CTIntProperty[] cTIntPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTIntPropertyArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setIArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setOutlineArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setRFontArray(CTFontName[] cTFontNameArr) {
        check_orphaned();
        arraySetterHelper(cTFontNameArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setSchemeArray(CTFontScheme[] cTFontSchemeArr) {
        check_orphaned();
        arraySetterHelper(cTFontSchemeArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setShadowArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setStrikeArray(CTBooleanProperty[] cTBooleanPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanPropertyArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setSzArray(CTFontSize[] cTFontSizeArr) {
        check_orphaned();
        arraySetterHelper(cTFontSizeArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setUArray(CTUnderlineProperty[] cTUnderlinePropertyArr) {
        check_orphaned();
        arraySetterHelper(cTUnderlinePropertyArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setVertAlignArray(CTVerticalAlignFontProperty[] cTVerticalAlignFontPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTVerticalAlignFontPropertyArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfBArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfCharsetArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfColorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfCondenseArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfExtendArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfFamilyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfIArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfOutlineArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfRFontArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfSchemeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfShadowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfStrikeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfSzArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfUArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public int sizeOfVertAlignArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTIntProperty getFamilyArray(int i) {
        CTIntProperty cTIntProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTIntProperty = (CTIntProperty) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTIntProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTIntProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public CTFontName getRFontArray(int i) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setBArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setCharsetArray(int i, CTIntProperty cTIntProperty) {
        generatedSetterHelperImpl(cTIntProperty, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setColorArray(int i, CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setCondenseArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setExtendArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setFamilyArray(int i, CTIntProperty cTIntProperty) {
        generatedSetterHelperImpl(cTIntProperty, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setIArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setOutlineArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setRFontArray(int i, CTFontName cTFontName) {
        generatedSetterHelperImpl(cTFontName, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setSchemeArray(int i, CTFontScheme cTFontScheme) {
        generatedSetterHelperImpl(cTFontScheme, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setShadowArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setStrikeArray(int i, CTBooleanProperty cTBooleanProperty) {
        generatedSetterHelperImpl(cTBooleanProperty, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setSzArray(int i, CTFontSize cTFontSize) {
        generatedSetterHelperImpl(cTFontSize, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setUArray(int i, CTUnderlineProperty cTUnderlineProperty) {
        generatedSetterHelperImpl(cTUnderlineProperty, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt
    public void setVertAlignArray(int i, CTVerticalAlignFontProperty cTVerticalAlignFontProperty) {
        generatedSetterHelperImpl(cTVerticalAlignFontProperty, PROPERTY_QNAME[13], i, (short) 2);
    }
}
