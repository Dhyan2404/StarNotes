package org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameType;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl.CTAuthorTypeImpl;

/* loaded from: classes14.dex */
public class CTAuthorTypeImpl extends XmlComplexContentImpl implements CTAuthorType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", ExifInterface.TAG_ARTIST), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Author"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "BookAuthor"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Compiler"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Composer"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Conductor"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Counsel"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Director"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Editor"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Interviewee"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Interviewer"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Inventor"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Performer"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "ProducerName"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Translator"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Writer")};
    private static final long serialVersionUID = 1;

    public CTAuthorTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewArtist() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameOrCorporateType addNewAuthor() {
        CTNameOrCorporateType cTNameOrCorporateType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameOrCorporateType = (CTNameOrCorporateType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTNameOrCorporateType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewBookAuthor() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewCompiler() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewComposer() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewConductor() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewCounsel() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewDirector() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewEditor() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewInterviewee() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewInterviewer() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewInventor() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameOrCorporateType addNewPerformer() {
        CTNameOrCorporateType cTNameOrCorporateType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameOrCorporateType = (CTNameOrCorporateType) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTNameOrCorporateType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewProducerName() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewTranslator() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType addNewWriter() {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getArtistArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getArtistList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uh0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getArtistArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vh0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setArtistArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wh0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewArtist(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xh0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeArtist(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yh0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfArtistArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameOrCorporateType[] getAuthorArray() {
        return (CTNameOrCorporateType[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTNameOrCorporateType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameOrCorporateType> getAuthorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hg0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getAuthorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ig0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setAuthorArray(((Integer) obj).intValue(), (CTNameOrCorporateType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jg0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewAuthor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kg0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeAuthor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lg0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfAuthorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getBookAuthorArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getBookAuthorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zh0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getBookAuthorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ai0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setBookAuthorArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bi0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewBookAuthor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ci0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeBookAuthor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.di0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfBookAuthorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getCompilerArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getCompilerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bg0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getCompilerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mg0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setCompilerArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xg0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewCompiler(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ih0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeCompiler(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.th0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfCompilerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getComposerArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getComposerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jh0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getComposerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kh0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setComposerArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lh0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewComposer(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mh0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeComposer(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nh0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfComposerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getConductorArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getConductorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fi0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getConductorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gi0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setConductorArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hi0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewConductor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ii0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeConductor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ji0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfConductorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getCounselArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getCounselList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ki0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getCounselArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.li0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setCounselArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mi0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewCounsel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ni0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeCounsel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.oi0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfCounselArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getDirectorArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getDirectorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vi0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getDirectorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wi0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setDirectorArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xi0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewDirector(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yi0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeDirector(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zi0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfDirectorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getEditorArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getEditorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dh0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getEditorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.eh0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setEditorArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fh0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewEditor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gh0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeEditor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hh0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfEditorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getIntervieweeArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getIntervieweeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qi0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getIntervieweeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ri0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setIntervieweeArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.si0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewInterviewee(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ti0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeInterviewee(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ui0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfIntervieweeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getInterviewerArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getInterviewerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sg0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getInterviewerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tg0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setInterviewerArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ug0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewInterviewer(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vg0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeInterviewer(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wg0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfInterviewerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getInventorArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getInventorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ng0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getInventorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.og0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setInventorArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pg0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewInventor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qg0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeInventor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rg0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfInventorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameOrCorporateType[] getPerformerArray() {
        return (CTNameOrCorporateType[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTNameOrCorporateType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameOrCorporateType> getPerformerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cg0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getPerformerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dg0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setPerformerArray(((Integer) obj).intValue(), (CTNameOrCorporateType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.eg0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewPerformer(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fg0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removePerformer(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gg0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfPerformerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getProducerNameArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getProducerNameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ei0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getProducerNameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pi0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setProducerNameArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.aj0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewProducerName(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bj0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeProducerName(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cj0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfProducerNameArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getTranslatorArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getTranslatorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yg0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getTranslatorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zg0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setTranslatorArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ah0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewTranslator(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bh0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeTranslator(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ch0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfTranslatorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType[] getWriterArray() {
        return (CTNameType[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTNameType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public List<CTNameType> getWriterList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.oh0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.getWriterArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ph0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorTypeImpl.this.setWriterArray(((Integer) obj).intValue(), (CTNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qh0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorTypeImpl.this.insertNewWriter(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rh0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAuthorTypeImpl.this.removeWriter(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sh0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAuthorTypeImpl.this.sizeOfWriterArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewArtist(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameOrCorporateType insertNewAuthor(int i) {
        CTNameOrCorporateType cTNameOrCorporateType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameOrCorporateType = (CTNameOrCorporateType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTNameOrCorporateType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewBookAuthor(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewCompiler(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewComposer(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewConductor(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewCounsel(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewDirector(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewEditor(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewInterviewee(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewInterviewer(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewInventor(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameOrCorporateType insertNewPerformer(int i) {
        CTNameOrCorporateType cTNameOrCorporateType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameOrCorporateType = (CTNameOrCorporateType) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTNameOrCorporateType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewProducerName(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewTranslator(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType insertNewWriter(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeArtist(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeAuthor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeBookAuthor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeCompiler(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeComposer(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeConductor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeCounsel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeDirector(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeEditor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeInterviewee(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeInterviewer(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeInventor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removePerformer(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeProducerName(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeTranslator(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void removeWriter(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setArtistArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setAuthorArray(CTNameOrCorporateType[] cTNameOrCorporateTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameOrCorporateTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setBookAuthorArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setCompilerArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setComposerArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setConductorArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setCounselArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setDirectorArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setEditorArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setIntervieweeArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setInterviewerArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setInventorArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setPerformerArray(CTNameOrCorporateType[] cTNameOrCorporateTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameOrCorporateTypeArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setProducerNameArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setTranslatorArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setWriterArray(CTNameType[] cTNameTypeArr) {
        check_orphaned();
        arraySetterHelper(cTNameTypeArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfArtistArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfAuthorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfBookAuthorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfCompilerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfComposerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfConductorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfCounselArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfDirectorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfEditorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfIntervieweeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfInterviewerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfInventorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfPerformerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfProducerNameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfTranslatorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public int sizeOfWriterArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getArtistArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameOrCorporateType getAuthorArray(int i) {
        CTNameOrCorporateType cTNameOrCorporateType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameOrCorporateType = (CTNameOrCorporateType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTNameOrCorporateType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameOrCorporateType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getBookAuthorArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getCompilerArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getComposerArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getConductorArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getCounselArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getDirectorArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getEditorArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getIntervieweeArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getInterviewerArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getInventorArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameOrCorporateType getPerformerArray(int i) {
        CTNameOrCorporateType cTNameOrCorporateType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameOrCorporateType = (CTNameOrCorporateType) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTNameOrCorporateType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameOrCorporateType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getProducerNameArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getTranslatorArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public CTNameType getWriterArray(int i) {
        CTNameType cTNameType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameType = (CTNameType) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNameType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setArtistArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setAuthorArray(int i, CTNameOrCorporateType cTNameOrCorporateType) {
        generatedSetterHelperImpl(cTNameOrCorporateType, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setBookAuthorArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setCompilerArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setComposerArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setConductorArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setCounselArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setDirectorArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setEditorArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setIntervieweeArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setInterviewerArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setInventorArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setPerformerArray(int i, CTNameOrCorporateType cTNameOrCorporateType) {
        generatedSetterHelperImpl(cTNameOrCorporateType, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setProducerNameArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setTranslatorArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTAuthorType
    public void setWriterArray(int i, CTNameType cTNameType) {
        generatedSetterHelperImpl(cTNameType, PROPERTY_QNAME[15], i, (short) 2);
    }
}
