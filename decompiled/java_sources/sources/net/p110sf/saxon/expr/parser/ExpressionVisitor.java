package net.p110sf.saxon.expr.parser;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.s9api.Location;

/* loaded from: classes11.dex */
public class ExpressionVisitor {

    /* renamed from: i */
    public static final int f99914i = 500;

    /* renamed from: a */
    public StaticContext f99915a;

    /* renamed from: d */
    public final Configuration f99918d;

    /* renamed from: e */
    public Optimizer f99919e;

    /* renamed from: b */
    public boolean f99916b = false;

    /* renamed from: c */
    public boolean f99917c = false;

    /* renamed from: f */
    public int f99920f = 0;

    /* renamed from: g */
    public boolean f99921g = false;

    /* renamed from: h */
    public boolean f99922h = false;

    public ExpressionVisitor(Configuration configuration) {
        this.f99918d = configuration;
    }

    public static ExpressionVisitor make(StaticContext staticContext) {
        ExpressionVisitor expressionVisitor = new ExpressionVisitor(staticContext.getConfiguration());
        expressionVisitor.setStaticContext(staticContext);
        return expressionVisitor;
    }

    public void decrementDepth() {
        this.f99920f--;
    }

    public Configuration getConfiguration() {
        return this.f99918d;
    }

    public StaticContext getStaticContext() {
        return this.f99915a;
    }

    public String getTargetEdition() {
        return this.f99915a.getPackageData().getTargetEdition();
    }

    public boolean incrementAndTestDepth() {
        int i = this.f99920f;
        this.f99920f = i + 1;
        return i < 500;
    }

    public boolean isInliningFunctions() {
        return this.f99921g;
    }

    public boolean isOptimizeForPatternMatching() {
        return this.f99917c;
    }

    public boolean isOptimizeForStreaming() {
        return this.f99916b;
    }

    public boolean isSuppressWarnings() {
        return this.f99922h;
    }

    public void issueWarning(String str, Location location) {
        if (isSuppressWarnings()) {
            return;
        }
        this.f99915a.issueWarning(str, location);
    }

    public XPathContext makeDynamicContext() {
        return this.f99915a.makeEarlyEvaluationContext();
    }

    public Optimizer obtainOptimizer() {
        if (this.f99919e == null) {
            this.f99919e = this.f99918d.obtainOptimizer(this.f99915a.getOptimizerOptions());
        }
        return this.f99919e;
    }

    public void setInliningFunctions(boolean z) {
        this.f99921g = z;
    }

    public void setOptimizeForPatternMatching(boolean z) {
        this.f99917c = z;
    }

    public void setOptimizeForStreaming(boolean z) {
        this.f99916b = z;
    }

    public void setStaticContext(StaticContext staticContext) {
        this.f99915a = staticContext;
    }

    public void setSuppressWarnings(boolean z) {
        this.f99922h = z;
    }
}
