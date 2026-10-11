package net.p110sf.saxon.expr.instruct;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.ContextMappingFunction;
import net.p110sf.saxon.expr.ContextMappingIterator;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.AnalyzeString;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.regex.RegexIterator;
import net.p110sf.saxon.regex.RegularExpression;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class AnalyzeString extends Instruction implements ContextOriginator {

    /* renamed from: t */
    public static final OperandRole f99600t = new OperandRole(6, OperandUsage.NAVIGATION);

    /* renamed from: u */
    public static final OperandRole f99601u = new OperandRole(1, OperandUsage.ABSORPTION, SequenceType.SINGLE_STRING);

    /* renamed from: n */
    public final Operand f99602n;

    /* renamed from: o */
    public final Operand f99603o;

    /* renamed from: p */
    public final Operand f99604p;

    /* renamed from: q */
    public Operand f99605q;

    /* renamed from: r */
    public Operand f99606r;

    /* renamed from: s */
    public RegularExpression f99607s;

    public AnalyzeString(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, RegularExpression regularExpression) {
        this.f99602n = new Operand(this, expression, f99601u);
        OperandRole operandRole = OperandRole.SINGLE_ATOMIC;
        this.f99603o = new Operand(this, expression2, operandRole);
        this.f99604p = new Operand(this, expression3, operandRole);
        if (expression4 != null) {
            this.f99605q = new Operand(this, expression4, f99600t);
        }
        if (expression5 != null) {
            this.f99606r = new Operand(this, expression5, f99600t);
        }
        this.f99607s = regularExpression;
    }

    /* renamed from: i */
    public static /* synthetic */ SequenceIterator m62716i(RegexIterator regexIterator, Expression expression, XPathContextMajor xPathContextMajor, Expression expression2, XPathContext xPathContext) throws XPathException {
        if (regexIterator.isMatching()) {
            if (expression != null) {
                return expression.iterate(xPathContextMajor);
            }
        } else if (expression2 != null) {
            return expression2.iterate(xPathContextMajor);
        }
        return EmptyIterator.getInstance();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean allowExtractingCommonSubexpressions() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        if (getMatching() != null) {
            getMatching().checkPermittedContents(schemaType, false);
        }
        if (getNonMatching() != null) {
            getNonMatching().checkPermittedContents(schemaType, false);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeDependencies() {
        int dependencies = getSelect().getDependencies() | 0 | getRegex().getDependencies() | getFlags().getDependencies();
        if (getMatching() != null) {
            dependencies |= getMatching().getDependencies() & (-95);
        }
        return getNonMatching() != null ? dependencies | (getNonMatching().getDependencies() & (-95)) : dependencies;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        AnalyzeString analyzeString = new AnalyzeString(m62717e(getSelect(), rebindingMap), m62717e(getRegex(), rebindingMap), m62717e(getFlags(), rebindingMap), m62717e(getMatching(), rebindingMap), m62717e(getNonMatching(), rebindingMap), this.f99607s);
        ExpressionTool.copyLocationInfo(this, analyzeString);
        return analyzeString;
    }

    /* renamed from: e */
    public final Expression m62717e(Expression expression, RebindingMap rebindingMap) {
        if (expression == null) {
            return null;
        }
        return expression.copy(rebindingMap);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("analyzeString", this);
        expressionPresenter.setChildRole("select");
        getSelect().export(expressionPresenter);
        expressionPresenter.setChildRole("regex");
        getRegex().export(expressionPresenter);
        expressionPresenter.setChildRole("flags");
        getFlags().export(expressionPresenter);
        if (getMatching() != null) {
            expressionPresenter.setChildRole("matching");
            getMatching().export(expressionPresenter);
        }
        if (getNonMatching() != null) {
            expressionPresenter.setChildRole("nonMatching");
            getNonMatching().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    /* renamed from: g */
    public final RegexIterator m62718g(XPathContext xPathContext) throws XPathException {
        StringValue stringValue = (StringValue) getSelect().evaluateItem(xPathContext);
        if (stringValue == null) {
            stringValue = StringValue.EMPTY_STRING;
        }
        RegularExpression regularExpression = this.f99607s;
        if (regularExpression == null) {
            regularExpression = xPathContext.getConfiguration().compileRegularExpression(((StringValue) getRegex().evaluateItem(xPathContext)).getUnicodeStringValue(), getFlags().evaluateAsString(xPathContext).toString(), "XP30", null);
        }
        return regularExpression.analyze(stringValue.getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "analyzeString";
    }

    public Expression getFlags() {
        return this.f99604p.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 6;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 131;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        if (getMatching() == null) {
            return getNonMatching() != null ? getNonMatching().getItemType() : ErrorType.getInstance();
        }
        if (getNonMatching() != null) {
            return Type.getCommonSuperType(getMatching().getItemType(), getNonMatching().getItemType(), getConfiguration().getTypeHierarchy());
        }
        return getMatching().getItemType();
    }

    public Expression getMatching() {
        Operand operand = this.f99605q;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Expression getNonMatching() {
        Operand operand = this.f99606r;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public RegularExpression getPatternExpression() {
        return this.f99607s;
    }

    public Expression getRegex() {
        return this.f99603o.getChildExpression();
    }

    public Expression getSelect() {
        return this.f99602n.getChildExpression();
    }

    /* renamed from: h */
    public final void m62719h(String str, String str2) throws XPathException {
        this.f99607s = null;
        XPathException xPathException = new XPathException(str, str2);
        xPathException.setLocation(getLocation());
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        final RegexIterator m62718g = m62718g(xPathContext);
        final XPathContextMajor newContext = xPathContext.newContext();
        newContext.setOrigin(this);
        newContext.trackFocus(m62718g);
        newContext.setCurrentRegexIterator(m62718g);
        final Expression matching = getMatching();
        final Expression nonMatching = getNonMatching();
        return new ContextMappingIterator(new ContextMappingFunction() { // from class: com.sunia.HTREnginev2.da
            @Override // net.p110sf.saxon.expr.ContextMappingFunction
            public final SequenceIterator map(XPathContext xPathContext2) {
                SequenceIterator m62716i;
                m62716i = AnalyzeString.m62716i(RegexIterator.this, matching, newContext, nonMatching, xPathContext2);
                return m62716i;
            }
        }, newContext);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandSparseList(this.f99602n, this.f99603o, this.f99604p, this.f99605q, this.f99606r);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        this.f99602n.optimize(expressionVisitor, contextItemStaticInfo);
        this.f99603o.optimize(expressionVisitor, contextItemStaticInfo);
        this.f99604p.optimize(expressionVisitor, contextItemStaticInfo);
        Operand operand = this.f99605q;
        if (operand != null) {
            operand.optimize(expressionVisitor, configuration.makeContextItemStaticInfo(BuiltInAtomicType.STRING, false));
        }
        Operand operand2 = this.f99606r;
        if (operand2 != null) {
            operand2.optimize(expressionVisitor, configuration.makeContextItemStaticInfo(BuiltInAtomicType.STRING, false));
        }
        ArrayList arrayList = new ArrayList();
        precomputeRegex(configuration, arrayList);
        Iterator<String> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            expressionVisitor.getStaticContext().issueWarning(it2.next(), getLocation());
        }
        return this;
    }

    public void precomputeRegex(Configuration configuration, List<String> list) throws XPathException {
        if (this.f99607s == null && (getRegex() instanceof StringLiteral) && (getFlags() instanceof StringLiteral)) {
            try {
                this.f99607s = configuration.compileRegularExpression(StringView.tidy(((StringLiteral) getRegex()).stringify()), ((StringLiteral) getFlags()).stringify(), "XP30", list);
            } catch (XPathException e) {
                if ("XTDE1150".equals(e.getErrorCodeLocalPart())) {
                    throw e;
                }
                if ("FORX0001".equals(e.getErrorCodeLocalPart())) {
                    m62719h("Error in regular expression flags: " + e, "FORX0001");
                    return;
                }
                m62719h("Error in regular expression: " + e, e.getErrorCodeLocalPart());
            }
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        RegexIterator m62718g = m62718g(xPathContext);
        XPathContextMajor newContext = xPathContext.newContext();
        newContext.setOrigin(this);
        FocusIterator trackFocus = newContext.trackFocus(m62718g);
        newContext.setCurrentRegexIterator(m62718g);
        PipelineConfiguration pipelineConfiguration = outputter.getPipelineConfiguration();
        pipelineConfiguration.setXPathContext(newContext);
        while (trackFocus.next() != null) {
            if (m62718g.isMatching()) {
                if (getMatching() != null) {
                    getMatching().process(outputter, newContext);
                }
            } else if (getNonMatching() != null) {
                getNonMatching().process(outputter, newContext);
            }
        }
        pipelineConfiguration.setXPathContext(xPathContext);
        return null;
    }

    public void setFlags(Expression expression) {
        this.f99604p.setChildExpression(expression);
    }

    public void setMatching(Expression expression) {
        Operand operand = this.f99605q;
        if (operand != null) {
            operand.setChildExpression(expression);
        } else {
            this.f99605q = new Operand(this, expression, f99600t);
        }
    }

    public void setNonMatching(Expression expression) {
        Operand operand = this.f99606r;
        if (operand != null) {
            operand.setChildExpression(expression);
        } else {
            this.f99606r = new Operand(this, expression, f99600t);
        }
    }

    public void setRegex(Expression expression) {
        this.f99603o.setChildExpression(expression);
    }

    public void setSelect(Expression expression) {
        this.f99602n.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        this.f99602n.typeCheck(expressionVisitor, contextItemStaticInfo);
        this.f99603o.typeCheck(expressionVisitor, contextItemStaticInfo);
        this.f99604p.typeCheck(expressionVisitor, contextItemStaticInfo);
        Operand operand = this.f99605q;
        if (operand != null) {
            operand.typeCheck(expressionVisitor, configuration.makeContextItemStaticInfo(BuiltInAtomicType.STRING, false));
        }
        Operand operand2 = this.f99606r;
        if (operand2 != null) {
            operand2.typeCheck(expressionVisitor, configuration.makeContextItemStaticInfo(BuiltInAtomicType.STRING, false));
        }
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(false);
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "analyze-string/select", 0);
        setSelect(typeChecker.staticTypeCheck(getSelect(), SequenceType.OPTIONAL_STRING, roleDiagnostic, expressionVisitor));
        RoleDiagnostic roleDiagnostic2 = new RoleDiagnostic(4, "analyze-string/regex", 0);
        Expression regex = getRegex();
        SequenceType sequenceType = SequenceType.SINGLE_STRING;
        setRegex(typeChecker.staticTypeCheck(regex, sequenceType, roleDiagnostic2, expressionVisitor));
        setFlags(typeChecker.staticTypeCheck(getFlags(), sequenceType, new RoleDiagnostic(4, "analyze-string/flags", 0), expressionVisitor));
        return this;
    }
}
