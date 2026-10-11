package net.p110sf.saxon.expr.parser;

import java.util.ArrayList;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.functions.hof.FunctionLiteral;
import net.p110sf.saxon.functions.hof.PartialApply;
import net.p110sf.saxon.functions.hof.UnresolvedXQueryFunctionItem;
import net.p110sf.saxon.functions.hof.UserFunctionReference;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.query.XQueryFunction;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.style.SourceBinding;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyFunctionTypeWithAssertions;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes11.dex */
public class ParserExtension {

    /* renamed from: a */
    public static final /* synthetic */ boolean f99941a = false;

    /* loaded from: classes11.dex */
    public static class TemporaryXSLTVariableBinding implements LocalBinding {

        /* renamed from: e */
        public SourceBinding f99942e;

        public TemporaryXSLTVariableBinding(SourceBinding sourceBinding) {
            this.f99942e = sourceBinding;
        }

        @Override // net.p110sf.saxon.expr.Binding
        public void addReference(VariableReference variableReference, boolean z) {
        }

        @Override // net.p110sf.saxon.expr.Binding
        public Sequence evaluateVariable(XPathContext xPathContext) {
            throw new UnsupportedOperationException();
        }

        @Override // net.p110sf.saxon.expr.Binding
        public IntegerValue[] getIntegerBoundsForVariable() {
            return null;
        }

        @Override // net.p110sf.saxon.expr.LocalBinding
        public int getLocalSlotNumber() {
            return 0;
        }

        @Override // net.p110sf.saxon.expr.Binding
        public SequenceType getRequiredType() {
            return this.f99942e.getInferredType(true);
        }

        @Override // net.p110sf.saxon.expr.Binding
        public StructuredQName getVariableQName() {
            return this.f99942e.getVariableQName();
        }

        @Override // net.p110sf.saxon.expr.Binding
        public boolean isAssignable() {
            return false;
        }

        @Override // net.p110sf.saxon.expr.Binding
        public boolean isGlobal() {
            return false;
        }

        @Override // net.p110sf.saxon.expr.LocalBinding
        public boolean isIndexedVariable() {
            return false;
        }

        @Override // net.p110sf.saxon.expr.LocalBinding
        public void setIndexedVariable() {
        }
    }

    /* renamed from: a */
    public static Expression m62840a(StructuredQName structuredQName, Function function) {
        return (!(function instanceof UserFunction) || structuredQName.hasURI("http://www.w3.org/1999/XSL/Transform")) ? function instanceof UnresolvedXQueryFunctionItem ? ((UnresolvedXQueryFunctionItem) function).getFunctionReference() : new FunctionLiteral(function) : new UserFunctionReference((UserFunction) function);
    }

    public static Expression curryFunction(Expression expression, Expression[] expressionArr, IntSet intSet) {
        IntIterator it2 = intSet.iterator();
        while (it2.hasNext()) {
            expressionArr[it2.next()] = null;
        }
        return new PartialApply(expression, expressionArr);
    }

    /* renamed from: b */
    public final void m62841b(XPathParser xPathParser, String str) throws XPathException {
        xPathParser.grumble(str + " require support for Saxon extensions, available in Saxon-PE or higher");
    }

    public Expression bindNumericParameterReference(XPathParser xPathParser) throws XPathException {
        m62841b(xPathParser, "Underscore functions");
        return null;
    }

    /* renamed from: c */
    public final void m62842c(XPathParser xPathParser, String str) throws XPathException {
        xPathParser.grumble(str + " requires support for XQuery Update, available in Saxon-EE or higher");
    }

    public Expression createDynamicCurriedFunction(XPathParser xPathParser, Expression expression, ArrayList<Expression> arrayList, IntSet intSet) {
        Expression curryFunction = curryFunction(expression, (Expression[]) arrayList.toArray(new Expression[arrayList.size()]), intSet);
        xPathParser.setLocation(curryFunction, xPathParser.getTokenizer().currentTokenStartOffset);
        return curryFunction;
    }

    public void handleExternalFunctionDeclaration(XQueryParser xQueryParser, XQueryFunction xQueryFunction) throws XPathException {
        m62841b(xQueryParser, "External function declarations");
    }

    public Expression makeCurriedFunction(XPathParser xPathParser, int i, StructuredQName structuredQName, Expression[] expressionArr, IntSet intSet) throws XPathException {
        StaticContext staticContext = xPathParser.getStaticContext();
        Function functionItem = staticContext.getFunctionLibrary().getFunctionItem(new SymbolicName.C18533F(structuredQName, expressionArr.length), staticContext);
        if (functionItem == null) {
            return xPathParser.reportMissingFunction(i, structuredQName, expressionArr, new ArrayList());
        }
        Expression m62840a = m62840a(structuredQName, functionItem);
        xPathParser.setLocation(m62840a, i);
        return curryFunction(m62840a, expressionArr, intSet);
    }

    public Expression parseDotFunction(XPathParser xPathParser) throws XPathException {
        m62841b(xPathParser, "Dot functions");
        return null;
    }

    public Expression parseExtendedExprSingle(XPathParser xPathParser) throws XPathException {
        return null;
    }

    public ItemType parseExtendedItemType(XPathParser xPathParser) throws XPathException {
        return null;
    }

    public Expression parseForMemberExpression(XPathParser xPathParser) throws XPathException {
        return null;
    }

    public ItemType parseFunctionItemType(XPathParser xPathParser, AnnotationList annotationList) throws XPathException {
        Tokenizer tokenizer = xPathParser.getTokenizer();
        xPathParser.nextToken();
        ArrayList arrayList = new ArrayList(3);
        int i = tokenizer.currentToken;
        if (i == 207 || i == 17) {
            xPathParser.nextToken();
            xPathParser.expect(204);
            xPathParser.nextToken();
            return annotationList.isEmpty() ? AnyFunctionType.getInstance() : new AnyFunctionTypeWithAssertions(annotationList, xPathParser.getStaticContext().getConfiguration());
        }
        while (tokenizer.currentToken != 204) {
            arrayList.add(xPathParser.parseSequenceType());
            int i2 = tokenizer.currentToken;
            if (i2 == 204) {
                break;
            }
            if (i2 == 7) {
                xPathParser.nextToken();
            } else {
                xPathParser.grumble("Expected ',' or ')' after function argument type, found '" + Token.tokens[tokenizer.currentToken] + Chars.QUOTE);
            }
        }
        xPathParser.nextToken();
        if (tokenizer.currentToken == 71) {
            xPathParser.nextToken();
            return new SpecificFunctionType((SequenceType[]) arrayList.toArray(new SequenceType[arrayList.size()]), xPathParser.parseSequenceType(), annotationList);
        }
        if (arrayList.isEmpty()) {
            xPathParser.grumble("function() is no longer allowed for a general function type: must be function(*)");
            return null;
        }
        xPathParser.grumble("Result type must be given if an argument type is given: expected 'as (type)'");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a4 A[Catch: XPathException -> 0x00ca, TRY_LEAVE, TryCatch #0 {XPathException -> 0x00ca, blocks: (B:19:0x0095, B:21:0x00a4), top: B:18:0x0095 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression parseNamedFunctionReference(net.p110sf.saxon.expr.parser.XPathParser r8) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.ParserExtension.parseNamedFunctionReference(net.sf.saxon.expr.parser.XPathParser):net.sf.saxon.expr.Expression");
    }

    public void parseRevalidationDeclaration(XQueryParser xQueryParser) throws XPathException {
        m62842c(xQueryParser, "A revalidation declaration");
    }

    public void parseTypeAliasDeclaration(XQueryParser xQueryParser) throws XPathException {
        m62841b(xQueryParser, "Type alias declarations");
    }

    public Expression parseTypePattern(XPathParser xPathParser) throws XPathException {
        m62841b(xPathParser, "type-based patterns");
        return null;
    }

    public Expression parseUnderscoreFunction(XPathParser xPathParser) throws XPathException {
        m62841b(xPathParser, "Underscore functions");
        return null;
    }

    public void parseUpdatingFunctionDeclaration(XQueryParser xQueryParser) throws XPathException {
        m62842c(xQueryParser, "An updating function");
    }
}
