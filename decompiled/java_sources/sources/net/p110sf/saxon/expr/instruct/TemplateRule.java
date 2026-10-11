package net.p110sf.saxon.expr.instruct;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ExpressionOwner;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.style.Compilation;
import net.p110sf.saxon.style.ComponentDeclaration;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.TraceableComponent;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.trans.rules.RuleTarget;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class TemplateRule implements RuleTarget, Location, ExpressionOwner, TraceableComponent {
    protected Expression body;

    /* renamed from: e */
    public boolean f99820e;

    /* renamed from: f */
    public boolean f99821f;

    /* renamed from: g */
    public SequenceType f99822g;

    /* renamed from: h */
    public boolean f99823h;

    /* renamed from: j */
    public boolean f99825j;

    /* renamed from: k */
    public SlotManager f99826k;

    /* renamed from: l */
    public PackageData f99827l;

    /* renamed from: m */
    public String f99828m;
    protected Pattern matchPattern;

    /* renamed from: n */
    public int f99829n;

    /* renamed from: o */
    public int f99830o;

    /* renamed from: i */
    public ItemType f99824i = AnyItemType.getInstance();

    /* renamed from: p */
    public final List<Rule> f99831p = new ArrayList();
    protected List<TemplateRule> slaveCopies = new ArrayList();

    /* renamed from: a */
    public static void m62793a(Expression expression, List<LocalParam> list) {
        if (expression instanceof LocalParam) {
            list.add((LocalParam) expression);
            return;
        }
        Iterator<Operand> it2 = expression.operands().iterator();
        while (it2.hasNext()) {
            m62793a(it2.next().getChildExpression(), list);
        }
    }

    public void apply(Outputter outputter, XPathContextMajor xPathContextMajor) throws XPathException {
        for (TailCall applyLeavingTail = applyLeavingTail(outputter, xPathContextMajor); applyLeavingTail != null; applyLeavingTail = applyLeavingTail.processLeavingTail()) {
        }
    }

    public TailCall applyLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        String str;
        TypeHierarchy typeHierarchy = xPathContext.getConfiguration().getTypeHierarchy();
        if (this.f99824i != AnyItemType.getInstance() && !this.f99824i.matches(xPathContext.getContextItem(), typeHierarchy)) {
            XPathException xPathException = new XPathException(new RoleDiagnostic(20, "context item for the template rule", 0).composeErrorMessage(this.f99824i, xPathContext.getContextItem(), typeHierarchy), "XTTE0590");
            xPathException.setLocation(this);
            xPathException.setIsTypeError(true);
            throw xPathException;
        }
        if (this.f99825j) {
            xPathContext = xPathContext.newMinorContext();
            xPathContext.setCurrentIterator(null);
        }
        try {
            if (this.f99821f) {
                return ((TailCallReturner) this.body).processLeavingTail(outputter, xPathContext);
            }
            this.body.process(outputter, xPathContext);
            return null;
        } catch (UncheckedXPathException e) {
            XPathException xPathException2 = e.getXPathException();
            xPathException2.maybeSetLocation(this);
            xPathException2.maybeSetContext(xPathContext);
            throw xPathException2;
        } catch (XPathException e2) {
            e2.maybeSetLocation(this);
            e2.maybeSetContext(xPathContext);
            throw e2;
        } catch (Exception e3) {
            StringBuilder sb = new StringBuilder();
            sb.append("Internal error evaluating template rule ");
            String str2 = "";
            if (getLineNumber() > 0) {
                str = " at line " + getLineNumber();
            } else {
                str = "";
            }
            sb.append(str);
            if (getSystemId() != null) {
                str2 = " in module " + getSystemId();
            }
            sb.append(str2);
            String sb2 = sb.toString();
            e3.printStackTrace();
            throw new RuntimeException(sb2, e3);
        }
    }

    public TemplateRule copy() {
        TemplateRule templateRule = new TemplateRule();
        if (this.body == null || this.matchPattern == null) {
            this.slaveCopies.add(templateRule);
        } else {
            copyTo(templateRule);
        }
        return templateRule;
    }

    public void copyTo(TemplateRule templateRule) {
        Expression expression = this.body;
        if (expression != null) {
            templateRule.body = expression.copy(new RebindingMap());
        }
        Pattern pattern = this.matchPattern;
        if (pattern != null) {
            templateRule.matchPattern = pattern.copy(new RebindingMap());
        }
        templateRule.f99820e = this.f99820e;
        templateRule.f99821f = this.f99821f;
        templateRule.f99822g = this.f99822g;
        templateRule.f99823h = this.f99823h;
        templateRule.f99824i = this.f99824i;
        templateRule.f99825j = this.f99825j;
        templateRule.f99826k = this.f99826k;
        templateRule.f99827l = this.f99827l;
        templateRule.f99828m = this.f99828m;
        templateRule.f99829n = this.f99829n;
    }

    public void explainProperties(ExpressionPresenter expressionPresenter) throws XPathException {
        String str;
        if (getRequiredContextItemType() != AnyItemType.getInstance()) {
            expressionPresenter.emitAttribute("cxt", SequenceType.makeSequenceType(getRequiredContextItemType(), 16384).toAlphaCode());
        }
        if (this.f99825j) {
            str = "";
        } else {
            str = "s";
        }
        expressionPresenter.emitAttribute("flags", str);
        if (getRequiredType() != SequenceType.ANY_SEQUENCE) {
            expressionPresenter.emitAttribute("as", getRequiredType().toAlphaCode());
        }
        expressionPresenter.emitAttribute("line", getLineNumber() + "");
        expressionPresenter.emitAttribute("module", getSystemId());
        if (isDeclaredStreamable()) {
            expressionPresenter.emitAttribute("streamable", "1");
        }
    }

    @Override // net.p110sf.saxon.trans.rules.RuleTarget
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public void gatherProperties(BiConsumer<String, Object> biConsumer) {
        biConsumer.accept(Constants.ATTRNAME_MATCH, getMatchPattern().toShortString());
    }

    @Override // net.p110sf.saxon.trace.TraceableComponent
    public Expression getBody() {
        return this.body;
    }

    @Override // net.p110sf.saxon.expr.ExpressionOwner
    public Expression getChildExpression() {
        return this.body;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.f99830o;
    }

    public int getComponentKind() {
        return 210;
    }

    public int getContainerGranularity() {
        return 0;
    }

    public Expression getInterpretedBody() {
        return this.body.getInterpretedExpression();
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.f99829n;
    }

    public List<LocalParam> getLocalParams() {
        ArrayList arrayList = new ArrayList();
        m62793a(getInterpretedBody(), arrayList);
        return arrayList;
    }

    @Override // net.p110sf.saxon.expr.Locatable
    public Location getLocation() {
        return this;
    }

    public Pattern getMatchPattern() {
        return this.matchPattern;
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public StructuredQName getObjectName() {
        return null;
    }

    public PackageData getPackageData() {
        return this.f99827l;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getPublicId() {
        return null;
    }

    public ItemType getRequiredContextItemType() {
        return this.f99824i;
    }

    public SequenceType getRequiredType() {
        SequenceType sequenceType = this.f99822g;
        return sequenceType == null ? SequenceType.ANY_SEQUENCE : sequenceType;
    }

    public List<Rule> getRules() {
        return this.f99831p;
    }

    public SlotManager getStackFrameMap() {
        return this.f99826k;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f99828m;
    }

    @Override // net.p110sf.saxon.trace.TraceableComponent
    public String getTracingTag() {
        return "xsl:template";
    }

    public boolean hasRequiredParams() {
        return this.f99820e;
    }

    public void initialize() throws XPathException {
    }

    public boolean isAbsentFocus() {
        return this.f99825j;
    }

    public boolean isDeclaredStreamable() {
        return false;
    }

    public void prepareInitializer(Compilation compilation, ComponentDeclaration componentDeclaration, StructuredQName structuredQName) {
    }

    @Override // net.p110sf.saxon.trans.rules.RuleTarget
    public void registerRule(Rule rule) {
        this.f99831p.add(rule);
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    @Override // net.p110sf.saxon.trace.TraceableComponent
    public void setBody(Expression expression) {
        this.body = expression;
        this.f99821f = expression instanceof TailCallReturner;
    }

    @Override // net.p110sf.saxon.expr.ExpressionOwner
    public void setChildExpression(Expression expression) {
        setBody(expression);
    }

    public void setColumnNumber(int i) {
        this.f99830o = i;
    }

    public void setContextItemRequirements(ItemType itemType, boolean z) {
        this.f99824i = itemType;
        this.f99825j = z;
    }

    public void setDeclaredStreamable(boolean z) {
    }

    public void setHasRequiredParams(boolean z) {
        this.f99820e = z;
    }

    public void setLineNumber(int i) {
        this.f99829n = i;
    }

    public void setMatchPattern(Pattern pattern) {
        this.matchPattern = pattern;
    }

    public void setPackageData(PackageData packageData) {
        this.f99827l = packageData;
    }

    public void setRequiredType(SequenceType sequenceType) {
        this.f99822g = sequenceType;
    }

    public void setStackFrameMap(SlotManager slotManager) {
        this.f99826k = slotManager;
    }

    public void setSystemId(String str) {
        this.f99828m = str;
    }

    public void updateSlaveCopies() {
        Iterator<TemplateRule> it2 = this.slaveCopies.iterator();
        while (it2.hasNext()) {
            copyTo(it2.next());
        }
    }
}
