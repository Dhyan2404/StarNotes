package org.apache.xmlbeans.impl.xsd2inst;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Date;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.GDate;
import org.apache.xmlbeans.GDateBuilder;
import org.apache.xmlbeans.GDuration;
import org.apache.xmlbeans.GDurationBuilder;
import org.apache.xmlbeans.SchemaField;
import org.apache.xmlbeans.SchemaLocalElement;
import org.apache.xmlbeans.SchemaParticle;
import org.apache.xmlbeans.SchemaProperty;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlCalendar;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlDate;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlDuration;
import org.apache.xmlbeans.XmlGDay;
import org.apache.xmlbeans.XmlGMonth;
import org.apache.xmlbeans.XmlGMonthDay;
import org.apache.xmlbeans.XmlGYear;
import org.apache.xmlbeans.XmlGYearMonth;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.XmlTime;
import org.apache.xmlbeans.impl.schema.SoapEncSchemaTypeSystem;
import org.apache.xmlbeans.impl.util.HexBin;
import org.apache.xmlbeans.soap.SOAPArrayType;
import org.apache.xmlbeans.soap.SchemaWSDLArrayType;

/* loaded from: classes13.dex */
public class SampleXmlUtil {
    private static final QName ENC_ARRAYTYPE;
    private static final QName ENC_OFFSET;
    private static final QName HREF;

    /* renamed from: ID */
    private static final QName f113870ID;
    private static final int MAX_ELEMENTS = 1000;
    private static final Set<QName> SKIPPED_SOAP_ATTRS;
    private static final QName XSI_TYPE;
    private int _nElements;
    private final boolean _soapEnc;
    private static final String[] WORDS = {"ipsa", "iovis", "rapidum", "iaculata", "e", "nubibus", "ignem", "disiecitque", "rates", "evertitque", "aequora", "ventis", "illum", "exspirantem", "transfixo", "pectore", "flammas", "turbine", "corripuit", "scopuloque", "infixit", "acuto", "ast", "ego", "quae", "divum", "incedo", "regina", "iovisque", "et", "soror", "et", "coniunx", "una", "cum", "gente", "tot", "annos", "bella", "gero", "et", "quisquam", "numen", "iunonis", "adorat", "praeterea", "aut", "supplex", "aris", "imponet", "honorem", "talia", "flammato", "secum", "dea", "corde", "volutans", "nimborum", "in", "patriam", "loca", "feta", "furentibus", "austris", "aeoliam", "venit", "hic", "vasto", "rex", "aeolus", "antro", "luctantis", "ventos", "tempestatesque", "sonoras", "imperio", "premit", "ac", "vinclis", "et", "carcere", "frenat", "illi", "indignantes", "magno", "cum", "murmure", "montis", "circum", "claustra", "fremunt", "celsa", "sedet", "aeolus", "arce", "sceptra", "tenens", "mollitque", "animos", "et", "temperat", "iras", "ni", "faciat", "maria", "ac", "terras", "caelumque", "profundum", "quippe", "ferant", "rapidi", "secum", "verrantque", "per", "auras", "sed", "pater", "omnipotens", "speluncis", "abdidit", "atris", "hoc", "metuens", "molemque", "et", "montis", "insuper", "altos", "imposuit", "regemque", "dedit", "qui", "foedere", "certo", "et", "premere", "et", "laxas", "sciret", "dare", "iussus", "habenas"};
    private static final String[] DNS1 = {"corp", "your", "my", "sample", "company", Constants.ATTRNAME_TEST, "any"};
    private static final String[] DNS2 = {"com", "org", "com", "gov", "org", "com", "org", "com", "edu"};
    Random _picker = new Random();
    private final ArrayList<SchemaType> _typeStack = new ArrayList<>();

    static {
        QName qName = new QName("href");
        HREF = qName;
        QName qName2 = new QName("id");
        f113870ID = qName2;
        XSI_TYPE = new QName("http://www.w3.org/2001/XMLSchema-instance", "type");
        ENC_ARRAYTYPE = new QName("http://schemas.xmlsoap.org/soap/encoding/", SoapEncSchemaTypeSystem.ARRAY_TYPE);
        QName qName3 = new QName("http://schemas.xmlsoap.org/soap/encoding/", TypedValues.CycleType.S_WAVE_OFFSET);
        ENC_OFFSET = qName3;
        SKIPPED_SOAP_ATTRS = new HashSet(Arrays.asList(qName, qName2, qName3));
    }

    private SampleXmlUtil(boolean z) {
        this._soapEnc = z;
    }

    private SchemaType closestBuiltin(SchemaType schemaType) {
        while (!schemaType.isBuiltinType()) {
            schemaType = schemaType.getBaseType();
        }
        return schemaType;
    }

    public static QName crackQName(String str) {
        String str2;
        int lastIndexOf = str.lastIndexOf(58);
        if (lastIndexOf >= 0) {
            str2 = str.substring(0, lastIndexOf);
            str = str.substring(lastIndexOf + 1);
        } else {
            str2 = "";
        }
        return new QName(str2, str);
    }

    public static String createSampleForType(SchemaType schemaType) {
        XmlObject newInstance = XmlObject.Factory.newInstance();
        XmlCursor newCursor = newInstance.newCursor();
        try {
            newCursor.toNextToken();
            new SampleXmlUtil(false).createSampleForType(schemaType, newCursor);
            newCursor.close();
            XmlOptions xmlOptions = new XmlOptions();
            xmlOptions.setSavePrettyPrint();
            xmlOptions.setSavePrettyPrintIndent(2);
            xmlOptions.setSaveAggressiveNamespaces();
            return newInstance.xmlText(xmlOptions);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private int determineMinMaxForSample(SchemaParticle schemaParticle, XmlCursor xmlCursor) {
        int intMinOccurs = schemaParticle.getIntMinOccurs();
        if (intMinOccurs == schemaParticle.getIntMaxOccurs()) {
            return intMinOccurs;
        }
        int i = (intMinOccurs != 0 || this._nElements >= 1000) ? intMinOccurs : 1;
        if (schemaParticle.getParticleType() != 4) {
            return i;
        }
        if (schemaParticle.getMaxOccurs() == null) {
            if (intMinOccurs == 0) {
                xmlCursor.insertComment("Zero or more repetitions:");
            } else {
                xmlCursor.insertComment(intMinOccurs + " or more repetitions:");
            }
        } else if (schemaParticle.getIntMaxOccurs() > 1) {
            xmlCursor.insertComment(intMinOccurs + " to " + schemaParticle.getMaxOccurs() + " repetitions:");
        } else {
            xmlCursor.insertComment("Optional:");
        }
        return i;
    }

    private String formatDate(SchemaType schemaType) {
        GDate gDateValue;
        GDate gDate;
        GDateBuilder gDateBuilder;
        GDateBuilder gDateBuilder2 = new GDateBuilder(new Date((pick(31536000) * 1000) + ((pick(20) + 30) * 365 * 24 * 60 * 60 * 1000)));
        switch (schemaType.getPrimitiveType().getBuiltinTypeCode()) {
            case 14:
                XmlDateTime xmlDateTime = (XmlDateTime) schemaType.getFacet(4);
                gDateValue = xmlDateTime != null ? xmlDateTime.getGDateValue() : null;
                XmlDateTime xmlDateTime2 = (XmlDateTime) schemaType.getFacet(3);
                if (xmlDateTime2 != null && (gDateValue == null || gDateValue.compareToGDate(xmlDateTime2.getGDateValue()) <= 0)) {
                    gDateValue = xmlDateTime2.getGDateValue();
                }
                XmlDateTime xmlDateTime3 = (XmlDateTime) schemaType.getFacet(5);
                r6 = xmlDateTime3 != null ? xmlDateTime3.getGDateValue() : null;
                XmlDateTime xmlDateTime4 = (XmlDateTime) schemaType.getFacet(6);
                if (xmlDateTime4 != null && (r6 == null || r6.compareToGDate(xmlDateTime4.getGDateValue()) >= 0)) {
                    r6 = xmlDateTime4.getGDateValue();
                }
                GDate gDate2 = r6;
                r6 = gDateValue;
                gDate = gDate2;
                break;
            case 15:
                XmlTime xmlTime = (XmlTime) schemaType.getFacet(4);
                gDateValue = xmlTime != null ? xmlTime.getGDateValue() : null;
                XmlTime xmlTime2 = (XmlTime) schemaType.getFacet(3);
                if (xmlTime2 != null && (gDateValue == null || gDateValue.compareToGDate(xmlTime2.getGDateValue()) <= 0)) {
                    gDateValue = xmlTime2.getGDateValue();
                }
                XmlTime xmlTime3 = (XmlTime) schemaType.getFacet(5);
                r6 = xmlTime3 != null ? xmlTime3.getGDateValue() : null;
                XmlTime xmlTime4 = (XmlTime) schemaType.getFacet(6);
                if (xmlTime4 != null && (r6 == null || r6.compareToGDate(xmlTime4.getGDateValue()) >= 0)) {
                    r6 = xmlTime4.getGDateValue();
                }
                GDate gDate22 = r6;
                r6 = gDateValue;
                gDate = gDate22;
                break;
            case 16:
                XmlDate xmlDate = (XmlDate) schemaType.getFacet(4);
                gDateValue = xmlDate != null ? xmlDate.getGDateValue() : null;
                XmlDate xmlDate2 = (XmlDate) schemaType.getFacet(3);
                if (xmlDate2 != null && (gDateValue == null || gDateValue.compareToGDate(xmlDate2.getGDateValue()) <= 0)) {
                    gDateValue = xmlDate2.getGDateValue();
                }
                XmlDate xmlDate3 = (XmlDate) schemaType.getFacet(5);
                r6 = xmlDate3 != null ? xmlDate3.getGDateValue() : null;
                XmlDate xmlDate4 = (XmlDate) schemaType.getFacet(6);
                if (xmlDate4 != null && (r6 == null || r6.compareToGDate(xmlDate4.getGDateValue()) >= 0)) {
                    r6 = xmlDate4.getGDateValue();
                }
                GDate gDate222 = r6;
                r6 = gDateValue;
                gDate = gDate222;
                break;
            case 17:
                XmlGYearMonth xmlGYearMonth = (XmlGYearMonth) schemaType.getFacet(4);
                gDateValue = xmlGYearMonth != null ? xmlGYearMonth.getGDateValue() : null;
                XmlGYearMonth xmlGYearMonth2 = (XmlGYearMonth) schemaType.getFacet(3);
                if (xmlGYearMonth2 != null && (gDateValue == null || gDateValue.compareToGDate(xmlGYearMonth2.getGDateValue()) <= 0)) {
                    gDateValue = xmlGYearMonth2.getGDateValue();
                }
                XmlGYearMonth xmlGYearMonth3 = (XmlGYearMonth) schemaType.getFacet(5);
                r6 = xmlGYearMonth3 != null ? xmlGYearMonth3.getGDateValue() : null;
                XmlGYearMonth xmlGYearMonth4 = (XmlGYearMonth) schemaType.getFacet(6);
                if (xmlGYearMonth4 != null && (r6 == null || r6.compareToGDate(xmlGYearMonth4.getGDateValue()) >= 0)) {
                    r6 = xmlGYearMonth4.getGDateValue();
                }
                GDate gDate2222 = r6;
                r6 = gDateValue;
                gDate = gDate2222;
                break;
            case 18:
                XmlGYear xmlGYear = (XmlGYear) schemaType.getFacet(4);
                gDateValue = xmlGYear != null ? xmlGYear.getGDateValue() : null;
                XmlGYear xmlGYear2 = (XmlGYear) schemaType.getFacet(3);
                if (xmlGYear2 != null && (gDateValue == null || gDateValue.compareToGDate(xmlGYear2.getGDateValue()) <= 0)) {
                    gDateValue = xmlGYear2.getGDateValue();
                }
                XmlGYear xmlGYear3 = (XmlGYear) schemaType.getFacet(5);
                r6 = xmlGYear3 != null ? xmlGYear3.getGDateValue() : null;
                XmlGYear xmlGYear4 = (XmlGYear) schemaType.getFacet(6);
                if (xmlGYear4 != null && (r6 == null || r6.compareToGDate(xmlGYear4.getGDateValue()) >= 0)) {
                    r6 = xmlGYear4.getGDateValue();
                }
                GDate gDate22222 = r6;
                r6 = gDateValue;
                gDate = gDate22222;
                break;
            case 19:
                XmlGMonthDay xmlGMonthDay = (XmlGMonthDay) schemaType.getFacet(4);
                gDateValue = xmlGMonthDay != null ? xmlGMonthDay.getGDateValue() : null;
                XmlGMonthDay xmlGMonthDay2 = (XmlGMonthDay) schemaType.getFacet(3);
                if (xmlGMonthDay2 != null && (gDateValue == null || gDateValue.compareToGDate(xmlGMonthDay2.getGDateValue()) <= 0)) {
                    gDateValue = xmlGMonthDay2.getGDateValue();
                }
                XmlGMonthDay xmlGMonthDay3 = (XmlGMonthDay) schemaType.getFacet(5);
                r6 = xmlGMonthDay3 != null ? xmlGMonthDay3.getGDateValue() : null;
                XmlGMonthDay xmlGMonthDay4 = (XmlGMonthDay) schemaType.getFacet(6);
                if (xmlGMonthDay4 != null && (r6 == null || r6.compareToGDate(xmlGMonthDay4.getGDateValue()) >= 0)) {
                    r6 = xmlGMonthDay4.getGDateValue();
                }
                GDate gDate222222 = r6;
                r6 = gDateValue;
                gDate = gDate222222;
                break;
            case 20:
                XmlGDay xmlGDay = (XmlGDay) schemaType.getFacet(4);
                gDateValue = xmlGDay != null ? xmlGDay.getGDateValue() : null;
                XmlGDay xmlGDay2 = (XmlGDay) schemaType.getFacet(3);
                if (xmlGDay2 != null && (gDateValue == null || gDateValue.compareToGDate(xmlGDay2.getGDateValue()) <= 0)) {
                    gDateValue = xmlGDay2.getGDateValue();
                }
                XmlGDay xmlGDay3 = (XmlGDay) schemaType.getFacet(5);
                r6 = xmlGDay3 != null ? xmlGDay3.getGDateValue() : null;
                XmlGDay xmlGDay4 = (XmlGDay) schemaType.getFacet(6);
                if (xmlGDay4 != null && (r6 == null || r6.compareToGDate(xmlGDay4.getGDateValue()) >= 0)) {
                    r6 = xmlGDay4.getGDateValue();
                }
                GDate gDate2222222 = r6;
                r6 = gDateValue;
                gDate = gDate2222222;
                break;
            case 21:
                XmlGMonth xmlGMonth = (XmlGMonth) schemaType.getFacet(4);
                gDateValue = xmlGMonth != null ? xmlGMonth.getGDateValue() : null;
                XmlGMonth xmlGMonth2 = (XmlGMonth) schemaType.getFacet(3);
                if (xmlGMonth2 != null && (gDateValue == null || gDateValue.compareToGDate(xmlGMonth2.getGDateValue()) <= 0)) {
                    gDateValue = xmlGMonth2.getGDateValue();
                }
                XmlGMonth xmlGMonth3 = (XmlGMonth) schemaType.getFacet(5);
                r6 = xmlGMonth3 != null ? xmlGMonth3.getGDateValue() : null;
                XmlGMonth xmlGMonth4 = (XmlGMonth) schemaType.getFacet(6);
                if (xmlGMonth4 != null && (r6 == null || r6.compareToGDate(xmlGMonth4.getGDateValue()) >= 0)) {
                    r6 = xmlGMonth4.getGDateValue();
                }
                GDate gDate22222222 = r6;
                r6 = gDateValue;
                gDate = gDate22222222;
                break;
            default:
                gDate = null;
                break;
        }
        if (r6 == null || gDate != null) {
            if (r6 != null || gDate == null) {
                if (r6 != null && gDate != null && (r6.compareToGDate(gDateBuilder2) >= 0 || gDate.compareToGDate(gDateBuilder2) <= 0)) {
                    XmlCalendar calendar = r6.getCalendar();
                    XmlCalendar calendar2 = gDate.getCalendar();
                    calendar.add(11, 1);
                    if (calendar.after(calendar2)) {
                        calendar.add(11, -1);
                        calendar.add(12, 1);
                        if (calendar.after(calendar2)) {
                            calendar.add(12, -1);
                            calendar.add(13, 1);
                            if (calendar.after(calendar2)) {
                                calendar.add(13, -1);
                                calendar.add(14, 1);
                                if (calendar.after(calendar2)) {
                                    calendar.add(14, -1);
                                }
                            }
                        }
                    }
                    gDateBuilder = new GDateBuilder(calendar);
                    gDateBuilder2 = gDateBuilder;
                }
            } else if (gDate.compareToGDate(gDateBuilder2) <= 0) {
                XmlCalendar calendar3 = gDateBuilder2.getCalendar();
                calendar3.add(11, -pick(8));
                gDateBuilder = new GDateBuilder(calendar3);
                gDateBuilder2 = gDateBuilder;
            }
        } else if (r6.compareToGDate(gDateBuilder2) >= 0) {
            XmlCalendar calendar4 = gDateBuilder2.getCalendar();
            calendar4.add(11, pick(8));
            gDateBuilder = new GDateBuilder(calendar4);
            gDateBuilder2 = gDateBuilder;
        }
        gDateBuilder2.setBuiltinTypeCode(schemaType.getPrimitiveType().getBuiltinTypeCode());
        if (pick(2) == 0) {
            gDateBuilder2.clearTimeZone();
        }
        return gDateBuilder2.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ad A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ff A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012e A[LOOP:1: B:55:0x0124->B:57:0x012e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0104 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0111 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String formatDecimal(java.lang.String r12, org.apache.xmlbeans.SchemaType r13) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.xsd2inst.SampleXmlUtil.formatDecimal(java.lang.String, org.apache.xmlbeans.SchemaType):java.lang.String");
    }

    private String formatDuration(SchemaType schemaType) {
        XmlDuration xmlDuration = (XmlDuration) schemaType.getFacet(4);
        GDuration gDurationValue = xmlDuration != null ? xmlDuration.getGDurationValue() : null;
        XmlDuration xmlDuration2 = (XmlDuration) schemaType.getFacet(5);
        GDuration gDurationValue2 = xmlDuration2 != null ? xmlDuration2.getGDurationValue() : null;
        XmlDuration xmlDuration3 = (XmlDuration) schemaType.getFacet(3);
        GDuration gDurationValue3 = xmlDuration3 != null ? xmlDuration3.getGDurationValue() : null;
        XmlDuration xmlDuration4 = (XmlDuration) schemaType.getFacet(6);
        GDuration gDurationValue4 = xmlDuration4 != null ? xmlDuration4.getGDurationValue() : null;
        GDurationBuilder gDurationBuilder = new GDurationBuilder();
        gDurationBuilder.setSecond(pick(800000));
        gDurationBuilder.setMonth(pick(20));
        if (gDurationValue != null) {
            if (gDurationBuilder.getYear() < gDurationValue.getYear()) {
                gDurationBuilder.setYear(gDurationValue.getYear());
            }
            if (gDurationBuilder.getMonth() < gDurationValue.getMonth()) {
                gDurationBuilder.setMonth(gDurationValue.getMonth());
            }
            if (gDurationBuilder.getDay() < gDurationValue.getDay()) {
                gDurationBuilder.setDay(gDurationValue.getDay());
            }
            if (gDurationBuilder.getHour() < gDurationValue.getHour()) {
                gDurationBuilder.setHour(gDurationValue.getHour());
            }
            if (gDurationBuilder.getMinute() < gDurationValue.getMinute()) {
                gDurationBuilder.setMinute(gDurationValue.getMinute());
            }
            if (gDurationBuilder.getSecond() < gDurationValue.getSecond()) {
                gDurationBuilder.setSecond(gDurationValue.getSecond());
            }
            if (gDurationBuilder.getFraction().compareTo(gDurationValue.getFraction()) < 0) {
                gDurationBuilder.setFraction(gDurationValue.getFraction());
            }
        }
        if (gDurationValue2 != null) {
            if (gDurationBuilder.getYear() > gDurationValue2.getYear()) {
                gDurationBuilder.setYear(gDurationValue2.getYear());
            }
            if (gDurationBuilder.getMonth() > gDurationValue2.getMonth()) {
                gDurationBuilder.setMonth(gDurationValue2.getMonth());
            }
            if (gDurationBuilder.getDay() > gDurationValue2.getDay()) {
                gDurationBuilder.setDay(gDurationValue2.getDay());
            }
            if (gDurationBuilder.getHour() > gDurationValue2.getHour()) {
                gDurationBuilder.setHour(gDurationValue2.getHour());
            }
            if (gDurationBuilder.getMinute() > gDurationValue2.getMinute()) {
                gDurationBuilder.setMinute(gDurationValue2.getMinute());
            }
            if (gDurationBuilder.getSecond() > gDurationValue2.getSecond()) {
                gDurationBuilder.setSecond(gDurationValue2.getSecond());
            }
            if (gDurationBuilder.getFraction().compareTo(gDurationValue2.getFraction()) > 0) {
                gDurationBuilder.setFraction(gDurationValue2.getFraction());
            }
        }
        if (gDurationValue3 != null) {
            if (gDurationBuilder.getYear() <= gDurationValue3.getYear()) {
                gDurationBuilder.setYear(gDurationValue3.getYear() + 1);
            }
            if (gDurationBuilder.getMonth() <= gDurationValue3.getMonth()) {
                gDurationBuilder.setMonth(gDurationValue3.getMonth() + 1);
            }
            if (gDurationBuilder.getDay() <= gDurationValue3.getDay()) {
                gDurationBuilder.setDay(gDurationValue3.getDay() + 1);
            }
            if (gDurationBuilder.getHour() <= gDurationValue3.getHour()) {
                gDurationBuilder.setHour(gDurationValue3.getHour() + 1);
            }
            if (gDurationBuilder.getMinute() <= gDurationValue3.getMinute()) {
                gDurationBuilder.setMinute(gDurationValue3.getMinute() + 1);
            }
            if (gDurationBuilder.getSecond() <= gDurationValue3.getSecond()) {
                gDurationBuilder.setSecond(gDurationValue3.getSecond() + 1);
            }
            if (gDurationBuilder.getFraction().compareTo(gDurationValue3.getFraction()) <= 0) {
                gDurationBuilder.setFraction(gDurationValue3.getFraction().add(new BigDecimal("0.001")));
            }
        }
        if (gDurationValue4 != null) {
            if (gDurationBuilder.getYear() > gDurationValue4.getYear()) {
                gDurationBuilder.setYear(gDurationValue4.getYear());
            }
            if (gDurationBuilder.getMonth() > gDurationValue4.getMonth()) {
                gDurationBuilder.setMonth(gDurationValue4.getMonth());
            }
            if (gDurationBuilder.getDay() > gDurationValue4.getDay()) {
                gDurationBuilder.setDay(gDurationValue4.getDay());
            }
            if (gDurationBuilder.getHour() > gDurationValue4.getHour()) {
                gDurationBuilder.setHour(gDurationValue4.getHour());
            }
            if (gDurationBuilder.getMinute() > gDurationValue4.getMinute()) {
                gDurationBuilder.setMinute(gDurationValue4.getMinute());
            }
            if (gDurationBuilder.getSecond() > gDurationValue4.getSecond()) {
                gDurationBuilder.setSecond(gDurationValue4.getSecond());
            }
            if (gDurationBuilder.getFraction().compareTo(gDurationValue4.getFraction()) > 0) {
                gDurationBuilder.setFraction(gDurationValue4.getFraction());
            }
        }
        gDurationBuilder.normalize();
        return gDurationBuilder.toString();
    }

    private static String formatQName(XmlCursor xmlCursor, QName qName) {
        XmlCursor newCursor = xmlCursor.newCursor();
        try {
            newCursor.toParent();
            String prefixForNamespace = newCursor.prefixForNamespace(qName.getNamespaceURI());
            newCursor.close();
            if (prefixForNamespace == null || prefixForNamespace.length() == 0) {
                return qName.getLocalPart();
            }
            return prefixForNamespace + ":" + qName.getLocalPart();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private String formatToLength(String str, SchemaType schemaType) {
        int intValue;
        try {
            SimpleValue simpleValue = (SimpleValue) schemaType.getFacet(0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) schemaType.getFacet(1);
            }
            if (simpleValue != null) {
                while (str.length() < simpleValue.getIntValue()) {
                    str = str + str;
                }
            }
            SimpleValue simpleValue2 = (SimpleValue) schemaType.getFacet(0);
            if (simpleValue2 == null) {
                simpleValue2 = (SimpleValue) schemaType.getFacet(2);
            }
            return (simpleValue2 == null || str.length() <= (intValue = simpleValue2.getIntValue())) ? str : str.substring(0, intValue);
        } catch (Exception unused) {
            return str;
        }
    }

    private int pick(int i) {
        return this._picker.nextInt(i);
    }

    private int pickLength(SchemaType schemaType) {
        XmlInteger xmlInteger = (XmlInteger) schemaType.getFacet(0);
        if (xmlInteger != null) {
            return xmlInteger.getBigIntegerValue().intValue();
        }
        XmlInteger xmlInteger2 = (XmlInteger) schemaType.getFacet(1);
        XmlInteger xmlInteger3 = (XmlInteger) schemaType.getFacet(2);
        int intValue = xmlInteger2 != null ? xmlInteger2.getBigIntegerValue().intValue() : 0;
        int intValue2 = xmlInteger3 == null ? Integer.MAX_VALUE : xmlInteger3.getBigIntegerValue().intValue();
        int i = (intValue != 0 || intValue2 < 1) ? intValue : 1;
        int i2 = i + 2;
        if (intValue2 > i2) {
            intValue2 = i2;
        }
        if (intValue2 < i) {
            intValue2 = i;
        }
        return i + pick(intValue2 - i);
    }

    private void processAll(SchemaParticle schemaParticle, XmlCursor xmlCursor, boolean z) {
        SchemaParticle[] particleChildren = schemaParticle.getParticleChildren();
        for (int i = 0; i < particleChildren.length; i++) {
            processParticle(particleChildren[i], xmlCursor, z);
            if (z && i < particleChildren.length - 1) {
                xmlCursor.insertChars(pick(WORDS));
            }
        }
    }

    private void processAttributes(SchemaType schemaType, XmlCursor xmlCursor) {
        QName name;
        if (this._soapEnc && (name = schemaType.getName()) != null) {
            xmlCursor.insertAttributeWithValue(XSI_TYPE, formatQName(xmlCursor, name));
        }
        for (SchemaProperty schemaProperty : schemaType.getAttributeProperties()) {
            if (this._soapEnc) {
                if (!SKIPPED_SOAP_ATTRS.contains(schemaProperty.getName())) {
                    if (ENC_ARRAYTYPE.equals(schemaProperty.getName())) {
                        SOAPArrayType wSDLArrayType = ((SchemaWSDLArrayType) schemaType.getAttributeModel().getAttribute(schemaProperty.getName())).getWSDLArrayType();
                        if (wSDLArrayType != null) {
                            xmlCursor.insertAttributeWithValue(schemaProperty.getName(), formatQName(xmlCursor, wSDLArrayType.getQName()) + wSDLArrayType.soap11DimensionString());
                        }
                    }
                }
            }
            String defaultText = schemaProperty.getDefaultText();
            QName name2 = schemaProperty.getName();
            if (defaultText == null) {
                defaultText = sampleDataForSimpleType(schemaProperty.getType());
            }
            xmlCursor.insertAttributeWithValue(name2, defaultText);
        }
    }

    private void processChoice(SchemaParticle schemaParticle, XmlCursor xmlCursor, boolean z) {
        SchemaParticle[] particleChildren = schemaParticle.getParticleChildren();
        xmlCursor.insertComment("You have a CHOICE of the next " + particleChildren.length + " items at this level");
        for (SchemaParticle schemaParticle2 : particleChildren) {
            processParticle(schemaParticle2, xmlCursor, z);
        }
    }

    private void processElement(SchemaParticle schemaParticle, XmlCursor xmlCursor, boolean z) {
        SchemaLocalElement schemaLocalElement = (SchemaLocalElement) schemaParticle;
        if (this._soapEnc) {
            xmlCursor.insertElement(schemaLocalElement.getName().getLocalPart());
        } else {
            xmlCursor.insertElement(schemaLocalElement.getName().getLocalPart(), schemaLocalElement.getName().getNamespaceURI());
        }
        this._nElements++;
        xmlCursor.toPrevToken();
        createSampleForType(schemaLocalElement.getType(), xmlCursor);
        xmlCursor.toNextToken();
    }

    private void processParticle(SchemaParticle schemaParticle, XmlCursor xmlCursor, boolean z) {
        int determineMinMaxForSample = determineMinMaxForSample(schemaParticle, xmlCursor);
        while (true) {
            int i = determineMinMaxForSample - 1;
            if (determineMinMaxForSample <= 0) {
                return;
            }
            int particleType = schemaParticle.getParticleType();
            if (particleType == 1) {
                processAll(schemaParticle, xmlCursor, z);
            } else if (particleType == 2) {
                processChoice(schemaParticle, xmlCursor, z);
            } else if (particleType == 3) {
                processSequence(schemaParticle, xmlCursor, z);
            } else if (particleType == 4) {
                processElement(schemaParticle, xmlCursor, z);
            } else if (particleType == 5) {
                processWildCard(schemaParticle, xmlCursor, z);
            }
            determineMinMaxForSample = i;
        }
    }

    private void processSequence(SchemaParticle schemaParticle, XmlCursor xmlCursor, boolean z) {
        SchemaParticle[] particleChildren = schemaParticle.getParticleChildren();
        for (int i = 0; i < particleChildren.length; i++) {
            processParticle(particleChildren[i], xmlCursor, z);
            if (z && i < particleChildren.length - 1) {
                xmlCursor.insertChars(pick(WORDS));
            }
        }
    }

    private void processSimpleType(SchemaType schemaType, XmlCursor xmlCursor) {
        xmlCursor.insertChars(sampleDataForSimpleType(schemaType));
    }

    private void processWildCard(SchemaParticle schemaParticle, XmlCursor xmlCursor, boolean z) {
        xmlCursor.insertComment("You may enter ANY elements at this point");
        xmlCursor.insertElement("AnyElement");
    }

    private String sampleDataForSimpleType(SchemaType schemaType) {
        if (XmlObject.type.equals(schemaType)) {
            return "anyType";
        }
        if (XmlAnySimpleType.type.equals(schemaType)) {
            return "anySimpleType";
        }
        if (schemaType.getSimpleVariety() == 3) {
            SchemaType listItemType = schemaType.getListItemType();
            StringBuilder sb = new StringBuilder();
            int pickLength = pickLength(schemaType);
            if (pickLength > 0) {
                sb.append(sampleDataForSimpleType(listItemType));
            }
            for (int i = 1; i < pickLength; i++) {
                sb.append(' ');
                sb.append(sampleDataForSimpleType(listItemType));
            }
            return sb.toString();
        }
        if (schemaType.getSimpleVariety() == 2) {
            SchemaType[] unionConstituentTypes = schemaType.getUnionConstituentTypes();
            return unionConstituentTypes.length == 0 ? "" : sampleDataForSimpleType(unionConstituentTypes[pick(unionConstituentTypes.length)]);
        }
        XmlAnySimpleType[] enumerationValues = schemaType.getEnumerationValues();
        if (enumerationValues != null && enumerationValues.length > 0) {
            return enumerationValues[pick(enumerationValues.length)].getStringValue();
        }
        switch (schemaType.getPrimitiveType().getBuiltinTypeCode()) {
            case 1:
            case 2:
                return "anything";
            case 3:
                return pick(2) == 0 ? "true" : "false";
            case 4:
                return Base64.getEncoder().encodeToString(formatToLength(pick(WORDS), schemaType).getBytes(StandardCharsets.UTF_8));
            case 5:
                return HexBin.encode(formatToLength(pick(WORDS), schemaType));
            case 6:
                StringBuilder sb2 = new StringBuilder();
                sb2.append("http://www.");
                sb2.append(pick(DNS1));
                sb2.append(".");
                sb2.append(pick(DNS2));
                sb2.append("/");
                String[] strArr = WORDS;
                sb2.append(pick(strArr));
                sb2.append("/");
                sb2.append(pick(strArr));
                return formatToLength(sb2.toString(), schemaType);
            case 7:
                return formatToLength("qname", schemaType);
            case 8:
                return formatToLength("notation", schemaType);
            case 9:
                return "1.5E2";
            case 10:
                return "1.051732E7";
            case 11:
                switch (closestBuiltin(schemaType).getBuiltinTypeCode()) {
                    case 22:
                        return formatDecimal("100", schemaType);
                    case 23:
                        return formatDecimal("10", schemaType);
                    case 24:
                        return formatDecimal("3", schemaType);
                    case 25:
                        return formatDecimal("1", schemaType);
                    case 26:
                        return formatDecimal("2", schemaType);
                    case 27:
                        return formatDecimal("-200", schemaType);
                    case 28:
                        return formatDecimal("-201", schemaType);
                    case 29:
                        return formatDecimal("200", schemaType);
                    case 30:
                        return formatDecimal("201", schemaType);
                    case 31:
                        return formatDecimal("11", schemaType);
                    case 32:
                        return formatDecimal("7", schemaType);
                    case 33:
                        return formatDecimal("5", schemaType);
                    case 34:
                        return formatDecimal("6", schemaType);
                    default:
                        return formatDecimal("1000.00", schemaType);
                }
            case 12:
                return formatToLength(closestBuiltin(schemaType).getBuiltinTypeCode() == 36 ? "token" : "string", schemaType);
            case 13:
                return formatDuration(schemaType);
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                return formatDate(schemaType);
            default:
                return "";
        }
    }

    private String pick(String[] strArr) {
        return strArr[pick(strArr.length)];
    }

    public static String createSampleForType(SchemaField schemaField) {
        SchemaType type = schemaField.getType();
        XmlObject newInstance = XmlObject.Factory.newInstance();
        XmlCursor newCursor = newInstance.newCursor();
        try {
            newCursor.toNextToken();
            new SampleXmlUtil(false).createSampleForType(type, newCursor);
            newCursor.close();
            XmlOptions xmlOptions = new XmlOptions();
            xmlOptions.setSavePrettyPrint();
            xmlOptions.setSavePrettyPrintIndent(2);
            xmlOptions.setSaveAggressiveNamespaces();
            xmlOptions.setSaveSyntheticDocumentElement(schemaField.getName());
            return newInstance.xmlText(xmlOptions);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void createSampleForType(SchemaType schemaType, XmlCursor xmlCursor) {
        if (this._typeStack.contains(schemaType)) {
            return;
        }
        this._typeStack.add(schemaType);
        try {
            if (!schemaType.isSimpleType() && !schemaType.isURType()) {
                processAttributes(schemaType, xmlCursor);
                int contentType = schemaType.getContentType();
                if (contentType == 2) {
                    processSimpleType(schemaType, xmlCursor);
                } else if (contentType != 3) {
                    if (contentType == 4) {
                        StringBuilder sb = new StringBuilder();
                        String[] strArr = WORDS;
                        sb.append(pick(strArr));
                        sb.append(" ");
                        xmlCursor.insertChars(sb.toString());
                        if (schemaType.getContentModel() != null) {
                            processParticle(schemaType.getContentModel(), xmlCursor, true);
                        }
                        xmlCursor.insertChars(pick(strArr));
                    }
                } else if (schemaType.getContentModel() != null) {
                    processParticle(schemaType.getContentModel(), xmlCursor, false);
                }
                return;
            }
            processSimpleType(schemaType, xmlCursor);
        } finally {
            ArrayList<SchemaType> arrayList = this._typeStack;
            arrayList.remove(arrayList.size() - 1);
        }
    }
}
