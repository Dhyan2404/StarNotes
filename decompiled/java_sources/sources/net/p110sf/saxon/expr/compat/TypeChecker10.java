package net.p110sf.saxon.expr.compat;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.AtomicSequenceConverter;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class TypeChecker10 extends TypeChecker {
    @Override // net.p110sf.saxon.expr.parser.TypeChecker
    public Expression makeArithmeticExpression(Expression expression, int i, Expression expression2) {
        return new ArithmeticExpression10(expression, i, expression2);
    }

    @Override // net.p110sf.saxon.expr.parser.TypeChecker
    public Expression makeGeneralComparison(Expression expression, int i, Expression expression2) {
        return new GeneralComparison10(expression, i, expression2);
    }

    @Override // net.p110sf.saxon.expr.parser.TypeChecker
    public Expression processValueOf(Expression expression, Configuration configuration) {
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        if (!expression.getItemType().isPlainType()) {
            expression = Atomizer.makeAtomizer(expression, null);
        }
        if (Cardinality.allowsMany(expression.getCardinality())) {
            expression = FirstItemExpression.makeFirstItemExpression(expression);
        }
        ItemType itemType = expression.getItemType();
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.STRING;
        if (typeHierarchy.isSubType(itemType, builtInAtomicType)) {
            return expression;
        }
        AtomicSequenceConverter atomicSequenceConverter = new AtomicSequenceConverter(expression, builtInAtomicType);
        atomicSequenceConverter.allocateConverterStatically(configuration, false);
        return atomicSequenceConverter;
    }

    @Override // net.p110sf.saxon.expr.parser.TypeChecker
    public Expression staticTypeCheck(Expression expression, SequenceType sequenceType, RoleDiagnostic roleDiagnostic, ExpressionVisitor expressionVisitor) throws XPathException {
        if (expression.implementsStaticTypeCheck()) {
            return expression.staticTypeCheck(sequenceType, true, roleDiagnostic, expressionVisitor);
        }
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        if (!Cardinality.allowsMany(sequenceType.getCardinality()) && Cardinality.allowsMany(expression.getCardinality())) {
            Expression makeFirstItemExpression = FirstItemExpression.makeFirstItemExpression(expression);
            makeFirstItemExpression.adoptChildExpression(expression);
            expression = makeFirstItemExpression;
        }
        ItemType primaryType = sequenceType.getPrimaryType();
        ItemType primaryType2 = sequenceType.getPrimaryType();
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.STRING;
        if (primaryType2.equals(builtInAtomicType) && !Cardinality.allowsMany(sequenceType.getCardinality()) && !typeHierarchy.isSubType(expression.getItemType(), builtInAtomicType)) {
            try {
                return SystemFunction.makeCall("string", new RetainedStaticContext(configuration), expression).typeCheck(expressionVisitor, configuration.getDefaultContextItemStaticInfo());
            } catch (XPathException e) {
                e.maybeSetLocation(expression.getLocation());
                e.setIsStaticError(true);
                throw e;
            }
        }
        if (!primaryType.equals(NumericType.getInstance())) {
            BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.DOUBLE;
            if (!primaryType.equals(builtInAtomicType2) || Cardinality.allowsMany(sequenceType.getCardinality()) || typeHierarchy.isSubType(expression.getItemType(), builtInAtomicType2)) {
                return super.staticTypeCheck(expression, sequenceType, roleDiagnostic, expressionVisitor);
            }
        }
        try {
            return SystemFunction.makeCall("number", new RetainedStaticContext(configuration), expression).typeCheck(expressionVisitor, configuration.getDefaultContextItemStaticInfo());
        } catch (XPathException e2) {
            e2.maybeSetLocation(expression.getLocation());
            e2.setIsStaticError(true);
            throw e2;
        }
    }
}
