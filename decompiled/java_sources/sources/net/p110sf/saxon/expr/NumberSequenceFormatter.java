package net.p110sf.saxon.expr;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.number.NumberFormatter;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.functions.Number_1;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.Numberer;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BigIntegerValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class NumberSequenceFormatter extends Expression {

    /* renamed from: n */
    public Operand f99318n;

    /* renamed from: o */
    public Operand f99319o;

    /* renamed from: p */
    public Operand f99320p;

    /* renamed from: q */
    public Operand f99321q;

    /* renamed from: r */
    public Operand f99322r;

    /* renamed from: s */
    public Operand f99323s;

    /* renamed from: t */
    public final Operand f99324t;

    /* renamed from: u */
    public Operand f99325u;

    /* renamed from: v */
    public NumberFormatter f99326v;

    /* renamed from: w */
    public Numberer f99327w = null;

    /* renamed from: x */
    public final boolean f99328x;

    public NumberSequenceFormatter(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, NumberFormatter numberFormatter, boolean z) {
        this.f99326v = null;
        if (expression != null) {
            this.f99318n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        }
        if (expression2 != null) {
            this.f99319o = new Operand(this, expression2, OperandRole.SINGLE_ATOMIC);
        }
        if (expression3 != null) {
            this.f99320p = new Operand(this, expression3, OperandRole.SINGLE_ATOMIC);
        }
        if (expression4 != null) {
            this.f99321q = new Operand(this, expression4, OperandRole.SINGLE_ATOMIC);
        }
        if (expression5 != null) {
            this.f99322r = new Operand(this, expression5, OperandRole.SINGLE_ATOMIC);
        }
        if (expression6 != null) {
            this.f99323s = new Operand(this, expression6, OperandRole.SINGLE_ATOMIC);
        }
        OperandRole operandRole = OperandRole.SINGLE_ATOMIC;
        this.f99324t = new Operand(this, expression7, operandRole);
        if (expression8 != null) {
            this.f99325u = new Operand(this, expression8, operandRole);
        }
        this.f99326v = numberFormatter;
        this.f99328x = z;
        if (numberFormatter == null && (expression2 instanceof StringLiteral)) {
            NumberFormatter numberFormatter2 = new NumberFormatter();
            this.f99326v = numberFormatter2;
            numberFormatter2.prepare(((StringLiteral) expression2).stringify());
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        NumberSequenceFormatter numberSequenceFormatter = new NumberSequenceFormatter(m62621d(this.f99318n, rebindingMap), m62621d(this.f99319o, rebindingMap), m62621d(this.f99320p, rebindingMap), m62621d(this.f99321q, rebindingMap), m62621d(this.f99322r, rebindingMap), m62621d(this.f99323s, rebindingMap), m62621d(this.f99324t, rebindingMap), m62621d(this.f99325u, rebindingMap), this.f99326v, this.f99328x);
        ExpressionTool.copyLocationInfo(this, numberSequenceFormatter);
        return numberSequenceFormatter;
    }

    /* renamed from: d */
    public final Expression m62621d(Operand operand, RebindingMap rebindingMap) {
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression().copy(rebindingMap);
    }

    /* renamed from: e */
    public final boolean m62622e() {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            if (!m62623g(it2.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("numSeqFmt", this);
        String str = "";
        if (this.f99328x) {
            str = "1";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        if (this.f99318n != null) {
            expressionPresenter.setChildRole("value");
            this.f99318n.getChildExpression().export(expressionPresenter);
        }
        if (this.f99319o != null) {
            expressionPresenter.setChildRole(Constants.ATTRNAME_FORMAT);
            this.f99319o.getChildExpression().export(expressionPresenter);
        }
        if (this.f99324t != null) {
            expressionPresenter.setChildRole("startAt");
            this.f99324t.getChildExpression().export(expressionPresenter);
        }
        if (this.f99325u != null) {
            expressionPresenter.setChildRole("lang");
            this.f99325u.getChildExpression().export(expressionPresenter);
        }
        if (this.f99323s != null) {
            expressionPresenter.setChildRole("ordinal");
            this.f99323s.getChildExpression().export(expressionPresenter);
        }
        if (this.f99321q != null) {
            expressionPresenter.setChildRole("gpSep");
            this.f99321q.getChildExpression().export(expressionPresenter);
        }
        if (this.f99320p != null) {
            expressionPresenter.setChildRole("gpSize");
            this.f99320p.getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    /* renamed from: g */
    public final boolean m62623g(Operand operand) {
        return operand == null || (operand.getChildExpression() instanceof Literal);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.STRING;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandSparseList(this.f99318n, this.f99319o, this.f99320p, this.f99321q, this.f99322r, this.f99323s, this.f99324t, this.f99325u);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        optimizeChildren(expressionVisitor, contextItemStaticInfo);
        if (!m62622e()) {
            return this;
        }
        StringLiteral stringLiteral = new StringLiteral(evaluateItem(expressionVisitor.makeDynamicContext()));
        ExpressionTool.copyLocationInfo(this, stringLiteral);
        return stringLiteral;
    }

    public List<Integer> parseStartAtValue(String str) throws XPathException {
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split("\\s+")) {
            try {
                arrayList.add(Integer.valueOf(Integer.parseInt(str2)));
            } catch (NumberFormatException unused) {
                XPathException xPathException = new XPathException("Invalid start-at value: non-integer component {" + str2 + "}");
                xPathException.setErrorCode("XTDE0030");
                xPathException.setLocation(getLocation());
                throw xPathException;
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        XPathException xPathException2 = new XPathException("Invalid start-at value: no numeric components found");
        xPathException2.setErrorCode("XTDE0030");
        xPathException2.setLocation(getLocation());
        throw xPathException2;
    }

    public void preallocateNumberer(Configuration configuration) throws XPathException {
        Operand operand = this.f99325u;
        if (operand == null) {
            this.f99327w = configuration.makeNumberer(null, null);
            return;
        }
        if (operand.getChildExpression() instanceof StringLiteral) {
            String stringify = ((StringLiteral) this.f99325u.getChildExpression()).stringify();
            if (stringify.isEmpty() || StringConverter.StringToLanguage.INSTANCE.validate(StringView.tidy(stringify)) == null) {
                this.f99327w = configuration.makeNumberer(stringify, null);
            } else {
                this.f99325u.setChildExpression(new StringLiteral(StringValue.EMPTY_STRING));
                throw new XPathException("The lang attribute must be a valid language code", "XTDE0030");
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        Operand operand = this.f99318n;
        if (operand != null && !operand.getChildExpression().getItemType().isPlainType()) {
            Operand operand2 = this.f99318n;
            operand2.setChildExpression(Atomizer.makeAtomizer(operand2.getChildExpression(), null));
        }
        preallocateNumberer(getConfiguration());
        return super.simplify();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public StringValue evaluateItem(XPathContext xPathContext) throws XPathException {
        String str;
        NumericValue convert;
        ArrayList arrayList = new ArrayList(4);
        ConversionRules conversionRules = xPathContext.getConfiguration().getConversionRules();
        List<Integer> parseStartAtValue = parseStartAtValue(this.f99324t.getChildExpression().evaluateAsString(xPathContext).toString());
        SequenceIterator iterate = this.f99318n.getChildExpression().iterate(xPathContext);
        int i = 0;
        int i2 = 0;
        while (true) {
            AtomicValue atomicValue = (AtomicValue) iterate.next();
            if (atomicValue == null || (this.f99328x && !arrayList.isEmpty())) {
                break;
            }
            int intValue = (parseStartAtValue.size() > i2 ? parseStartAtValue.get(i2) : parseStartAtValue.get(parseStartAtValue.size() - 1)).intValue();
            i2++;
            try {
                if (atomicValue instanceof NumericValue) {
                    convert = (NumericValue) atomicValue;
                } else {
                    convert = Number_1.convert(atomicValue, xPathContext.getConfiguration());
                }
            } catch (XPathException e) {
                if (this.f99328x) {
                    arrayList.add("NaN");
                } else {
                    arrayList.add(atomicValue.getUnicodeStringValue());
                    XPathException xPathException = new XPathException("Cannot convert supplied value to an integer. " + e.getMessage());
                    xPathException.setErrorCode("XTDE0980");
                    xPathException.setLocation(getLocation());
                    xPathException.setXPathContext(xPathContext);
                    throw xPathException;
                }
            }
            if (!convert.isNaN()) {
                NumericValue round = convert.round(0);
                if (round.compareTo((XPathComparable) Int64Value.MAX_LONG) > 0) {
                    BigInteger asBigInteger = ((BigIntegerValue) Converter.convert(round, BuiltInAtomicType.INTEGER, conversionRules).asAtomic()).asBigInteger();
                    if (intValue != 1) {
                        asBigInteger = asBigInteger.add(BigInteger.valueOf(intValue - 1));
                    }
                    arrayList.add(asBigInteger);
                } else if (round.compareTo((XPathComparable) Int64Value.ZERO) >= 0) {
                    arrayList.add(Long.valueOf(((NumericValue) Converter.convert(round, BuiltInAtomicType.INTEGER, conversionRules).asAtomic()).longValue() + (intValue - 1)));
                } else {
                    throw new XPathException("The numbers to be formatted must not be negative");
                }
            } else {
                throw new XPathException("NaN");
            }
        }
        if (this.f99328x && arrayList.isEmpty()) {
            arrayList.add("NaN");
        }
        Operand operand = this.f99320p;
        if (operand != null) {
            try {
                i = Integer.parseInt(operand.getChildExpression().evaluateAsString(xPathContext).toString());
            } catch (NumberFormatException unused) {
                XPathException xPathException2 = new XPathException("grouping-size must be numeric");
                xPathException2.setXPathContext(xPathContext);
                xPathException2.setErrorCode("XTDE0030");
                xPathException2.setLocation(getLocation());
                throw xPathException2;
            }
        }
        Operand operand2 = this.f99321q;
        String obj = operand2 != null ? operand2.getChildExpression().evaluateAsString(xPathContext).toString() : "";
        Operand operand3 = this.f99323s;
        String obj2 = operand3 != null ? operand3.getChildExpression().evaluateAsString(xPathContext).toString() : null;
        Numberer numberer = this.f99327w;
        if (numberer == null) {
            Operand operand4 = this.f99325u;
            if (operand4 == null) {
                numberer = xPathContext.getConfiguration().makeNumberer(null, null);
            } else {
                String obj3 = operand4.getChildExpression().evaluateAsString(xPathContext).toString();
                if (StringConverter.StringToLanguage.INSTANCE.validate(StringView.tidy(obj3)) == null) {
                    numberer = xPathContext.getConfiguration().makeNumberer(obj3, null);
                } else {
                    throw new XPathException("The lang attribute of xsl:number must be a valid language code", "XTDE0030");
                }
            }
        }
        Numberer numberer2 = numberer;
        Operand operand5 = this.f99322r;
        if (operand5 == null) {
            str = "";
        } else {
            String obj4 = operand5.getChildExpression().evaluateAsString(xPathContext).toString();
            if (!Constants.ATTRVAL_ALPHABETIC.equals(obj4) && !Constants.ATTRVAL_TRADITIONAL.equals(obj4)) {
                XPathException xPathException3 = new XPathException("letter-value must be \"traditional\" or \"alphabetic\"");
                xPathException3.setXPathContext(xPathContext);
                xPathException3.setErrorCode("XTDE0030");
                xPathException3.setLocation(getLocation());
                throw xPathException3;
            }
            str = obj4;
        }
        NumberFormatter numberFormatter = this.f99326v;
        if (numberFormatter == null) {
            numberFormatter = new NumberFormatter();
            numberFormatter.prepare(this.f99319o.getChildExpression().evaluateAsString(xPathContext).toString());
        }
        return new StringValue(numberFormatter.format(arrayList, i, obj, str, obj2, numberer2));
    }
}
