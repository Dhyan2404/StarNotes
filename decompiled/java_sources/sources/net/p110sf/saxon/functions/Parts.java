package net.p110sf.saxon.functions;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.gms.actions.SearchIntents;
import com.google.gson.internal.bind.TypeAdapters;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.function.Function;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.functions.Parts;
import net.p110sf.saxon.ma.map.DictionaryMap;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.ma.map.RecordTest;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.CalendarValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.DayTimeDurationValue;
import net.p110sf.saxon.value.DurationValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.GDateValue;
import net.p110sf.saxon.value.HexBinaryValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.TimeValue;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes11.dex */
public class Parts extends SystemFunction implements Callable {

    /* renamed from: h */
    public static final Map<AtomicType, Map<String, C18368b>> f100287h = new HashMap();

    /* renamed from: i */
    public static Map<AtomicType, RecordTest> f100288i;

    /* renamed from: net.sf.saxon.functions.Parts$b */
    /* loaded from: classes11.dex */
    public static class C18368b {

        /* renamed from: a */
        public SequenceType f100289a;

        /* renamed from: b */
        public Function<AtomicValue, SequenceIterator> f100290b;

        public C18368b() {
        }
    }

    static {
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.DATE_TIME;
        SequenceType sequenceType = SequenceType.SINGLE_INTEGER;
        m63086Q0(builtInAtomicType, TypeAdapters.C6590r.f36273a, sequenceType, new Function() { // from class: com.sunia.HTREnginev2.pxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63093W;
                m63093W = Parts.m63093W((AtomicValue) obj);
                return m63093W;
            }
        });
        m63086Q0(builtInAtomicType, TypeAdapters.C6590r.f36274b, sequenceType, new Function() { // from class: com.sunia.HTREnginev2.hxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63112h0;
                m63112h0 = Parts.m63112h0((AtomicValue) obj);
                return m63112h0;
            }
        });
        m63086Q0(builtInAtomicType, "day", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.txk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63134s0;
                m63134s0 = Parts.m63134s0((AtomicValue) obj);
                return m63134s0;
            }
        });
        m63086Q0(builtInAtomicType, "hours", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.fyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63060D0;
                m63060D0 = Parts.m63060D0((AtomicValue) obj);
                return m63060D0;
            }
        });
        m63086Q0(builtInAtomicType, "minutes", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.kyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63072J0;
                m63072J0 = Parts.m63072J0((AtomicValue) obj);
                return m63072J0;
            }
        });
        m63086Q0(builtInAtomicType, "seconds", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.myk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63074K0;
                m63074K0 = Parts.m63074K0((AtomicValue) obj);
                return m63074K0;
            }
        });
        SequenceType sequenceType2 = SequenceType.OPTIONAL_DAY_TIME_DURATION;
        m63086Q0(builtInAtomicType, "timezone", sequenceType2, new Function() { // from class: com.sunia.HTREnginev2.nyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63076L0;
                m63076L0 = Parts.m63076L0((AtomicValue) obj);
                return m63076L0;
            }
        });
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.DATE;
        m63086Q0(builtInAtomicType2, TypeAdapters.C6590r.f36273a, sequenceType, new Function() { // from class: com.sunia.HTREnginev2.oyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63078M0;
                m63078M0 = Parts.m63078M0((AtomicValue) obj);
                return m63078M0;
            }
        });
        m63086Q0(builtInAtomicType2, TypeAdapters.C6590r.f36274b, sequenceType, new Function() { // from class: com.sunia.HTREnginev2.pyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63080N0;
                m63080N0 = Parts.m63080N0((AtomicValue) obj);
                return m63080N0;
            }
        });
        m63086Q0(builtInAtomicType2, "day", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.qyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63094X;
                m63094X = Parts.m63094X((AtomicValue) obj);
                return m63094X;
            }
        });
        m63086Q0(builtInAtomicType2, "timezone", sequenceType2, new Function() { // from class: com.sunia.HTREnginev2.ayk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63095Y;
                m63095Y = Parts.m63095Y((AtomicValue) obj);
                return m63095Y;
            }
        });
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.TIME;
        m63086Q0(builtInAtomicType3, "hours", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.lyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63096Z;
                m63096Z = Parts.m63096Z((AtomicValue) obj);
                return m63096Z;
            }
        });
        m63086Q0(builtInAtomicType3, "minutes", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.ryk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63098a0;
                m63098a0 = Parts.m63098a0((AtomicValue) obj);
                return m63098a0;
            }
        });
        m63086Q0(builtInAtomicType3, "seconds", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.syk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63100b0;
                m63100b0 = Parts.m63100b0((AtomicValue) obj);
                return m63100b0;
            }
        });
        m63086Q0(builtInAtomicType3, "timezone", sequenceType2, new Function() { // from class: com.sunia.HTREnginev2.tyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63102c0;
                m63102c0 = Parts.m63102c0((AtomicValue) obj);
                return m63102c0;
            }
        });
        BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.G_YEAR;
        m63086Q0(builtInAtomicType4, TypeAdapters.C6590r.f36273a, sequenceType, new Function() { // from class: com.sunia.HTREnginev2.uyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63104d0;
                m63104d0 = Parts.m63104d0((AtomicValue) obj);
                return m63104d0;
            }
        });
        m63086Q0(builtInAtomicType4, "timezone", sequenceType2, new Function() { // from class: com.sunia.HTREnginev2.vyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63106e0;
                m63106e0 = Parts.m63106e0((AtomicValue) obj);
                return m63106e0;
            }
        });
        BuiltInAtomicType builtInAtomicType5 = BuiltInAtomicType.G_YEAR_MONTH;
        m63086Q0(builtInAtomicType5, TypeAdapters.C6590r.f36273a, sequenceType, new Function() { // from class: com.sunia.HTREnginev2.wyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63108f0;
                m63108f0 = Parts.m63108f0((AtomicValue) obj);
                return m63108f0;
            }
        });
        m63086Q0(builtInAtomicType5, TypeAdapters.C6590r.f36274b, sequenceType, new Function() { // from class: com.sunia.HTREnginev2.fxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63110g0;
                m63110g0 = Parts.m63110g0((AtomicValue) obj);
                return m63110g0;
            }
        });
        m63086Q0(builtInAtomicType5, "timezone", sequenceType2, new Function() { // from class: com.sunia.HTREnginev2.gxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63114i0;
                m63114i0 = Parts.m63114i0((AtomicValue) obj);
                return m63114i0;
            }
        });
        BuiltInAtomicType builtInAtomicType6 = BuiltInAtomicType.G_MONTH;
        m63086Q0(builtInAtomicType6, TypeAdapters.C6590r.f36274b, sequenceType, new Function() { // from class: com.sunia.HTREnginev2.ixk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63116j0;
                m63116j0 = Parts.m63116j0((AtomicValue) obj);
                return m63116j0;
            }
        });
        m63086Q0(builtInAtomicType6, "timezone", sequenceType2, new Function() { // from class: com.sunia.HTREnginev2.jxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63118k0;
                m63118k0 = Parts.m63118k0((AtomicValue) obj);
                return m63118k0;
            }
        });
        BuiltInAtomicType builtInAtomicType7 = BuiltInAtomicType.G_MONTH_DAY;
        m63086Q0(builtInAtomicType7, TypeAdapters.C6590r.f36274b, sequenceType, new Function() { // from class: com.sunia.HTREnginev2.kxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63120l0;
                m63120l0 = Parts.m63120l0((AtomicValue) obj);
                return m63120l0;
            }
        });
        m63086Q0(builtInAtomicType7, "day", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.lxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63122m0;
                m63122m0 = Parts.m63122m0((AtomicValue) obj);
                return m63122m0;
            }
        });
        m63086Q0(builtInAtomicType7, "timezone", sequenceType2, new Function() { // from class: com.sunia.HTREnginev2.mxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63124n0;
                m63124n0 = Parts.m63124n0((AtomicValue) obj);
                return m63124n0;
            }
        });
        BuiltInAtomicType builtInAtomicType8 = BuiltInAtomicType.G_DAY;
        m63086Q0(builtInAtomicType8, "day", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.nxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63126o0;
                m63126o0 = Parts.m63126o0((AtomicValue) obj);
                return m63126o0;
            }
        });
        m63086Q0(builtInAtomicType8, "timezone", sequenceType2, new Function() { // from class: com.sunia.HTREnginev2.oxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63128p0;
                m63128p0 = Parts.m63128p0((AtomicValue) obj);
                return m63128p0;
            }
        });
        BuiltInAtomicType builtInAtomicType9 = BuiltInAtomicType.DURATION;
        m63086Q0(builtInAtomicType9, "years", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.qxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63130q0;
                m63130q0 = Parts.m63130q0((AtomicValue) obj);
                return m63130q0;
            }
        });
        m63086Q0(builtInAtomicType9, "months", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.rxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63132r0;
                m63132r0 = Parts.m63132r0((AtomicValue) obj);
                return m63132r0;
            }
        });
        m63086Q0(builtInAtomicType9, "days", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.sxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63136t0;
                m63136t0 = Parts.m63136t0((AtomicValue) obj);
                return m63136t0;
            }
        });
        m63086Q0(builtInAtomicType9, "hours", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.uxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63138u0;
                m63138u0 = Parts.m63138u0((AtomicValue) obj);
                return m63138u0;
            }
        });
        m63086Q0(builtInAtomicType9, "minutes", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.vxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63140v0;
                m63140v0 = Parts.m63140v0((AtomicValue) obj);
                return m63140v0;
            }
        });
        m63086Q0(builtInAtomicType9, "seconds", sequenceType, new Function() { // from class: com.sunia.HTREnginev2.wxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63142w0;
                m63142w0 = Parts.m63142w0((AtomicValue) obj);
                return m63142w0;
            }
        });
        BuiltInAtomicType builtInAtomicType10 = BuiltInAtomicType.HEX_BINARY;
        BuiltInAtomicType builtInAtomicType11 = BuiltInAtomicType.UNSIGNED_BYTE;
        m63086Q0(builtInAtomicType10, "octets", SequenceType.makeSequenceType(builtInAtomicType11, 57344), new Function() { // from class: com.sunia.HTREnginev2.xxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63144x0;
                m63144x0 = Parts.m63144x0((AtomicValue) obj);
                return m63144x0;
            }
        });
        m63086Q0(BuiltInAtomicType.BASE64_BINARY, "octets", SequenceType.makeSequenceType(builtInAtomicType11, 57344), new Function() { // from class: com.sunia.HTREnginev2.yxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63146y0;
                m63146y0 = Parts.m63146y0((AtomicValue) obj);
                return m63146y0;
            }
        });
        BuiltInAtomicType builtInAtomicType12 = BuiltInAtomicType.QNAME;
        SequenceType sequenceType3 = SequenceType.OPTIONAL_STRING;
        m63086Q0(builtInAtomicType12, RequestParameters.PREFIX, sequenceType3, new Function() { // from class: com.sunia.HTREnginev2.zxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63148z0;
                m63148z0 = Parts.m63148z0((AtomicValue) obj);
                return m63148z0;
            }
        });
        m63086Q0(builtInAtomicType12, Keywords.FUNC_NAMESPACE_STRING, sequenceType3, new Function() { // from class: com.sunia.HTREnginev2.byk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63054A0;
                m63054A0 = Parts.m63054A0((AtomicValue) obj);
                return m63054A0;
            }
        });
        m63086Q0(builtInAtomicType12, Keywords.FUNC_LOCAL_PART_STRING, SequenceType.SINGLE_STRING, new Function() { // from class: com.sunia.HTREnginev2.cyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63056B0;
                m63056B0 = Parts.m63056B0((AtomicValue) obj);
                return m63056B0;
            }
        });
        BuiltInAtomicType builtInAtomicType13 = BuiltInAtomicType.ANY_URI;
        m63086Q0(builtInAtomicType13, "scheme", sequenceType3, new Function() { // from class: com.sunia.HTREnginev2.dyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63058C0;
                m63058C0 = Parts.m63058C0((AtomicValue) obj);
                return m63058C0;
            }
        });
        m63086Q0(builtInAtomicType13, "authority", sequenceType3, new Function() { // from class: com.sunia.HTREnginev2.eyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63062E0;
                m63062E0 = Parts.m63062E0((AtomicValue) obj);
                return m63062E0;
            }
        });
        m63086Q0(builtInAtomicType13, "path", sequenceType3, new Function() { // from class: com.sunia.HTREnginev2.gyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63064F0;
                m63064F0 = Parts.m63064F0((AtomicValue) obj);
                return m63064F0;
            }
        });
        m63086Q0(builtInAtomicType13, SearchIntents.EXTRA_QUERY, sequenceType3, new Function() { // from class: com.sunia.HTREnginev2.hyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63066G0;
                m63066G0 = Parts.m63066G0((AtomicValue) obj);
                return m63066G0;
            }
        });
        m63086Q0(builtInAtomicType13, "fragment", sequenceType3, new Function() { // from class: com.sunia.HTREnginev2.iyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63068H0;
                m63068H0 = Parts.m63068H0((AtomicValue) obj);
                return m63068H0;
            }
        });
        m63086Q0(builtInAtomicType13, "query-parameters", MapType.SINGLE_MAP_ITEM, new Function() { // from class: com.sunia.HTREnginev2.jyk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SequenceIterator m63070I0;
                m63070I0 = Parts.m63070I0((AtomicValue) obj);
                return m63070I0;
            }
        });
        m63090T();
    }

    /* renamed from: A0 */
    public static /* synthetic */ SequenceIterator m63054A0(AtomicValue atomicValue) {
        String uri = ((QNameValue) atomicValue).getStructuredQName().getURI();
        return uri.isEmpty() ? EmptyIterator.ofAtomic() : SingletonIterator.makeIterator(new StringValue(uri, BuiltInAtomicType.ANY_URI));
    }

    /* renamed from: B0 */
    public static /* synthetic */ SequenceIterator m63056B0(AtomicValue atomicValue) {
        return SingletonIterator.makeIterator(new StringValue(((QNameValue) atomicValue).getStructuredQName().getLocalPart(), BuiltInAtomicType.NCNAME));
    }

    /* renamed from: C0 */
    public static /* synthetic */ SequenceIterator m63058C0(AtomicValue atomicValue) {
        return SingletonIterator.makeIterator((StringValue) uriComponents(atomicValue.getStringValue()).get(new StringValue("scheme")));
    }

    /* renamed from: D0 */
    public static /* synthetic */ SequenceIterator m63060D0(AtomicValue atomicValue) {
        return m63084P0(((DateTimeValue) atomicValue).getHour());
    }

    /* renamed from: E0 */
    public static /* synthetic */ SequenceIterator m63062E0(AtomicValue atomicValue) {
        return SingletonIterator.makeIterator((StringValue) uriComponents(atomicValue.getStringValue()).get(new StringValue("authority")));
    }

    /* renamed from: F0 */
    public static /* synthetic */ SequenceIterator m63064F0(AtomicValue atomicValue) {
        return SingletonIterator.makeIterator((StringValue) uriComponents(atomicValue.getStringValue()).get(new StringValue("path")));
    }

    /* renamed from: G0 */
    public static /* synthetic */ SequenceIterator m63066G0(AtomicValue atomicValue) {
        return SingletonIterator.makeIterator((StringValue) uriComponents(atomicValue.getStringValue()).get(new StringValue(SearchIntents.EXTRA_QUERY)));
    }

    /* renamed from: H0 */
    public static /* synthetic */ SequenceIterator m63068H0(AtomicValue atomicValue) {
        return SingletonIterator.makeIterator((StringValue) uriComponents(atomicValue.getStringValue()).get(new StringValue("fragment")));
    }

    /* renamed from: I0 */
    public static /* synthetic */ SequenceIterator m63070I0(AtomicValue atomicValue) {
        return SingletonIterator.makeIterator((MapItem) uriComponents(atomicValue.getStringValue()).get(new StringValue("queryParams")));
    }

    /* renamed from: J0 */
    public static /* synthetic */ SequenceIterator m63072J0(AtomicValue atomicValue) {
        return m63084P0(((DateTimeValue) atomicValue).getMinute());
    }

    /* renamed from: K0 */
    public static /* synthetic */ SequenceIterator m63074K0(AtomicValue atomicValue) {
        DateTimeValue dateTimeValue = (DateTimeValue) atomicValue;
        return m63082O0(BigDecimal.valueOf(dateTimeValue.getNanosecond()).divide(BigDecimalValue.BIG_DECIMAL_ONE_BILLION, 6, RoundingMode.HALF_UP).add(BigDecimal.valueOf(dateTimeValue.getSecond())));
    }

    /* renamed from: L0 */
    public static /* synthetic */ SequenceIterator m63076L0(AtomicValue atomicValue) {
        return m63088R0((DateTimeValue) atomicValue);
    }

    /* renamed from: M0 */
    public static /* synthetic */ SequenceIterator m63078M0(AtomicValue atomicValue) {
        return m63084P0(((DateValue) atomicValue).getYear());
    }

    /* renamed from: N0 */
    public static /* synthetic */ SequenceIterator m63080N0(AtomicValue atomicValue) {
        return m63084P0(((DateValue) atomicValue).getMonth());
    }

    /* renamed from: O0 */
    public static SequenceIterator m63082O0(BigDecimal bigDecimal) {
        return SingletonIterator.makeIterator(new BigDecimalValue(bigDecimal));
    }

    /* renamed from: P0 */
    public static SequenceIterator m63084P0(long j) {
        return SingletonIterator.makeIterator(Int64Value.makeIntegerValue(j));
    }

    /* renamed from: Q0 */
    public static void m63086Q0(BuiltInAtomicType builtInAtomicType, String str, SequenceType sequenceType, Function<AtomicValue, SequenceIterator> function) {
        Map<String, C18368b> computeIfAbsent = f100287h.computeIfAbsent(builtInAtomicType, new Function() { // from class: com.sunia.HTREnginev2.exk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Map m63092V;
                m63092V = Parts.m63092V((AtomicType) obj);
                return m63092V;
            }
        });
        C18368b c18368b = new C18368b();
        c18368b.f100289a = sequenceType;
        c18368b.f100290b = function;
        computeIfAbsent.put(str, c18368b);
    }

    /* renamed from: R0 */
    public static SequenceIterator m63088R0(CalendarValue calendarValue) {
        if (!calendarValue.hasTimezone()) {
            return EmptyIterator.ofAtomic();
        }
        try {
            return SingletonIterator.makeIterator(DayTimeDurationValue.fromMilliseconds(calendarValue.getTimezoneInMinutes() * 60000));
        } catch (ValidationException unused) {
            return EmptyIterator.ofAtomic();
        }
    }

    /* renamed from: T */
    public static void m63090T() {
        f100288i = new HashMap();
        for (Map.Entry<AtomicType, Map<String, C18368b>> entry : f100287h.entrySet()) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (Map.Entry<String, C18368b> entry2 : entry.getValue().entrySet()) {
                arrayList.add(entry2.getKey());
                arrayList2.add(entry2.getValue().f100289a);
                if (Cardinality.allowsZero(entry2.getValue().f100289a.getCardinality())) {
                    arrayList3.add(entry2.getKey());
                }
            }
            arrayList.add("value");
            arrayList2.add(SequenceType.makeSequenceType(entry.getKey(), 16384));
            f100288i.put(entry.getKey(), new RecordTest(arrayList, arrayList2, arrayList3, false));
        }
    }

    /* renamed from: U */
    public static URI m63091U(URI uri) {
        return uri;
    }

    /* renamed from: V */
    public static /* synthetic */ Map m63092V(AtomicType atomicType) {
        return new HashMap();
    }

    /* renamed from: W */
    public static /* synthetic */ SequenceIterator m63093W(AtomicValue atomicValue) {
        return m63084P0(((DateTimeValue) atomicValue).getYear());
    }

    /* renamed from: X */
    public static /* synthetic */ SequenceIterator m63094X(AtomicValue atomicValue) {
        return m63084P0(((DateValue) atomicValue).getDay());
    }

    /* renamed from: Y */
    public static /* synthetic */ SequenceIterator m63095Y(AtomicValue atomicValue) {
        return m63088R0((DateValue) atomicValue);
    }

    /* renamed from: Z */
    public static /* synthetic */ SequenceIterator m63096Z(AtomicValue atomicValue) {
        return m63084P0(((TimeValue) atomicValue).getHour());
    }

    /* renamed from: a0 */
    public static /* synthetic */ SequenceIterator m63098a0(AtomicValue atomicValue) {
        return m63084P0(((TimeValue) atomicValue).getMinute());
    }

    /* renamed from: b0 */
    public static /* synthetic */ SequenceIterator m63100b0(AtomicValue atomicValue) {
        TimeValue timeValue = (TimeValue) atomicValue;
        return m63082O0(BigDecimal.valueOf(timeValue.getNanosecond()).divide(BigDecimalValue.BIG_DECIMAL_ONE_BILLION, 6, RoundingMode.HALF_UP).add(BigDecimal.valueOf(timeValue.getSecond())));
    }

    /* renamed from: c0 */
    public static /* synthetic */ SequenceIterator m63102c0(AtomicValue atomicValue) {
        return m63088R0((TimeValue) atomicValue);
    }

    /* renamed from: d0 */
    public static /* synthetic */ SequenceIterator m63104d0(AtomicValue atomicValue) {
        return m63084P0(((GDateValue) atomicValue).getYear());
    }

    /* renamed from: e0 */
    public static /* synthetic */ SequenceIterator m63106e0(AtomicValue atomicValue) {
        return m63088R0((GDateValue) atomicValue);
    }

    /* renamed from: f0 */
    public static /* synthetic */ SequenceIterator m63108f0(AtomicValue atomicValue) {
        return m63084P0(((GDateValue) atomicValue).getYear());
    }

    /* renamed from: g0 */
    public static /* synthetic */ SequenceIterator m63110g0(AtomicValue atomicValue) {
        return m63084P0(((GDateValue) atomicValue).getMonth());
    }

    public static SequenceType getComponentType(BuiltInAtomicType builtInAtomicType, String str) {
        C18368b c18368b;
        if (builtInAtomicType == BuiltInAtomicType.DAY_TIME_DURATION || builtInAtomicType == BuiltInAtomicType.YEAR_MONTH_DURATION) {
            builtInAtomicType = BuiltInAtomicType.DURATION;
        }
        Map<String, C18368b> map = f100287h.get(builtInAtomicType);
        if (map == null || (c18368b = map.get(str)) == null) {
            return null;
        }
        return c18368b.f100289a;
    }

    public static SequenceIterator getComponentValue(AtomicValue atomicValue, String str) {
        BuiltInAtomicType primitiveType = atomicValue.getPrimitiveType();
        if (primitiveType == BuiltInAtomicType.DAY_TIME_DURATION || primitiveType == BuiltInAtomicType.YEAR_MONTH_DURATION) {
            primitiveType = BuiltInAtomicType.DURATION;
        }
        Map<String, C18368b> map = f100287h.get(primitiveType);
        return map == null ? EmptyIterator.ofAtomic() : map.get(str).f100290b.apply(atomicValue);
    }

    /* renamed from: h0 */
    public static /* synthetic */ SequenceIterator m63112h0(AtomicValue atomicValue) {
        return m63084P0(((DateTimeValue) atomicValue).getMonth());
    }

    /* renamed from: i0 */
    public static /* synthetic */ SequenceIterator m63114i0(AtomicValue atomicValue) {
        return m63088R0((GDateValue) atomicValue);
    }

    /* renamed from: j0 */
    public static /* synthetic */ SequenceIterator m63116j0(AtomicValue atomicValue) {
        return m63084P0(((GDateValue) atomicValue).getMonth());
    }

    /* renamed from: k0 */
    public static /* synthetic */ SequenceIterator m63118k0(AtomicValue atomicValue) {
        return m63088R0((GDateValue) atomicValue);
    }

    /* renamed from: l0 */
    public static /* synthetic */ SequenceIterator m63120l0(AtomicValue atomicValue) {
        return m63084P0(((GDateValue) atomicValue).getMonth());
    }

    /* renamed from: m0 */
    public static /* synthetic */ SequenceIterator m63122m0(AtomicValue atomicValue) {
        return m63084P0(((GDateValue) atomicValue).getDay());
    }

    /* renamed from: n0 */
    public static /* synthetic */ SequenceIterator m63124n0(AtomicValue atomicValue) {
        return m63088R0((GDateValue) atomicValue);
    }

    /* renamed from: o0 */
    public static /* synthetic */ SequenceIterator m63126o0(AtomicValue atomicValue) {
        return m63084P0(((GDateValue) atomicValue).getDay());
    }

    /* renamed from: p0 */
    public static /* synthetic */ SequenceIterator m63128p0(AtomicValue atomicValue) {
        return m63088R0((GDateValue) atomicValue);
    }

    /* renamed from: q0 */
    public static /* synthetic */ SequenceIterator m63130q0(AtomicValue atomicValue) {
        DurationValue durationValue = (DurationValue) atomicValue;
        return m63084P0(durationValue.getYears() * durationValue.signum());
    }

    /* renamed from: r0 */
    public static /* synthetic */ SequenceIterator m63132r0(AtomicValue atomicValue) {
        DurationValue durationValue = (DurationValue) atomicValue;
        return m63084P0(durationValue.getMonths() * durationValue.signum());
    }

    /* renamed from: s0 */
    public static /* synthetic */ SequenceIterator m63134s0(AtomicValue atomicValue) {
        return m63084P0(((DateTimeValue) atomicValue).getDay());
    }

    /* renamed from: t0 */
    public static /* synthetic */ SequenceIterator m63136t0(AtomicValue atomicValue) {
        DurationValue durationValue = (DurationValue) atomicValue;
        return m63084P0(durationValue.getDays() * durationValue.signum());
    }

    /* renamed from: u0 */
    public static /* synthetic */ SequenceIterator m63138u0(AtomicValue atomicValue) {
        DurationValue durationValue = (DurationValue) atomicValue;
        return m63084P0(durationValue.getHours() * durationValue.signum());
    }

    public static DictionaryMap uriComponents(String str) {
        int port;
        DictionaryMap dictionaryMap = new DictionaryMap();
        try {
            URI uri = new URI(str);
            dictionaryMap.initialPut("isValid", BooleanValue.TRUE);
            boolean isAbsolute = uri.isAbsolute();
            dictionaryMap.initialPut("isAbsolute", BooleanValue.get(isAbsolute));
            dictionaryMap.initialPut("isOpaque", BooleanValue.get(uri.isOpaque()));
            URI m63091U = isAbsolute ? uri : m63091U(uri);
            String authority = isAbsolute ? uri.getAuthority() : null;
            if (authority != null) {
                dictionaryMap.initialPut("authority", new StringValue(authority));
            }
            String rawAuthority = isAbsolute ? uri.getRawAuthority() : null;
            if (rawAuthority != null) {
                dictionaryMap.initialPut("rawAuthority", new StringValue(rawAuthority));
            }
            String userInfo = isAbsolute ? uri.getUserInfo() : null;
            if (userInfo != null) {
                dictionaryMap.initialPut(Constant.USER_INFO, new StringValue(userInfo));
            }
            String rawUserInfo = isAbsolute ? uri.getRawUserInfo() : null;
            if (rawUserInfo != null) {
                dictionaryMap.initialPut("rawUserInfo", new StringValue(rawUserInfo));
            }
            String scheme = isAbsolute ? uri.getScheme() : null;
            if (scheme != null) {
                dictionaryMap.initialPut("scheme", new StringValue(scheme));
            }
            String host = isAbsolute ? uri.getHost() : null;
            if (host != null) {
                dictionaryMap.initialPut(Http2ExchangeCodec.f103778h, new StringValue(host));
            }
            String schemeSpecificPart = m63091U.getSchemeSpecificPart();
            if (schemeSpecificPart != null) {
                dictionaryMap.initialPut("schemeSpecificPart", new StringValue(schemeSpecificPart));
            }
            String rawSchemeSpecificPart = m63091U.getRawSchemeSpecificPart();
            if (rawSchemeSpecificPart != null) {
                dictionaryMap.initialPut("rawSchemeSpecificPart", new StringValue(rawSchemeSpecificPart));
            }
            if (isAbsolute && (port = uri.getPort()) >= 0) {
                dictionaryMap.initialPut(ClientCookie.PORT_ATTR, new Int64Value(port));
            }
            String path = m63091U.getPath();
            if (path != null) {
                if (path.equals("/") && !str.endsWith("/")) {
                    path = "";
                }
                if (!isAbsolute && path.startsWith("/") && !str.startsWith("/")) {
                    path = path.substring(1);
                }
                dictionaryMap.initialPut("path", new StringValue(path));
            }
            String rawPath = m63091U.getRawPath();
            if (rawPath != null) {
                dictionaryMap.initialPut("rawPath", new StringValue(rawPath));
            }
            String rawQuery = m63091U.getRawQuery();
            if (rawQuery != null) {
                dictionaryMap.initialPut("rawQuery", new StringValue(rawQuery));
            }
            String query = m63091U.getQuery();
            if (query != null) {
                dictionaryMap.initialPut(SearchIntents.EXTRA_QUERY, new StringValue(query));
                DictionaryMap dictionaryMap2 = new DictionaryMap();
                StringTokenizer stringTokenizer = new StringTokenizer(query, ";&");
                while (stringTokenizer.hasMoreTokens()) {
                    String nextToken = stringTokenizer.nextToken();
                    int indexOf = nextToken.indexOf(61);
                    if (indexOf >= 0) {
                        dictionaryMap2.initialAppend(nextToken.substring(0, indexOf), new StringValue(nextToken.substring(indexOf + 1)));
                    } else {
                        dictionaryMap2.initialAppend(nextToken, EmptySequence.getInstance());
                    }
                }
                dictionaryMap.initialPut("queryParams", dictionaryMap2);
            }
            String rawFragment = m63091U.getRawFragment();
            if (rawFragment != null) {
                dictionaryMap.initialPut("rawFragment", new StringValue(rawFragment));
            }
            String fragment = m63091U.getFragment();
            if (fragment != null) {
                dictionaryMap.initialPut("fragment", new StringValue(fragment));
            }
            String aSCIIString = uri.toASCIIString();
            if (aSCIIString != null) {
                dictionaryMap.initialPut("asciiString", new StringValue(aSCIIString));
            }
            return dictionaryMap;
        } catch (URISyntaxException e) {
            dictionaryMap.initialPut("isValid", BooleanValue.FALSE);
            dictionaryMap.initialPut("error", new StringValue(e.getMessage()));
            return dictionaryMap;
        }
    }

    /* renamed from: v0 */
    public static /* synthetic */ SequenceIterator m63140v0(AtomicValue atomicValue) {
        DurationValue durationValue = (DurationValue) atomicValue;
        return m63084P0(durationValue.getMinutes() * durationValue.signum());
    }

    /* renamed from: w0 */
    public static /* synthetic */ SequenceIterator m63142w0(AtomicValue atomicValue) {
        return SingletonIterator.makeIterator(((DurationValue) atomicValue).getComponent(AccessorFn.Component.SECONDS));
    }

    /* renamed from: x0 */
    public static /* synthetic */ SequenceIterator m63144x0(AtomicValue atomicValue) {
        ArrayList arrayList = new ArrayList();
        int length = ((HexBinaryValue) atomicValue).getBinaryValue().length;
        for (int i = 0; i < length; i++) {
            arrayList.add(new Int64Value(r7[i] & 255, BuiltInAtomicType.UNSIGNED_BYTE));
        }
        return new ListIterator.C18538Of(arrayList);
    }

    /* renamed from: y0 */
    public static /* synthetic */ SequenceIterator m63146y0(AtomicValue atomicValue) {
        ArrayList arrayList = new ArrayList();
        int length = ((Base64BinaryValue) atomicValue).getBinaryValue().length;
        for (int i = 0; i < length; i++) {
            arrayList.add(new Int64Value(r7[i] & 255, BuiltInAtomicType.UNSIGNED_BYTE));
        }
        return new ListIterator.C18538Of(arrayList);
    }

    /* renamed from: z0 */
    public static /* synthetic */ SequenceIterator m63148z0(AtomicValue atomicValue) {
        String prefix = ((QNameValue) atomicValue).getStructuredQName().getPrefix();
        return prefix.isEmpty() ? EmptyIterator.ofAtomic() : SingletonIterator.makeIterator(new StringValue(prefix, BuiltInAtomicType.NCNAME));
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        DictionaryMap dictionaryMap = new DictionaryMap();
        AtomicValue atomicValue = (AtomicValue) sequenceArr[0].head();
        BuiltInAtomicType primitiveType = atomicValue.getPrimitiveType();
        SchemaType baseType = primitiveType.getBaseType();
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.DURATION;
        if (baseType == builtInAtomicType) {
            primitiveType = builtInAtomicType;
        }
        Map<String, C18368b> map = f100287h.get(primitiveType);
        if (map == null) {
            map = new HashMap<>();
        }
        for (Map.Entry<String, C18368b> entry : map.entrySet()) {
            dictionaryMap.initialPut(entry.getKey(), SequenceTool.toGroundedValue(entry.getValue().f100290b.apply(atomicValue)));
        }
        dictionaryMap.initialPut("value", atomicValue);
        return dictionaryMap;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public ItemType getResultItemType(Expression[] expressionArr) {
        AtomicType primitiveItemType = expressionArr[0].getStaticType().getPrimaryType().getAtomizedItemType().getPrimitiveItemType();
        if (primitiveItemType == BuiltInAtomicType.ANY_ATOMIC) {
            return super.getResultItemType(expressionArr);
        }
        while (primitiveItemType.getBaseType() != BuiltInAtomicType.ANY_ATOMIC) {
            primitiveItemType = (AtomicType) primitiveItemType.getBaseType();
        }
        RecordTest recordTest = f100288i.get(primitiveItemType);
        return recordTest == null ? super.getResultItemType(expressionArr) : recordTest;
    }
}
