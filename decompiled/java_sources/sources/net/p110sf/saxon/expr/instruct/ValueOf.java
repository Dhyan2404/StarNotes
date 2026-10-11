package net.p110sf.saxon.expr.instruct;

import java.util.function.BiConsumer;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.ProxyOutputter;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.expr.CastExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UniStringConsumer;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public final class ValueOf extends SimpleNodeConstructor {

    /* renamed from: q */
    public static final /* synthetic */ boolean f99861q = false;

    /* renamed from: n */
    public int f99862n;

    /* renamed from: o */
    public boolean f99863o = false;

    /* renamed from: p */
    public final boolean f99864p;

    /* renamed from: net.sf.saxon.expr.instruct.ValueOf$a */
    /* loaded from: classes11.dex */
    public class C18319a extends ProxyOutputter {

        /* renamed from: f */
        public final /* synthetic */ Location f99865f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18319a(Outputter outputter, Location location) {
            super(outputter);
            this.f99865f = location;
        }

        @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
        public void append(Item item) throws XPathException {
            getNextOutputter().characters(item.getUnicodeStringValue(), this.f99865f, ValueOf.this.f99862n);
        }

        @Override // net.p110sf.saxon.event.Outputter
        public UniStringConsumer getStringReceiver(boolean z, Location location) {
            if (location.getLineNumber() == -1) {
                location = this.f99865f;
            }
            return getNextOutputter().getStringReceiver(true, location);
        }

        @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
        /* renamed from: append */
        public void m62486h(Item item, Location location, int i) throws XPathException {
            if (location.getLineNumber() == -1) {
                location = this.f99865f;
            }
            getNextOutputter().characters(item.getUnicodeStringValue(), location, ValueOf.this.f99862n | i);
        }
    }

    public ValueOf(Expression expression, boolean z, boolean z2) {
        boolean z3 = false;
        setSelect(expression);
        this.f99862n = z ? 1 : 0;
        this.f99864p = z2;
        adoptChildExpression(expression);
        if (expression instanceof StringLiteral) {
            IntIterator codePoints = ((StringLiteral) expression).getString().codePoints();
            while (codePoints.hasNext()) {
                int next = codePoints.next();
                if (next < 33 || next > 126 || next == 60 || next == 62 || next == 38) {
                    z3 = true;
                    break;
                }
            }
            if (z3) {
                return;
            }
            this.f99862n |= 4;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        SimpleType simpleType;
        if (getSelect() instanceof Literal) {
            GroundedValue groundedValue = ((Literal) getSelect()).getGroundedValue();
            if ((schemaType instanceof SimpleType) && z) {
                simpleType = (SimpleType) schemaType;
            } else {
                if (schemaType instanceof ComplexType) {
                    ComplexType complexType = (ComplexType) schemaType;
                    if (complexType.isSimpleContent()) {
                        simpleType = complexType.getSimpleContentType();
                    }
                }
                simpleType = null;
            }
            if (z && simpleType != null && !simpleType.isNamespaceSensitive()) {
                ValidationFailure validateContent = simpleType.validateContent(groundedValue.getUnicodeStringValue(), null, getConfiguration().getConversionRules());
                if (validateContent != null) {
                    validateContent.setLocator(getLocation());
                    validateContent.setErrorCode(isXSLT() ? "XTTE1540" : "XQDY0027");
                    throw validateContent.makeException();
                }
                return;
            }
            if (schemaType instanceof ComplexType) {
                ComplexType complexType2 = (ComplexType) schemaType;
                if (complexType2.isSimpleContent() || complexType2.isMixedContent() || Whitespace.isAllWhite(groundedValue.getUnicodeStringValue())) {
                    return;
                }
                XPathException xPathException = new XPathException("The containing element must be of type " + schemaType.getDescription() + ", which does not allow text content " + Err.wrap(groundedValue.getUnicodeStringValue()));
                xPathException.setLocation(getLocation());
                xPathException.setIsTypeError(true);
                throw xPathException;
            }
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return this.f99864p ? 24576 : 16384;
    }

    public Expression convertToCastAsString() {
        return (this.f99864p || !Cardinality.allowsZero(getSelect().getCardinality())) ? new CastExpression(getSelect(), BuiltInAtomicType.UNTYPED_ATOMIC, true) : new CastExpression(SystemFunction.makeCall("string", getRetainedStaticContext(), getSelect()), BuiltInAtomicType.UNTYPED_ATOMIC, false);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ValueOf valueOf = new ValueOf(getSelect().copy(rebindingMap), ReceiverOption.contains(this.f99862n, 1), this.f99864p);
        ExpressionTool.copyLocationInfo(this, valueOf);
        if (this.f99863o) {
            valueOf.setIsNumberingInstruction();
        }
        return valueOf;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("valueOf", this);
        String str = "";
        if (isDisableOutputEscaping()) {
            str = "d";
        }
        if (ReceiverOption.contains(this.f99862n, 4)) {
            str = str + "S";
        }
        if (this.f99864p) {
            str = str + "e";
        }
        if (isLocal()) {
            str = str + "l";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        getSelect().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public void gatherProperties(BiConsumer<String, Object> biConsumer) {
        if (getSelect() instanceof StringLiteral) {
            biConsumer.accept("text", ((StringLiteral) getSelect()).getGroundedValue().getUnicodeStringValue());
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        if (this.f99863o) {
            return 186;
        }
        return getSelect() instanceof StringLiteral ? 211 : 215;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        int intrinsicDependencies = super.getIntrinsicDependencies();
        return isDisableOutputEscaping() ? intrinsicDependencies | 512 : intrinsicDependencies;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return NodeKindTest.TEXT;
    }

    public int getOptions() {
        return this.f99862n;
    }

    public boolean isDisableOutputEscaping() {
        return ReceiverOption.contains(this.f99862n, 1);
    }

    public boolean isNoNodeIfEmpty() {
        return this.f99864p;
    }

    public boolean isNumberingInstruction() {
        return this.f99863o;
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public void localTypeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) {
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        if (this.f99864p) {
            Item evaluateItem = getSelect().evaluateItem(xPathContext);
            if (evaluateItem != null) {
                processValue(evaluateItem.getUnicodeStringValue(), outputter, xPathContext);
            }
            return null;
        }
        if (getSelect().getItemType() != BuiltInAtomicType.STRING || isDisableOutputEscaping() || Cardinality.allowsZero(getCardinality())) {
            return super.processLeavingTail(outputter, xPathContext);
        }
        getSelect().process(new C18319a(outputter, getLocation()), xPathContext);
        return null;
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public void processValue(UnicodeString unicodeString, Outputter outputter, XPathContext xPathContext) throws XPathException {
        outputter.characters(unicodeString, getLocation(), this.f99862n);
    }

    public void setIsNumberingInstruction() {
        this.f99863o = true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        if (!(getSelect() instanceof StringLiteral)) {
            return super.toShortString();
        }
        return "text{" + Err.depict(((StringLiteral) getSelect()).getGroundedValue()) + "}";
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public NodeInfo evaluateItem(XPathContext xPathContext) throws XPathException {
        UnicodeString unicodeStringValue;
        try {
            Item evaluateItem = getSelect().evaluateItem(xPathContext);
            if (evaluateItem == null) {
                if (this.f99864p) {
                    return null;
                }
                unicodeStringValue = EmptyUnicodeString.getInstance();
            } else {
                unicodeStringValue = evaluateItem.getUnicodeStringValue();
            }
            Orphan orphan = new Orphan(xPathContext.getController().getConfiguration());
            orphan.setNodeKind((short) 3);
            orphan.setStringValue(unicodeStringValue);
            if (isDisableOutputEscaping()) {
                orphan.setDisableOutputEscaping(true);
            }
            return orphan;
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            throw e;
        }
    }
}
