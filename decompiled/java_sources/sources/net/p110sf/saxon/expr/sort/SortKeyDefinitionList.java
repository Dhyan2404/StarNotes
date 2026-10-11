package net.p110sf.saxon.expr.sort;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.PseudoExpression;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SortKeyDefinitionList extends PseudoExpression implements Iterable<SortKeyDefinition> {

    /* renamed from: n */
    public final SortKeyDefinition[] f100116n;

    public SortKeyDefinitionList(SortKeyDefinition[] sortKeyDefinitionArr) {
        this.f100116n = sortKeyDefinitionArr;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        for (SortKeyDefinition sortKeyDefinition : this.f100116n) {
            sortKeyDefinition.export(expressionPresenter);
        }
    }

    @Override // net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 0;
    }

    public SortKeyDefinition getSortKeyDefinition(int i) {
        return this.f100116n[i];
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isLiftable(boolean z) {
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<SortKeyDefinition> iterator() {
        return Arrays.asList(this.f100116n).iterator();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList(size());
        for (SortKeyDefinition sortKeyDefinition : this.f100116n) {
            arrayList.add(new Operand(this, sortKeyDefinition, OperandRole.INSPECT));
        }
        return arrayList;
    }

    public int size() {
        return this.f100116n.length;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SortKeyDefinitionList copy(RebindingMap rebindingMap) {
        SortKeyDefinition[] sortKeyDefinitionArr = new SortKeyDefinition[this.f100116n.length];
        int i = 0;
        while (true) {
            SortKeyDefinition[] sortKeyDefinitionArr2 = this.f100116n;
            if (i < sortKeyDefinitionArr2.length) {
                sortKeyDefinitionArr[i] = sortKeyDefinitionArr2[i].copy(rebindingMap);
                i++;
            } else {
                return new SortKeyDefinitionList(sortKeyDefinitionArr);
            }
        }
    }
}
