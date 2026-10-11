package net.p110sf.saxon.trans.rules;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.CombinedNodeTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.pattern.UnionPattern;
import net.p110sf.saxon.style.StylesheetModule;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SimpleMode;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.VisibilityProvenance;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public final class RuleManager {

    /* renamed from: a */
    public final StylesheetPackage f102408a;

    /* renamed from: b */
    public final Configuration f102409b;

    /* renamed from: c */
    public final SimpleMode f102410c;

    /* renamed from: d */
    public final HashMap<StructuredQName, Mode> f102411d;

    /* renamed from: e */
    public SimpleMode f102412e;

    /* renamed from: f */
    public boolean f102413f;

    /* renamed from: g */
    public CompilerInfo f102414g;

    /* renamed from: h */
    public int f102415h;

    public RuleManager(StylesheetPackage stylesheetPackage) {
        this(stylesheetPackage, stylesheetPackage.getConfiguration().getDefaultXsltCompilerInfo());
    }

    public int allocateSequenceNumber() {
        int i = this.f102415h;
        this.f102415h = i + 1;
        return i;
    }

    public void checkConsistency() throws XPathException {
        this.f102410c.resolveProperties(this);
        Iterator<Mode> it2 = this.f102411d.values().iterator();
        while (it2.hasNext()) {
            it2.next().getActivePart().resolveProperties(this);
        }
    }

    public void computeRankings() throws XPathException {
        this.f102410c.computeRankings(0);
        Iterator<Mode> it2 = this.f102411d.values().iterator();
        while (it2.hasNext()) {
            it2.next().computeRankings(0);
        }
    }

    public boolean existsOmniMode() {
        return this.f102412e != null;
    }

    public void explainTemplateRules(ExpressionPresenter expressionPresenter) throws XPathException {
        this.f102410c.explain(expressionPresenter);
        Iterator<Mode> it2 = this.f102411d.values().iterator();
        while (it2.hasNext()) {
            it2.next().explain(expressionPresenter);
        }
    }

    public Collection<Mode> getAllNamedModes() {
        return this.f102411d.values();
    }

    public StylesheetPackage getStylesheetPackage() {
        return this.f102408a;
    }

    public Rule getTemplateRule(Item item, Mode mode, int i, int i2, XPathContext xPathContext) throws XPathException {
        if (mode == null) {
            mode = this.f102410c;
        }
        return mode.getRule(item, i, i2, xPathContext);
    }

    public SimpleMode getUnnamedMode() {
        return this.f102410c;
    }

    public void invertStreamableTemplates() throws XPathException {
        this.f102410c.invertStreamableTemplates();
        Iterator<Mode> it2 = this.f102411d.values().iterator();
        while (it2.hasNext()) {
            it2.next().getActivePart().invertStreamableTemplates();
        }
    }

    public boolean isUnnamedModeExplicit() {
        return this.f102413f;
    }

    public Mode obtainMode(StructuredQName structuredQName, boolean z) {
        if (structuredQName == null || structuredQName.equals(Mode.UNNAMED_MODE_NAME)) {
            return this.f102410c;
        }
        if (structuredQName.equals(Mode.OMNI_MODE)) {
            if (this.f102412e == null) {
                this.f102412e = this.f102409b.makeMode(structuredQName, this.f102414g);
            }
            return this.f102412e;
        }
        Mode mode = this.f102411d.get(structuredQName);
        if (mode != null || !z) {
            return mode;
        }
        SimpleMode makeMode = this.f102409b.makeMode(structuredQName, this.f102414g);
        this.f102411d.put(structuredQName, makeMode);
        Visibility visibility = Visibility.PRIVATE;
        Component makeDeclaringComponent = makeMode.makeDeclaringComponent(visibility, this.f102408a);
        makeDeclaringComponent.setVisibility(visibility, VisibilityProvenance.DEFAULTED);
        this.f102408a.addComponent(makeDeclaringComponent);
        return makeMode;
    }

    public void optimizeRules() {
        this.f102410c.optimizeRules();
        Iterator<Mode> it2 = this.f102411d.values().iterator();
        while (it2.hasNext()) {
            it2.next().getActivePart().optimizeRules();
        }
    }

    public void registerMode(Mode mode) {
        this.f102411d.put(mode.getModeName(), mode);
    }

    public int registerRule(Pattern pattern, TemplateRule templateRule, Mode mode, StylesheetModule stylesheetModule, double d, int i, int i2) {
        double d2;
        int i3;
        if (pattern instanceof UnionPattern) {
            UnionPattern unionPattern = (UnionPattern) pattern;
            Pattern lhs = unionPattern.getLHS();
            Pattern rhs = unionPattern.getRHS();
            int registerRule = registerRule(lhs, templateRule, mode, stylesheetModule, d, i, i2);
            return registerRule + registerRule(rhs, templateRule, mode, stylesheetModule, d, i, registerRule);
        }
        if ((pattern instanceof NodeTestPattern) && (pattern.getItemType() instanceof CombinedNodeTest) && ((CombinedNodeTest) pattern.getItemType()).getOperator() == 1) {
            NodeTest[] componentNodeTests = ((CombinedNodeTest) pattern.getItemType()).getComponentNodeTests();
            NodeTestPattern nodeTestPattern = new NodeTestPattern(componentNodeTests[0]);
            ExpressionTool.copyLocationInfo(pattern, nodeTestPattern);
            int registerRule2 = registerRule(nodeTestPattern, templateRule, mode, stylesheetModule, d, i, i2);
            NodeTestPattern nodeTestPattern2 = new NodeTestPattern(componentNodeTests[1]);
            ExpressionTool.copyLocationInfo(pattern, nodeTestPattern2);
            return registerRule2 + registerRule(nodeTestPattern2, templateRule, mode, stylesheetModule, d, i, registerRule2);
        }
        if (Double.isNaN(d)) {
            i3 = i2;
            d2 = pattern.getDefaultPriority();
        } else {
            d2 = d;
            i3 = 0;
        }
        if (mode instanceof SimpleMode) {
            ((SimpleMode) mode).addRule(pattern, templateRule, stylesheetModule, stylesheetModule.getPrecedence(), d2, i, i3);
        } else {
            mode.getActivePart().addRule(pattern, templateRule, stylesheetModule, mode.getMaxPrecedence(), d2, i, i3);
        }
        return 1;
    }

    public void setCompilerInfo(CompilerInfo compilerInfo) {
        this.f102414g = compilerInfo;
    }

    public void setUnnamedModeExplicit(boolean z) {
        this.f102413f = z;
    }

    public RuleManager(StylesheetPackage stylesheetPackage, CompilerInfo compilerInfo) {
        this.f102412e = null;
        this.f102415h = 0;
        this.f102408a = stylesheetPackage;
        Configuration configuration = stylesheetPackage.getConfiguration();
        this.f102409b = configuration;
        this.f102414g = compilerInfo;
        SimpleMode makeMode = configuration.makeMode(Mode.UNNAMED_MODE_NAME, compilerInfo);
        this.f102410c = makeMode;
        Visibility visibility = Visibility.PRIVATE;
        Component makeDeclaringComponent = makeMode.makeDeclaringComponent(visibility, stylesheetPackage);
        makeDeclaringComponent.setVisibility(visibility, VisibilityProvenance.DEFAULTED);
        stylesheetPackage.addComponent(makeDeclaringComponent);
        this.f102411d = new HashMap<>(5);
    }
}
