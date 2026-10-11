package net.p110sf.saxon.om;

import java.util.List;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.AscendingRangeIterator;
import net.p110sf.saxon.expr.DescendingRangeIterator;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.functions.Count;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.wrapper.VirtualNode;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AnyExternalObject;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Closure;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.FloatValue;
import net.p110sf.saxon.value.HexBinaryValue;
import net.p110sf.saxon.value.MemoClosure;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.SingletonClosure;

/* loaded from: classes11.dex */
public class SequenceTool {
    public static final int INDETERMINATE_ORDERING = Integer.MIN_VALUE;

    /* renamed from: net.sf.saxon.om.SequenceTool$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18425a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f100853a;

        static {
            int[] iArr = new int[Genre.values().length];
            f100853a = iArr;
            try {
                iArr[Genre.NODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100853a[Genre.FUNCTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100853a[Genre.ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100853a[Genre.MAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100853a[Genre.EXTERNAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f100853a[Genre.ATOMIC.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static Item asItem(Sequence sequence) throws XPathException {
        if (sequence instanceof Item) {
            return (Item) sequence;
        }
        SequenceIterator iterate = sequence.iterate();
        Item next = iterate.next();
        if (next == null) {
            return null;
        }
        if (iterate.next() == null) {
            return next;
        }
        throw new XPathException("Sequence contains more than one item");
    }

    public static AttributeMap attributeMapFromList(List<AttributeInfo> list) {
        int size = list.size();
        return size == 0 ? EmptyAttributeMap.getInstance() : size == 1 ? SingletonAttributeMap.m63409of(list.get(0)) : size <= 8 ? new SmallAttributeMap(list) : new LargeAttributeMap(list);
    }

    public static Object convertToJava(Item item) throws XPathException {
        int i = C18425a.f100853a[item.getGenre().ordinal()];
        Object obj = item;
        if (i == 1) {
            while (obj instanceof VirtualNode) {
                obj = ((VirtualNode) obj).getRealNode();
            }
            return obj;
        }
        if (i == 5) {
            return ((AnyExternalObject) item).getWrappedObject();
        }
        if (i != 6) {
            return item;
        }
        AtomicValue atomicValue = (AtomicValue) item;
        int primitiveType = atomicValue.getItemType().getPrimitiveType();
        if (primitiveType == 533) {
            return Long.valueOf(((NumericValue) atomicValue).longValue());
        }
        if (primitiveType != 631) {
            switch (primitiveType) {
                case 513:
                case 518:
                case 520:
                    break;
                case 514:
                    return ((BooleanValue) atomicValue).getBooleanValue() ? Boolean.TRUE : Boolean.FALSE;
                case 515:
                    return ((BigDecimalValue) atomicValue).getDecimalValue();
                case 516:
                    return Float.valueOf(((FloatValue) atomicValue).getFloatValue());
                case 517:
                    return Double.valueOf(((DoubleValue) atomicValue).getDoubleValue());
                case 519:
                    return ((DateTimeValue) atomicValue).getCalendar().getTime();
                case 521:
                    return ((DateValue) atomicValue).getCalendar().getTime();
                default:
                    switch (primitiveType) {
                        case 527:
                            return ((HexBinaryValue) atomicValue).getBinaryValue();
                        case StandardNames.XS_BASE64_BINARY /* 528 */:
                            return ((Base64BinaryValue) atomicValue).getBinaryValue();
                        case 529:
                            break;
                        default:
                            return item;
                    }
            }
        }
        return atomicValue.getStringValue();
    }

    /* renamed from: d */
    public static /* synthetic */ void m63406d(UnicodeBuilder unicodeBuilder, Item item) throws XPathException {
        if (!unicodeBuilder.isEmpty()) {
            unicodeBuilder.append(' ');
        }
        unicodeBuilder.accept(item.getUnicodeStringValue());
    }

    /* renamed from: f */
    public static /* synthetic */ void m63408f(StringBuilder sb, Item item) throws XPathException {
        if (sb.length() != 0) {
            sb.append(' ');
        }
        sb.append(item.getStringValue());
    }

    public static Sequence[] fromItems(Item... itemArr) {
        Sequence[] sequenceArr = new Sequence[itemArr.length];
        System.arraycopy(itemArr, 0, sequenceArr, 0, itemArr.length);
        return sequenceArr;
    }

    public static int getCardinality(Sequence sequence) {
        if (sequence instanceof Item) {
            return 16384;
        }
        if (sequence instanceof GroundedValue) {
            int length = ((GroundedValue) sequence).getLength();
            if (length != 0) {
                return length != 1 ? 49152 : 16384;
            }
            return 8192;
        }
        try {
            SequenceIterator iterate = sequence.iterate();
            if (iterate.next() == null) {
                return 8192;
            }
            return iterate.next() == null ? 16384 : 49152;
        } catch (UncheckedXPathException unused) {
            return 49152;
        }
    }

    public static ItemType getItemType(Sequence sequence, TypeHierarchy typeHierarchy) {
        if (sequence instanceof Item) {
            return Type.getItemType((Item) sequence, typeHierarchy);
        }
        if (!(sequence instanceof GroundedValue)) {
            return AnyItemType.getInstance();
        }
        try {
            SequenceIterator iterate = sequence.iterate();
            ItemType itemType = null;
            do {
                Item next = iterate.next();
                if (next == null) {
                    break;
                }
                itemType = itemType == null ? Type.getItemType(next, typeHierarchy) : Type.getCommonSuperType(itemType, Type.getItemType(next, typeHierarchy), typeHierarchy);
            } while (itemType != AnyItemType.getInstance());
            return itemType == null ? ErrorType.getInstance() : itemType;
        } catch (UncheckedXPathException unused) {
            return AnyItemType.getInstance();
        }
    }

    public static int getLength(SequenceIterator sequenceIterator) {
        try {
            return ((LastPositionFinder) sequenceIterator).getLength();
        } catch (ClassCastException unused) {
            throw new UnsupportedOperationException("getLength() not available");
        }
    }

    public static UnicodeString getStringValue(Sequence sequence) throws XPathException {
        final UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        supply(sequence.iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.bhm
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                SequenceTool.m63406d(UnicodeBuilder.this, item);
            }
        });
        return unicodeBuilder.toUnicodeString();
    }

    public static UType getUType(Sequence sequence) {
        if (sequence instanceof Item) {
            return UType.getUType((Item) sequence);
        }
        if (!(sequence instanceof GroundedValue)) {
            return UType.ANY;
        }
        UType uType = UType.VOID;
        SequenceIterator iterate = ((GroundedValue) sequence).iterate();
        do {
            Item next = iterate.next();
            if (next == null) {
                break;
            }
            uType = uType.union(UType.getUType(next));
        } while (uType != UType.ANY);
        return uType;
    }

    public static boolean hasLength(SequenceIterator sequenceIterator, int i) throws XPathException {
        if (supportsGetLength(sequenceIterator)) {
            return ((LastPositionFinder) sequenceIterator).getLength() == i;
        }
        int i2 = 0;
        while (sequenceIterator.next() != null) {
            int i3 = i2 + 1;
            if (i2 == i) {
                sequenceIterator.close();
                return false;
            }
            i2 = i3;
        }
        return i == 0;
    }

    public static boolean isUnrepeatable(Sequence sequence) {
        return (sequence instanceof LazySequence) || !(!(sequence instanceof Closure) || (sequence instanceof MemoClosure) || (sequence instanceof SingletonClosure));
    }

    public static Item itemAt(Sequence sequence, int i) {
        return ((sequence instanceof Item) && i == 0) ? (Item) sequence : sequence.materialize().itemAt(i);
    }

    public static GroundedValue itemOrEmpty(Item item) {
        return item == null ? EmptySequence.getInstance() : item;
    }

    public static Sequence[] makeSequenceArray(int i) {
        return new Sequence[i];
    }

    public static void process(Sequence sequence, final Outputter outputter, final Location location) throws XPathException {
        supply(sequence.iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.chm
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                Outputter.this.m62516b(item, location, 524288);
            }
        });
    }

    public static boolean sameLength(SequenceIterator sequenceIterator, SequenceIterator sequenceIterator2) throws XPathException {
        Item next;
        Item next2;
        if (supportsGetLength(sequenceIterator)) {
            return hasLength(sequenceIterator2, ((LastPositionFinder) sequenceIterator).getLength());
        }
        if (supportsGetLength(sequenceIterator2)) {
            return hasLength(sequenceIterator, ((LastPositionFinder) sequenceIterator2).getLength());
        }
        do {
            next = sequenceIterator.next();
            next2 = sequenceIterator2.next();
            if (next == null) {
                break;
            }
        } while (next2 != null);
        if (next != null) {
            sequenceIterator.close();
        }
        if (next2 != null) {
            sequenceIterator2.close();
        }
        return next == null && next2 == null;
    }

    public static String stringify(Sequence sequence) throws XPathException {
        final StringBuilder sb = new StringBuilder(64);
        supply(sequence.iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.ahm
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                SequenceTool.m63408f(sb, item);
            }
        });
        return sb.toString();
    }

    public static void supply(SequenceIterator sequenceIterator, ItemConsumer<? super Item> itemConsumer) {
        while (true) {
            try {
                Item next = sequenceIterator.next();
                if (next == null) {
                    return;
                } else {
                    itemConsumer.accept(next);
                }
            } catch (XPathException e) {
                throw new UncheckedXPathException(e);
            }
        }
    }

    public static boolean supportsGetLength(SequenceIterator sequenceIterator) {
        return (sequenceIterator instanceof LastPositionFinder) && ((LastPositionFinder) sequenceIterator).supportsGetLength();
    }

    public static GroundedValue toGroundedValue(SequenceIterator sequenceIterator) {
        if (sequenceIterator instanceof GroundedIterator) {
            GroundedIterator groundedIterator = (GroundedIterator) sequenceIterator;
            if (groundedIterator.isActuallyGrounded()) {
                return groundedIterator.materialize();
            }
        }
        return SequenceExtent.from(sequenceIterator).reduce();
    }

    public static Sequence toLazySequence(SequenceIterator sequenceIterator) throws XPathException {
        return (!(sequenceIterator instanceof GroundedIterator) || !((GroundedIterator) sequenceIterator).isActuallyGrounded() || (sequenceIterator instanceof AscendingRangeIterator) || (sequenceIterator instanceof DescendingRangeIterator)) ? new LazySequence(sequenceIterator) : toGroundedValue(sequenceIterator);
    }

    public static Sequence toMemoSequence(SequenceIterator sequenceIterator) throws XPathException {
        return sequenceIterator instanceof EmptyIterator ? EmptySequence.getInstance() : ((sequenceIterator instanceof GroundedIterator) && ((GroundedIterator) sequenceIterator).isActuallyGrounded()) ? toGroundedValue(sequenceIterator) : new MemoSequence(sequenceIterator);
    }

    public static int getLength(Sequence sequence) throws XPathException {
        if (sequence instanceof GroundedValue) {
            return ((GroundedValue) sequence).getLength();
        }
        return Count.count(sequence.iterate());
    }
}
