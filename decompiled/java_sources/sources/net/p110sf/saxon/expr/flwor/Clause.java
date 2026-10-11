package net.p110sf.saxon.expr.flwor;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class Clause {

    /* renamed from: a */
    public Location f99478a;

    /* renamed from: b */
    public PackageData f99479b;

    /* renamed from: c */
    public boolean f99480c;

    /* loaded from: classes11.dex */
    public enum ClauseName {
        FOR,
        LET,
        WINDOW,
        GROUP_BY,
        COUNT,
        ORDER_BY,
        WHERE,
        TRACE,
        DIAG,
        FOR_MEMBER
    }

    public abstract void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet);

    public boolean containsNonInlineableVariableReference(Binding binding) {
        return false;
    }

    public abstract Clause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap);

    public abstract void explain(ExpressionPresenter expressionPresenter) throws XPathException;

    public void gatherVariableReferences(ExpressionVisitor expressionVisitor, Binding binding, List<VariableReference> list) {
    }

    public abstract ClauseName getClauseKey();

    public Configuration getConfiguration() {
        return this.f99479b.getConfiguration();
    }

    public Location getLocation() {
        return this.f99478a;
    }

    public PackageData getPackageData() {
        return this.f99479b;
    }

    public abstract TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext);

    public abstract TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext);

    public LocalVariableBinding[] getRangeVariables() {
        return new LocalVariableBinding[0];
    }

    public Map<String, Object> getTraceInfo() {
        LocalVariableBinding[] rangeVariables = getRangeVariables();
        if (rangeVariables.length == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("var", "$" + rangeVariables[0].getVariableQName().getDisplayName());
        return hashMap;
    }

    public boolean isRepeated() {
        return this.f99480c;
    }

    public void optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
    }

    public abstract void processOperands(OperandProcessor operandProcessor) throws XPathException;

    public void refineVariableType(ExpressionVisitor expressionVisitor, List<VariableReference> list, Expression expression) {
    }

    public void setLocation(Location location) {
        this.f99478a = location;
    }

    public void setPackageData(PackageData packageData) {
        this.f99479b = packageData;
    }

    public void setRepeated(boolean z) {
        this.f99480c = z;
    }

    public String toShortString() {
        return toString();
    }

    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
    }
}
