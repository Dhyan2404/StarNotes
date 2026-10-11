package net.p110sf.saxon.expr;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.LookupExpression;
import net.p110sf.saxon.expr.SequenceMapper;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.ma.arrays.ArrayFunctionSet;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.ma.map.RecordTest;
import net.p110sf.saxon.ma.map.TupleType;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyExternalObjectType;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.ObjectValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class LookupExpression extends BinaryExpression {
    protected boolean isArrayLookup;
    protected boolean isMapLookup;
    protected boolean isSingleContainer;
    protected boolean isSingleEntry;

    /* renamed from: p */
    public boolean f99311p;

    /* renamed from: net.sf.saxon.expr.LookupExpression$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18305a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f99312a;

        static {
            int[] iArr = new int[Genre.values().length];
            f99312a = iArr;
            try {
                iArr[Genre.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99312a[Genre.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f99312a[Genre.EXTERNAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public LookupExpression(Expression expression, Expression expression2) {
        super(expression, 213, expression2);
        this.f99311p = false;
        this.isArrayLookup = false;
        this.isMapLookup = false;
        this.isSingleContainer = false;
        this.isSingleEntry = false;
    }

    /* renamed from: A */
    public static /* synthetic */ SequenceIterator m62602A(Item item, Item item2) throws XPathException {
        return m62603B(((MapItem) item).get((AtomicValue) item2));
    }

    /* renamed from: B */
    public static SequenceIterator m62603B(GroundedValue groundedValue) {
        return groundedValue == null ? EmptyIterator.getInstance() : groundedValue.iterate();
    }

    public static void mustBeArrayOrMap(Expression expression, Item item) throws XPathException {
        XPathException xPathException = new XPathException("The items on the LHS of the '?' operator must be maps or arrays; but value (" + item.toShortString() + ") was supplied", "XPTY0004");
        xPathException.setIsTypeError(true);
        xPathException.setLocation(expression.getLocation());
        xPathException.setFailingExpression(expression);
        throw xPathException;
    }

    /* renamed from: r */
    public static /* synthetic */ SequenceIterator m62613r(int i, IntegerValue integerValue, Item item) throws XPathException {
        ArrayItem arrayItem = (ArrayItem) item;
        if (i >= 0 && i < arrayItem.arrayLength()) {
            return arrayItem.get(i).iterate();
        }
        ArrayFunctionSet.checkSubscript(integerValue, arrayItem.arrayLength());
        return null;
    }

    /* renamed from: s */
    public static /* synthetic */ SequenceIterator m62614s(GroundedValue groundedValue, final Item item) throws XPathException {
        return MappingIterator.map(groundedValue.iterate(), new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.x5j
            @Override // net.sf.saxon.expr.SequenceMapper.Lambda
            public final SequenceIterator map(Item item2) {
                SequenceIterator m62618x;
                m62618x = LookupExpression.m62618x(Item.this, item2);
                return m62618x;
            }
        });
    }

    /* renamed from: t */
    public static /* synthetic */ SequenceIterator m62615t(AtomicValue atomicValue, Item item) throws XPathException {
        return m62603B(((MapItem) item).get(atomicValue));
    }

    /* renamed from: u */
    public static /* synthetic */ SequenceIterator m62616u(GroundedValue groundedValue, final Item item) throws XPathException {
        return MappingIterator.map(groundedValue.iterate(), new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.r5j
            @Override // net.sf.saxon.expr.SequenceMapper.Lambda
            public final SequenceIterator map(Item item2) {
                SequenceIterator m62619y;
                m62619y = LookupExpression.m62619y(Item.this, item2);
                return m62619y;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ SequenceIterator m62617v(GroundedValue groundedValue, Configuration configuration, final Item item) throws XPathException {
        int i = C18305a.f99312a[item.getGenre().ordinal()];
        if (i == 1) {
            return new MappingIterator(groundedValue.iterate(), SequenceMapper.m62631of(new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.p5j
                @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                public final SequenceIterator map(Item item2) {
                    SequenceIterator m62620z;
                    m62620z = LookupExpression.this.m62620z(item, item2);
                    return m62620z;
                }
            }));
        }
        if (i == 2) {
            return MappingIterator.map(groundedValue.iterate(), new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.q5j
                @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                public final SequenceIterator map(Item item2) {
                    SequenceIterator m62602A;
                    m62602A = LookupExpression.m62602A(Item.this, item2);
                    return m62602A;
                }
            });
        }
        if (i != 3) {
            mustBeArrayOrMap(this, item);
            return null;
        }
        if (groundedValue instanceof StringValue) {
            StringValue stringValue = (StringValue) groundedValue;
            return configuration.externalObjectAsMap((ObjectValue) item, stringValue.getStringValue()).get(stringValue).iterate();
        }
        XPathException xPathException = new XPathException("An item on the LHS of the '?' operator is an external object, but a value on the RHS of the operator (" + item.toShortString() + ") is not a singleton string", "XPTY0004");
        xPathException.setIsTypeError(true);
        xPathException.setLocation(getLocation());
        xPathException.setFailingExpression(this);
        throw xPathException;
    }

    /* renamed from: x */
    public static /* synthetic */ SequenceIterator m62618x(Item item, Item item2) throws XPathException {
        return ((ArrayItem) item).get(ArrayFunctionSet.checkSubscript((IntegerValue) item2, r1.arrayLength()) - 1).iterate();
    }

    /* renamed from: y */
    public static /* synthetic */ SequenceIterator m62619y(Item item, Item item2) throws XPathException {
        return m62603B(((MapItem) item).get((AtomicValue) item2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public /* synthetic */ SequenceIterator m62620z(Item item, Item item2) throws XPathException {
        if (item2 instanceof IntegerValue) {
            ArrayItem arrayItem = (ArrayItem) item;
            return arrayItem.get(ArrayFunctionSet.checkSubscript((IntegerValue) item2, arrayItem.arrayLength()) - 1).iterate();
        }
        XPathException xPathException = new XPathException("An item on the LHS of the '?' operator (" + getLhsExpression().toShortString() + ") is an array, but a value on the RHS of the operator (" + item.toShortString() + ") is not an integer", "XPTY0004");
        xPathException.setIsTypeError(true);
        xPathException.setLocation(getLocation());
        xPathException.setFailingExpression(this);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        if (this.isSingleContainer && this.isSingleEntry) {
            if (this.isArrayLookup) {
                ItemType itemType = getLhsExpression().getItemType();
                if (itemType instanceof ArrayItemType) {
                    return ((ArrayItemType) itemType).getMemberType().getCardinality();
                }
            } else if (this.isMapLookup) {
                ItemType itemType2 = getLhsExpression().getItemType();
                if ((itemType2 instanceof RecordTest) && (getRhsExpression() instanceof StringLiteral)) {
                    RecordTest recordTest = (RecordTest) itemType2;
                    SequenceType fieldType = recordTest.getFieldType(((StringLiteral) getRhsExpression()).stringify());
                    return fieldType == null ? recordTest.isExtensible() ? 57344 : 8192 : fieldType.getCardinality();
                }
                if (itemType2 instanceof MapType) {
                    return Cardinality.union(((MapType) itemType2).getValueType().getCardinality(), 8192);
                }
            }
        }
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getRhsExpression().hashCode() ^ (getLhsExpression().hashCode() ^ 1097550802);
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof LookupExpression)) {
            return false;
        }
        LookupExpression lookupExpression = (LookupExpression) obj;
        return getLhsExpression().isEqual(lookupExpression.getLhsExpression()) && getRhsExpression().isEqual(lookupExpression.getRhsExpression());
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("lookup", this);
        getLhsExpression().export(expressionPresenter);
        getRhsExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public double getCost() {
        return getLhsExpression().getCost() * getRhsExpression().getCost();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "lookupExp";
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        if (this.f99311p) {
            if (this.isArrayLookup) {
                ItemType itemType = getLhsExpression().getItemType();
                if (itemType instanceof ArrayItemType) {
                    return ((ArrayItemType) itemType).getMemberType().getPrimaryType();
                }
            } else if (this.isMapLookup) {
                ItemType itemType2 = getLhsExpression().getItemType();
                if ((itemType2 instanceof RecordTest) && (getRhsExpression() instanceof StringLiteral)) {
                    RecordTest recordTest = (RecordTest) itemType2;
                    SequenceType fieldType = recordTest.getFieldType(((StringLiteral) getRhsExpression()).stringify());
                    return fieldType == null ? recordTest.isExtensible() ? AnyItemType.getInstance() : ErrorType.getInstance() : fieldType.getPrimaryType();
                }
                if (itemType2 instanceof MapType) {
                    return ((MapType) itemType2).getValueType().getPrimaryType();
                }
            }
        }
        return AnyItemType.getInstance();
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public OperandRole getOperandRole(int i) {
        return i == 0 ? OperandRole.INSPECT : OperandRole.ABSORB;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return getItemType().getUType();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        final Configuration configuration = xPathContext.getConfiguration();
        if (this.isArrayLookup) {
            if (this.isSingleContainer && this.isSingleEntry) {
                return ((ArrayItem) getLhsExpression().evaluateItem(xPathContext)).get(ArrayFunctionSet.checkSubscript((IntegerValue) getRhsExpression().evaluateItem(xPathContext), r0.arrayLength()) - 1).iterate();
            }
            if (!this.isSingleEntry) {
                SequenceIterator iterate = getLhsExpression().iterate(xPathContext);
                final GroundedValue groundedValue = SequenceTool.toGroundedValue(getRhsExpression().iterate(xPathContext));
                return MappingIterator.map(iterate, new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.t5j
                    @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                    public final SequenceIterator map(Item item) {
                        SequenceIterator m62614s;
                        m62614s = LookupExpression.m62614s(GroundedValue.this, item);
                        return m62614s;
                    }
                });
            }
            SequenceIterator iterate2 = getLhsExpression().iterate(xPathContext);
            final IntegerValue integerValue = (IntegerValue) getRhsExpression().evaluateItem(xPathContext);
            final int asSubscript = integerValue.asSubscript() - 1;
            return MappingIterator.map(iterate2, new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.s5j
                @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                public final SequenceIterator map(Item item) {
                    SequenceIterator m62613r;
                    m62613r = LookupExpression.m62613r(asSubscript, integerValue, item);
                    return m62613r;
                }
            });
        }
        if (!this.isMapLookup) {
            SequenceIterator iterate3 = getLhsExpression().iterate(xPathContext);
            final GroundedValue groundedValue2 = SequenceTool.toGroundedValue(getRhsExpression().iterate(xPathContext));
            return new MappingIterator(iterate3, SequenceMapper.m62631of(new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.w5j
                @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                public final SequenceIterator map(Item item) {
                    SequenceIterator m62617v;
                    m62617v = LookupExpression.this.m62617v(groundedValue2, configuration, item);
                    return m62617v;
                }
            }));
        }
        if (this.isSingleContainer && this.isSingleEntry) {
            return m62603B(((MapItem) getLhsExpression().evaluateItem(xPathContext)).get((AtomicValue) getRhsExpression().evaluateItem(xPathContext)));
        }
        if (this.isSingleEntry) {
            SequenceIterator iterate4 = getLhsExpression().iterate(xPathContext);
            final AtomicValue atomicValue = (AtomicValue) getRhsExpression().evaluateItem(xPathContext);
            return MappingIterator.map(iterate4, new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.u5j
                @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                public final SequenceIterator map(Item item) {
                    SequenceIterator m62615t;
                    m62615t = LookupExpression.m62615t(AtomicValue.this, item);
                    return m62615t;
                }
            });
        }
        SequenceIterator iterate5 = getLhsExpression().iterate(xPathContext);
        final GroundedValue groundedValue3 = SequenceTool.toGroundedValue(getRhsExpression().iterate(xPathContext));
        return MappingIterator.map(iterate5, new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.v5j
            @Override // net.sf.saxon.expr.SequenceMapper.Lambda
            public final SequenceIterator map(Item item) {
                SequenceIterator m62616u;
                m62616u = LookupExpression.m62616u(GroundedValue.this, item);
                return m62616u;
            }
        });
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getLhs().optimize(expressionVisitor, contextItemStaticInfo);
        getRhs().optimize(expressionVisitor, contextItemStaticInfo);
        return this;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        String parenthesize;
        if (getRhsExpression() instanceof Literal) {
            Literal literal = (Literal) getRhsExpression();
            if (literal instanceof StringLiteral) {
                StringLiteral stringLiteral = (StringLiteral) literal;
                if (NameChecker.isValidNCName(stringLiteral.getGroundedValue().codePoints())) {
                    parenthesize = stringLiteral.stringify();
                }
            }
            parenthesize = literal.getGroundedValue() instanceof Int64Value ? literal.getGroundedValue().toString() : ExpressionTool.parenthesize(literal);
        } else {
            parenthesize = ExpressionTool.parenthesize(getRhsExpression());
        }
        return ExpressionTool.parenthesize(getLhsExpression()) + "?" + parenthesize;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        if (Literal.isEmptySequence(getLhsExpression())) {
            return getLhsExpression();
        }
        ItemType itemType = getLhsExpression().getItemType();
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        ItemType itemType2 = getLhsExpression().getItemType();
        this.isArrayLookup = itemType2 instanceof ArrayItemType;
        boolean z = itemType2 instanceof TupleType;
        boolean z2 = z || (itemType instanceof TupleType);
        this.isMapLookup = (itemType2 instanceof MapType) || z2;
        if (typeHierarchy.isSubType(itemType2, AnyExternalObjectType.THE_INSTANCE)) {
            configuration.checkLicensedFeature(8, "use of lookup expressions on external objects", -1);
            return configuration.makeObjectLookupExpression(getLhsExpression(), getRhsExpression()).typeCheck(expressionVisitor, contextItemStaticInfo);
        }
        this.isSingleContainer = getLhsExpression().getCardinality() == 16384;
        if (!this.isArrayLookup && !this.isMapLookup) {
            Affinity relationship = typeHierarchy.relationship(itemType2, MapType.ANY_MAP_TYPE);
            Affinity affinity = Affinity.DISJOINT;
            if (relationship == affinity && typeHierarchy.relationship(itemType2, AnyFunctionType.getInstance()) == affinity && typeHierarchy.relationship(itemType2, AnyExternalObjectType.THE_INSTANCE) == affinity) {
                if (!Cardinality.allowsZero(getLhsExpression().getCardinality())) {
                    XPathException xPathException = new XPathException("The left-hand operand of '?' must be a map or an array; the supplied expression is of type " + itemType2, "XPTY0004");
                    xPathException.setLocation(getLocation());
                    xPathException.setIsTypeError(true);
                    xPathException.setFailingExpression(this);
                    throw xPathException;
                }
                expressionVisitor.issueWarning("The left-hand operand of '?' must be a map or an array; the expression can succeed only if the operand is an empty sequence " + itemType2, getLocation());
            }
        }
        getRhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(1, "?", 1);
        TypeChecker typeChecker = configuration.getTypeChecker(false);
        SequenceType zeroOrMore = BuiltInAtomicType.ANY_ATOMIC.zeroOrMore();
        if (this.isArrayLookup) {
            zeroOrMore = BuiltInAtomicType.INTEGER.zeroOrMore();
        }
        setRhsExpression(typeChecker.staticTypeCheck(getRhsExpression(), zeroOrMore, roleDiagnostic, expressionVisitor));
        this.isSingleEntry = getRhsExpression().getCardinality() == 16384;
        if (z2 && (getRhsExpression() instanceof StringLiteral)) {
            if (z) {
                itemType = itemType2;
            }
            TupleType tupleType = (TupleType) itemType;
            if (!tupleType.isExtensible()) {
                String stringify = ((StringLiteral) getRhsExpression()).stringify();
                if (tupleType.getFieldType(stringify) == null) {
                    XPathException xPathException2 = new XPathException("Field '" + stringify + "' is not defined in the record type", "XPTY0004");
                    xPathException2.setIsTypeError(true);
                    xPathException2.setLocation(getLocation());
                    throw xPathException2;
                }
            }
        }
        this.f99311p = true;
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public LookupExpression copy(RebindingMap rebindingMap) {
        LookupExpression lookupExpression = new LookupExpression(getLhsExpression().copy(rebindingMap), getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, lookupExpression);
        lookupExpression.isArrayLookup = this.isArrayLookup;
        lookupExpression.isMapLookup = this.isMapLookup;
        lookupExpression.isSingleEntry = this.isSingleEntry;
        lookupExpression.isSingleContainer = this.isSingleContainer;
        return lookupExpression;
    }
}
