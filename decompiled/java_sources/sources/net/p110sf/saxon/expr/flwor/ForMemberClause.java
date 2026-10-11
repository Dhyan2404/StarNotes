package net.p110sf.saxon.expr.flwor;

import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.CardinalityChecker;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ForMemberClause extends ForClause {
    @Override // net.p110sf.saxon.expr.flwor.ForClause
    public boolean addPredicate(FLWORExpression fLWORExpression, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression expression) throws XPathException {
        return false;
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClause, net.p110sf.saxon.expr.flwor.Clause
    public void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        pathMap.registerPathForVariable(this.rangeVariable, getSequence().addToPathMap(pathMap, pathMapNodeSet));
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClause, net.p110sf.saxon.expr.flwor.Clause
    public Clause.ClauseName getClauseKey() {
        return Clause.ClauseName.FOR_MEMBER;
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClause, net.p110sf.saxon.expr.flwor.Clause
    public TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext) {
        return new ForMemberClausePull(tuplePull, this);
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClause, net.p110sf.saxon.expr.flwor.Clause
    public TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext) {
        return new ForMemberClausePush(outputter, tuplePush, this);
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClause, net.p110sf.saxon.expr.flwor.Clause
    public void refineVariableType(ExpressionVisitor expressionVisitor, List<VariableReference> list, Expression expression) {
        ItemType itemType = getSequence().getItemType();
        if (itemType instanceof ArrayItemType) {
            SequenceType memberType = ((ArrayItemType) itemType).getMemberType();
            Iterator<VariableReference> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().refineVariableType(memberType.getPrimaryType(), memberType.getCardinality(), null, getSequence().getSpecialProperties());
            }
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClause, net.p110sf.saxon.expr.flwor.Clause
    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        SequenceType requiredType = this.rangeVariable.getRequiredType();
        if (this.allowsEmpty && !Cardinality.allowsZero(requiredType.getCardinality())) {
            setSequence(CardinalityChecker.makeCardinalityChecker(getSequence(), 49152, new RoleDiagnostic(3, this.rangeVariable.getVariableQName().getDisplayName(), 0)));
        }
        setSequence(TypeChecker.strictTypeCheck(getSequence(), SequenceType.makeSequenceType(new ArrayItemType(requiredType), 16384), new RoleDiagnostic(17, this.rangeVariable.getVariableQName().getDisplayName(), 0), expressionVisitor.getStaticContext()));
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClause, net.p110sf.saxon.expr.flwor.Clause
    public ForMemberClause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap) {
        ForMemberClause forMemberClause = new ForMemberClause();
        forMemberClause.setLocation(getLocation());
        forMemberClause.setPackageData(getPackageData());
        forMemberClause.rangeVariable = this.rangeVariable.copy();
        LocalVariableBinding localVariableBinding = this.positionVariable;
        if (localVariableBinding != null) {
            forMemberClause.positionVariable = localVariableBinding.copy();
        }
        forMemberClause.initSequence(fLWORExpression, getSequence().copy(rebindingMap));
        forMemberClause.allowsEmpty = this.allowsEmpty;
        return forMemberClause;
    }
}
