package net.p110sf.saxon.expr.instruct;

import androidx.room.FtsOptions;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class NumberInstruction extends Expression {
    public static final int ANY = 2;
    public static final String[] LEVEL_NAMES = {Constants.ATTRVAL_SINGLE, "multi", "any", FtsOptions.TOKENIZER_SIMPLE};
    public static final int MULTI = 1;
    public static final int SIMPLE = 3;
    public static final int SINGLE = 0;

    /* renamed from: s */
    public static final /* synthetic */ boolean f99791s = false;

    /* renamed from: n */
    public final Operand f99792n;

    /* renamed from: o */
    public final int f99793o;

    /* renamed from: p */
    public Operand f99794p;

    /* renamed from: q */
    public Operand f99795q;

    /* renamed from: r */
    public boolean f99796r;

    public NumberInstruction(Expression expression, int i, Pattern pattern, Pattern pattern2) {
        this.f99796r = false;
        this.f99792n = new Operand(this, expression, new OperandRole(0, OperandUsage.NAVIGATION, SequenceType.SINGLE_NODE));
        this.f99793o = i;
        if (pattern != null) {
            this.f99794p = new Operand(this, pattern, OperandRole.INSPECT);
        }
        if (pattern2 != null) {
            this.f99795q = new Operand(this, pattern2, OperandRole.INSPECT);
        }
        this.f99796r = Pattern.patternContainsVariable(pattern) || Pattern.patternContainsVariable(pattern2);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        int i = this.f99793o;
        return (i == 0 || i == 2 || i == 3) ? 24576 : 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        NumberInstruction numberInstruction = new NumberInstruction(m62784d(this.f99792n, rebindingMap), this.f99793o, m62785e(getCount(), rebindingMap), m62785e(getFrom(), rebindingMap));
        ExpressionTool.copyLocationInfo(this, numberInstruction);
        return numberInstruction;
    }

    /* renamed from: d */
    public final Expression m62784d(Operand operand, RebindingMap rebindingMap) {
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression().copy(rebindingMap);
    }

    /* renamed from: e */
    public final Pattern m62785e(Pattern pattern, RebindingMap rebindingMap) {
        if (pattern == null) {
            return null;
        }
        return pattern.copy(rebindingMap);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("nodeNum", this);
        expressionPresenter.emitAttribute("level", LEVEL_NAMES[this.f99793o]);
        expressionPresenter.setChildRole("select");
        this.f99792n.getChildExpression().export(expressionPresenter);
        if (this.f99794p != null) {
            expressionPresenter.setChildRole("count");
            getCount().export(expressionPresenter);
        }
        if (this.f99795q != null) {
            expressionPresenter.setChildRole("from");
            getFrom().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    public Pattern getCount() {
        Operand operand = this.f99794p;
        if (operand == null) {
            return null;
        }
        return (Pattern) operand.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "xsl:number";
    }

    public Pattern getFrom() {
        Operand operand = this.f99795q;
        if (operand == null) {
            return null;
        }
        return (Pattern) operand.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.INTEGER;
    }

    public int getLevel() {
        return this.f99793o;
    }

    public Expression getSelect() {
        return this.f99792n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        ArrayList arrayList = new ArrayList(1);
        NodeInfo nodeInfo = (NodeInfo) this.f99792n.getChildExpression().evaluateItem(xPathContext);
        int i = this.f99793o;
        if (i == 0) {
            long numberSingle = Navigator.getNumberSingle(nodeInfo, getCount(), getFrom(), xPathContext);
            if (numberSingle != 0) {
                arrayList.add(Int64Value.makeIntegerValue(numberSingle));
            }
        } else if (i == 1) {
            Iterator<Long> it2 = Navigator.getNumberMulti(nodeInfo, getCount(), getFrom(), xPathContext).iterator();
            while (it2.hasNext()) {
                arrayList.add(Int64Value.makeIntegerValue(it2.next().longValue()));
            }
        } else if (i == 2) {
            long numberAny = Navigator.getNumberAny(this, nodeInfo, getCount(), getFrom(), xPathContext, this.f99796r);
            if (numberAny != 0) {
                arrayList.add(Int64Value.makeIntegerValue(numberAny));
            }
        } else if (i == 3) {
            long numberSimple = Navigator.getNumberSimple(nodeInfo, xPathContext);
            if (numberSimple != 0) {
                arrayList.add(Int64Value.makeIntegerValue(numberSimple));
            }
        }
        return new ListIterator.C18538Of(arrayList);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandSparseList(this.f99792n, this.f99794p, this.f99795q);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimizeNumberInstruction;
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        return optimize != this ? optimize : (!"EE".equals(getPackageData().getTargetEdition()) || (optimizeNumberInstruction = expressionVisitor.obtainOptimizer().optimizeNumberInstruction(this, contextItemStaticInfo)) == null) ? this : optimizeNumberInstruction;
    }
}
