package net.p110sf.saxon.expr;

import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.arrays.SquareArrayConstructor;
import net.p110sf.saxon.ma.map.KeyValuePair;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.ma.map.TupleType;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public class LookupAllExpression extends UnaryExpression {

    /* renamed from: net.sf.saxon.expr.LookupAllExpression$a */
    /* loaded from: classes11.dex */
    public class C18304a implements SequenceIterator {

        /* renamed from: e */
        public final SequenceIterator f99305e;

        /* renamed from: f */
        public Iterator<GroundedValue> f99306f = null;

        /* renamed from: g */
        public Iterator<KeyValuePair> f99307g = null;

        /* renamed from: h */
        public SequenceIterator f99308h = null;

        /* renamed from: i */
        public final /* synthetic */ XPathContext f99309i;

        public C18304a(XPathContext xPathContext) throws XPathException {
            this.f99309i = xPathContext;
            this.f99305e = LookupAllExpression.this.getBaseExpression().iterate(xPathContext);
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            SequenceIterator sequenceIterator = this.f99305e;
            if (sequenceIterator != null) {
                sequenceIterator.close();
            }
            SequenceIterator sequenceIterator2 = this.f99308h;
            if (sequenceIterator2 != null) {
                sequenceIterator2.close();
            }
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            SequenceIterator sequenceIterator = this.f99305e;
            if (sequenceIterator != null) {
                sequenceIterator.discharge();
            }
            SequenceIterator sequenceIterator2 = this.f99308h;
            if (sequenceIterator2 != null) {
                sequenceIterator2.discharge();
            }
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            SequenceIterator sequenceIterator = this.f99308h;
            if (sequenceIterator != null) {
                Item next = sequenceIterator.next();
                if (next != null) {
                    return next;
                }
                this.f99308h = null;
                return next();
            }
            Iterator<GroundedValue> it2 = this.f99306f;
            if (it2 != null || this.f99307g != null) {
                if (it2 == null || !it2.hasNext()) {
                    Iterator<KeyValuePair> it3 = this.f99307g;
                    if (it3 == null || !it3.hasNext()) {
                        this.f99307g = null;
                        this.f99306f = null;
                    } else {
                        this.f99308h = this.f99307g.next().value.iterate();
                    }
                } else {
                    this.f99308h = this.f99306f.next().iterate();
                }
                return next();
            }
            Item next2 = this.f99305e.next();
            if (next2 == null) {
                return null;
            }
            if (next2 instanceof ArrayItem) {
                this.f99306f = ((ArrayItem) next2).members().iterator();
                return next();
            }
            if (next2 instanceof MapItem) {
                this.f99307g = ((MapItem) next2).keyValuePairs().iterator();
                return next();
            }
            try {
                LookupExpression.mustBeArrayOrMap(LookupAllExpression.this, next2);
                return null;
            } catch (XPathException e) {
                throw new UncheckedXPathException(e);
            }
        }
    }

    public LookupAllExpression(Expression expression) {
        super(expression);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getBaseExpression().hashCode() ^ (-1140699737);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof LookupAllExpression) {
            return getBaseExpression().isEqual(((LookupAllExpression) obj).getBaseExpression());
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("lookupAll", this);
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public double getCost() {
        return getBaseExpression().getCost() + 1.0d;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        ItemType itemType = getBaseExpression().getItemType();
        return itemType instanceof MapType ? ((MapType) itemType).getValueType().getPrimaryType() : itemType instanceof ArrayItemType ? ((ArrayItemType) itemType).getMemberType().getPrimaryType() : AnyItemType.getInstance();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.INSPECT;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return getItemType().getUType();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return new C18304a(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().optimize(expressionVisitor, contextItemStaticInfo);
        if (getBaseExpression() instanceof Literal) {
            return new Literal(SequenceTool.toGroundedValue(iterate(expressionVisitor.makeDynamicContext())));
        }
        if (!(getBaseExpression() instanceof SquareArrayConstructor)) {
            return this;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Operand> it2 = getBaseExpression().operands().iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getChildExpression().copy(new RebindingMap()));
        }
        Block block = new Block((Expression[]) arrayList.toArray(new Expression[0]));
        ExpressionTool.copyLocationInfo(this, block);
        return block;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getBaseExpression().toShortString() + "?*";
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return ExpressionTool.parenthesize(getBaseExpression()) + "?*";
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        ItemType itemType = getBaseExpression().getItemType();
        boolean z = itemType instanceof ArrayItemType;
        boolean z2 = (itemType instanceof MapType) || (itemType instanceof TupleType);
        if (!z && !z2) {
            Affinity relationship = typeHierarchy.relationship(itemType, MapType.ANY_MAP_TYPE);
            Affinity affinity = Affinity.DISJOINT;
            if (relationship == affinity && typeHierarchy.relationship(itemType, AnyFunctionType.getInstance()) == affinity) {
                if (!Cardinality.allowsZero(getBaseExpression().getCardinality())) {
                    XPathException xPathException = new XPathException("The left-hand operand of '?' must be a map or an array; the supplied expression is of type " + itemType, "XPTY0004");
                    xPathException.setLocation(getLocation());
                    xPathException.setIsTypeError(true);
                    xPathException.setFailingExpression(this);
                    throw xPathException;
                }
                expressionVisitor.issueWarning("The left-hand operand of '?' must be a map or an array; the expression can succeed only if the operand is an empty sequence " + itemType, getLocation());
            }
        }
        return getBaseExpression() instanceof Literal ? new Literal(SequenceTool.toGroundedValue(iterate(expressionVisitor.makeDynamicContext()))) : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public LookupAllExpression copy(RebindingMap rebindingMap) {
        return new LookupAllExpression(getBaseExpression().copy(rebindingMap));
    }
}
