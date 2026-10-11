package net.p110sf.saxon.expr.instruct;

import java.util.ArrayList;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class ApplyNextMatchingTemplate extends Instruction implements ITemplateCall {

    /* renamed from: n */
    public WithParam[] f99609n;

    /* renamed from: o */
    public WithParam[] f99610o;

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        if (pathMapNodeSet == null) {
            pathMapNodeSet = new PathMap.PathMapNodeSet(pathMap.makeNewRoot(new ContextItemExpression()));
        }
        pathMapNodeSet.addDescendants();
        return new PathMap.PathMapNodeSet(pathMap.makeNewRoot(this));
    }

    @Override // net.p110sf.saxon.expr.instruct.ITemplateCall
    public WithParam[] getActualParams() {
        return this.f99609n;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return super.getImplementationMethod() | 8;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.instruct.ITemplateCall
    public WithParam[] getTunnelParams() {
        return this.f99610o;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList(this.f99609n.length + this.f99610o.length);
        WithParam.gatherOperands(this, this.f99609n, arrayList);
        WithParam.gatherOperands(this, this.f99610o, arrayList);
        return arrayList;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        WithParam.optimize(expressionVisitor, this.f99609n, contextItemStaticInfo);
        WithParam.optimize(expressionVisitor, this.f99610o, contextItemStaticInfo);
        return this;
    }

    public void setActualParams(WithParam[] withParamArr) {
        this.f99609n = withParamArr;
    }

    public void setTunnelParams(WithParam[] withParamArr) {
        this.f99610o = withParamArr;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        WithParam.simplify(getActualParams());
        WithParam.simplify(getTunnelParams());
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        WithParam.typeCheck(this.f99609n, expressionVisitor, contextItemStaticInfo);
        WithParam.typeCheck(this.f99610o, expressionVisitor, contextItemStaticInfo);
        return this;
    }
}
