package net.p110sf.saxon.style;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.expr.AtomicSequenceConverter;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public abstract class AttributeValueTemplate {
    /* renamed from: a */
    public static void m63924a(List<Expression> list, String str, int i, int i2) {
        if (i < i2) {
            list.add(new StringLiteral(str.substring(i, i2)));
        }
    }

    /* renamed from: b */
    public static boolean m63925b(Expression expression) {
        if (!(expression instanceof Literal)) {
            return false;
        }
        GroundedValue groundedValue = ((Literal) expression).getGroundedValue();
        if (groundedValue instanceof IntegerValue) {
            return true;
        }
        return groundedValue.getLength() == 2 && (groundedValue.itemAt(0) instanceof IntegerValue) && (groundedValue.itemAt(1) instanceof IntegerValue);
    }

    /* renamed from: c */
    public static String m63926c(Expression expression) {
        if (!(expression instanceof Literal)) {
            return "";
        }
        GroundedValue groundedValue = ((Literal) expression).getGroundedValue();
        if (groundedValue instanceof IntegerValue) {
            return groundedValue.toString();
        }
        if (groundedValue.getLength() != 2 || !(groundedValue.itemAt(0) instanceof IntegerValue) || !(groundedValue.itemAt(1) instanceof IntegerValue)) {
            return "";
        }
        return groundedValue.itemAt(0).toString() + "," + groundedValue.itemAt(1).toString();
    }

    public static Expression make(String str, StaticContext staticContext) throws XPathException {
        Expression simplify;
        int xPathVersion = staticContext.getXPathVersion();
        ArrayList arrayList = new ArrayList(5);
        int length = str.length();
        int i = 0;
        while (i < length) {
            int indexOf = str.indexOf("{", i);
            int indexOf2 = str.indexOf("{{", i);
            int indexOf3 = str.indexOf("}", i);
            int indexOf4 = str.indexOf("}}", i);
            if ((indexOf < 0 || length < indexOf) && (indexOf3 < 0 || length < indexOf3)) {
                m63924a(arrayList, str, i, length);
                break;
            }
            if (indexOf3 < 0 || (indexOf >= 0 && indexOf3 >= indexOf)) {
                if (indexOf2 >= 0 && indexOf2 == indexOf) {
                    m63924a(arrayList, str, i, indexOf2 + 1);
                    i = indexOf2 + 2;
                } else {
                    if (indexOf < 0) {
                        throw new IllegalStateException("Internal error parsing AVT");
                    }
                    if (indexOf > i) {
                        m63924a(arrayList, str, i, indexOf);
                    }
                    XPathParser newExpressionParser = staticContext.getConfiguration().newExpressionParser("XP", false, xPathVersion);
                    newExpressionParser.setLanguage(XPathParser.ParsedLanguage.XPATH, 31);
                    newExpressionParser.setAllowAbsentExpression(true);
                    Expression parse = newExpressionParser.parse(str, indexOf + 1, 215, staticContext);
                    parse.setRetainedStaticContext(staticContext.makeRetainedStaticContext());
                    Expression simplify2 = parse.simplify();
                    i = newExpressionParser.getTokenizer().currentTokenStartOffset + 1;
                    if ((staticContext instanceof ExpressionContext) && (((ExpressionContext) staticContext).getStyleElement() instanceof XSLAnalyzeString) && m63925b(simplify2)) {
                        staticContext.issueWarning("Found {" + m63926c(simplify2) + "} in regex attribute: perhaps {{" + m63926c(simplify2) + "}} was intended? (The attribute is an AVT, so curly braces should be doubled)", simplify2.getLocation());
                    }
                    if (staticContext.isInBackwardsCompatibleMode()) {
                        arrayList.add(makeFirstItem(simplify2, staticContext));
                    } else {
                        arrayList.add(XSLLeafNodeConstructor.makeSimpleContentConstructor(simplify2, new StringLiteral(StringValue.SINGLE_SPACE), staticContext).simplify());
                    }
                }
            } else {
                if (indexOf3 != indexOf4) {
                    XPathException xPathException = new XPathException("Closing curly brace in attribute value template \"" + str.substring(0, length) + "\" must be doubled");
                    xPathException.setErrorCode("XTSE0370");
                    xPathException.setIsStaticError(true);
                    throw xPathException;
                }
                m63924a(arrayList, str, i, indexOf3 + 1);
                i = indexOf3 + 2;
            }
        }
        if (arrayList.isEmpty()) {
            simplify = new StringLiteral(StringValue.EMPTY_STRING);
        } else if (arrayList.size() == 1) {
            simplify = ((Expression) arrayList.get(0)).simplify();
        } else {
            simplify = SystemFunction.makeCall(Keywords.FUNC_CONCAT_STRING, new RetainedStaticContext(staticContext), (Expression[]) arrayList.toArray(new Expression[arrayList.size()])).simplify();
        }
        simplify.setLocation(staticContext.getContainingLocation());
        return simplify;
    }

    public static Expression makeFirstItem(Expression expression, StaticContext staticContext) {
        if (Literal.isEmptySequence(expression)) {
            return expression;
        }
        TypeHierarchy typeHierarchy = staticContext.getConfiguration().getTypeHierarchy();
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
        atomicSequenceConverter.allocateConverterStatically(staticContext.getConfiguration(), false);
        return atomicSequenceConverter;
    }
}
