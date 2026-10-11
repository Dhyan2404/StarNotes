package net.p110sf.saxon.expr.parser;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.ArithmeticExpression;
import net.p110sf.saxon.expr.AtomicSequenceConverter;
import net.p110sf.saxon.expr.CardinalityChecker;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.GeneralComparison20;
import net.p110sf.saxon.expr.ItemChecker;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.JavaExternalObjectType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class TypeChecker {
    /* renamed from: b */
    public static Expression m62853b(Expression expression, FunctionItemType functionItemType, ExpressionVisitor expressionVisitor, RoleDiagnostic roleDiagnostic) throws XPathException {
        return functionItemType.makeFunctionSequenceCoercer(expression, roleDiagnostic);
    }

    /* renamed from: c */
    public static Expression m62854c(Expression expression, Converter converter, BuiltInAtomicType builtInAtomicType) {
        converter.setConversionRules(expression.getConfiguration().getConversionRules());
        if (expression instanceof Literal) {
            Literal literal = (Literal) expression;
            if (literal.getGroundedValue() instanceof AtomicValue) {
                ConversionResult convert = converter.convert((AtomicValue) literal.getGroundedValue());
                if (convert instanceof AtomicValue) {
                    Literal makeLiteral = Literal.makeLiteral((AtomicValue) convert, expression);
                    ExpressionTool.copyLocationInfo(expression, makeLiteral);
                    return makeLiteral;
                }
            }
        }
        AtomicSequenceConverter atomicSequenceConverter = new AtomicSequenceConverter(expression, builtInAtomicType);
        atomicSequenceConverter.setConverter(converter);
        ExpressionTool.copyLocationInfo(expression, atomicSequenceConverter);
        return atomicSequenceConverter;
    }

    /* renamed from: d */
    public static Expression m62855d(Expression expression) {
        return m62854c(expression, new Converter.PromoterToDouble(), BuiltInAtomicType.DOUBLE);
    }

    /* renamed from: e */
    public static Expression m62856e(Expression expression) {
        return m62854c(expression, new Converter.PromoterToFloat(), BuiltInAtomicType.FLOAT);
    }

    public static XPathException ebvError(Expression expression, TypeHierarchy typeHierarchy) {
        if (Cardinality.allowsZero(expression.getCardinality())) {
            return null;
        }
        ItemType itemType = expression.getItemType();
        Affinity relationship = typeHierarchy.relationship(itemType, Type.NODE_TYPE);
        Affinity affinity = Affinity.DISJOINT;
        if (relationship != affinity || typeHierarchy.relationship(itemType, BuiltInAtomicType.BOOLEAN) != affinity || typeHierarchy.relationship(itemType, BuiltInAtomicType.STRING) != affinity || typeHierarchy.relationship(itemType, BuiltInAtomicType.ANY_URI) != affinity || typeHierarchy.relationship(itemType, BuiltInAtomicType.UNTYPED_ATOMIC) != affinity || typeHierarchy.relationship(itemType, NumericType.getInstance()) != affinity || (itemType instanceof JavaExternalObjectType)) {
            return null;
        }
        XPathException xPathException = new XPathException("Effective boolean value is defined only for sequences containing booleans, strings, numbers, URIs, or nodes");
        xPathException.setErrorCode("FORG0006");
        xPathException.setIsTypeError(true);
        return xPathException;
    }

    /* renamed from: f */
    public static Expression m62857f(Expression expression) {
        return m62854c(expression, new Converter.ToStringConverter(), BuiltInAtomicType.STRING);
    }

    public static Expression strictTypeCheck(Expression expression, SequenceType sequenceType, RoleDiagnostic roleDiagnostic, StaticContext staticContext) throws XPathException {
        boolean z;
        int i;
        ItemType itemType;
        Expression expression2;
        TypeHierarchy typeHierarchy = staticContext.getConfiguration().getTypeHierarchy();
        ItemType primaryType = sequenceType.getPrimaryType();
        int cardinality = sequenceType.getCardinality();
        boolean z2 = true;
        boolean z3 = cardinality == 57344;
        if (z3) {
            z = z3;
            i = -1;
        } else {
            i = expression.getCardinality();
            z = Cardinality.subsumes(cardinality, i);
        }
        boolean z4 = sequenceType.getPrimaryType() instanceof AnyItemType;
        if (z4) {
            itemType = null;
        } else {
            ItemType itemType2 = expression.getItemType();
            Affinity relationship = typeHierarchy.relationship(primaryType, itemType2);
            if (relationship != Affinity.SAME_TYPE && relationship != Affinity.SUBSUMES) {
                z2 = false;
            }
            boolean z5 = z2;
            itemType = itemType2;
            z4 = z5;
        }
        if (z4 && z) {
            return expression;
        }
        if (i == -1) {
            i = itemType instanceof ErrorType ? 8192 : expression.getCardinality();
            if (!z) {
                z = Cardinality.subsumes(cardinality, i);
            }
        }
        if (z && i == 8192) {
            return expression;
        }
        if (itemType == null) {
            itemType = expression.getItemType();
        }
        if (i == 8192 && (cardinality & 8192) == 0) {
            XPathException xPathException = new XPathException("An empty sequence is not allowed as the " + roleDiagnostic.getMessage(), roleDiagnostic.getErrorCode(), expression.getLocation());
            xPathException.setIsTypeError(roleDiagnostic.isTypeError());
            throw xPathException;
        }
        Affinity relationship2 = typeHierarchy.relationship(itemType, primaryType);
        if (relationship2 == Affinity.DISJOINT) {
            if (!Cardinality.allowsZero(i) || !Cardinality.allowsZero(cardinality)) {
                XPathException xPathException2 = new XPathException(roleDiagnostic.composeErrorMessage(primaryType, expression, typeHierarchy), roleDiagnostic.getErrorCode(), expression.getLocation());
                xPathException2.setIsTypeError(roleDiagnostic.isTypeError());
                throw xPathException2;
            }
            if (i != 8192) {
                staticContext.issueWarning("Required item type of " + roleDiagnostic.getMessage() + " is " + primaryType + "; supplied value (" + expression.toShortString() + ") has item type " + itemType + ". The expression can succeed only if the supplied value is an empty sequence.", expression.getLocation());
            }
        }
        if (relationship2 == Affinity.SAME_TYPE || relationship2 == Affinity.SUBSUMED_BY) {
            expression2 = expression;
        } else {
            expression2 = new ItemChecker(expression, primaryType, roleDiagnostic);
            expression2.adoptChildExpression(expression);
        }
        if (z) {
            return expression2;
        }
        if (!(expression2 instanceof Literal)) {
            Expression makeCardinalityChecker = CardinalityChecker.makeCardinalityChecker(expression2, cardinality, roleDiagnostic);
            makeCardinalityChecker.adoptChildExpression(expression2);
            return makeCardinalityChecker;
        }
        XPathException xPathException3 = new XPathException("Required cardinality of " + roleDiagnostic.getMessage() + " is " + Cardinality.describe(cardinality) + "; supplied value has cardinality " + Cardinality.describe(i), roleDiagnostic.getErrorCode(), expression.getLocation());
        xPathException3.setIsTypeError(roleDiagnostic.isTypeError());
        throw xPathException3;
    }

    public static XPathException testConformance(Sequence sequence, SequenceType sequenceType, XPathContext xPathContext) throws XPathException {
        Item next;
        ItemType primaryType = sequenceType.getPrimaryType();
        SequenceIterator iterate = sequence.iterate();
        int i = 0;
        do {
            next = iterate.next();
            if (next == null) {
                int cardinality = sequenceType.getCardinality();
                if (i == 0 && !Cardinality.allowsZero(cardinality)) {
                    XPathException xPathException = new XPathException("Required type does not allow empty sequence, but supplied value is empty");
                    xPathException.setIsTypeError(true);
                    xPathException.setErrorCode("XPTY0004");
                    return xPathException;
                }
                if (i <= 1 || Cardinality.allowsMany(cardinality)) {
                    if (i <= 0 || cardinality != 8192) {
                        return null;
                    }
                    XPathException xPathException2 = new XPathException("Required type requires an empty sequence, but supplied value is non-empty");
                    xPathException2.setIsTypeError(true);
                    xPathException2.setErrorCode("XPTY0004");
                    return xPathException2;
                }
                XPathException xPathException3 = new XPathException("Required type requires a singleton sequence; supplied value contains " + i + " items");
                xPathException3.setIsTypeError(true);
                xPathException3.setErrorCode("XPTY0004");
                return xPathException3;
            }
            i++;
        } while (primaryType.matches(next, xPathContext.getConfiguration().getTypeHierarchy()));
        XPathException xPathException4 = new XPathException("Required type is " + primaryType + "; supplied value has type " + UType.getUType(sequence.materialize()));
        xPathException4.setIsTypeError(true);
        xPathException4.setErrorCode("XPTY0004");
        return xPathException4;
    }

    /* renamed from: a */
    public final Expression m62858a(Expression expression, AtomicType atomicType, Configuration configuration) throws XPathException {
        return AtomicSequenceConverter.makeDownCaster(expression, atomicType, configuration);
    }

    public Expression makeArithmeticExpression(Expression expression, int i, Expression expression2) {
        return new ArithmeticExpression(expression, i, expression2);
    }

    public Expression makeGeneralComparison(Expression expression, int i, Expression expression2) {
        return new GeneralComparison20(expression, i, expression2);
    }

    public Expression processValueOf(Expression expression, Configuration configuration) {
        return expression;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04c0 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression staticTypeCheck(net.p110sf.saxon.expr.Expression r21, net.p110sf.saxon.value.SequenceType r22, net.p110sf.saxon.expr.parser.RoleDiagnostic r23, net.p110sf.saxon.expr.parser.ExpressionVisitor r24) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 1217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.TypeChecker.staticTypeCheck(net.sf.saxon.expr.Expression, net.sf.saxon.value.SequenceType, net.sf.saxon.expr.parser.RoleDiagnostic, net.sf.saxon.expr.parser.ExpressionVisitor):net.sf.saxon.expr.Expression");
    }
}
