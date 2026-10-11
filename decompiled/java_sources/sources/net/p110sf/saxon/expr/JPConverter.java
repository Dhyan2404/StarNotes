package net.p110sf.saxon.expr;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.xml.namespace.QName;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.lib.ExternalObjectModel;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.ma.arrays.ArrayItem;
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
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.s9api.XdmArray;
import net.p110sf.saxon.s9api.XdmAtomicValue;
import net.p110sf.saxon.s9api.XdmEmptySequence;
import net.p110sf.saxon.s9api.XdmFunctionItem;
import net.p110sf.saxon.s9api.XdmItem;
import net.p110sf.saxon.s9api.XdmMap;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.JavaExternalObjectType;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.DayTimeDurationValue;
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
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NotationValue;
import net.p110sf.saxon.value.ObjectValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.TimeValue;
import net.p110sf.saxon.value.YearMonthDurationValue;

/* loaded from: classes11.dex */
public abstract class JPConverter {

    /* renamed from: a */
    public static final HashMap<Class<?>, JPConverter> f99288a;

    /* renamed from: b */
    public static final Map<Class<?>, ItemType> f99289b;

    /* renamed from: c */
    public static final Map<Class<?>, Integer> f99290c;

    /* loaded from: classes11.dex */
    public static class ExternalObjectWrapper extends JPConverter {

        /* renamed from: d */
        public final JavaExternalObjectType f99291d;

        public ExternalObjectWrapper(JavaExternalObjectType javaExternalObjectType) {
            this.f99291d = javaExternalObjectType;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            if (obj == null) {
                return null;
            }
            if (this.f99291d.getJavaClass().isInstance(obj)) {
                return new ObjectValue(obj);
            }
            throw new XPathException("Java external object of type " + obj.getClass().getName() + " is not an instance of the required type " + this.f99291d.getJavaClass().getName(), "XPTY0004");
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public JavaExternalObjectType getItemType() {
            return this.f99291d;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromBigDecimal extends JPConverter {
        public static final FromBigDecimal INSTANCE = new FromBigDecimal();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new BigDecimalValue((BigDecimal) obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.DECIMAL;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromBigInteger extends JPConverter {
        public static final FromBigInteger INSTANCE = new FromBigInteger();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return IntegerValue.makeIntegerValue((BigInteger) obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromBoolean extends JPConverter {
        public static final FromBoolean INSTANCE = new FromBoolean();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return BooleanValue.get(((Boolean) obj).booleanValue());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.BOOLEAN;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromBooleanArray extends JPConverter {
        public static final FromBooleanArray INSTANCE = new FromBooleanArray();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            boolean[] zArr = (boolean[]) obj;
            int length = zArr.length;
            Item[] itemArr = new Item[length];
            for (int i = 0; i < length; i++) {
                itemArr[i] = BooleanValue.get(zArr[i]);
            }
            return new SequenceExtent.C18571Of(itemArr);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.BOOLEAN;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromByte extends JPConverter {
        public static final FromByte INSTANCE = new FromByte();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new Int64Value(((Byte) obj).intValue());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromByteArray extends JPConverter {
        public static final FromByteArray INSTANCE = new FromByteArray();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            int length = ((byte[]) obj).length;
            Item[] itemArr = new Item[length];
            for (int i = 0; i < length; i++) {
                itemArr[i] = Int64Value.makeDerived(r5[i] & 255, BuiltInAtomicType.UNSIGNED_BYTE);
            }
            return new SequenceExtent.C18571Of(itemArr);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.UNSIGNED_BYTE;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromCharArray extends JPConverter {
        public static final FromCharArray INSTANCE = new FromCharArray();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return StringValue.makeStringValue(new String((char[]) obj));
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.STRING;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromCharacter extends JPConverter {
        public static final FromCharacter INSTANCE = new FromCharacter();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new StringValue(obj.toString());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.STRING;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromCollection extends JPConverter {
        public static final FromCollection INSTANCE = new FromCollection();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            Collection collection = (Collection) obj;
            ArrayList arrayList = new ArrayList(collection.size());
            for (Object obj2 : collection) {
                try {
                    Item asItem = SequenceTool.asItem(JPConverter.allocate(obj2.getClass(), null, xPathContext.getConfiguration()).convert(obj2, xPathContext));
                    if (asItem != null) {
                        arrayList.add(asItem);
                    }
                } catch (XPathException e) {
                    throw new XPathException("Returned Collection contains an object that cannot be converted to an Item (" + obj2.getClass() + "): " + e.getMessage(), SaxonErrorCode.SXJE0051);
                }
            }
            return new SequenceExtent.C18571Of(arrayList);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return AnyItemType.getInstance();
        }
    }

    /* loaded from: classes11.dex */
    public static class FromDate extends JPConverter {
        public static final FromDate INSTANCE = new FromDate();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return DateTimeValue.fromJavaDate((Date) obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.DATE_TIME;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromDouble extends JPConverter {
        public static final FromDouble INSTANCE = new FromDouble();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new DoubleValue(((Double) obj).doubleValue());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.DOUBLE;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromDoubleArray extends JPConverter {
        public static final FromDoubleArray INSTANCE = new FromDoubleArray();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            double[] dArr = (double[]) obj;
            int length = dArr.length;
            Item[] itemArr = new Item[length];
            for (int i = 0; i < length; i++) {
                itemArr[i] = new DoubleValue(dArr[i]);
            }
            return new SequenceExtent.C18571Of(itemArr);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.DOUBLE;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromFloat extends JPConverter {
        public static final FromFloat INSTANCE = new FromFloat();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new FloatValue(((Float) obj).floatValue());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.FLOAT;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromFloatArray extends JPConverter {
        public static final FromFloatArray INSTANCE = new FromFloatArray();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            int length = ((float[]) obj).length;
            Item[] itemArr = new Item[length];
            for (int i = 0; i < length; i++) {
                itemArr[i] = new DoubleValue(r5[i]);
            }
            return new SequenceExtent.C18571Of(itemArr);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.FLOAT;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromInstant extends JPConverter {
        public static final FromInstant INSTANCE = new FromInstant();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return DateTimeValue.fromJavaInstant((Instant) obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.DATE_TIME;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromInt extends JPConverter {
        public static final FromInt INSTANCE = new FromInt();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new Int64Value(((Integer) obj).intValue());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromIntArray extends JPConverter {
        public static final FromIntArray INSTANCE = new FromIntArray();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            int length = ((int[]) obj).length;
            Item[] itemArr = new Item[length];
            for (int i = 0; i < length; i++) {
                itemArr[i] = Int64Value.makeDerived(r5[i], BuiltInAtomicType.INT);
            }
            return new SequenceExtent.C18571Of(itemArr);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.INT;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromLocalDate extends JPConverter {
        public static final FromLocalDate INSTANCE = new FromLocalDate();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new DateValue((LocalDate) obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.DATE_TIME;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromLocalDateTime extends JPConverter {
        public static final FromLocalDateTime INSTANCE = new FromLocalDateTime();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return DateTimeValue.fromLocalDateTime((LocalDateTime) obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.DATE_TIME;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromLong extends JPConverter {
        public static final FromLong INSTANCE = new FromLong();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new Int64Value(((Long) obj).longValue());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromLongArray extends JPConverter {
        public static final FromLongArray INSTANCE = new FromLongArray();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            long[] jArr = (long[]) obj;
            int length = jArr.length;
            Item[] itemArr = new Item[length];
            for (int i = 0; i < length; i++) {
                itemArr[i] = Int64Value.makeDerived(jArr[i], BuiltInAtomicType.LONG);
            }
            return new SequenceExtent.C18571Of(itemArr);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.LONG;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromObject extends JPConverter {
        public static final FromObject INSTANCE = new FromObject();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            Class<?> cls = obj.getClass();
            JPConverter allocate = JPConverter.allocate(cls, null, xPathContext.getConfiguration());
            if (allocate instanceof FromObject) {
                allocate = new ExternalObjectWrapper(xPathContext.getConfiguration().getJavaExternalObjectType(cls));
            }
            return allocate.convert(obj, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return AnyItemType.getInstance();
        }
    }

    /* loaded from: classes11.dex */
    public static class FromObjectArray extends JPConverter {

        /* renamed from: d */
        public final JPConverter f99292d;

        public FromObjectArray(JPConverter jPConverter) {
            this.f99292d = jPConverter;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            Object[] objArr = (Object[]) obj;
            ArrayList arrayList = new ArrayList(objArr.length);
            for (Object obj2 : objArr) {
                if (obj2 == null) {
                    throw new XPathException("Returned array contains null values: cannot convert to items", SaxonErrorCode.SXJE0051);
                }
                try {
                    Item asItem = SequenceTool.asItem(this.f99292d.convert(obj2, xPathContext));
                    if (asItem != null) {
                        arrayList.add(asItem);
                    }
                } catch (XPathException e) {
                    throw new XPathException("Returned array contains an object that cannot be converted to an Item (" + obj2.getClass() + "): " + e.getMessage(), SaxonErrorCode.SXJE0051);
                }
            }
            return new SequenceExtent.C18571Of(arrayList);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return this.f99292d.getItemType();
        }
    }

    /* loaded from: classes11.dex */
    public static class FromOffsetDateTime extends JPConverter {
        public static final FromOffsetDateTime INSTANCE = new FromOffsetDateTime();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return DateTimeValue.fromOffsetDateTime((OffsetDateTime) obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.DATE_TIME;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromQName extends JPConverter {
        public static final FromQName INSTANCE = new FromQName();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            QName qName = (QName) obj;
            return new QNameValue(qName.getPrefix(), qName.getNamespaceURI(), qName.getLocalPart());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.QNAME;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromSequence extends JPConverter {
        public static final FromSequence INSTANCE = new FromSequence(AnyItemType.getInstance(), 57344);

        /* renamed from: d */
        public final ItemType f99293d;

        /* renamed from: e */
        public final int f99294e;

        public FromSequence(ItemType itemType, int i) {
            this.f99293d = itemType;
            this.f99294e = i;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return ((Sequence) obj).materialize();
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return this.f99294e;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return this.f99293d;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromSequenceIterator extends JPConverter {
        public static final FromSequenceIterator INSTANCE = new FromSequenceIterator();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return SequenceTool.toGroundedValue((SequenceIterator) obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return AnyItemType.getInstance();
        }
    }

    /* loaded from: classes11.dex */
    public static class FromShort extends JPConverter {
        public static final FromShort INSTANCE = new FromShort();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new Int64Value(((Short) obj).intValue());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromShortArray extends JPConverter {
        public static final FromShortArray INSTANCE = new FromShortArray();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            int length = ((short[]) obj).length;
            Item[] itemArr = new Item[length];
            for (int i = 0; i < length; i++) {
                itemArr[i] = Int64Value.makeDerived(r5[i], BuiltInAtomicType.SHORT);
            }
            return new SequenceExtent.C18571Of(itemArr);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.SHORT;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromSource extends JPConverter {
        public static final FromSource INSTANCE = new FromSource();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            ParseOptions parseOptions = new ParseOptions();
            Controller controller = xPathContext.getController();
            if (controller != null) {
                parseOptions.setSchemaValidationMode(controller.getSchemaValidationMode());
            }
            return obj instanceof TreeInfo ? ((TreeInfo) obj).getRootNode() : xPathContext.getConfiguration().buildDocumentTree((Source) obj, parseOptions).getRootNode();
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return AnyNodeTest.getInstance();
        }
    }

    /* loaded from: classes11.dex */
    public static class FromString extends JPConverter {
        public static final FromString INSTANCE = new FromString();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new StringValue((String) obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.STRING;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromURI extends JPConverter {
        public static final FromURI INSTANCE = new FromURI();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return new AnyURIValue(obj.toString());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.ANY_URI;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromXdmValue extends JPConverter {

        /* renamed from: d */
        public final ItemType f99295d;

        /* renamed from: e */
        public final int f99296e;

        public FromXdmValue(ItemType itemType, int i) {
            this.f99295d = itemType;
            this.f99296e = i;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return ((XdmValue) obj).getUnderlyingValue();
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return this.f99296e;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return this.f99295d;
        }
    }

    /* loaded from: classes11.dex */
    public static class FromZonedDateTime extends JPConverter {
        public static final FromZonedDateTime INSTANCE = new FromZonedDateTime();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return DateTimeValue.fromZonedDateTime((ZonedDateTime) obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return BuiltInAtomicType.DATE_TIME;
        }
    }

    /* loaded from: classes11.dex */
    public static class VoidConverter extends JPConverter {
        public static final VoidConverter INSTANCE = new VoidConverter();

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException {
            return EmptySequence.getInstance();
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return AnyItemType.getInstance();
        }
    }

    static {
        HashMap<Class<?>, JPConverter> hashMap = new HashMap<>();
        f99288a = hashMap;
        hashMap.put(XdmValue.class, new FromXdmValue(AnyItemType.getInstance(), 57344));
        hashMap.put(XdmItem.class, new FromXdmValue(AnyItemType.getInstance(), 16384));
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.ANY_ATOMIC;
        hashMap.put(XdmAtomicValue.class, new FromXdmValue(builtInAtomicType, 16384));
        hashMap.put(XdmNode.class, new FromXdmValue(AnyNodeTest.getInstance(), 16384));
        hashMap.put(XdmFunctionItem.class, new FromXdmValue(AnyFunctionType.getInstance(), 16384));
        hashMap.put(XdmMap.class, new FromXdmValue(MapType.ANY_MAP_TYPE, 16384));
        hashMap.put(XdmArray.class, new FromXdmValue(AnyFunctionType.getInstance(), 16384));
        hashMap.put(XdmEmptySequence.class, new FromXdmValue(ErrorType.getInstance(), 8192));
        hashMap.put(SequenceIterator.class, FromSequenceIterator.INSTANCE);
        FromSequence fromSequence = FromSequence.INSTANCE;
        hashMap.put(Sequence.class, fromSequence);
        hashMap.put(OneOrMore.class, fromSequence);
        hashMap.put(One.class, fromSequence);
        hashMap.put(ZeroOrOne.class, fromSequence);
        hashMap.put(ZeroOrMore.class, fromSequence);
        hashMap.put(String.class, FromString.INSTANCE);
        FromBoolean fromBoolean = FromBoolean.INSTANCE;
        hashMap.put(Boolean.class, fromBoolean);
        hashMap.put(Boolean.TYPE, fromBoolean);
        FromDouble fromDouble = FromDouble.INSTANCE;
        hashMap.put(Double.class, fromDouble);
        hashMap.put(Double.TYPE, fromDouble);
        FromFloat fromFloat = FromFloat.INSTANCE;
        hashMap.put(Float.class, fromFloat);
        hashMap.put(Float.TYPE, fromFloat);
        hashMap.put(BigDecimal.class, FromBigDecimal.INSTANCE);
        hashMap.put(BigInteger.class, FromBigInteger.INSTANCE);
        FromLong fromLong = FromLong.INSTANCE;
        hashMap.put(Long.class, fromLong);
        hashMap.put(Long.TYPE, fromLong);
        FromInt fromInt = FromInt.INSTANCE;
        hashMap.put(Integer.class, fromInt);
        hashMap.put(Integer.TYPE, fromInt);
        FromShort fromShort = FromShort.INSTANCE;
        hashMap.put(Short.class, fromShort);
        hashMap.put(Short.TYPE, fromShort);
        FromByte fromByte = FromByte.INSTANCE;
        hashMap.put(Byte.class, fromByte);
        hashMap.put(Byte.TYPE, fromByte);
        FromCharacter fromCharacter = FromCharacter.INSTANCE;
        hashMap.put(Character.class, fromCharacter);
        hashMap.put(Character.TYPE, fromCharacter);
        FromURI fromURI = FromURI.INSTANCE;
        hashMap.put(URI.class, fromURI);
        hashMap.put(URL.class, fromURI);
        hashMap.put(Date.class, FromDate.INSTANCE);
        hashMap.put(Instant.class, FromInstant.INSTANCE);
        hashMap.put(LocalDateTime.class, FromLocalDateTime.INSTANCE);
        hashMap.put(ZonedDateTime.class, FromZonedDateTime.INSTANCE);
        hashMap.put(OffsetDateTime.class, FromOffsetDateTime.INSTANCE);
        hashMap.put(LocalDate.class, FromLocalDate.INSTANCE);
        hashMap.put(long[].class, FromLongArray.INSTANCE);
        hashMap.put(int[].class, FromIntArray.INSTANCE);
        hashMap.put(short[].class, FromShortArray.INSTANCE);
        hashMap.put(byte[].class, FromByteArray.INSTANCE);
        hashMap.put(char[].class, FromCharArray.INSTANCE);
        hashMap.put(double[].class, FromDoubleArray.INSTANCE);
        hashMap.put(float[].class, FromFloatArray.INSTANCE);
        hashMap.put(boolean[].class, FromBooleanArray.INSTANCE);
        hashMap.put(Collection.class, FromCollection.INSTANCE);
        HashMap hashMap2 = new HashMap();
        f99289b = hashMap2;
        hashMap2.put(BooleanValue.class, BuiltInAtomicType.BOOLEAN);
        hashMap2.put(StringValue.class, BuiltInAtomicType.STRING);
        hashMap2.put(DoubleValue.class, BuiltInAtomicType.DOUBLE);
        hashMap2.put(FloatValue.class, BuiltInAtomicType.FLOAT);
        hashMap2.put(BigDecimalValue.class, BuiltInAtomicType.DECIMAL);
        hashMap2.put(IntegerValue.class, BuiltInAtomicType.INTEGER);
        hashMap2.put(DurationValue.class, BuiltInAtomicType.DURATION);
        hashMap2.put(DayTimeDurationValue.class, BuiltInAtomicType.DAY_TIME_DURATION);
        hashMap2.put(YearMonthDurationValue.class, BuiltInAtomicType.YEAR_MONTH_DURATION);
        hashMap2.put(DateTimeValue.class, BuiltInAtomicType.DATE_TIME);
        hashMap2.put(DateValue.class, BuiltInAtomicType.DATE);
        hashMap2.put(TimeValue.class, BuiltInAtomicType.TIME);
        hashMap2.put(GYearValue.class, BuiltInAtomicType.G_YEAR);
        hashMap2.put(GYearMonthValue.class, BuiltInAtomicType.G_YEAR_MONTH);
        hashMap2.put(GMonthValue.class, BuiltInAtomicType.G_MONTH);
        hashMap2.put(GMonthDayValue.class, BuiltInAtomicType.G_MONTH_DAY);
        hashMap2.put(GDayValue.class, BuiltInAtomicType.G_DAY);
        hashMap2.put(AnyURIValue.class, BuiltInAtomicType.ANY_URI);
        hashMap2.put(QNameValue.class, BuiltInAtomicType.QNAME);
        hashMap2.put(NotationValue.class, BuiltInAtomicType.NOTATION);
        hashMap2.put(HexBinaryValue.class, BuiltInAtomicType.HEX_BINARY);
        hashMap2.put(Base64BinaryValue.class, BuiltInAtomicType.BASE64_BINARY);
        hashMap2.put(NodeInfo.class, AnyNodeTest.getInstance());
        hashMap2.put(TreeInfo.class, NodeKindTest.DOCUMENT);
        hashMap2.put(MapItem.class, AnyFunctionType.getInstance());
        hashMap2.put(ArrayItem.class, AnyFunctionType.getInstance());
        hashMap2.put(Function.class, AnyFunctionType.getInstance());
        hashMap2.put(AtomicValue.class, builtInAtomicType);
        HashMap hashMap3 = new HashMap();
        f99290c = hashMap3;
        hashMap3.put(Sequence.class, 57344);
        hashMap3.put(ZeroOrMore.class, 57344);
        hashMap3.put(OneOrMore.class, 49152);
        hashMap3.put(One.class, 16384);
        hashMap3.put(ZeroOrOne.class, 24576);
        hashMap3.put(XdmValue.class, 57344);
        hashMap3.put(XdmItem.class, 57344);
        hashMap3.put(XdmEmptySequence.class, 8192);
    }

    public static JPConverter allocate(Class<?> cls, Type type, Configuration configuration) {
        if (QName.class.isAssignableFrom(cls)) {
            return FromQName.INSTANCE;
        }
        if (Sequence.class.isAssignableFrom(cls)) {
            if (type instanceof ParameterizedType) {
                Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
                if (actualTypeArguments.length == 1) {
                    Type type2 = actualTypeArguments[0];
                    if ((type2 instanceof Class) && Item.class.isAssignableFrom((Class) type2)) {
                        ItemType itemType = f99289b.get(actualTypeArguments[0]);
                        Integer num = f99290c.get(cls);
                        if (itemType != null && num != null) {
                            return new FromSequence(itemType, num.intValue());
                        }
                    }
                }
            } else {
                ItemType itemType2 = f99289b.get(cls);
                if (itemType2 != null) {
                    return new FromSequence(itemType2, 24576);
                }
            }
        }
        HashMap<Class<?>, JPConverter> hashMap = f99288a;
        JPConverter jPConverter = hashMap.get(cls);
        if (jPConverter != null) {
            return jPConverter;
        }
        if (cls.equals(Object.class)) {
            return FromObject.INSTANCE;
        }
        if (NodeInfo.class.isAssignableFrom(cls)) {
            return new FromSequence(AnyNodeTest.getInstance(), 24576);
        }
        if (Source.class.isAssignableFrom(cls) && !DOMSource.class.isAssignableFrom(cls)) {
            return FromSource.INSTANCE;
        }
        for (Map.Entry<Class<?>, JPConverter> entry : hashMap.entrySet()) {
            if (entry.getKey().isAssignableFrom(cls)) {
                return entry.getValue();
            }
        }
        Iterator<ExternalObjectModel> it2 = configuration.getExternalObjectModels().iterator();
        while (it2.hasNext()) {
            JPConverter jPConverter2 = it2.next().getJPConverter(cls, configuration);
            if (jPConverter2 != null) {
                return jPConverter2;
            }
        }
        return cls.isArray() ? new FromObjectArray(allocate(cls.getComponentType(), null, configuration)) : cls.equals(Void.TYPE) ? VoidConverter.INSTANCE : new ExternalObjectWrapper(configuration.getJavaExternalObjectType(cls));
    }

    public abstract GroundedValue convert(Object obj, XPathContext xPathContext) throws XPathException;

    public int getCardinality() {
        return 16384;
    }

    public abstract ItemType getItemType();
}
