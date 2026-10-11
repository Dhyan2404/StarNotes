package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
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
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommandBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeAudio;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLSetBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeExclusive;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeParallel;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTTimeNodeListImpl;

/* loaded from: classes14.dex */
public class CTTimeNodeListImpl extends XmlComplexContentImpl implements CTTimeNodeList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "par"), new QName(XSSFRelation.NS_PRESENTATIONML, "seq"), new QName(XSSFRelation.NS_PRESENTATIONML, "excl"), new QName(XSSFRelation.NS_PRESENTATIONML, "anim"), new QName(XSSFRelation.NS_PRESENTATIONML, "animClr"), new QName(XSSFRelation.NS_PRESENTATIONML, "animEffect"), new QName(XSSFRelation.NS_PRESENTATIONML, "animMotion"), new QName(XSSFRelation.NS_PRESENTATIONML, "animRot"), new QName(XSSFRelation.NS_PRESENTATIONML, "animScale"), new QName(XSSFRelation.NS_PRESENTATIONML, "cmd"), new QName(XSSFRelation.NS_PRESENTATIONML, ExtensionNamespaceContext.EXSLT_SET_PREFIX), new QName(XSSFRelation.NS_PRESENTATIONML, "audio"), new QName(XSSFRelation.NS_PRESENTATIONML, "video")};
    private static final long serialVersionUID = 1;

    public CTTimeNodeListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateBehavior addNewAnim() {
        CTTLAnimateBehavior cTTLAnimateBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateBehavior = (CTTLAnimateBehavior) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTTLAnimateBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateColorBehavior addNewAnimClr() {
        CTTLAnimateColorBehavior cTTLAnimateColorBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateColorBehavior = (CTTLAnimateColorBehavior) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTTLAnimateColorBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateEffectBehavior addNewAnimEffect() {
        CTTLAnimateEffectBehavior cTTLAnimateEffectBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateEffectBehavior = (CTTLAnimateEffectBehavior) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTTLAnimateEffectBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateMotionBehavior addNewAnimMotion() {
        CTTLAnimateMotionBehavior cTTLAnimateMotionBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateMotionBehavior = (CTTLAnimateMotionBehavior) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTTLAnimateMotionBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateRotationBehavior addNewAnimRot() {
        CTTLAnimateRotationBehavior cTTLAnimateRotationBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateRotationBehavior = (CTTLAnimateRotationBehavior) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTTLAnimateRotationBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateScaleBehavior addNewAnimScale() {
        CTTLAnimateScaleBehavior cTTLAnimateScaleBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateScaleBehavior = (CTTLAnimateScaleBehavior) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTTLAnimateScaleBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLMediaNodeAudio addNewAudio() {
        CTTLMediaNodeAudio cTTLMediaNodeAudio;
        synchronized (monitor()) {
            check_orphaned();
            cTTLMediaNodeAudio = (CTTLMediaNodeAudio) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTTLMediaNodeAudio;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLCommandBehavior addNewCmd() {
        CTTLCommandBehavior cTTLCommandBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommandBehavior = (CTTLCommandBehavior) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTTLCommandBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeExclusive addNewExcl() {
        CTTLTimeNodeExclusive cTTLTimeNodeExclusive;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeNodeExclusive = (CTTLTimeNodeExclusive) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTLTimeNodeExclusive;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeParallel addNewPar() {
        CTTLTimeNodeParallel cTTLTimeNodeParallel;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeNodeParallel = (CTTLTimeNodeParallel) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLTimeNodeParallel;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeSequence addNewSeq() {
        CTTLTimeNodeSequence cTTLTimeNodeSequence;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeNodeSequence = (CTTLTimeNodeSequence) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLTimeNodeSequence;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLSetBehavior addNewSet() {
        CTTLSetBehavior cTTLSetBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLSetBehavior = (CTTLSetBehavior) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTTLSetBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLMediaNodeVideo addNewVideo() {
        CTTLMediaNodeVideo cTTLMediaNodeVideo;
        synchronized (monitor()) {
            check_orphaned();
            cTTLMediaNodeVideo = (CTTLMediaNodeVideo) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTTLMediaNodeVideo;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateBehavior[] getAnimArray() {
        return (CTTLAnimateBehavior[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTTLAnimateBehavior[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateColorBehavior[] getAnimClrArray() {
        return (CTTLAnimateColorBehavior[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTTLAnimateColorBehavior[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLAnimateColorBehavior> getAnimClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ytc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getAnimClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ztc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setAnimClrArray(((Integer) obj).intValue(), (CTTLAnimateColorBehavior) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.auc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewAnimClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.buc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeAnimClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cuc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfAnimClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateEffectBehavior[] getAnimEffectArray() {
        return (CTTLAnimateEffectBehavior[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTTLAnimateEffectBehavior[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLAnimateEffectBehavior> getAnimEffectList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.duc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getAnimEffectArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.euc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setAnimEffectArray(((Integer) obj).intValue(), (CTTLAnimateEffectBehavior) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fuc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewAnimEffect(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.guc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeAnimEffect(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.huc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfAnimEffectArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLAnimateBehavior> getAnimList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.stc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getAnimArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ttc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setAnimArray(((Integer) obj).intValue(), (CTTLAnimateBehavior) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.utc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewAnim(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vtc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeAnim(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wtc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfAnimArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateMotionBehavior[] getAnimMotionArray() {
        return (CTTLAnimateMotionBehavior[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTTLAnimateMotionBehavior[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLAnimateMotionBehavior> getAnimMotionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ntc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getAnimMotionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.otc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setAnimMotionArray(((Integer) obj).intValue(), (CTTLAnimateMotionBehavior) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ptc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewAnimMotion(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qtc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeAnimMotion(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rtc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfAnimMotionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateRotationBehavior[] getAnimRotArray() {
        return (CTTLAnimateRotationBehavior[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTTLAnimateRotationBehavior[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLAnimateRotationBehavior> getAnimRotList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.juc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getAnimRotArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kuc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setAnimRotArray(((Integer) obj).intValue(), (CTTLAnimateRotationBehavior) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.luc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewAnimRot(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.muc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeAnimRot(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nuc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfAnimRotArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateScaleBehavior[] getAnimScaleArray() {
        return (CTTLAnimateScaleBehavior[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTTLAnimateScaleBehavior[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLAnimateScaleBehavior> getAnimScaleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rsc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getAnimScaleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ssc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setAnimScaleArray(((Integer) obj).intValue(), (CTTLAnimateScaleBehavior) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tsc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewAnimScale(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.usc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeAnimScale(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vsc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfAnimScaleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLMediaNodeAudio[] getAudioArray() {
        return (CTTLMediaNodeAudio[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTTLMediaNodeAudio[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLMediaNodeAudio> getAudioList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.htc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getAudioArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.itc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setAudioArray(((Integer) obj).intValue(), (CTTLMediaNodeAudio) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jtc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewAudio(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ktc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeAudio(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ltc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfAudioArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLCommandBehavior[] getCmdArray() {
        return (CTTLCommandBehavior[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTTLCommandBehavior[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLCommandBehavior> getCmdList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ctc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getCmdArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dtc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setCmdArray(((Integer) obj).intValue(), (CTTLCommandBehavior) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.etc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewCmd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ftc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeCmd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gtc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfCmdArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeExclusive[] getExclArray() {
        return (CTTLTimeNodeExclusive[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTTLTimeNodeExclusive[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLTimeNodeExclusive> getExclList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wsc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getExclArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xsc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setExclArray(((Integer) obj).intValue(), (CTTLTimeNodeExclusive) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ysc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewExcl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zsc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeExcl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.atc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfExclArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeParallel[] getParArray() {
        return (CTTLTimeNodeParallel[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTLTimeNodeParallel[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLTimeNodeParallel> getParList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ouc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getParArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.puc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setParArray(((Integer) obj).intValue(), (CTTLTimeNodeParallel) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.quc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewPar(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ruc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removePar(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.suc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfParArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeSequence[] getSeqArray() {
        return (CTTLTimeNodeSequence[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTTLTimeNodeSequence[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLTimeNodeSequence> getSeqList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qsc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getSeqArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.btc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setSeqArray(((Integer) obj).intValue(), (CTTLTimeNodeSequence) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mtc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewSeq(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xtc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeSeq(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.iuc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfSeqArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLSetBehavior[] getSetArray() {
        return (CTTLSetBehavior[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTTLSetBehavior[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLSetBehavior> getSetList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tuc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getSetArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zuc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setSetArray(((Integer) obj).intValue(), (CTTLSetBehavior) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.avc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewSet(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bvc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeSet(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cvc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfSetArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLMediaNodeVideo[] getVideoArray() {
        return (CTTLMediaNodeVideo[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTTLMediaNodeVideo[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public List<CTTLMediaNodeVideo> getVideoList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uuc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.getVideoArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vuc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTimeNodeListImpl.this.setVideoArray(((Integer) obj).intValue(), (CTTLMediaNodeVideo) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wuc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTimeNodeListImpl.this.insertNewVideo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xuc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTimeNodeListImpl.this.removeVideo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yuc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTimeNodeListImpl.this.sizeOfVideoArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateBehavior insertNewAnim(int i) {
        CTTLAnimateBehavior cTTLAnimateBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateBehavior = (CTTLAnimateBehavior) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTTLAnimateBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateColorBehavior insertNewAnimClr(int i) {
        CTTLAnimateColorBehavior cTTLAnimateColorBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateColorBehavior = (CTTLAnimateColorBehavior) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTTLAnimateColorBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateEffectBehavior insertNewAnimEffect(int i) {
        CTTLAnimateEffectBehavior cTTLAnimateEffectBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateEffectBehavior = (CTTLAnimateEffectBehavior) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTTLAnimateEffectBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateMotionBehavior insertNewAnimMotion(int i) {
        CTTLAnimateMotionBehavior cTTLAnimateMotionBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateMotionBehavior = (CTTLAnimateMotionBehavior) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTTLAnimateMotionBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateRotationBehavior insertNewAnimRot(int i) {
        CTTLAnimateRotationBehavior cTTLAnimateRotationBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateRotationBehavior = (CTTLAnimateRotationBehavior) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTTLAnimateRotationBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateScaleBehavior insertNewAnimScale(int i) {
        CTTLAnimateScaleBehavior cTTLAnimateScaleBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateScaleBehavior = (CTTLAnimateScaleBehavior) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTTLAnimateScaleBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLMediaNodeAudio insertNewAudio(int i) {
        CTTLMediaNodeAudio cTTLMediaNodeAudio;
        synchronized (monitor()) {
            check_orphaned();
            cTTLMediaNodeAudio = (CTTLMediaNodeAudio) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTTLMediaNodeAudio;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLCommandBehavior insertNewCmd(int i) {
        CTTLCommandBehavior cTTLCommandBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommandBehavior = (CTTLCommandBehavior) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTTLCommandBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeExclusive insertNewExcl(int i) {
        CTTLTimeNodeExclusive cTTLTimeNodeExclusive;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeNodeExclusive = (CTTLTimeNodeExclusive) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTTLTimeNodeExclusive;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeParallel insertNewPar(int i) {
        CTTLTimeNodeParallel cTTLTimeNodeParallel;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeNodeParallel = (CTTLTimeNodeParallel) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTLTimeNodeParallel;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeSequence insertNewSeq(int i) {
        CTTLTimeNodeSequence cTTLTimeNodeSequence;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeNodeSequence = (CTTLTimeNodeSequence) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTTLTimeNodeSequence;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLSetBehavior insertNewSet(int i) {
        CTTLSetBehavior cTTLSetBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLSetBehavior = (CTTLSetBehavior) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTTLSetBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLMediaNodeVideo insertNewVideo(int i) {
        CTTLMediaNodeVideo cTTLMediaNodeVideo;
        synchronized (monitor()) {
            check_orphaned();
            cTTLMediaNodeVideo = (CTTLMediaNodeVideo) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTTLMediaNodeVideo;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeAnim(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeAnimClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeAnimEffect(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeAnimMotion(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeAnimRot(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeAnimScale(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeAudio(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeCmd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeExcl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removePar(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeSeq(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeSet(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void removeVideo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimArray(CTTLAnimateBehavior[] cTTLAnimateBehaviorArr) {
        check_orphaned();
        arraySetterHelper(cTTLAnimateBehaviorArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimClrArray(CTTLAnimateColorBehavior[] cTTLAnimateColorBehaviorArr) {
        check_orphaned();
        arraySetterHelper(cTTLAnimateColorBehaviorArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimEffectArray(CTTLAnimateEffectBehavior[] cTTLAnimateEffectBehaviorArr) {
        check_orphaned();
        arraySetterHelper(cTTLAnimateEffectBehaviorArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimMotionArray(CTTLAnimateMotionBehavior[] cTTLAnimateMotionBehaviorArr) {
        check_orphaned();
        arraySetterHelper(cTTLAnimateMotionBehaviorArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimRotArray(CTTLAnimateRotationBehavior[] cTTLAnimateRotationBehaviorArr) {
        check_orphaned();
        arraySetterHelper(cTTLAnimateRotationBehaviorArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimScaleArray(CTTLAnimateScaleBehavior[] cTTLAnimateScaleBehaviorArr) {
        check_orphaned();
        arraySetterHelper(cTTLAnimateScaleBehaviorArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAudioArray(CTTLMediaNodeAudio[] cTTLMediaNodeAudioArr) {
        check_orphaned();
        arraySetterHelper(cTTLMediaNodeAudioArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setCmdArray(CTTLCommandBehavior[] cTTLCommandBehaviorArr) {
        check_orphaned();
        arraySetterHelper(cTTLCommandBehaviorArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setExclArray(CTTLTimeNodeExclusive[] cTTLTimeNodeExclusiveArr) {
        check_orphaned();
        arraySetterHelper(cTTLTimeNodeExclusiveArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setParArray(CTTLTimeNodeParallel[] cTTLTimeNodeParallelArr) {
        check_orphaned();
        arraySetterHelper(cTTLTimeNodeParallelArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setSeqArray(CTTLTimeNodeSequence[] cTTLTimeNodeSequenceArr) {
        check_orphaned();
        arraySetterHelper(cTTLTimeNodeSequenceArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setSetArray(CTTLSetBehavior[] cTTLSetBehaviorArr) {
        check_orphaned();
        arraySetterHelper(cTTLSetBehaviorArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setVideoArray(CTTLMediaNodeVideo[] cTTLMediaNodeVideoArr) {
        check_orphaned();
        arraySetterHelper(cTTLMediaNodeVideoArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfAnimArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfAnimClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfAnimEffectArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfAnimMotionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfAnimRotArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfAnimScaleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfAudioArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfCmdArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfExclArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfParArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfSeqArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfSetArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public int sizeOfVideoArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateBehavior getAnimArray(int i) {
        CTTLAnimateBehavior cTTLAnimateBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateBehavior = (CTTLAnimateBehavior) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTTLAnimateBehavior == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLAnimateBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateColorBehavior getAnimClrArray(int i) {
        CTTLAnimateColorBehavior cTTLAnimateColorBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateColorBehavior = (CTTLAnimateColorBehavior) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTTLAnimateColorBehavior == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLAnimateColorBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateEffectBehavior getAnimEffectArray(int i) {
        CTTLAnimateEffectBehavior cTTLAnimateEffectBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateEffectBehavior = (CTTLAnimateEffectBehavior) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTTLAnimateEffectBehavior == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLAnimateEffectBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateMotionBehavior getAnimMotionArray(int i) {
        CTTLAnimateMotionBehavior cTTLAnimateMotionBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateMotionBehavior = (CTTLAnimateMotionBehavior) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTTLAnimateMotionBehavior == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLAnimateMotionBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateRotationBehavior getAnimRotArray(int i) {
        CTTLAnimateRotationBehavior cTTLAnimateRotationBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateRotationBehavior = (CTTLAnimateRotationBehavior) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTTLAnimateRotationBehavior == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLAnimateRotationBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLAnimateScaleBehavior getAnimScaleArray(int i) {
        CTTLAnimateScaleBehavior cTTLAnimateScaleBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimateScaleBehavior = (CTTLAnimateScaleBehavior) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTTLAnimateScaleBehavior == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLAnimateScaleBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLMediaNodeAudio getAudioArray(int i) {
        CTTLMediaNodeAudio cTTLMediaNodeAudio;
        synchronized (monitor()) {
            check_orphaned();
            cTTLMediaNodeAudio = (CTTLMediaNodeAudio) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTTLMediaNodeAudio == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLMediaNodeAudio;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLCommandBehavior getCmdArray(int i) {
        CTTLCommandBehavior cTTLCommandBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommandBehavior = (CTTLCommandBehavior) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTTLCommandBehavior == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLCommandBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeExclusive getExclArray(int i) {
        CTTLTimeNodeExclusive cTTLTimeNodeExclusive;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeNodeExclusive = (CTTLTimeNodeExclusive) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTTLTimeNodeExclusive == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLTimeNodeExclusive;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeParallel getParArray(int i) {
        CTTLTimeNodeParallel cTTLTimeNodeParallel;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeNodeParallel = (CTTLTimeNodeParallel) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTLTimeNodeParallel == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLTimeNodeParallel;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLTimeNodeSequence getSeqArray(int i) {
        CTTLTimeNodeSequence cTTLTimeNodeSequence;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeNodeSequence = (CTTLTimeNodeSequence) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTTLTimeNodeSequence == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLTimeNodeSequence;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLSetBehavior getSetArray(int i) {
        CTTLSetBehavior cTTLSetBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTTLSetBehavior = (CTTLSetBehavior) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTTLSetBehavior == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLSetBehavior;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public CTTLMediaNodeVideo getVideoArray(int i) {
        CTTLMediaNodeVideo cTTLMediaNodeVideo;
        synchronized (monitor()) {
            check_orphaned();
            cTTLMediaNodeVideo = (CTTLMediaNodeVideo) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTTLMediaNodeVideo == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLMediaNodeVideo;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimArray(int i, CTTLAnimateBehavior cTTLAnimateBehavior) {
        generatedSetterHelperImpl(cTTLAnimateBehavior, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimClrArray(int i, CTTLAnimateColorBehavior cTTLAnimateColorBehavior) {
        generatedSetterHelperImpl(cTTLAnimateColorBehavior, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimEffectArray(int i, CTTLAnimateEffectBehavior cTTLAnimateEffectBehavior) {
        generatedSetterHelperImpl(cTTLAnimateEffectBehavior, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimMotionArray(int i, CTTLAnimateMotionBehavior cTTLAnimateMotionBehavior) {
        generatedSetterHelperImpl(cTTLAnimateMotionBehavior, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimRotArray(int i, CTTLAnimateRotationBehavior cTTLAnimateRotationBehavior) {
        generatedSetterHelperImpl(cTTLAnimateRotationBehavior, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAnimScaleArray(int i, CTTLAnimateScaleBehavior cTTLAnimateScaleBehavior) {
        generatedSetterHelperImpl(cTTLAnimateScaleBehavior, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setAudioArray(int i, CTTLMediaNodeAudio cTTLMediaNodeAudio) {
        generatedSetterHelperImpl(cTTLMediaNodeAudio, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setCmdArray(int i, CTTLCommandBehavior cTTLCommandBehavior) {
        generatedSetterHelperImpl(cTTLCommandBehavior, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setExclArray(int i, CTTLTimeNodeExclusive cTTLTimeNodeExclusive) {
        generatedSetterHelperImpl(cTTLTimeNodeExclusive, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setParArray(int i, CTTLTimeNodeParallel cTTLTimeNodeParallel) {
        generatedSetterHelperImpl(cTTLTimeNodeParallel, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setSeqArray(int i, CTTLTimeNodeSequence cTTLTimeNodeSequence) {
        generatedSetterHelperImpl(cTTLTimeNodeSequence, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setSetArray(int i, CTTLSetBehavior cTTLSetBehavior) {
        generatedSetterHelperImpl(cTTLSetBehavior, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList
    public void setVideoArray(int i, CTTLMediaNodeVideo cTTLMediaNodeVideo) {
        generatedSetterHelperImpl(cTTLMediaNodeVideo, PROPERTY_QNAME[12], i, (short) 2);
    }
}
