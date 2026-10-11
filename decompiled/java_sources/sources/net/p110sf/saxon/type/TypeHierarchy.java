package net.p110sf.saxon.type;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.CardinalityCheckingIterator;
import net.p110sf.saxon.expr.ItemMapper;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.ItemTypeCheckingFunction;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.functions.hof.FunctionSequenceCoercer;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.FunctionAnnotationHandler;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.p111z.IntUniversalSet;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.DocumentNodeTest;
import net.p110sf.saxon.pattern.LocalNameTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NamespaceTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.QNameTest;
import net.p110sf.saxon.pattern.SameNameTest;
import net.p110sf.saxon.query.Annotation;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.FloatValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class TypeHierarchy {

    /* renamed from: a */
    public final Map<C18564b, Affinity> f102815a = new ConcurrentHashMap();
    protected Configuration config;

    /* renamed from: net.sf.saxon.type.TypeHierarchy$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18563a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102816a;

        static {
            int[] iArr = new int[Affinity.values().length];
            f102816a = iArr;
            try {
                iArr[Affinity.SUBSUMES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102816a[Affinity.SUBSUMED_BY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102816a[Affinity.SAME_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f102816a[Affinity.OVERLAPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f102816a[Affinity.DISJOINT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: net.sf.saxon.type.TypeHierarchy$b */
    /* loaded from: classes11.dex */
    public static class C18564b {

        /* renamed from: a */
        public ItemType f102817a;

        /* renamed from: b */
        public ItemType f102818b;

        public C18564b(ItemType itemType, ItemType itemType2) {
            this.f102817a = itemType;
            this.f102818b = itemType2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C18564b)) {
                return false;
            }
            C18564b c18564b = (C18564b) obj;
            return this.f102817a.equals(c18564b.f102817a) && this.f102818b.equals(c18564b.f102818b);
        }

        public int hashCode() {
            return this.f102818b.hashCode() ^ this.f102817a.hashCode();
        }
    }

    public TypeHierarchy(Configuration configuration) {
        this.config = configuration;
    }

    /* renamed from: g */
    public static Affinity m64633g(Affinity affinity, Affinity affinity2) {
        Affinity affinity3 = Affinity.SAME_TYPE;
        if (affinity == affinity3 && affinity2 == affinity3) {
            return affinity3;
        }
        if ((affinity == affinity3 || affinity == Affinity.SUBSUMES) && (affinity2 == affinity3 || affinity2 == Affinity.SUBSUMES)) {
            return Affinity.SUBSUMES;
        }
        if ((affinity == affinity3 || affinity == Affinity.SUBSUMED_BY) && (affinity2 == affinity3 || affinity2 == Affinity.SUBSUMED_BY)) {
            return Affinity.SUBSUMED_BY;
        }
        Affinity affinity4 = Affinity.DISJOINT;
        return (affinity == affinity4 || affinity2 == affinity4) ? affinity4 : Affinity.OVERLAPS;
    }

    public static SchemaType getNearestNamedType(SchemaType schemaType) {
        while (schemaType.isAnonymousType()) {
            schemaType = schemaType.getBaseType();
        }
        return schemaType;
    }

    /* renamed from: i */
    public static /* synthetic */ Item m64634i(RoleDiagnostic roleDiagnostic, ItemType itemType, Item item) throws XPathException {
        if (!(item instanceof AtomicValue) || !((AtomicValue) item).isUntypedAtomic()) {
            return item;
        }
        ValidationFailure validationFailure = new ValidationFailure("Failed to convert the " + roleDiagnostic.getMessage() + ": Implicit conversion of untypedAtomic value to " + itemType + " is not allowed");
        validationFailure.setErrorCode("XPTY0117");
        throw validationFailure.makeException();
    }

    public static Affinity inverseRelationship(Affinity affinity) {
        int i = C18563a.f102816a[affinity.ordinal()];
        if (i == 1) {
            return Affinity.SUBSUMED_BY;
        }
        if (i == 2) {
            return Affinity.SUBSUMES;
        }
        if (i == 3) {
            return Affinity.SAME_TYPE;
        }
        if (i == 4) {
            return Affinity.OVERLAPS;
        }
        if (i == 5) {
            return Affinity.DISJOINT;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: j */
    public static /* synthetic */ Item m64635j(ItemType itemType, ConversionRules conversionRules, Item item) throws XPathException {
        if (!(item instanceof AtomicValue) || !((AtomicValue) item).isUntypedAtomic()) {
            return item;
        }
        try {
            return ((SimpleType) itemType).getTypedValue(item.getUnicodeStringValue(), null, conversionRules).head();
        } catch (ValidationException e) {
            e.setErrorCode("XPTY0004");
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ Item m64636k(ItemType itemType, Item item) throws XPathException {
        return ((item instanceof AtomicValue) && ((AtomicValue) item).isUntypedAtomic()) ? Converter.convert((StringValue) item, (AtomicType) itemType, this.config.getConversionRules()) : item;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ Item m64637l(RoleDiagnostic roleDiagnostic, Item item) throws XPathException {
        if (item instanceof NumericValue) {
            return (DoubleValue) Converter.convert((NumericValue) item, BuiltInAtomicType.DOUBLE, this.config.getConversionRules()).asAtomic();
        }
        throw new XPathException("Failed to convert the " + roleDiagnostic.getMessage() + ": Cannot promote non-numeric value to xs:double", "XPTY0004");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ Item m64638m(RoleDiagnostic roleDiagnostic, Item item) throws XPathException {
        if (item instanceof DoubleValue) {
            throw new XPathException("Failed to convert the " + roleDiagnostic.getMessage() + ": Cannot promote xs:double value to xs:float", "XPTY0004");
        }
        if (item instanceof NumericValue) {
            return (FloatValue) Converter.convert((NumericValue) item, BuiltInAtomicType.FLOAT, this.config.getConversionRules()).asAtomic();
        }
        throw new XPathException("Failed to convert the " + roleDiagnostic.getMessage() + ": Cannot promote non-numeric value to xs:float", "XPTY0004");
    }

    /* renamed from: n */
    public static /* synthetic */ Item m64639n(Item item) throws XPathException {
        return item instanceof AnyURIValue ? ((AnyURIValue) item).convertToString() : item;
    }

    /* renamed from: o */
    public static Affinity m64640o(QNameTest qNameTest, QNameTest qNameTest2) {
        return qNameTest.equals(qNameTest2) ? Affinity.SAME_TYPE : qNameTest2 instanceof NameTest ? qNameTest.matches(((NameTest) qNameTest2).getMatchingNodeName()) ? Affinity.SUBSUMES : Affinity.DISJOINT : qNameTest instanceof NameTest ? qNameTest2.matches(((NameTest) qNameTest).getMatchingNodeName()) ? Affinity.SUBSUMED_BY : Affinity.DISJOINT : qNameTest2 instanceof SameNameTest ? qNameTest.matches(((SameNameTest) qNameTest2).getMatchingNodeName()) ? Affinity.SUBSUMES : Affinity.DISJOINT : qNameTest instanceof SameNameTest ? qNameTest2.matches(((SameNameTest) qNameTest).getMatchingNodeName()) ? Affinity.SUBSUMED_BY : Affinity.DISJOINT : ((qNameTest instanceof NamespaceTest) && (qNameTest2 instanceof NamespaceTest)) ? Affinity.DISJOINT : ((qNameTest instanceof LocalNameTest) && (qNameTest2 instanceof LocalNameTest)) ? Affinity.DISJOINT : Affinity.OVERLAPS;
    }

    /* renamed from: p */
    public static void m64641p(ItemType itemType) {
        Objects.requireNonNull(itemType);
        if (!(itemType instanceof UnionType) || itemType.isPlainType()) {
            return;
        }
        throw new AssertionError(itemType + " is a non-pure union type");
    }

    /* renamed from: q */
    public static ItemType m64642q(ItemType itemType) {
        return itemType instanceof SameNameTest ? ((SameNameTest) itemType).getEquivalentNameTest() : itemType;
    }

    /* renamed from: r */
    public static <X> Set<X> m64643r(Iterable<X> iterable) {
        HashSet hashSet = new HashSet();
        Iterator<X> it2 = iterable.iterator();
        while (it2.hasNext()) {
            hashSet.add(it2.next());
        }
        return hashSet;
    }

    public SequenceIterator applyFunctionCoercion(SequenceIterator sequenceIterator, ItemType itemType, ItemType itemType2, Location location) {
        if (itemType2 instanceof FunctionItemType) {
            FunctionItemType functionItemType = (FunctionItemType) itemType2;
            return (functionItemType.isMapType() || functionItemType.isArrayType() || relationship(itemType2, itemType) == Affinity.SUBSUMES || itemType2 == AnyFunctionType.getInstance()) ? sequenceIterator : new ItemMappingIterator(sequenceIterator, new FunctionSequenceCoercer.Coercer((SpecificFunctionType) itemType2, this.config, location), true);
        }
        return sequenceIterator;
    }

    public GroundedValue applyFunctionConversionRules(Sequence sequence, SequenceType sequenceType, final RoleDiagnostic roleDiagnostic, Location location) throws XPathException {
        ItemMappingIterator itemMappingIterator;
        ItemMapper m62594of;
        try {
            GroundedValue materialize = sequence.materialize();
            if (sequenceType.matches(materialize, this)) {
                return materialize;
            }
            ItemType itemType = SequenceTool.getItemType(sequence, this);
            SequenceIterator iterate = materialize.iterate();
            final ItemType primaryType = sequenceType.getPrimaryType();
            if (primaryType.isPlainType()) {
                if (!itemType.isPlainType()) {
                    try {
                        iterate = Atomizer.getAtomizingIterator(iterate, false);
                        itemType = itemType.getAtomizedItemType();
                    } catch (XPathException e) {
                        ValidationFailure validationFailure = new ValidationFailure("Failed to atomize the " + roleDiagnostic.getMessage() + ": " + e.getMessage());
                        validationFailure.setErrorCode("XPTY0117");
                        throw validationFailure.makeException();
                    }
                }
                BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.UNTYPED_ATOMIC;
                Affinity relationship = relationship(itemType, builtInAtomicType);
                Affinity affinity = Affinity.DISJOINT;
                if (relationship != affinity && !isSubType(builtInAtomicType, primaryType)) {
                    if (((SimpleType) primaryType).isNamespaceSensitive()) {
                        m62594of = ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.uon
                            @Override // net.sf.saxon.expr.ItemMapper.Lambda
                            public final Item map(Item item) {
                                Item m64634i;
                                m64634i = TypeHierarchy.m64634i(RoleDiagnostic.this, primaryType, item);
                                return m64634i;
                            }
                        });
                    } else if (((SimpleType) primaryType).isUnionType()) {
                        final ConversionRules conversionRules = this.config.getConversionRules();
                        m62594of = ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.von
                            @Override // net.sf.saxon.expr.ItemMapper.Lambda
                            public final Item map(Item item) {
                                Item m64635j;
                                m64635j = TypeHierarchy.m64635j(ItemType.this, conversionRules, item);
                                return m64635j;
                            }
                        });
                    } else {
                        m62594of = ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.won
                            @Override // net.sf.saxon.expr.ItemMapper.Lambda
                            public final Item map(Item item) {
                                Item m64636k;
                                m64636k = TypeHierarchy.this.m64636k(primaryType, item);
                                return m64636k;
                            }
                        });
                    }
                    iterate = new ItemMappingIterator(iterate, m62594of, true);
                }
                if (primaryType.equals(BuiltInAtomicType.DOUBLE)) {
                    itemMappingIterator = new ItemMappingIterator(iterate, ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.xon
                        @Override // net.sf.saxon.expr.ItemMapper.Lambda
                        public final Item map(Item item) {
                            Item m64637l;
                            m64637l = TypeHierarchy.this.m64637l(roleDiagnostic, item);
                            return m64637l;
                        }
                    }), true);
                } else {
                    if (primaryType.equals(BuiltInAtomicType.FLOAT)) {
                        itemMappingIterator = new ItemMappingIterator(iterate, ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.yon
                            @Override // net.sf.saxon.expr.ItemMapper.Lambda
                            public final Item map(Item item) {
                                Item m64638m;
                                m64638m = TypeHierarchy.this.m64638m(roleDiagnostic, item);
                                return m64638m;
                            }
                        }), true);
                    }
                    if (primaryType.equals(BuiltInAtomicType.STRING) && relationship(itemType, BuiltInAtomicType.ANY_URI) != affinity) {
                        iterate = new ItemMappingIterator(iterate, ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.zon
                            @Override // net.sf.saxon.expr.ItemMapper.Lambda
                            public final Item map(Item item) {
                                Item m64639n;
                                m64639n = TypeHierarchy.m64639n(item);
                                return m64639n;
                            }
                        }), true);
                    }
                }
                iterate = itemMappingIterator;
                if (primaryType.equals(BuiltInAtomicType.STRING)) {
                    iterate = new ItemMappingIterator(iterate, ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.zon
                        @Override // net.sf.saxon.expr.ItemMapper.Lambda
                        public final Item map(Item item) {
                            Item m64639n;
                            m64639n = TypeHierarchy.m64639n(item);
                            return m64639n;
                        }
                    }), true);
                }
            }
            SequenceIterator applyFunctionCoercion = applyFunctionCoercion(iterate, itemType, primaryType, location);
            Affinity relationship2 = relationship(itemType, primaryType);
            if (relationship2 != Affinity.SAME_TYPE && relationship2 != Affinity.SUBSUMED_BY) {
                applyFunctionCoercion = new ItemMappingIterator(applyFunctionCoercion, new ItemTypeCheckingFunction(primaryType, roleDiagnostic, location, this.config), true);
            }
            if (sequenceType.getCardinality() != 57344) {
                applyFunctionCoercion = new CardinalityCheckingIterator(applyFunctionCoercion, sequenceType.getCardinality(), roleDiagnostic, location);
            }
            return SequenceTool.toGroundedValue(applyFunctionCoercion);
        } catch (UncheckedXPathException e2) {
            throw e2.getXPathException();
        }
    }

    public Affinity computeContentRelationship(ItemType itemType, ItemType itemType2, Optional<IntSet> optional, Optional<IntSet> optional2) {
        Affinity relationship = itemType instanceof DocumentNodeTest ? itemType2 instanceof DocumentNodeTest ? relationship(((DocumentNodeTest) itemType).getElementTest(), ((DocumentNodeTest) itemType2).getElementTest()) : Affinity.SUBSUMED_BY : itemType2 instanceof DocumentNodeTest ? Affinity.SUBSUMES : schemaTypeRelationship(((NodeTest) itemType).getContentType(), ((NodeTest) itemType2).getContentType());
        boolean isNillable = ((NodeTest) itemType).isNillable();
        boolean isNillable2 = ((NodeTest) itemType2).isNillable();
        if (isNillable == isNillable2) {
            return relationship;
        }
        int i = C18563a.f102816a[relationship.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? relationship : isNillable ? Affinity.SUBSUMES : Affinity.SUBSUMED_BY : isNillable ? Affinity.OVERLAPS : relationship : isNillable2 ? Affinity.OVERLAPS : relationship;
    }

    public Configuration getConfiguration() {
        return this.config;
    }

    public ItemType getGenericFunctionItemType() {
        return AnyItemType.getInstance();
    }

    /* renamed from: h */
    public final Affinity m64644h(ItemType itemType, ItemType itemType2) {
        MapType mapType;
        Affinity affinity;
        m64641p(itemType);
        m64641p(itemType2);
        try {
            if (itemType == itemType2) {
                return Affinity.SAME_TYPE;
            }
            if (itemType instanceof AnyItemType) {
                return itemType2 instanceof AnyItemType ? Affinity.SAME_TYPE : Affinity.SUBSUMES;
            }
            if (itemType2 instanceof AnyItemType) {
                return Affinity.SUBSUMED_BY;
            }
            if (itemType.isPlainType()) {
                if (!(itemType2 instanceof NodeTest) && !(itemType2 instanceof FunctionItemType) && !(itemType2 instanceof JavaExternalObjectType)) {
                    BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.ANY_ATOMIC;
                    if (itemType == builtInAtomicType && itemType2.isPlainType()) {
                        return Affinity.SUBSUMES;
                    }
                    if (itemType2 == builtInAtomicType) {
                        return Affinity.SUBSUMED_BY;
                    }
                    if (!(itemType instanceof AtomicType) || !(itemType2 instanceof AtomicType)) {
                        if (itemType.isAtomicType() || !itemType2.isPlainType()) {
                            if (itemType instanceof AtomicType) {
                                return inverseRelationship(relationship(itemType2, itemType));
                            }
                            throw new IllegalStateException();
                        }
                        Set m64643r = m64643r(((PlainType) itemType).getPlainMemberTypes());
                        Set m64643r2 = m64643r(((PlainType) itemType2).getPlainMemberTypes());
                        if (!m64645s(m64643r, m64643r2)) {
                            return Affinity.DISJOINT;
                        }
                        boolean containsAll = m64643r.containsAll(m64643r2);
                        boolean containsAll2 = m64643r2.containsAll(m64643r);
                        return (containsAll && containsAll2) ? Affinity.SAME_TYPE : containsAll ? Affinity.SUBSUMES : containsAll2 ? Affinity.SUBSUMED_BY : m64646t(m64643r, m64643r2) ? Affinity.SUBSUMES : m64646t(m64643r2, m64643r) ? Affinity.SUBSUMED_BY : Affinity.OVERLAPS;
                    }
                    if (((AtomicType) itemType).getFingerprint() == ((AtomicType) itemType2).getFingerprint()) {
                        return Affinity.SAME_TYPE;
                    }
                    AtomicType atomicType = (AtomicType) itemType2;
                    while (((AtomicType) itemType).getFingerprint() != atomicType.getFingerprint()) {
                        SchemaType baseType = atomicType.getBaseType();
                        if (!(baseType instanceof AtomicType)) {
                            AtomicType atomicType2 = (AtomicType) itemType;
                            while (atomicType2.getFingerprint() != ((AtomicType) itemType2).getFingerprint()) {
                                SchemaType baseType2 = atomicType2.getBaseType();
                                if (!(baseType2 instanceof AtomicType)) {
                                    return Affinity.DISJOINT;
                                }
                                atomicType2 = (AtomicType) baseType2;
                            }
                            return Affinity.SUBSUMED_BY;
                        }
                        atomicType = (AtomicType) baseType;
                    }
                    return Affinity.SUBSUMES;
                }
                return Affinity.DISJOINT;
            }
            if (!(itemType instanceof NodeTest)) {
                if (itemType instanceof AnyExternalObjectType) {
                    return !(itemType2 instanceof AnyExternalObjectType) ? Affinity.DISJOINT : itemType instanceof JavaExternalObjectType ? itemType2 == AnyExternalObjectType.THE_INSTANCE ? Affinity.SUBSUMED_BY : itemType2 instanceof JavaExternalObjectType ? ((JavaExternalObjectType) itemType).getRelationship((JavaExternalObjectType) itemType2) : Affinity.DISJOINT : itemType2 instanceof JavaExternalObjectType ? Affinity.SUBSUMES : Affinity.DISJOINT;
                }
                if ((itemType instanceof MapType) && (itemType2 instanceof MapType)) {
                    MapType mapType2 = MapType.EMPTY_MAP_TYPE;
                    if (itemType == mapType2) {
                        return Affinity.SUBSUMED_BY;
                    }
                    if (itemType2 != mapType2 && itemType != (mapType = MapType.ANY_MAP_TYPE)) {
                        if (itemType2 == mapType) {
                            return Affinity.SUBSUMED_BY;
                        }
                        Affinity m64633g = m64633g(relationship(((MapType) itemType).getKeyType(), ((MapType) itemType2).getKeyType()), sequenceTypeRelationship(((MapType) itemType).getValueType(), ((MapType) itemType2).getValueType()));
                        if (m64633g == Affinity.SAME_TYPE || m64633g == Affinity.SUBSUMES || m64633g == Affinity.SUBSUMED_BY) {
                            return m64633g;
                        }
                    }
                    return Affinity.SUBSUMES;
                }
                if (!(itemType2 instanceof FunctionItemType)) {
                    return Affinity.DISJOINT;
                }
                Affinity relationship = ((FunctionItemType) itemType).relationship((FunctionItemType) itemType2, this);
                Affinity affinity2 = Affinity.DISJOINT;
                if (relationship == affinity2) {
                    return affinity2;
                }
                Affinity affinity3 = Affinity.SAME_TYPE;
                AnnotationList annotationAssertions = ((FunctionItemType) itemType).getAnnotationAssertions();
                AnnotationList annotationAssertions2 = ((FunctionItemType) itemType2).getAnnotationAssertions();
                HashSet<String> hashSet = new HashSet();
                Iterator<Annotation> it2 = annotationAssertions.iterator();
                while (it2.hasNext()) {
                    hashSet.add(it2.next().getAnnotationQName().getURI());
                }
                Iterator<Annotation> it3 = annotationAssertions2.iterator();
                while (it3.hasNext()) {
                    hashSet.add(it3.next().getAnnotationQName().getURI());
                }
                for (String str : hashSet) {
                    FunctionAnnotationHandler functionAnnotationHandler = this.config.getFunctionAnnotationHandler(str);
                    if (functionAnnotationHandler != null) {
                        Affinity affinity4 = Affinity.SAME_TYPE;
                        AnnotationList filterByNamespace = annotationAssertions.filterByNamespace(str);
                        AnnotationList filterByNamespace2 = annotationAssertions2.filterByNamespace(str);
                        if (!filterByNamespace.isEmpty()) {
                            affinity4 = filterByNamespace2.isEmpty() ? Affinity.SUBSUMED_BY : functionAnnotationHandler.relationship(filterByNamespace, filterByNamespace2);
                        } else if (!filterByNamespace2.isEmpty()) {
                            affinity4 = Affinity.SUBSUMES;
                        }
                        affinity3 = m64633g(affinity3, affinity4);
                    }
                }
                return m64633g(relationship, affinity3);
            }
            if (!itemType2.isPlainType() && !(itemType2 instanceof FunctionItemType)) {
                if (itemType instanceof AnyNodeTest) {
                    return itemType2 instanceof AnyNodeTest ? Affinity.SAME_TYPE : Affinity.SUBSUMES;
                }
                if (itemType2 instanceof AnyNodeTest) {
                    return Affinity.SUBSUMED_BY;
                }
                if (itemType2 instanceof ErrorType) {
                    return Affinity.DISJOINT;
                }
                UType uType = itemType.getUType();
                UType uType2 = itemType2.getUType();
                if (!uType.overlaps(uType2)) {
                    return Affinity.DISJOINT;
                }
                Affinity affinity5 = uType.equals(uType2) ? Affinity.SAME_TYPE : uType2.subsumes(uType) ? Affinity.SUBSUMED_BY : uType.subsumes(uType2) ? Affinity.SUBSUMES : Affinity.OVERLAPS;
                Optional<IntSet> requiredNodeNames = ((NodeTest) itemType).getRequiredNodeNames();
                Optional<IntSet> requiredNodeNames2 = ((NodeTest) itemType2).getRequiredNodeNames();
                if ((itemType instanceof QNameTest) && (itemType2 instanceof QNameTest)) {
                    affinity = m64640o((QNameTest) itemType, (QNameTest) itemType2);
                } else if (requiredNodeNames.isPresent() && (requiredNodeNames.get() instanceof IntUniversalSet)) {
                    affinity = (requiredNodeNames2.isPresent() && (requiredNodeNames2.get() instanceof IntUniversalSet)) ? Affinity.SAME_TYPE : Affinity.SUBSUMES;
                } else if (requiredNodeNames2.isPresent() && (requiredNodeNames2.get() instanceof IntUniversalSet)) {
                    affinity = Affinity.SUBSUMED_BY;
                } else {
                    if (requiredNodeNames.isPresent() && requiredNodeNames2.isPresent()) {
                        IntSet intSet = requiredNodeNames.get();
                        IntSet intSet2 = requiredNodeNames2.get();
                        affinity = intSet.containsAll(intSet2) ? intSet.size() == intSet2.size() ? Affinity.SAME_TYPE : Affinity.SUBSUMES : intSet2.containsAll(intSet) ? Affinity.SUBSUMED_BY : IntHashSet.containsSome(intSet, intSet2) ? Affinity.OVERLAPS : Affinity.DISJOINT;
                    }
                    affinity = itemType.equals(itemType2) ? Affinity.SAME_TYPE : Affinity.OVERLAPS;
                }
                Affinity computeContentRelationship = computeContentRelationship(itemType, itemType2, requiredNodeNames, requiredNodeNames2);
                Affinity affinity6 = Affinity.SAME_TYPE;
                if (affinity5 == affinity6 && affinity == affinity6 && computeContentRelationship == affinity6) {
                    return affinity6;
                }
                if ((affinity5 != affinity6 && affinity5 != Affinity.SUBSUMES) || ((affinity != affinity6 && affinity != Affinity.SUBSUMES) || (computeContentRelationship != affinity6 && computeContentRelationship != Affinity.SUBSUMES))) {
                    if ((affinity5 != affinity6 && affinity5 != Affinity.SUBSUMED_BY) || ((affinity != affinity6 && affinity != Affinity.SUBSUMED_BY) || (computeContentRelationship != affinity6 && computeContentRelationship != Affinity.SUBSUMED_BY))) {
                        Affinity affinity7 = Affinity.DISJOINT;
                        if (affinity != affinity7 && computeContentRelationship != affinity7) {
                            return Affinity.OVERLAPS;
                        }
                        return affinity7;
                    }
                    return Affinity.SUBSUMED_BY;
                }
                return Affinity.SUBSUMES;
            }
            return Affinity.DISJOINT;
        } catch (MissingComponentException unused) {
            return Affinity.OVERLAPS;
        }
    }

    public boolean isSubType(ItemType itemType, ItemType itemType2) {
        Affinity relationship = relationship(itemType, itemType2);
        return relationship == Affinity.SAME_TYPE || relationship == Affinity.SUBSUMED_BY;
    }

    public Affinity relationship(ItemType itemType, ItemType itemType2) {
        Objects.requireNonNull(itemType);
        Objects.requireNonNull(itemType2);
        ItemType m64642q = m64642q(itemType);
        ItemType m64642q2 = m64642q(itemType2);
        if (m64642q.equals(m64642q2)) {
            return Affinity.SAME_TYPE;
        }
        if (m64642q2 instanceof AnyItemType) {
            return Affinity.SUBSUMED_BY;
        }
        if (m64642q instanceof AnyItemType) {
            return Affinity.SUBSUMES;
        }
        if ((m64642q instanceof BuiltInAtomicType) && (m64642q2 instanceof BuiltInAtomicType)) {
            return m64642q.getBasicAlphaCode().startsWith(m64642q2.getBasicAlphaCode()) ? Affinity.SUBSUMED_BY : m64642q2.getBasicAlphaCode().startsWith(m64642q.getBasicAlphaCode()) ? Affinity.SUBSUMES : Affinity.DISJOINT;
        }
        if (m64642q instanceof ErrorType) {
            return Affinity.SUBSUMED_BY;
        }
        if (m64642q2 instanceof ErrorType) {
            return Affinity.SUBSUMES;
        }
        C18564b c18564b = new C18564b(m64642q, m64642q2);
        if (this.f102815a.containsKey(c18564b)) {
            return this.f102815a.get(c18564b);
        }
        Affinity m64644h = m64644h(m64642q, m64642q2);
        this.f102815a.put(c18564b, m64644h);
        return m64644h;
    }

    /* renamed from: s */
    public final boolean m64645s(Set<? extends PlainType> set, Set<? extends PlainType> set2) {
        for (PlainType plainType : set2) {
            Iterator<? extends PlainType> it2 = set.iterator();
            while (it2.hasNext()) {
                if (relationship(it2.next(), plainType) != Affinity.DISJOINT) {
                    return true;
                }
            }
        }
        return false;
    }

    public Affinity schemaTypeRelationship(SchemaType schemaType, SchemaType schemaType2) {
        if (schemaType.isSameType(schemaType2)) {
            return Affinity.SAME_TYPE;
        }
        if (schemaType instanceof AnyType) {
            return Affinity.SUBSUMES;
        }
        if (schemaType2 instanceof AnyType) {
            return Affinity.SUBSUMED_BY;
        }
        if ((schemaType instanceof Untyped) && (schemaType2 == BuiltInAtomicType.ANY_ATOMIC || schemaType2 == BuiltInAtomicType.UNTYPED_ATOMIC)) {
            return Affinity.OVERLAPS;
        }
        if ((schemaType2 instanceof Untyped) && (schemaType == BuiltInAtomicType.ANY_ATOMIC || schemaType == BuiltInAtomicType.UNTYPED_ATOMIC)) {
            return Affinity.OVERLAPS;
        }
        if ((schemaType instanceof PlainType) && ((PlainType) schemaType).isPlainType() && (schemaType2 instanceof PlainType) && ((PlainType) schemaType2).isPlainType()) {
            return relationship((ItemType) schemaType, (ItemType) schemaType2);
        }
        SchemaType schemaType3 = schemaType;
        do {
            schemaType3 = schemaType3.getBaseType();
            if (schemaType3 == null) {
                do {
                    schemaType2 = schemaType2.getBaseType();
                    if (schemaType2 == null) {
                        return Affinity.DISJOINT;
                    }
                } while (!schemaType2.isSameType(schemaType));
                return Affinity.SUBSUMES;
            }
        } while (!schemaType3.isSameType(schemaType2));
        return Affinity.SUBSUMED_BY;
    }

    public Affinity sequenceTypeRelationship(SequenceType sequenceType, SequenceType sequenceType2) {
        Affinity affinity;
        int cardinality = sequenceType.getCardinality();
        int cardinality2 = sequenceType2.getCardinality();
        if (cardinality == cardinality2) {
            affinity = Affinity.SAME_TYPE;
        } else if (Cardinality.subsumes(cardinality, cardinality2)) {
            affinity = Affinity.SUBSUMES;
        } else if (Cardinality.subsumes(cardinality2, cardinality)) {
            affinity = Affinity.SUBSUMED_BY;
        } else {
            if (cardinality == 8192 && !Cardinality.allowsZero(cardinality2)) {
                return Affinity.DISJOINT;
            }
            if (cardinality2 == 8192 && !Cardinality.allowsZero(cardinality)) {
                return Affinity.DISJOINT;
            }
            affinity = Affinity.OVERLAPS;
        }
        Affinity relationship = relationship(sequenceType.getPrimaryType(), sequenceType2.getPrimaryType());
        Affinity affinity2 = Affinity.DISJOINT;
        if (relationship == affinity2) {
            return affinity2;
        }
        Affinity affinity3 = Affinity.SAME_TYPE;
        return (affinity == affinity3 || affinity == relationship) ? relationship : relationship == affinity3 ? affinity : Affinity.OVERLAPS;
    }

    /* renamed from: t */
    public final boolean m64646t(Set<? extends PlainType> set, Set<? extends PlainType> set2) {
        boolean z;
        Iterator<? extends PlainType> it2 = set2.iterator();
        do {
            z = true;
            if (!it2.hasNext()) {
                return true;
            }
            PlainType next = it2.next();
            Iterator<? extends PlainType> it3 = set.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    z = false;
                    break;
                }
                Affinity relationship = relationship(it3.next(), next);
                if (relationship == Affinity.SUBSUMES || relationship == Affinity.SAME_TYPE) {
                    break;
                }
            }
        } while (z);
        return false;
    }
}
