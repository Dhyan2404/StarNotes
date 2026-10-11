package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import com.sunia.HTREnginev2.gon;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlQName;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Facet;
import org.apache.xmlbeans.impl.p119xb.xsdschema.LocalSimpleType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NoFixedFacet;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NumFacet;
import org.apache.xmlbeans.impl.p119xb.xsdschema.PatternDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.RestrictionDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TotalDigitsDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.WhiteSpaceDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.impl.RestrictionDocumentImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class RestrictionDocumentImpl extends XmlComplexContentImpl implements RestrictionDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "restriction")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class RestrictionImpl extends AnnotatedImpl implements RestrictionDocument.Restriction {
        private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "simpleType"), new QName("http://www.w3.org/2001/XMLSchema", "minExclusive"), new QName("http://www.w3.org/2001/XMLSchema", "minInclusive"), new QName("http://www.w3.org/2001/XMLSchema", "maxExclusive"), new QName("http://www.w3.org/2001/XMLSchema", "maxInclusive"), new QName("http://www.w3.org/2001/XMLSchema", "totalDigits"), new QName("http://www.w3.org/2001/XMLSchema", "fractionDigits"), new QName("http://www.w3.org/2001/XMLSchema", "length"), new QName("http://www.w3.org/2001/XMLSchema", "minLength"), new QName("http://www.w3.org/2001/XMLSchema", "maxLength"), new QName("http://www.w3.org/2001/XMLSchema", "enumeration"), new QName("http://www.w3.org/2001/XMLSchema", "whiteSpace"), new QName("http://www.w3.org/2001/XMLSchema", "pattern"), new QName("", gon.f71271X)};
        private static final long serialVersionUID = 1;

        public RestrictionImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NoFixedFacet addNewEnumeration() {
            NoFixedFacet noFixedFacet;
            synchronized (monitor()) {
                check_orphaned();
                noFixedFacet = (NoFixedFacet) get_store().add_element_user(PROPERTY_QNAME[10]);
            }
            return noFixedFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet addNewFractionDigits() {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().add_element_user(PROPERTY_QNAME[6]);
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet addNewLength() {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().add_element_user(PROPERTY_QNAME[7]);
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet addNewMaxExclusive() {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().add_element_user(PROPERTY_QNAME[3]);
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet addNewMaxInclusive() {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().add_element_user(PROPERTY_QNAME[4]);
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet addNewMaxLength() {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().add_element_user(PROPERTY_QNAME[9]);
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet addNewMinExclusive() {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().add_element_user(PROPERTY_QNAME[1]);
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet addNewMinInclusive() {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().add_element_user(PROPERTY_QNAME[2]);
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet addNewMinLength() {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().add_element_user(PROPERTY_QNAME[8]);
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public PatternDocument.Pattern addNewPattern() {
            PatternDocument.Pattern pattern;
            synchronized (monitor()) {
                check_orphaned();
                pattern = (PatternDocument.Pattern) get_store().add_element_user(PROPERTY_QNAME[12]);
            }
            return pattern;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public LocalSimpleType addNewSimpleType() {
            LocalSimpleType localSimpleType;
            synchronized (monitor()) {
                check_orphaned();
                localSimpleType = (LocalSimpleType) get_store().add_element_user(PROPERTY_QNAME[0]);
            }
            return localSimpleType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public TotalDigitsDocument.TotalDigits addNewTotalDigits() {
            TotalDigitsDocument.TotalDigits totalDigits;
            synchronized (monitor()) {
                check_orphaned();
                totalDigits = (TotalDigitsDocument.TotalDigits) get_store().add_element_user(PROPERTY_QNAME[5]);
            }
            return totalDigits;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public WhiteSpaceDocument.WhiteSpace addNewWhiteSpace() {
            WhiteSpaceDocument.WhiteSpace whiteSpace;
            synchronized (monitor()) {
                check_orphaned();
                whiteSpace = (WhiteSpaceDocument.WhiteSpace) get_store().add_element_user(PROPERTY_QNAME[11]);
            }
            return whiteSpace;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public QName getBase() {
            QName qNameValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[13]);
                qNameValue = simpleValue == null ? null : simpleValue.getQNameValue();
            }
            return qNameValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NoFixedFacet[] getEnumerationArray() {
            return (NoFixedFacet[]) getXmlObjectArray(PROPERTY_QNAME[10], new NoFixedFacet[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<NoFixedFacet> getEnumerationList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gml
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getEnumerationArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hml
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setEnumerationArray(((Integer) obj).intValue(), (NoFixedFacet) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.iml
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewEnumeration(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.jml
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeEnumeration(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.kml
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfEnumerationArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet[] getFractionDigitsArray() {
            return (NumFacet[]) getXmlObjectArray(PROPERTY_QNAME[6], new NumFacet[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<NumFacet> getFractionDigitsList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rml
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getFractionDigitsArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sml
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setFractionDigitsArray(((Integer) obj).intValue(), (NumFacet) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.tml
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewFractionDigits(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.uml
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeFractionDigits(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.vml
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfFractionDigitsArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet[] getLengthArray() {
            return (NumFacet[]) getXmlObjectArray(PROPERTY_QNAME[7], new NumFacet[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<NumFacet> getLengthList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wml
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getLengthArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xml
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setLengthArray(((Integer) obj).intValue(), (NumFacet) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.yml
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewLength(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.zml
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeLength(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.anl
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfLengthArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet[] getMaxExclusiveArray() {
            return (Facet[]) getXmlObjectArray(PROPERTY_QNAME[3], new Facet[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<Facet> getMaxExclusiveList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lml
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getMaxExclusiveArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mml
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setMaxExclusiveArray(((Integer) obj).intValue(), (Facet) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.nml
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewMaxExclusive(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.oml
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeMaxExclusive(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.pml
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfMaxExclusiveArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet[] getMaxInclusiveArray() {
            return (Facet[]) getXmlObjectArray(PROPERTY_QNAME[4], new Facet[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<Facet> getMaxInclusiveList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.snl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getMaxInclusiveArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tnl
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setMaxInclusiveArray(((Integer) obj).intValue(), (Facet) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.unl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewMaxInclusive(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.vnl
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeMaxInclusive(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.wnl
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfMaxInclusiveArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet[] getMaxLengthArray() {
            return (NumFacet[]) getXmlObjectArray(PROPERTY_QNAME[9], new NumFacet[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<NumFacet> getMaxLengthList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ynl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getMaxLengthArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.znl
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setMaxLengthArray(((Integer) obj).intValue(), (NumFacet) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.aol
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewMaxLength(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.bol
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeMaxLength(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.col
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfMaxLengthArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet[] getMinExclusiveArray() {
            return (Facet[]) getXmlObjectArray(PROPERTY_QNAME[1], new Facet[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<Facet> getMinExclusiveList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dol
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getMinExclusiveArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.eol
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setMinExclusiveArray(((Integer) obj).intValue(), (Facet) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.fol
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewMinExclusive(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.gol
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeMinExclusive(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.hol
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfMinExclusiveArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet[] getMinInclusiveArray() {
            return (Facet[]) getXmlObjectArray(PROPERTY_QNAME[2], new Facet[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<Facet> getMinInclusiveList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.iol
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getMinInclusiveArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jol
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setMinInclusiveArray(((Integer) obj).intValue(), (Facet) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.kol
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewMinInclusive(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.lol
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeMinInclusive(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.mol
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfMinInclusiveArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet[] getMinLengthArray() {
            return (NumFacet[]) getXmlObjectArray(PROPERTY_QNAME[8], new NumFacet[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<NumFacet> getMinLengthList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hnl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getMinLengthArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.inl
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setMinLengthArray(((Integer) obj).intValue(), (NumFacet) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.jnl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewMinLength(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.knl
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeMinLength(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.lnl
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfMinLengthArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public PatternDocument.Pattern[] getPatternArray() {
            return (PatternDocument.Pattern[]) getXmlObjectArray(PROPERTY_QNAME[12], new PatternDocument.Pattern[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<PatternDocument.Pattern> getPatternList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cnl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getPatternArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dnl
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setPatternArray(((Integer) obj).intValue(), (PatternDocument.Pattern) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.enl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewPattern(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.fnl
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removePattern(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.gnl
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfPatternArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public LocalSimpleType getSimpleType() {
            LocalSimpleType localSimpleType;
            synchronized (monitor()) {
                check_orphaned();
                localSimpleType = (LocalSimpleType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
                if (localSimpleType == null) {
                    localSimpleType = null;
                }
            }
            return localSimpleType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public TotalDigitsDocument.TotalDigits[] getTotalDigitsArray() {
            return (TotalDigitsDocument.TotalDigits[]) getXmlObjectArray(PROPERTY_QNAME[5], new TotalDigitsDocument.TotalDigits[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<TotalDigitsDocument.TotalDigits> getTotalDigitsList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nnl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getTotalDigitsArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.onl
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setTotalDigitsArray(((Integer) obj).intValue(), (TotalDigitsDocument.TotalDigits) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.pnl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewTotalDigits(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.qnl
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeTotalDigits(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.rnl
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfTotalDigitsArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public WhiteSpaceDocument.WhiteSpace[] getWhiteSpaceArray() {
            return (WhiteSpaceDocument.WhiteSpace[]) getXmlObjectArray(PROPERTY_QNAME[11], new WhiteSpaceDocument.WhiteSpace[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public List<WhiteSpaceDocument.WhiteSpace> getWhiteSpaceList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fml
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.getWhiteSpaceArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qml
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RestrictionDocumentImpl.RestrictionImpl.this.setWhiteSpaceArray(((Integer) obj).intValue(), (WhiteSpaceDocument.WhiteSpace) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.bnl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RestrictionDocumentImpl.RestrictionImpl.this.insertNewWhiteSpace(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.mnl
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RestrictionDocumentImpl.RestrictionImpl.this.removeWhiteSpace(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.xnl
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RestrictionDocumentImpl.RestrictionImpl.this.sizeOfWhiteSpaceArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NoFixedFacet insertNewEnumeration(int i) {
            NoFixedFacet noFixedFacet;
            synchronized (monitor()) {
                check_orphaned();
                noFixedFacet = (NoFixedFacet) get_store().insert_element_user(PROPERTY_QNAME[10], i);
            }
            return noFixedFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet insertNewFractionDigits(int i) {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().insert_element_user(PROPERTY_QNAME[6], i);
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet insertNewLength(int i) {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().insert_element_user(PROPERTY_QNAME[7], i);
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet insertNewMaxExclusive(int i) {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().insert_element_user(PROPERTY_QNAME[3], i);
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet insertNewMaxInclusive(int i) {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().insert_element_user(PROPERTY_QNAME[4], i);
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet insertNewMaxLength(int i) {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().insert_element_user(PROPERTY_QNAME[9], i);
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet insertNewMinExclusive(int i) {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().insert_element_user(PROPERTY_QNAME[1], i);
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet insertNewMinInclusive(int i) {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().insert_element_user(PROPERTY_QNAME[2], i);
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet insertNewMinLength(int i) {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().insert_element_user(PROPERTY_QNAME[8], i);
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public PatternDocument.Pattern insertNewPattern(int i) {
            PatternDocument.Pattern pattern;
            synchronized (monitor()) {
                check_orphaned();
                pattern = (PatternDocument.Pattern) get_store().insert_element_user(PROPERTY_QNAME[12], i);
            }
            return pattern;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public TotalDigitsDocument.TotalDigits insertNewTotalDigits(int i) {
            TotalDigitsDocument.TotalDigits totalDigits;
            synchronized (monitor()) {
                check_orphaned();
                totalDigits = (TotalDigitsDocument.TotalDigits) get_store().insert_element_user(PROPERTY_QNAME[5], i);
            }
            return totalDigits;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public WhiteSpaceDocument.WhiteSpace insertNewWhiteSpace(int i) {
            WhiteSpaceDocument.WhiteSpace whiteSpace;
            synchronized (monitor()) {
                check_orphaned();
                whiteSpace = (WhiteSpaceDocument.WhiteSpace) get_store().insert_element_user(PROPERTY_QNAME[11], i);
            }
            return whiteSpace;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public boolean isSetBase() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public boolean isSetSimpleType() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeEnumeration(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[10], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeFractionDigits(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[6], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeLength(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[7], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeMaxExclusive(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[3], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeMaxInclusive(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[4], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeMaxLength(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[9], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeMinExclusive(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[1], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeMinInclusive(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[2], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeMinLength(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[8], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removePattern(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[12], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeTotalDigits(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[5], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void removeWhiteSpace(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[11], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setBase(QName qName) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
                }
                simpleValue.setQNameValue(qName);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setEnumerationArray(NoFixedFacet[] noFixedFacetArr) {
            check_orphaned();
            arraySetterHelper(noFixedFacetArr, PROPERTY_QNAME[10]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setFractionDigitsArray(NumFacet[] numFacetArr) {
            check_orphaned();
            arraySetterHelper(numFacetArr, PROPERTY_QNAME[6]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setLengthArray(NumFacet[] numFacetArr) {
            check_orphaned();
            arraySetterHelper(numFacetArr, PROPERTY_QNAME[7]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMaxExclusiveArray(Facet[] facetArr) {
            check_orphaned();
            arraySetterHelper(facetArr, PROPERTY_QNAME[3]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMaxInclusiveArray(Facet[] facetArr) {
            check_orphaned();
            arraySetterHelper(facetArr, PROPERTY_QNAME[4]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMaxLengthArray(NumFacet[] numFacetArr) {
            check_orphaned();
            arraySetterHelper(numFacetArr, PROPERTY_QNAME[9]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMinExclusiveArray(Facet[] facetArr) {
            check_orphaned();
            arraySetterHelper(facetArr, PROPERTY_QNAME[1]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMinInclusiveArray(Facet[] facetArr) {
            check_orphaned();
            arraySetterHelper(facetArr, PROPERTY_QNAME[2]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMinLengthArray(NumFacet[] numFacetArr) {
            check_orphaned();
            arraySetterHelper(numFacetArr, PROPERTY_QNAME[8]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setPatternArray(PatternDocument.Pattern[] patternArr) {
            check_orphaned();
            arraySetterHelper(patternArr, PROPERTY_QNAME[12]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setSimpleType(LocalSimpleType localSimpleType) {
            generatedSetterHelperImpl(localSimpleType, PROPERTY_QNAME[0], 0, (short) 1);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setTotalDigitsArray(TotalDigitsDocument.TotalDigits[] totalDigitsArr) {
            check_orphaned();
            arraySetterHelper(totalDigitsArr, PROPERTY_QNAME[5]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setWhiteSpaceArray(WhiteSpaceDocument.WhiteSpace[] whiteSpaceArr) {
            check_orphaned();
            arraySetterHelper(whiteSpaceArr, PROPERTY_QNAME[11]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfEnumerationArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfFractionDigitsArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfLengthArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfMaxExclusiveArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfMaxInclusiveArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfMaxLengthArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfMinExclusiveArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfMinInclusiveArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfMinLengthArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfPatternArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfTotalDigitsArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public int sizeOfWhiteSpaceArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void unsetBase() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[13]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void unsetSimpleType() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[0], 0);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public XmlQName xgetBase() {
            XmlQName xmlQName;
            synchronized (monitor()) {
                check_orphaned();
                xmlQName = (XmlQName) get_store().find_attribute_user(PROPERTY_QNAME[13]);
            }
            return xmlQName;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void xsetBase(XmlQName xmlQName) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlQName xmlQName2 = (XmlQName) typeStore.find_attribute_user(qNameArr[13]);
                if (xmlQName2 == null) {
                    xmlQName2 = (XmlQName) get_store().add_attribute_user(qNameArr[13]);
                }
                xmlQName2.set(xmlQName);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NoFixedFacet getEnumerationArray(int i) {
            NoFixedFacet noFixedFacet;
            synchronized (monitor()) {
                check_orphaned();
                noFixedFacet = (NoFixedFacet) get_store().find_element_user(PROPERTY_QNAME[10], i);
                if (noFixedFacet == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return noFixedFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet getFractionDigitsArray(int i) {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().find_element_user(PROPERTY_QNAME[6], i);
                if (numFacet == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet getLengthArray(int i) {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().find_element_user(PROPERTY_QNAME[7], i);
                if (numFacet == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet getMaxExclusiveArray(int i) {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().find_element_user(PROPERTY_QNAME[3], i);
                if (facet == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet getMaxInclusiveArray(int i) {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().find_element_user(PROPERTY_QNAME[4], i);
                if (facet == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet getMaxLengthArray(int i) {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().find_element_user(PROPERTY_QNAME[9], i);
                if (numFacet == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet getMinExclusiveArray(int i) {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().find_element_user(PROPERTY_QNAME[1], i);
                if (facet == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public Facet getMinInclusiveArray(int i) {
            Facet facet;
            synchronized (monitor()) {
                check_orphaned();
                facet = (Facet) get_store().find_element_user(PROPERTY_QNAME[2], i);
                if (facet == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return facet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public NumFacet getMinLengthArray(int i) {
            NumFacet numFacet;
            synchronized (monitor()) {
                check_orphaned();
                numFacet = (NumFacet) get_store().find_element_user(PROPERTY_QNAME[8], i);
                if (numFacet == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return numFacet;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public PatternDocument.Pattern getPatternArray(int i) {
            PatternDocument.Pattern pattern;
            synchronized (monitor()) {
                check_orphaned();
                pattern = (PatternDocument.Pattern) get_store().find_element_user(PROPERTY_QNAME[12], i);
                if (pattern == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return pattern;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public TotalDigitsDocument.TotalDigits getTotalDigitsArray(int i) {
            TotalDigitsDocument.TotalDigits totalDigits;
            synchronized (monitor()) {
                check_orphaned();
                totalDigits = (TotalDigitsDocument.TotalDigits) get_store().find_element_user(PROPERTY_QNAME[5], i);
                if (totalDigits == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return totalDigits;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public WhiteSpaceDocument.WhiteSpace getWhiteSpaceArray(int i) {
            WhiteSpaceDocument.WhiteSpace whiteSpace;
            synchronized (monitor()) {
                check_orphaned();
                whiteSpace = (WhiteSpaceDocument.WhiteSpace) get_store().find_element_user(PROPERTY_QNAME[11], i);
                if (whiteSpace == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return whiteSpace;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setEnumerationArray(int i, NoFixedFacet noFixedFacet) {
            generatedSetterHelperImpl(noFixedFacet, PROPERTY_QNAME[10], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setFractionDigitsArray(int i, NumFacet numFacet) {
            generatedSetterHelperImpl(numFacet, PROPERTY_QNAME[6], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setLengthArray(int i, NumFacet numFacet) {
            generatedSetterHelperImpl(numFacet, PROPERTY_QNAME[7], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMaxExclusiveArray(int i, Facet facet) {
            generatedSetterHelperImpl(facet, PROPERTY_QNAME[3], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMaxInclusiveArray(int i, Facet facet) {
            generatedSetterHelperImpl(facet, PROPERTY_QNAME[4], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMaxLengthArray(int i, NumFacet numFacet) {
            generatedSetterHelperImpl(numFacet, PROPERTY_QNAME[9], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMinExclusiveArray(int i, Facet facet) {
            generatedSetterHelperImpl(facet, PROPERTY_QNAME[1], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMinInclusiveArray(int i, Facet facet) {
            generatedSetterHelperImpl(facet, PROPERTY_QNAME[2], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setMinLengthArray(int i, NumFacet numFacet) {
            generatedSetterHelperImpl(numFacet, PROPERTY_QNAME[8], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setPatternArray(int i, PatternDocument.Pattern pattern) {
            generatedSetterHelperImpl(pattern, PROPERTY_QNAME[12], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setTotalDigitsArray(int i, TotalDigitsDocument.TotalDigits totalDigits) {
            generatedSetterHelperImpl(totalDigits, PROPERTY_QNAME[5], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction
        public void setWhiteSpaceArray(int i, WhiteSpaceDocument.WhiteSpace whiteSpace) {
            generatedSetterHelperImpl(whiteSpace, PROPERTY_QNAME[11], i, (short) 2);
        }
    }

    public RestrictionDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.RestrictionDocument
    public RestrictionDocument.Restriction addNewRestriction() {
        RestrictionDocument.Restriction restriction;
        synchronized (monitor()) {
            check_orphaned();
            restriction = (RestrictionDocument.Restriction) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return restriction;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.RestrictionDocument
    public RestrictionDocument.Restriction getRestriction() {
        RestrictionDocument.Restriction restriction;
        synchronized (monitor()) {
            check_orphaned();
            restriction = (RestrictionDocument.Restriction) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (restriction == null) {
                restriction = null;
            }
        }
        return restriction;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.RestrictionDocument
    public void setRestriction(RestrictionDocument.Restriction restriction) {
        generatedSetterHelperImpl(restriction, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
