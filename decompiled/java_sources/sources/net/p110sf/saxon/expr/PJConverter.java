package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import javax.xml.namespace.QName;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.lib.ExternalObjectModel;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.One;
import net.p110sf.saxon.om.OneOrMore;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.om.ZeroOrMore;
import net.p110sf.saxon.om.ZeroOrOne;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.wrapper.VirtualNode;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.JavaExternalObjectType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.AnyExternalObject;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.CalendarValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.Closure;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.DayTimeDurationValue;
import net.p110sf.saxon.value.DecimalValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.DurationValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.FloatValue;
import net.p110sf.saxon.value.GDayValue;
import net.p110sf.saxon.value.GMonthDayValue;
import net.p110sf.saxon.value.GMonthValue;
import net.p110sf.saxon.value.GYearMonthValue;
import net.p110sf.saxon.value.GYearValue;
import net.p110sf.saxon.value.HexBinaryValue;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NotationValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.ObjectValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.QualifiedNameValue;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.TimeValue;
import net.p110sf.saxon.value.YearMonthDurationValue;

/* loaded from: classes11.dex */
public abstract class PJConverter {

    /* renamed from: a */
    public static final HashMap<Class, SequenceType> f99337a;

    /* loaded from: classes11.dex */
    public static class AnyURIValueToURI extends PJConverter {
        public static final AnyURIValueToURI INSTANCE = new AnyURIValueToURI();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            if (((AnyURIValue) sequence.head()) == null) {
                return null;
            }
            try {
                return new URI(((AnyURIValue) sequence).getStringValue());
            } catch (URISyntaxException unused) {
                throw new XPathException("The anyURI value '" + sequence + "' is not an acceptable Java URI");
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class AnyURIValueToURL extends PJConverter {
        public static final AnyURIValueToURL INSTANCE = new AnyURIValueToURL();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            if (((AnyURIValue) sequence.head()) == null) {
                return null;
            }
            try {
                return new URL(((AnyURIValue) sequence).getStringValue());
            } catch (MalformedURLException unused) {
                throw new XPathException("The anyURI value '" + sequence + "' is not an acceptable Java URL");
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class Atomic extends PJConverter {
        public static final Atomic INSTANCE = new Atomic();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            AtomicValue atomicValue = (AtomicValue) sequence.head();
            if (atomicValue == null) {
                return null;
            }
            return PJConverter.allocate(xPathContext.getConfiguration(), atomicValue.getItemType(), 16384, cls).convert(atomicValue, cls, xPathContext);
        }
    }

    /* loaded from: classes11.dex */
    public static class BooleanValueToBoolean extends PJConverter {
        public static final BooleanValueToBoolean INSTANCE = new BooleanValueToBoolean();

        /* renamed from: b */
        public static final /* synthetic */ boolean f99338b = false;

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return Boolean.valueOf(((BooleanValue) sequence.head()).getBooleanValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class CalendarValueToCalendar extends PJConverter {
        public static final CalendarValueToCalendar INSTANCE = new CalendarValueToCalendar();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            CalendarValue calendarValue = (CalendarValue) sequence.head();
            if (calendarValue == null) {
                return null;
            }
            return calendarValue.getCalendar();
        }
    }

    /* loaded from: classes11.dex */
    public static class CalendarValueToDate extends PJConverter {
        public static final CalendarValueToDate INSTANCE = new CalendarValueToDate();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            CalendarValue calendarValue = (CalendarValue) sequence.head();
            if (calendarValue == null) {
                return null;
            }
            return calendarValue.getCalendar().getTime();
        }
    }

    /* loaded from: classes11.dex */
    public static class CalendarValueToInstant extends PJConverter {
        public static final CalendarValueToInstant INSTANCE = new CalendarValueToInstant();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            CalendarValue calendarValue = (CalendarValue) sequence.head();
            if (calendarValue == null) {
                return null;
            }
            return calendarValue.toDateTime().toJavaInstant();
        }
    }

    /* loaded from: classes11.dex */
    public static class CalendarValueToLocalDateTime extends PJConverter {
        public static final CalendarValueToLocalDateTime INSTANCE = new CalendarValueToLocalDateTime();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            CalendarValue calendarValue = (CalendarValue) sequence.head();
            if (calendarValue == null) {
                return null;
            }
            return calendarValue.toDateTime().toLocalDateTime();
        }
    }

    /* loaded from: classes11.dex */
    public static class CalendarValueToOffsetDateTime extends PJConverter {
        public static final CalendarValueToOffsetDateTime INSTANCE = new CalendarValueToOffsetDateTime();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            CalendarValue calendarValue = (CalendarValue) sequence.head();
            if (calendarValue == null) {
                return null;
            }
            return calendarValue.toDateTime().toOffsetDateTime();
        }
    }

    /* loaded from: classes11.dex */
    public static class CalendarValueToZonedDateTime extends PJConverter {
        public static final CalendarValueToZonedDateTime INSTANCE = new CalendarValueToZonedDateTime();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            CalendarValue calendarValue = (CalendarValue) sequence.head();
            if (calendarValue == null) {
                return null;
            }
            return calendarValue.toDateTime().toZonedDateTime();
        }
    }

    /* loaded from: classes11.dex */
    public static class ConditionalUnwrapExternalObject extends PJConverter {
        public static final ConditionalUnwrapExternalObject INSTANCE = new ConditionalUnwrapExternalObject();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            SequenceIterator iterate = sequence.iterate();
            Item next = iterate.next();
            if (next == null) {
                if (cls.isAssignableFrom(EmptySequence.class)) {
                    return EmptySequence.getInstance();
                }
                throw new XPathException("Supplied value is empty: expected + " + cls.getName());
            }
            if (!(next instanceof AnyExternalObject)) {
                return sequence;
            }
            Object wrappedObject = ((AnyExternalObject) next).getWrappedObject();
            if (cls.isAssignableFrom(wrappedObject.getClass())) {
                if (iterate.next() == null) {
                    return wrappedObject;
                }
                throw new XPathException("Supplied sequence has more than one item: expected a single instance of " + cls.getName());
            }
            throw new XPathException("External object has wrong class (is " + wrappedObject.getClass().getName() + ", expected " + cls.getName() + MotionUtils.f31762d);
        }
    }

    /* loaded from: classes11.dex */
    public static class DateValueToLocalDate extends PJConverter {
        public static final DateValueToLocalDate INSTANCE = new DateValueToLocalDate();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            DateValue dateValue = (DateValue) sequence.head();
            if (dateValue == null) {
                return null;
            }
            return dateValue.toLocalDate();
        }
    }

    /* loaded from: classes11.dex */
    public static class General extends PJConverter {
        public static final General INSTANCE = new General();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            Configuration configuration = xPathContext.getConfiguration();
            GroundedValue materialize = sequence.materialize();
            PJConverter allocate = PJConverter.allocate(configuration, SequenceTool.getItemType(materialize, configuration.getTypeHierarchy()), SequenceTool.getCardinality(materialize), cls);
            if (allocate instanceof General) {
                allocate = Identity.INSTANCE;
            }
            return allocate.convert(materialize, cls, xPathContext);
        }
    }

    /* loaded from: classes11.dex */
    public static class Identity extends PJConverter {
        public static final Identity INSTANCE = new Identity();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            if (sequence instanceof Closure) {
                sequence = ((Closure) sequence).reduce();
            }
            if (sequence instanceof ZeroOrOne) {
                sequence = ((ZeroOrOne) sequence).head();
            }
            if (sequence instanceof VirtualNode) {
                Object realNode = ((VirtualNode) sequence).getRealNode();
                if (cls.isAssignableFrom(realNode.getClass())) {
                    return realNode;
                }
            }
            if (cls.isAssignableFrom(sequence.getClass())) {
                return sequence;
            }
            GroundedValue materialize = sequence.materialize();
            if (cls.isAssignableFrom(materialize.getClass())) {
                return materialize;
            }
            GroundedValue reduce = materialize.reduce();
            if (cls.isAssignableFrom(reduce.getClass())) {
                return reduce;
            }
            if (reduce.getLength() == 0) {
                return null;
            }
            throw new XPathException("Cannot convert value " + sequence.getClass() + " of type " + SequenceTool.getItemType(sequence, xPathContext.getConfiguration().getTypeHierarchy()) + " to class " + cls.getName());
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerValueToBigInteger extends PJConverter {
        public static final IntegerValueToBigInteger INSTANCE = new IntegerValueToBigInteger();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            IntegerValue integerValue = (IntegerValue) sequence.head();
            if (integerValue == null) {
                return null;
            }
            return integerValue.asBigInteger();
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerValueToByte extends PJConverter {
        public static final IntegerValueToByte INSTANCE = new IntegerValueToByte();

        /* renamed from: b */
        public static final /* synthetic */ boolean f99339b = false;

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return Byte.valueOf((byte) ((IntegerValue) sequence.head()).longValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerValueToChar extends PJConverter {
        public static final IntegerValueToChar INSTANCE = new IntegerValueToChar();

        /* renamed from: b */
        public static final /* synthetic */ boolean f99340b = false;

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return Character.valueOf((char) ((IntegerValue) sequence.head()).longValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerValueToInt extends PJConverter {
        public static final IntegerValueToInt INSTANCE = new IntegerValueToInt();

        /* renamed from: b */
        public static final /* synthetic */ boolean f99341b = false;

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return Integer.valueOf((int) ((IntegerValue) sequence.head()).longValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerValueToLong extends PJConverter {
        public static final IntegerValueToLong INSTANCE = new IntegerValueToLong();

        /* renamed from: b */
        public static final /* synthetic */ boolean f99342b = false;

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return Long.valueOf(((IntegerValue) sequence.head()).longValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerValueToShort extends PJConverter {
        public static final IntegerValueToShort INSTANCE = new IntegerValueToShort();

        /* renamed from: b */
        public static final /* synthetic */ boolean f99343b = false;

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return Short.valueOf((short) ((IntegerValue) sequence.head()).longValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class NumericValueToBigDecimal extends PJConverter {
        public static final NumericValueToBigDecimal INSTANCE = new NumericValueToBigDecimal();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            NumericValue numericValue = (NumericValue) sequence.head();
            if (numericValue == null) {
                return null;
            }
            return numericValue.getDecimalValue();
        }
    }

    /* loaded from: classes11.dex */
    public static class NumericValueToDouble extends PJConverter {
        public static final NumericValueToDouble INSTANCE = new NumericValueToDouble();

        /* renamed from: b */
        public static final /* synthetic */ boolean f99344b = false;

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return Double.valueOf(((NumericValue) sequence.head()).getDoubleValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class NumericValueToFloat extends PJConverter {
        public static final NumericValueToFloat INSTANCE = new NumericValueToFloat();

        /* renamed from: b */
        public static final /* synthetic */ boolean f99345b = false;

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return Float.valueOf(((NumericValue) sequence.head()).getFloatValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class QualifiedNameValueToQName extends PJConverter {
        public static final QualifiedNameValueToQName INSTANCE = new QualifiedNameValueToQName();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            QualifiedNameValue qualifiedNameValue = (QualifiedNameValue) sequence.head();
            if (qualifiedNameValue == null) {
                return null;
            }
            return qualifiedNameValue.toJaxpQName();
        }
    }

    /* loaded from: classes11.dex */
    public static class StringItemToChar extends PJConverter {
        public static final StringItemToChar INSTANCE = new StringItemToChar();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            Item head = sequence.head();
            if (head == null) {
                return null;
            }
            String stringValue = head.getStringValue();
            if (stringValue.length() == 1) {
                return Character.valueOf(stringValue.charAt(0));
            }
            XPathException xPathException = new XPathException("Cannot convert xs:string to Java char unless length is 1");
            xPathException.setXPathContext(xPathContext);
            xPathException.setErrorCode(SaxonErrorCode.SXJE0005);
            throw xPathException;
        }
    }

    /* loaded from: classes11.dex */
    public static class StringItemToString extends PJConverter {
        public static final StringItemToString INSTANCE = new StringItemToString();

        @Override // net.p110sf.saxon.expr.PJConverter
        public /* bridge */ /* synthetic */ Object convert(Sequence sequence, Class cls, XPathContext xPathContext) throws XPathException {
            return convert(sequence, (Class<?>) cls, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public String convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            Item head = sequence.head();
            if (head == null) {
                return null;
            }
            return head.getStringValue();
        }
    }

    /* loaded from: classes11.dex */
    public static class ToArray extends PJConverter {

        /* renamed from: b */
        public final PJConverter f99346b;

        public ToArray(PJConverter pJConverter) {
            this.f99346b = pJConverter;
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            if (sequence instanceof AnyExternalObject) {
                AnyExternalObject anyExternalObject = (AnyExternalObject) sequence;
                if (cls.isAssignableFrom(anyExternalObject.getWrappedObject().getClass())) {
                    return anyExternalObject.getWrappedObject();
                }
            }
            Class<?> componentType = cls.getComponentType();
            ArrayList arrayList = new ArrayList(20);
            SequenceIterator iterate = sequence.iterate();
            while (true) {
                Item next = iterate.next();
                if (next == null) {
                    break;
                }
                Object convert = this.f99346b.convert(next, componentType, xPathContext);
                if (convert != null) {
                    arrayList.add(convert);
                }
            }
            Object newInstance = Array.newInstance(componentType, arrayList.size());
            for (int i = 0; i < arrayList.size(); i++) {
                Array.set(newInstance, i, arrayList.get(i));
            }
            return newInstance;
        }
    }

    /* loaded from: classes11.dex */
    public static class ToCollection extends PJConverter {
        public static final ToCollection INSTANCE = new ToCollection();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            Collection collection;
            if (cls.isAssignableFrom(ArrayList.class)) {
                collection = new ArrayList(100);
            } else {
                try {
                    collection = (Collection) cls.newInstance();
                } catch (IllegalAccessException unused) {
                    XPathException xPathException = new XPathException("Cannot access collection class " + cls);
                    xPathException.setXPathContext(xPathContext);
                    throw xPathException;
                } catch (InstantiationException unused2) {
                    XPathException xPathException2 = new XPathException("Cannot instantiate collection class " + cls);
                    xPathException2.setXPathContext(xPathContext);
                    throw xPathException2;
                }
            }
            Configuration configuration = xPathContext.getConfiguration();
            SequenceIterator iterate = sequence.iterate();
            while (true) {
                Item next = iterate.next();
                if (next == null) {
                    return collection;
                }
                if (next instanceof AtomicValue) {
                    collection.add(PJConverter.allocate(configuration, ((AtomicValue) next).getItemType(), 16384, Object.class).convert(next, Object.class, xPathContext));
                } else if (next instanceof VirtualNode) {
                    collection.add(((VirtualNode) next).getRealNode());
                } else {
                    collection.add(next);
                }
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class ToNull extends PJConverter {
        public static final ToNull INSTANCE = new ToNull();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return null;
        }
    }

    /* loaded from: classes11.dex */
    public static class ToOne extends PJConverter {
        public static final ToOne INSTANCE = new ToOne();

        @Override // net.p110sf.saxon.expr.PJConverter
        public /* bridge */ /* synthetic */ Object convert(Sequence sequence, Class cls, XPathContext xPathContext) throws XPathException {
            return convert(sequence, (Class<?>) cls, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public One convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return new One(sequence.head());
        }
    }

    /* loaded from: classes11.dex */
    public static class ToOneOrMore extends PJConverter {
        public static final ToOneOrMore INSTANCE = new ToOneOrMore();

        @Override // net.p110sf.saxon.expr.PJConverter
        public /* bridge */ /* synthetic */ Object convert(Sequence sequence, Class cls, XPathContext xPathContext) throws XPathException {
            return convert(sequence, (Class<?>) cls, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public OneOrMore<Item> convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return OneOrMore.makeOneOrMore(sequence);
        }
    }

    /* loaded from: classes11.dex */
    public static class ToSequenceExtent extends PJConverter {
        public static final ToSequenceExtent INSTANCE = new ToSequenceExtent();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return SequenceTool.toGroundedValue(sequence.iterate());
        }
    }

    /* loaded from: classes11.dex */
    public static class ToSequenceIterator extends PJConverter {
        public static final ToSequenceIterator INSTANCE = new ToSequenceIterator();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return sequence.iterate();
        }
    }

    /* loaded from: classes11.dex */
    public static class ToZeroOrMore extends PJConverter {
        public static final ToZeroOrMore INSTANCE = new ToZeroOrMore();

        @Override // net.p110sf.saxon.expr.PJConverter
        public /* bridge */ /* synthetic */ Object convert(Sequence sequence, Class cls, XPathContext xPathContext) throws XPathException {
            return convert(sequence, (Class<?>) cls, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public ZeroOrMore<Item> convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return ZeroOrMore.fromSequenceIterator(sequence.iterate());
        }
    }

    /* loaded from: classes11.dex */
    public static class ToZeroOrOne extends PJConverter {
        public static final ToZeroOrOne INSTANCE = new ToZeroOrOne();

        @Override // net.p110sf.saxon.expr.PJConverter
        public /* bridge */ /* synthetic */ Object convert(Sequence sequence, Class cls, XPathContext xPathContext) throws XPathException {
            return convert(sequence, (Class<?>) cls, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public ZeroOrOne convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return new ZeroOrOne(sequence.head());
        }
    }

    /* loaded from: classes11.dex */
    public static class UnwrapExternalObject extends PJConverter {
        public static final UnwrapExternalObject INSTANCE = new UnwrapExternalObject();

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            Item head = sequence.head();
            if (head == null) {
                return null;
            }
            if (!(head instanceof AnyExternalObject)) {
                if (!Sequence.class.isAssignableFrom(cls)) {
                    throw new XPathException("Expected external object of class " + cls.getName() + ", got " + head.getClass());
                }
                head = new ObjectValue(sequence);
            }
            Object wrappedObject = ((AnyExternalObject) head).getWrappedObject();
            if (cls.isAssignableFrom(wrappedObject.getClass())) {
                return wrappedObject;
            }
            throw new XPathException("External object has wrong class (is " + wrappedObject.getClass().getName() + ", expected " + cls.getName() + MotionUtils.f31762d);
        }
    }

    /* renamed from: net.sf.saxon.expr.PJConverter$a */
    /* loaded from: classes11.dex */
    public static class C18306a extends PJConverter {

        /* renamed from: b */
        public final /* synthetic */ Constructor f99347b;

        public C18306a(Constructor constructor) {
            this.f99347b = constructor;
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            try {
                return this.f99347b.newInstance(sequence.head().getStringValue());
            } catch (IllegalAccessException | InstantiationException e) {
                throw new XPathException(e);
            } catch (InvocationTargetException e2) {
                throw new XPathException("Cannot convert untypedAtomic to " + cls.getName() + ": " + e2.getMessage(), "FORG0001");
            }
        }
    }

    static {
        HashMap<Class, SequenceType> hashMap = new HashMap<>();
        f99337a = hashMap;
        hashMap.put(Boolean.TYPE, SequenceType.SINGLE_BOOLEAN);
        SequenceType sequenceType = SequenceType.OPTIONAL_BOOLEAN;
        hashMap.put(Boolean.class, sequenceType);
        SequenceType sequenceType2 = SequenceType.OPTIONAL_STRING;
        hashMap.put(String.class, sequenceType2);
        hashMap.put(CharSequence.class, sequenceType2);
        Class cls = Long.TYPE;
        SequenceType sequenceType3 = SequenceType.SINGLE_INTEGER;
        hashMap.put(cls, sequenceType3);
        SequenceType sequenceType4 = SequenceType.OPTIONAL_INTEGER;
        hashMap.put(Long.class, sequenceType4);
        hashMap.put(Integer.TYPE, sequenceType3);
        hashMap.put(Integer.class, sequenceType4);
        hashMap.put(Short.TYPE, SequenceType.SINGLE_SHORT);
        hashMap.put(Short.class, SequenceType.OPTIONAL_SHORT);
        hashMap.put(Byte.TYPE, SequenceType.SINGLE_BYTE);
        hashMap.put(Byte.class, SequenceType.OPTIONAL_BYTE);
        hashMap.put(Float.TYPE, SequenceType.SINGLE_FLOAT);
        SequenceType sequenceType5 = SequenceType.OPTIONAL_FLOAT;
        hashMap.put(Float.class, sequenceType5);
        hashMap.put(Double.TYPE, SequenceType.SINGLE_DOUBLE);
        SequenceType sequenceType6 = SequenceType.OPTIONAL_DOUBLE;
        hashMap.put(Double.class, sequenceType6);
        SequenceType sequenceType7 = SequenceType.OPTIONAL_ANY_URI;
        hashMap.put(URI.class, sequenceType7);
        hashMap.put(URL.class, sequenceType7);
        hashMap.put(BigInteger.class, sequenceType4);
        SequenceType sequenceType8 = SequenceType.OPTIONAL_DECIMAL;
        hashMap.put(BigDecimal.class, sequenceType8);
        hashMap.put(StringValue.class, sequenceType2);
        hashMap.put(BooleanValue.class, sequenceType);
        hashMap.put(DoubleValue.class, sequenceType6);
        hashMap.put(FloatValue.class, sequenceType5);
        hashMap.put(DecimalValue.class, sequenceType8);
        hashMap.put(IntegerValue.class, sequenceType4);
        hashMap.put(AnyURIValue.class, sequenceType7);
        hashMap.put(QNameValue.class, SequenceType.OPTIONAL_QNAME);
        hashMap.put(NotationValue.class, SequenceType.OPTIONAL_NOTATION);
        hashMap.put(DateValue.class, SequenceType.OPTIONAL_DATE);
        hashMap.put(DateTimeValue.class, SequenceType.OPTIONAL_DATE_TIME);
        hashMap.put(TimeValue.class, SequenceType.OPTIONAL_TIME);
        hashMap.put(DurationValue.class, SequenceType.OPTIONAL_DURATION);
        hashMap.put(DayTimeDurationValue.class, SequenceType.OPTIONAL_DAY_TIME_DURATION);
        hashMap.put(YearMonthDurationValue.class, SequenceType.OPTIONAL_YEAR_MONTH_DURATION);
        hashMap.put(GYearValue.class, SequenceType.OPTIONAL_G_YEAR);
        hashMap.put(GYearMonthValue.class, SequenceType.OPTIONAL_G_YEAR_MONTH);
        hashMap.put(GMonthValue.class, SequenceType.OPTIONAL_G_MONTH);
        hashMap.put(GMonthDayValue.class, SequenceType.OPTIONAL_G_MONTH_DAY);
        hashMap.put(GDayValue.class, SequenceType.OPTIONAL_G_DAY);
        hashMap.put(Base64BinaryValue.class, SequenceType.OPTIONAL_BASE64_BINARY);
        hashMap.put(HexBinaryValue.class, SequenceType.OPTIONAL_HEX_BINARY);
        hashMap.put(Function.class, SequenceType.OPTIONAL_FUNCTION_ITEM);
        hashMap.put(MapItem.class, MapType.OPTIONAL_MAP_ITEM);
        hashMap.put(NodeInfo.class, SequenceType.OPTIONAL_NODE);
        hashMap.put(TreeInfo.class, SequenceType.OPTIONAL_DOCUMENT_NODE);
    }

    /* renamed from: a */
    public static XPathException m62628a(ItemType itemType, Class cls, Configuration configuration) {
        return new XPathException("Cannot convert from " + itemType + " to " + cls.getName());
    }

    public static PJConverter allocate(Configuration configuration, ItemType itemType, int i, Class<?> cls) throws XPathException {
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        if (cls == SequenceIterator.class) {
            return ToSequenceIterator.INSTANCE;
        }
        if (cls == Sequence.class || cls == Item.class) {
            return Identity.INSTANCE;
        }
        if (cls == One.class) {
            return ToOne.INSTANCE;
        }
        if (cls == ZeroOrOne.class) {
            return ToZeroOrOne.INSTANCE;
        }
        if (cls == OneOrMore.class) {
            return ToOneOrMore.INSTANCE;
        }
        if (cls == ZeroOrMore.class) {
            return ToZeroOrMore.INSTANCE;
        }
        if ((cls == GroundedValue.class) || (cls == SequenceExtent.class)) {
            return ToSequenceExtent.INSTANCE;
        }
        if (!itemType.isPlainType()) {
            Iterator<ExternalObjectModel> it2 = configuration.getExternalObjectModels().iterator();
            while (it2.hasNext()) {
                PJConverter pJConverter = it2.next().getPJConverter(cls);
                if (pJConverter != null) {
                    return pJConverter;
                }
            }
            if (NodeInfo.class.isAssignableFrom(cls)) {
                return Identity.INSTANCE;
            }
        }
        if (Collection.class.isAssignableFrom(cls)) {
            return ToCollection.INSTANCE;
        }
        if (cls.isArray()) {
            return new ToArray(allocate(configuration, itemType, 16384, cls.getComponentType()));
        }
        if (Cardinality.allowsMany(i)) {
            return General.INSTANCE;
        }
        if (!itemType.isPlainType()) {
            if (itemType instanceof JavaExternalObjectType) {
                return UnwrapExternalObject.INSTANCE;
            }
            if (itemType instanceof ErrorType) {
                return ToNull.INSTANCE;
            }
            if ((itemType instanceof NodeTest) && NodeInfo.class.isAssignableFrom(cls)) {
                return Identity.INSTANCE;
            }
            return General.INSTANCE;
        }
        if (itemType == ErrorType.getInstance()) {
            return StringItemToString.INSTANCE;
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.STRING)) {
            if (cls == Object.class || cls == String.class || cls == CharSequence.class) {
                return StringItemToString.INSTANCE;
            }
            if (cls.isAssignableFrom(StringValue.class)) {
                return Identity.INSTANCE;
            }
            if (cls == Character.TYPE || cls == Character.class) {
                return StringItemToChar.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (itemType == BuiltInAtomicType.UNTYPED_ATOMIC) {
            if (cls == Object.class || cls == String.class || cls == CharSequence.class) {
                return StringItemToString.INSTANCE;
            }
            if (cls.isAssignableFrom(StringValue.class)) {
                return Identity.INSTANCE;
            }
            try {
                return new C18306a(cls.getConstructor(String.class));
            } catch (NoSuchMethodException unused) {
                throw m62628a(itemType, cls, configuration);
            }
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.BOOLEAN)) {
            if (cls == Object.class || cls == Boolean.class || cls == Boolean.TYPE) {
                return BooleanValueToBoolean.INSTANCE;
            }
            if (cls.isAssignableFrom(BooleanValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.INTEGER)) {
            if (cls == Object.class || cls == BigInteger.class) {
                return IntegerValueToBigInteger.INSTANCE;
            }
            if (cls == Long.TYPE || cls == Long.class) {
                return IntegerValueToLong.INSTANCE;
            }
            if (cls == Integer.TYPE || cls == Integer.class) {
                return IntegerValueToInt.INSTANCE;
            }
            if (cls == Short.TYPE || cls == Short.class) {
                return IntegerValueToShort.INSTANCE;
            }
            if (cls == Byte.TYPE || cls == Byte.class) {
                return IntegerValueToByte.INSTANCE;
            }
            if (cls == Character.TYPE || cls == Character.class) {
                return IntegerValueToChar.INSTANCE;
            }
            if (cls == Double.TYPE || cls == Double.class) {
                return NumericValueToDouble.INSTANCE;
            }
            if (cls == Float.TYPE || cls == Float.class) {
                return NumericValueToFloat.INSTANCE;
            }
            if (cls == BigDecimal.class) {
                return NumericValueToBigDecimal.INSTANCE;
            }
            if (cls.isAssignableFrom(IntegerValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.DECIMAL)) {
            if (cls == Object.class || cls == BigDecimal.class) {
                return NumericValueToBigDecimal.INSTANCE;
            }
            if (cls == Double.TYPE || cls == Double.class) {
                return NumericValueToDouble.INSTANCE;
            }
            if (cls == Float.TYPE || cls == Float.class) {
                return NumericValueToFloat.INSTANCE;
            }
            if (cls.isAssignableFrom(BigDecimalValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.FLOAT)) {
            if (cls == Object.class || cls == Float.class || cls == Float.TYPE) {
                return NumericValueToFloat.INSTANCE;
            }
            if (cls == Double.TYPE || cls == Double.class) {
                return NumericValueToDouble.INSTANCE;
            }
            if (cls.isAssignableFrom(FloatValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.DOUBLE)) {
            return (cls == Object.class || cls == Double.class || cls == Double.TYPE) ? NumericValueToDouble.INSTANCE : cls.isAssignableFrom(DoubleValue.class) ? Identity.INSTANCE : Atomic.INSTANCE;
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.ANY_URI)) {
            if (cls == Object.class || URI.class.isAssignableFrom(cls)) {
                return AnyURIValueToURI.INSTANCE;
            }
            if (URL.class.isAssignableFrom(cls)) {
                return AnyURIValueToURL.INSTANCE;
            }
            if (cls == String.class || cls == CharSequence.class) {
                return StringItemToString.INSTANCE;
            }
            if (cls.isAssignableFrom(AnyURIValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.QNAME)) {
            if (cls == Object.class || cls == QName.class) {
                return QualifiedNameValueToQName.INSTANCE;
            }
            if (cls.isAssignableFrom(QNameValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.NOTATION)) {
            if (cls == Object.class || cls == QName.class) {
                return QualifiedNameValueToQName.INSTANCE;
            }
            if (cls.isAssignableFrom(NotationValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.DURATION)) {
            if (cls.isAssignableFrom(DurationValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.DATE_TIME)) {
            if (cls.isAssignableFrom(DateTimeValue.class)) {
                return Identity.INSTANCE;
            }
            if (cls == Date.class) {
                return CalendarValueToDate.INSTANCE;
            }
            if (cls == Calendar.class) {
                return CalendarValueToCalendar.INSTANCE;
            }
            if (cls == Instant.class) {
                return CalendarValueToInstant.INSTANCE;
            }
            if (cls == ZonedDateTime.class) {
                return CalendarValueToZonedDateTime.INSTANCE;
            }
            if (cls == LocalDateTime.class) {
                return CalendarValueToLocalDateTime.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.DATE)) {
            if (cls.isAssignableFrom(DateValue.class)) {
                return Identity.INSTANCE;
            }
            if (cls == Date.class) {
                return CalendarValueToDate.INSTANCE;
            }
            if (cls == Calendar.class) {
                return CalendarValueToCalendar.INSTANCE;
            }
            if (cls == Instant.class) {
                return CalendarValueToInstant.INSTANCE;
            }
            if (cls == ZonedDateTime.class) {
                return CalendarValueToZonedDateTime.INSTANCE;
            }
            if (cls == OffsetDateTime.class) {
                return CalendarValueToOffsetDateTime.INSTANCE;
            }
            if (cls == LocalDateTime.class) {
                return CalendarValueToLocalDateTime.INSTANCE;
            }
            if (cls == LocalDate.class) {
                return DateValueToLocalDate.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.TIME)) {
            if (cls.isAssignableFrom(TimeValue.class)) {
                return Identity.INSTANCE;
            }
            if (cls == Date.class) {
                return CalendarValueToDate.INSTANCE;
            }
            if (cls == Calendar.class) {
                return CalendarValueToCalendar.INSTANCE;
            }
            if (cls == Instant.class) {
                return CalendarValueToInstant.INSTANCE;
            }
            if (cls == ZonedDateTime.class) {
                return CalendarValueToZonedDateTime.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.G_YEAR)) {
            if (cls.isAssignableFrom(GYearValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.G_YEAR_MONTH)) {
            if (cls.isAssignableFrom(GYearMonthValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.G_MONTH)) {
            if (cls.isAssignableFrom(GMonthValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.G_MONTH_DAY)) {
            if (cls.isAssignableFrom(GMonthDayValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.G_DAY)) {
            if (cls.isAssignableFrom(GDayValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (typeHierarchy.isSubType(itemType, BuiltInAtomicType.BASE64_BINARY)) {
            if (cls.isAssignableFrom(Base64BinaryValue.class)) {
                return Identity.INSTANCE;
            }
            throw m62628a(itemType, cls, configuration);
        }
        if (!typeHierarchy.isSubType(itemType, BuiltInAtomicType.HEX_BINARY)) {
            return Atomic.INSTANCE;
        }
        if (cls.isAssignableFrom(HexBinaryValue.class)) {
            return Identity.INSTANCE;
        }
        throw m62628a(itemType, cls, configuration);
    }

    public static PJConverter allocateNodeListCreator(Configuration configuration, Object obj) {
        Iterator<ExternalObjectModel> it2 = configuration.getExternalObjectModels().iterator();
        while (it2.hasNext()) {
            PJConverter nodeListCreator = it2.next().getNodeListCreator(obj);
            if (nodeListCreator != null) {
                return nodeListCreator;
            }
        }
        return ToCollection.INSTANCE;
    }

    public static SequenceType getEquivalentSequenceType(Class cls) {
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            if (componentType == Byte.TYPE) {
                return SequenceType.makeSequenceType(BuiltInAtomicType.UNSIGNED_BYTE, 57344);
            }
            SequenceType equivalentSequenceType = getEquivalentSequenceType(componentType);
            if (equivalentSequenceType != null) {
                return SequenceType.makeSequenceType(equivalentSequenceType.getPrimaryType(), 57344);
            }
        }
        return f99337a.get(cls);
    }

    public static SequenceType getParameterizedSequenceType(Type type) {
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if (actualTypeArguments.length == 1) {
                Type type2 = actualTypeArguments[0];
                if ((type2 instanceof Class) && Item.class.isAssignableFrom((Class) type2)) {
                    SequenceType equivalentSequenceType = getEquivalentSequenceType((Class) actualTypeArguments[0]);
                    ItemType primaryType = equivalentSequenceType == null ? null : equivalentSequenceType.getPrimaryType();
                    Type rawType = parameterizedType.getRawType();
                    int i = rawType.equals(ZeroOrOne.class) ? 24576 : rawType.equals(One.class) ? 16384 : rawType.equals(OneOrMore.class) ? 49152 : rawType.equals(ZeroOrMore.class) ? 57344 : -1;
                    if (primaryType != null && i != -1) {
                        return SequenceType.makeSequenceType(primaryType, i);
                    }
                }
            }
        }
        return null;
    }

    public abstract Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException;
}
