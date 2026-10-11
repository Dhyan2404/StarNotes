package net.p110sf.saxon.pattern;

import com.onyx.android.sdk.data.common.cloud.Constant;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.AndExpression;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FilterExpression;
import net.p110sf.saxon.expr.InstanceOfExpression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.ValueComparison;
import net.p110sf.saxon.expr.VennExpression;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Tokenizer;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.functions.Doc;
import net.p110sf.saxon.functions.KeyFn;
import net.p110sf.saxon.functions.Root_1;
import net.p110sf.saxon.functions.SuperId;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.om.QNameParser;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class PatternParser extends XPathParser {

    /* renamed from: g */
    public int f100930g = 0;

    /* renamed from: C */
    public final void m63466C(Expression expression) throws XPathException {
        if (expression instanceof ContextItemExpression) {
            grumble("A predicatePattern can appear only at the outermost level (union operator not allowed)");
        }
        if (expression instanceof FilterExpression) {
            m63466C(((FilterExpression) expression).getBase());
        }
        if (expression instanceof VennExpression) {
            VennExpression vennExpression = (VennExpression) expression;
            m63466C(vennExpression.getLhsExpression());
            m63466C(vennExpression.getRhsExpression());
        }
    }

    /* renamed from: D */
    public final boolean m63467D(String str) {
        return str.startsWith(".");
    }

    /* renamed from: E */
    public final boolean m63468E(String str) throws XPathException {
        if (!str.matches("^(type|record|map|array|union|atomic)\\s*\\(.+")) {
            return false;
        }
        checkLanguageVersion40();
        return true;
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public void customizeTokenizer(Tokenizer tokenizer) {
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Expression makeTracer(Expression expression, StructuredQName structuredQName) {
        return expression;
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Expression parseBasicStep(boolean z) throws XPathException {
        if (this.f100930g > 0) {
            return super.parseBasicStep(z);
        }
        Tokenizer tokenizer = this.f99997t;
        int i = tokenizer.currentToken;
        if (i == 21) {
            if (z) {
                return super.parseBasicStep(z);
            }
            grumble("In an XSLT 3.0 pattern, a variable reference is allowed only as the first step in a path");
            return null;
        }
        if (i == 35) {
            if (!z) {
                grumble("In an XSLT pattern, a function call is allowed only as the first step in a path");
            }
            return super.parseBasicStep(z);
        }
        if (i != 43) {
            if (i == 69) {
                String str = tokenizer.currentTokenValue;
                str.hashCode();
                char c = 65535;
                switch (str.hashCode()) {
                    case -1407396309:
                        if (str.equals("atomic")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 107868:
                        if (str.equals(Constant.MAP_TAG)) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3575610:
                        if (str.equals("type")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 93090393:
                        if (str.equals("array")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 110725064:
                        if (str.equals("tuple")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 111433423:
                        if (str.equals("union")) {
                            c = 5;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        return this.parserExtension.parseTypePattern(this);
                    default:
                        return super.parseBasicStep(z);
                }
            }
            if (i != 202 && i != 206 && i != 209 && i != 217) {
                switch (i) {
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                        break;
                    default:
                        return super.parseBasicStep(z);
                }
            }
        }
        grumble("Token " + currentTokenDisplay() + " not allowed here in an XSLT pattern");
        return null;
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Expression parseExpression() throws XPathException {
        Tokenizer tokenizer = getTokenizer();
        if (this.f100930g > 0) {
            return super.parseExpression();
        }
        if (this.allowXPath40Syntax && tokenizer.currentToken == 69 && (tokenizer.currentTokenValue.equals("record") || tokenizer.currentTokenValue.equals("type") || tokenizer.currentTokenValue.equals(Constant.MAP_TAG) || tokenizer.currentTokenValue.equals("array"))) {
            Expression itemTypePattern = new ItemTypePattern(parseItemType());
            itemTypePattern.setRetainedStaticContext(this.env.makeRetainedStaticContext());
            setLocation(itemTypePattern);
            while (tokenizer.currentToken == 4) {
                itemTypePattern = parsePredicate(itemTypePattern).toPattern(this.env.getConfiguration());
            }
            return itemTypePattern;
        }
        if (!this.allowXPath40Syntax || tokenizer.currentToken != 69 || !tokenizer.currentTokenValue.equals("atomic")) {
            return parseBinaryExpression(parsePathExpression(), 10);
        }
        nextToken();
        expect(201);
        StructuredQName makeStructuredQName = makeStructuredQName(tokenizer.currentTokenValue, this.env.getDefaultElementNamespace());
        nextToken();
        expect(204);
        nextToken();
        SchemaType schemaType = this.env.getConfiguration().getSchemaType(makeStructuredQName);
        if (schemaType == null || !schemaType.isAtomicType()) {
            grumble("Unknown atomic type " + makeStructuredQName);
        }
        Expression itemTypePattern2 = new ItemTypePattern((AtomicType) schemaType);
        setLocation(itemTypePattern2);
        while (tokenizer.currentToken == 4) {
            itemTypePattern2 = parsePredicate(itemTypePattern2);
        }
        return itemTypePattern2;
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Expression parseFunctionArgument() throws XPathException {
        if (this.f100930g > 0) {
            return super.parseFunctionArgument();
        }
        int i = this.f99997t.currentToken;
        if (i == 21) {
            return parseVariableReference();
        }
        if (i == 202) {
            return parseStringLiteral(true);
        }
        if (i == 209) {
            return parseNumericLiteral(true);
        }
        grumble("A function argument in an XSLT pattern must be a variable reference or literal");
        return null;
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Expression parseFunctionCall(Expression expression) throws XPathException {
        Expression parseFunctionCall = super.parseFunctionCall(expression);
        if (this.f100930g <= 0 && !parseFunctionCall.isCallOn(SuperId.class) && !parseFunctionCall.isCallOn(KeyFn.class) && !parseFunctionCall.isCallOn(Doc.class) && !parseFunctionCall.isCallOn(Root_1.class)) {
            grumble("The " + parseFunctionCall + " function is not allowed at the head of a pattern");
        }
        return parseFunctionCall;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v9, types: [net.sf.saxon.expr.LetExpression, net.sf.saxon.expr.LocalBinding, net.sf.saxon.expr.Assignation, net.sf.saxon.expr.Expression] */
    public Pattern parsePattern(String str, StaticContext staticContext) throws XPathException {
        Pattern fromExpression;
        ValueComparison valueComparison;
        this.env = staticContext;
        this.charChecker = staticContext.getConfiguration().getValidCharacterChecker();
        XPathParser.ParsedLanguage parsedLanguage = XPathParser.ParsedLanguage.XSLT_PATTERN;
        this.language = parsedLanguage;
        String trim = str.trim();
        if (trim.startsWith("(:")) {
            Tokenizer tokenizer = new Tokenizer();
            this.f99997t = tokenizer;
            tokenizer.languageLevel = 30;
            tokenizer.tokenize(trim, 0, -1);
            trim = trim.substring(this.f99997t.currentTokenStartOffset);
        }
        Configuration configuration = staticContext.getConfiguration();
        Feature<Boolean> feature = Feature.ALLOW_SYNTAX_EXTENSIONS;
        boolean z = true;
        this.allowXPath40Syntax = configuration.getBooleanProperty(feature) || staticContext.getXPathVersion() == 40;
        if (m63467D(trim)) {
            Expression parse = parse(str, 0, 0, staticContext);
            if (parse instanceof Pattern) {
                return (Pattern) parse;
            }
            if (parse instanceof ContextItemExpression) {
                return new UniversalPattern();
            }
            if (parse instanceof FilterExpression) {
                Expression expression = null;
                while (parse instanceof FilterExpression) {
                    FilterExpression filterExpression = (FilterExpression) parse;
                    Expression actionExpression = filterExpression.getActionExpression();
                    parse = filterExpression.getSelectExpression();
                    Affinity relationship = staticContext.getConfiguration().getTypeHierarchy().relationship(actionExpression.getItemType(), NumericType.getInstance());
                    if (relationship != Affinity.DISJOINT) {
                        if (relationship == Affinity.SAME_TYPE || relationship == Affinity.SUBSUMED_BY) {
                            valueComparison = new ValueComparison(actionExpression, 50, Literal.makeLiteral(Int64Value.PLUS_ONE));
                        } else {
                            ?? letExpression = new LetExpression();
                            letExpression.setVariableQName(new StructuredQName("vv", NamespaceConstant.SAXON_GENERATED_VARIABLE, "v" + actionExpression.hashCode()));
                            LocalVariableReference localVariableReference = new LocalVariableReference((LocalBinding) letExpression);
                            SequenceType sequenceType = SequenceType.SINGLE_NUMERIC;
                            InstanceOfExpression instanceOfExpression = new InstanceOfExpression(localVariableReference, sequenceType);
                            LocalVariableReference localVariableReference2 = new LocalVariableReference((LocalBinding) letExpression);
                            localVariableReference2.setStaticType(sequenceType, null, 0);
                            Choose choose = new Choose(new Expression[]{instanceOfExpression, Literal.makeLiteral(BooleanValue.TRUE)}, new Expression[]{new ValueComparison(localVariableReference2, 50, Literal.makeLiteral(Int64Value.PLUS_ONE)), new LocalVariableReference((LocalBinding) letExpression)});
                            letExpression.setSequence(actionExpression);
                            letExpression.setAction(choose);
                            letExpression.setRequiredType(SequenceType.ANY_SEQUENCE);
                            letExpression.setRetainedStaticContext(staticContext.makeRetainedStaticContext());
                            valueComparison = letExpression;
                        }
                        actionExpression = valueComparison;
                    }
                    expression = expression == null ? actionExpression : new AndExpression(actionExpression, expression);
                }
                if (parse instanceof ContextItemExpression) {
                    return new BooleanExpressionPattern(expression);
                }
            }
            grumble("Pattern starting with '.' must be followed by a sequence of predicates");
            return null;
        }
        if (m63468E(str)) {
            this.env = staticContext;
            if (this.qNameParser == null) {
                QNameParser qNameParser = new QNameParser(staticContext.getNamespaceResolver());
                this.qNameParser = qNameParser;
                if (this.languageVersion >= 30) {
                    this.qNameParser = qNameParser.withAcceptEQName(true);
                }
            }
            this.language = parsedLanguage;
            Tokenizer tokenizer2 = new Tokenizer();
            this.f99997t = tokenizer2;
            tokenizer2.languageLevel = staticContext.getXPathVersion();
            Tokenizer tokenizer3 = this.f99997t;
            if (!staticContext.getConfiguration().getBooleanProperty(feature) && this.f99997t.languageLevel != 40) {
                z = false;
            }
            tokenizer3.allowSaxonExtensions = z;
            this.allowXPath40Syntax = z;
            try {
                this.f99997t.tokenize(str, 0, -1);
            } catch (XPathException e) {
                grumble(e.getMessage());
            }
            Pattern itemTypePattern = new ItemTypePattern(parseItemType());
            while (this.f99997t.currentToken == 4) {
                nextToken();
                Expression parsePredicate = parsePredicate();
                expect(203);
                nextToken();
                itemTypePattern = new BasePatternWithPredicate(itemTypePattern, parsePredicate);
            }
            expect(0);
            return itemTypePattern;
        }
        Expression parse2 = parse(str, 0, 0, staticContext);
        parse2.setRetainedStaticContext(staticContext.makeRetainedStaticContext());
        if (parse2 instanceof VennExpression) {
            VennExpression vennExpression = (VennExpression) parse2;
            m63466C(vennExpression.getLhsExpression());
            m63466C(vennExpression.getRhsExpression());
        }
        ExpressionVisitor make = ExpressionVisitor.make(staticContext);
        make.setOptimizeForPatternMatching(true);
        try {
            fromExpression = PatternMaker.fromExpression(parse2.simplify().typeCheck(make, make.getConfiguration().makeContextItemStaticInfo(AnyNodeTest.getInstance(), true)), staticContext.getConfiguration(), true);
        } catch (XPathException unused) {
            fromExpression = PatternMaker.fromExpression(parse2.simplify(), staticContext.getConfiguration(), true);
        }
        fromExpression.setOriginalText(str);
        if (fromExpression instanceof UnionPattern) {
            String[] split = str.split("\\|");
            if (split.length == 2) {
                UnionPattern unionPattern = (UnionPattern) fromExpression;
                unionPattern.f100938p1.setOriginalText(split[0]);
                unionPattern.f100939p2.setOriginalText(split[1]);
            }
        }
        boolean z2 = parse2 instanceof FilterExpression;
        if (z2 && (((FilterExpression) parse2).getBase() instanceof ContextItemExpression) && (!this.allowXPath40Syntax || (!str.startsWith("tuple") && !str.startsWith(Constant.MAP_TAG) && !str.startsWith("array") && !str.startsWith("union")))) {
            grumble("A predicatePattern can appear only at the outermost level (parentheses not allowed)");
        }
        if (z2 && (fromExpression instanceof NodeTestPattern)) {
            fromExpression.setPriority(0.5d);
        }
        return fromExpression;
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Expression parsePredicate() throws XPathException {
        Tokenizer tokenizer = this.f99997t;
        boolean z = tokenizer.disallowUnionKeyword;
        tokenizer.disallowUnionKeyword = false;
        this.f100930g++;
        Expression parseExpression = parseExpression();
        this.f100930g--;
        this.f99997t.disallowUnionKeyword = z;
        return parseExpression;
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public void testPermittedAxis(int i, String str) throws XPathException {
        super.testPermittedAxis(i, str);
        if (this.f100930g != 0 || AxisInfo.isSubtreeAxis[i]) {
            return;
        }
        grumble("The " + AxisInfo.axisName[i] + " is not allowed in a pattern");
    }
}
