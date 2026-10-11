package net.p110sf.saxon.expr.parser;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.expr.Assignation;
import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.CastExpression;
import net.p110sf.saxon.expr.CastableExpression;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FilterExpression;
import net.p110sf.saxon.expr.ForExpression;
import net.p110sf.saxon.expr.ForMemberExpression;
import net.p110sf.saxon.expr.HomogeneityChecker;
import net.p110sf.saxon.expr.InstanceOfExpression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.ListCastableFunction;
import net.p110sf.saxon.expr.ListConstructorFunction;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.LookupAllExpression;
import net.p110sf.saxon.expr.LookupExpression;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.QuantifiedExpression;
import net.p110sf.saxon.expr.RootExpression;
import net.p110sf.saxon.expr.SlashExpression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StaticFunctionCall;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.TreatExpression;
import net.p110sf.saxon.expr.UnionCastableFunction;
import net.p110sf.saxon.expr.UnionConstructorFunction;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.instruct.ForEach;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.instruct.UserFunctionParameter;
import net.p110sf.saxon.expr.parser.ParserExtension;
import net.p110sf.saxon.functions.ApplyFn;
import net.p110sf.saxon.functions.CurrentGroupCall;
import net.p110sf.saxon.functions.CurrentGroupingKeyCall;
import net.p110sf.saxon.functions.CurrentMergeGroup;
import net.p110sf.saxon.functions.CurrentMergeKey;
import net.p110sf.saxon.functions.RegexGroup;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.hof.PartialApply;
import net.p110sf.saxon.functions.hof.UserFunctionReference;
import net.p110sf.saxon.functions.registry.VendorFunctionSetHE;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.ma.arrays.ArrayFunctionSet;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.arrays.SimpleArrayItem;
import net.p110sf.saxon.ma.arrays.SquareArrayConstructor;
import net.p110sf.saxon.ma.map.MapFunctionSet;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.QNameParser;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntArraySet;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.pattern.CombinedNodeTest;
import net.p110sf.saxon.pattern.LocalNameTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NamespaceTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.QNameTest;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.UnprefixedElementMatchingPolicy;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.style.ExpressionContext;
import net.p110sf.saxon.style.SourceBinding;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.VisibilityProvenance;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.transpile.CSharp;
import net.p110sf.saxon.tree.util.IndexedStack;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.CastingTarget;
import net.p110sf.saxon.type.EnumerationType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.JavaExternalObjectType;
import net.p110sf.saxon.type.ListType;
import net.p110sf.saxon.type.LocalUnionType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.UnionType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes11.dex */
public class XPathParser {

    /* renamed from: d */
    public static final String[] f99991d = {"attribute", "comment", "document-node", "element", "empty-sequence", Constants.EXSLT_ELEMNAME_FUNCTION_STRING, Constants.ELEMNAME_IF_STRING, "item", "namespace-node", "node", Constants.ELEMNAME_PI_STRING, "schema-attribute", "schema-element", "switch", "text", "typeswitch"};

    /* renamed from: e */
    public static final String[] f99992e = {"array", "attribute", "comment", "document-node", "element", "empty-sequence", Constants.EXSLT_ELEMNAME_FUNCTION_STRING, Constants.ELEMNAME_IF_STRING, "item", Constant.MAP_TAG, "namespace-node", "node", Constants.ELEMNAME_PI_STRING, "schema-attribute", "schema-element", "switch", "text", "typeswitch"};

    /* renamed from: f */
    public static final /* synthetic */ boolean f99993f = false;
    protected IntPredicateProxy charChecker;
    protected StaticContext env;
    protected QNameParser qNameParser;

    /* renamed from: t */
    protected Tokenizer f99997t;
    protected IndexedStack<LocalBinding> rangeVariables = new IndexedStack<>();
    public IndexedStack<InlineFunctionDetails> inlineFunctionStack = new IndexedStack<>();
    protected ParserExtension parserExtension = new ParserExtension();
    protected boolean allowXPath30Syntax = false;
    protected boolean allowXPath30XSLTExtensions = false;
    protected boolean allowXPath31Syntax = false;
    protected boolean allowXPath40Syntax = false;
    protected boolean allowSaxonExtensions = false;
    protected boolean scanOnly = false;

    /* renamed from: a */
    public boolean f99994a = false;
    protected CodeInjector codeInjector = null;

    /* renamed from: b */
    public Accelerator f99995b = null;
    protected ParsedLanguage language = ParsedLanguage.XPATH;
    protected int languageVersion = 20;
    protected int catchDepth = 0;

    /* renamed from: c */
    public Location f99996c = Loc.NONE;

    /* loaded from: classes11.dex */
    public interface Accelerator {
        Expression parse(Tokenizer tokenizer, StaticContext staticContext, String str, int i, int i2);
    }

    /* loaded from: classes11.dex */
    public static class InlineFunctionDetails {
        public List<UserFunctionParameter> implicitParams;
        public IndexedStack<LocalBinding> outerVariables;
        public List<LocalBinding> outerVariablesUsed;
    }

    /* loaded from: classes11.dex */
    public enum ParsedLanguage {
        XPATH,
        XSLT_PATTERN,
        SEQUENCE_TYPE,
        XQUERY,
        EXTENDED_ITEM_TYPE
    }

    /* renamed from: net.sf.saxon.expr.parser.XPathParser$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18323a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f100002a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f100003b;

        static {
            int[] iArr = new int[UnprefixedElementMatchingPolicy.values().length];
            f100003b = iArr;
            try {
                iArr[UnprefixedElementMatchingPolicy.DEFAULT_NAMESPACE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100003b[UnprefixedElementMatchingPolicy.DEFAULT_NAMESPACE_OR_NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100003b[UnprefixedElementMatchingPolicy.ANY_NAMESPACE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[ParsedLanguage.values().length];
            f100002a = iArr2;
            try {
                iArr2[ParsedLanguage.XPATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100002a[ParsedLanguage.XSLT_PATTERN.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f100002a[ParsedLanguage.SEQUENCE_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f100002a[ParsedLanguage.XQUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f100002a[ParsedLanguage.EXTENDED_ITEM_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: b */
    public static LocalBinding m62859b(StructuredQName structuredQName, IndexedStack<InlineFunctionDetails> indexedStack, int i) {
        for (UserFunctionParameter userFunctionParameter : indexedStack.get(i).implicitParams) {
            if (userFunctionParameter.getVariableQName().equals(structuredQName)) {
                UserFunctionParameter userFunctionParameter2 = userFunctionParameter;
                for (int i2 = i + 1; i2 <= indexedStack.size() - 1; i2++) {
                    InlineFunctionDetails inlineFunctionDetails = indexedStack.get(i2);
                    boolean z = false;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= inlineFunctionDetails.outerVariablesUsed.size() - 1) {
                            break;
                        }
                        if (inlineFunctionDetails.outerVariablesUsed.get(i3) == userFunctionParameter) {
                            userFunctionParameter2 = inlineFunctionDetails.implicitParams.get(i3);
                            z = true;
                            break;
                        }
                        i3++;
                    }
                    if (!z) {
                        inlineFunctionDetails.outerVariablesUsed.add(userFunctionParameter);
                        userFunctionParameter2 = new UserFunctionParameter();
                        userFunctionParameter2.setVariableQName(structuredQName);
                        userFunctionParameter2.setRequiredType(userFunctionParameter.getRequiredType());
                        inlineFunctionDetails.implicitParams.add(userFunctionParameter2);
                    }
                }
                if (userFunctionParameter2 != null) {
                    return userFunctionParameter2;
                }
            }
        }
        return null;
    }

    /* renamed from: d */
    public static String m62860d(Configuration configuration) {
        return configuration.getEditionCode().equals("HE") ? "Reflexive calls to external .NET methods are not available under Saxon-HE" : !configuration.isLicensedFeature(8) ? "Reflexive calls to external .NET methods require a Saxon-PE or Saxon-EE license, and none was found" : "For diagnostics on calls to .NET methods, use the -TJ command line option or call processor.SetProperty(\"http://saxon.sf.net/feature/trace-external-functions\", \"true\")";
    }

    /* renamed from: e */
    public static String m62861e(Configuration configuration) {
        return configuration.getEditionCode().equals("HE") ? "Reflexive calls to Java methods are not available under Saxon-HE" : !configuration.isLicensedFeature(8) ? "Reflexive calls to Java methods require a Saxon-PE or Saxon-EE license, and none was found" : "For diagnostics on calls to Java methods, use the -TJ command line option or set the Configuration property FeatureKeys.TRACE_EXTERNAL_FUNCTIONS";
    }

    /* renamed from: f */
    public static LocalBinding m62862f(StructuredQName structuredQName, IndexedStack<InlineFunctionDetails> indexedStack) {
        int size = indexedStack.size() - 1;
        while (size >= 0) {
            IndexedStack<LocalBinding> indexedStack2 = indexedStack.get(size).outerVariables;
            for (int size2 = indexedStack2.size() - 1; size2 >= 0; size2--) {
                UserFunctionParameter userFunctionParameter = indexedStack2.get(size2);
                if (userFunctionParameter.getVariableQName().equals(structuredQName)) {
                    while (size <= indexedStack.size() - 1) {
                        InlineFunctionDetails inlineFunctionDetails = indexedStack.get(size);
                        boolean z = false;
                        int i = 0;
                        while (true) {
                            if (i >= inlineFunctionDetails.outerVariablesUsed.size() - 1) {
                                break;
                            }
                            if (inlineFunctionDetails.outerVariablesUsed.get(i) == userFunctionParameter) {
                                userFunctionParameter = inlineFunctionDetails.implicitParams.get(i);
                                z = true;
                                break;
                            }
                            i++;
                        }
                        if (!z) {
                            inlineFunctionDetails.outerVariablesUsed.add(userFunctionParameter);
                            UserFunctionParameter userFunctionParameter2 = new UserFunctionParameter();
                            userFunctionParameter2.setVariableQName(structuredQName);
                            userFunctionParameter2.setRequiredType(userFunctionParameter.getRequiredType());
                            inlineFunctionDetails.implicitParams.add(userFunctionParameter2);
                            userFunctionParameter = userFunctionParameter2;
                        }
                        size++;
                    }
                    return userFunctionParameter;
                }
            }
            LocalBinding m62859b = m62859b(structuredQName, indexedStack, size);
            if (m62859b != null) {
                return m62859b;
            }
            size--;
        }
        return null;
    }

    /* renamed from: g */
    public static LocalBinding m62863g(StructuredQName structuredQName, IndexedStack<InlineFunctionDetails> indexedStack, StaticContext staticContext) {
        boolean z;
        SourceBinding bindLocalVariable = ((ExpressionContext) staticContext).getStyleElement().bindLocalVariable(structuredQName);
        if (bindLocalVariable == null) {
            return null;
        }
        InlineFunctionDetails inlineFunctionDetails = indexedStack.get(0);
        int i = 0;
        while (true) {
            if (i >= inlineFunctionDetails.outerVariablesUsed.size()) {
                z = false;
                break;
            }
            if (inlineFunctionDetails.outerVariablesUsed.get(i).getVariableQName().equals(structuredQName)) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            inlineFunctionDetails.outerVariablesUsed.add(new ParserExtension.TemporaryXSLTVariableBinding(bindLocalVariable));
            UserFunctionParameter userFunctionParameter = new UserFunctionParameter();
            userFunctionParameter.setVariableQName(structuredQName);
            userFunctionParameter.setRequiredType(bindLocalVariable.getInferredType(true));
            inlineFunctionDetails.implicitParams.add(userFunctionParameter);
        }
        return m62859b(structuredQName, indexedStack, 0);
    }

    public static String getMissingFunctionExplanation(StructuredQName structuredQName, Configuration configuration) {
        String uri = structuredQName.getURI();
        String findSimilarNamespace = NamespaceConstant.findSimilarNamespace(uri);
        if (findSimilarNamespace == null) {
            if (uri.contains("java")) {
                return m62861e(configuration);
            }
            if (uri.startsWith("clitype:")) {
                return m62860d(configuration);
            }
            return null;
        }
        if (!findSimilarNamespace.equals(uri)) {
            return "Perhaps the intended namespace was '" + findSimilarNamespace + CloudStorageConstants.SINGLE_QUOTES;
        }
        if (findSimilarNamespace.equals("http://www.w3.org/1999/XSL/Transform")) {
            return structuredQName.getLocalPart().equals("original") ? "Function name xsl:original is only available within an overriding function" : "There are no functions defined in the XSLT namespace";
        }
        if (!findSimilarNamespace.equals(NamespaceConstant.SAXON)) {
            return null;
        }
        if (configuration.getEditionCode().equals("HE")) {
            return "Saxon extension functions are not available under Saxon-HE";
        }
        if (configuration.isLicensedFeature(8)) {
            return null;
        }
        return "Saxon extension functions require a Saxon-PE or Saxon-EE license";
    }

    public static boolean isReservedFunctionName30(String str) {
        return Arrays.binarySearch(f99991d, str) >= 0;
    }

    public static boolean isReservedFunctionName31(String str) {
        return Arrays.binarySearch(f99992e, str) >= 0;
    }

    /* renamed from: l */
    public static Expression m62864l(XPathParser xPathParser, Expression expression, Expression expression2) {
        return new LookupExpression(expression, expression2);
    }

    public static Expression makeInlineFunctionValue(XPathParser xPathParser, AnnotationList annotationList, InlineFunctionDetails inlineFunctionDetails, List<UserFunctionParameter> list, SequenceType sequenceType, Expression expression) {
        Expression userFunctionReference;
        LocalVariableReference localVariableReference;
        int size = list.size();
        UserFunction userFunction = new UserFunction();
        userFunction.setFunctionName(new StructuredQName("anon", NamespaceConstant.ANONYMOUS, "f_" + userFunction.hashCode()));
        userFunction.setPackageData(xPathParser.getStaticContext().getPackageData());
        userFunction.setBody(expression);
        userFunction.setAnnotations(annotationList);
        userFunction.setResultType(sequenceType);
        userFunction.incrementReferenceCount();
        if (userFunction.getPackageData() instanceof StylesheetPackage) {
            StylesheetPackage stylesheetPackage = (StylesheetPackage) userFunction.getPackageData();
            userFunction.setDeclaringComponent(Component.makeComponent(userFunction, Visibility.PRIVATE, VisibilityProvenance.DEFAULTED, stylesheetPackage, stylesheetPackage));
        }
        List<UserFunctionParameter> list2 = inlineFunctionDetails.implicitParams;
        if (list2.isEmpty()) {
            UserFunctionParameter[] userFunctionParameterArr = (UserFunctionParameter[]) list.toArray(new UserFunctionParameter[0]);
            userFunction.setParameterDefinitions(userFunctionParameterArr);
            SlotManager makeSlotManager = xPathParser.getStaticContext().getConfiguration().makeSlotManager();
            for (UserFunctionParameter userFunctionParameter : userFunctionParameterArr) {
                makeSlotManager.allocateSlotNumber(userFunctionParameter.getVariableQName());
            }
            ExpressionTool.allocateSlots(expression, list.size(), makeSlotManager);
            userFunction.setStackFrameMap(makeSlotManager);
            userFunctionReference = new UserFunctionReference(userFunction);
        } else {
            int size2 = list.size() + list2.size();
            UserFunctionParameter[] userFunctionParameterArr2 = new UserFunctionParameter[size2];
            for (int i = 0; i < list.size(); i++) {
                userFunctionParameterArr2[i] = list.get(i);
            }
            int size3 = list.size();
            Iterator<UserFunctionParameter> it2 = list2.iterator();
            while (it2.hasNext()) {
                userFunctionParameterArr2[size3] = it2.next();
                size3++;
            }
            userFunction.setParameterDefinitions(userFunctionParameterArr2);
            SlotManager makeSlotManager2 = xPathParser.getStaticContext().getConfiguration().makeSlotManager();
            for (int i2 = 0; i2 < size2; i2++) {
                userFunctionParameterArr2[i2].setSlotNumber(makeSlotManager2.allocateSlotNumber(userFunctionParameterArr2[i2].getVariableQName()));
            }
            ExpressionTool.allocateSlots(expression, size2, makeSlotManager2);
            userFunction.setStackFrameMap(makeSlotManager2);
            UserFunctionReference userFunctionReference2 = new UserFunctionReference(userFunction);
            Expression[] expressionArr = new Expression[size2];
            for (int i3 = 0; i3 < size; i3++) {
                expressionArr[i3] = null;
            }
            for (int i4 = 0; i4 < list2.size(); i4++) {
                UserFunctionParameter userFunctionParameter2 = list2.get(i4);
                LocalBinding localBinding = inlineFunctionDetails.outerVariablesUsed.get(i4);
                if (localBinding instanceof ParserExtension.TemporaryXSLTVariableBinding) {
                    localVariableReference = new LocalVariableReference(localBinding);
                    ((ParserExtension.TemporaryXSLTVariableBinding) localBinding).f99942e.registerReference(localVariableReference);
                } else {
                    localVariableReference = new LocalVariableReference(localBinding);
                }
                localVariableReference.setStaticType(localBinding.getRequiredType(), null, 0);
                userFunctionParameter2.setRequiredType(localBinding.getRequiredType());
                expressionArr[i4 + size] = localVariableReference;
            }
            userFunctionReference = new PartialApply(userFunctionReference2, expressionArr);
        }
        if (userFunction.getPackageData() instanceof StylesheetPackage) {
            ((StylesheetPackage) userFunction.getPackageData()).addComponent(userFunction.getDeclaringComponent());
        }
        return userFunctionReference;
    }

    /* renamed from: n */
    public static Expression m62865n(Expression expression) {
        return new LookupAllExpression(expression);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int operatorPrecedence(int i) {
        if (i == 1) {
            return 13;
        }
        if (i != 6) {
            if (i == 77) {
                return 19;
            }
            if (i == 29) {
                return 9;
            }
            if (i == 30) {
                return 7;
            }
            if (i != 38 && i != 39) {
                switch (i) {
                    case 9:
                        return 4;
                    case 10:
                        return 5;
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 20:
                        break;
                    case 15:
                    case 16:
                        return 10;
                    case 17:
                    case 18:
                    case 19:
                        return 11;
                    default:
                        switch (i) {
                            case 22:
                                break;
                            case 23:
                            case 24:
                                return 14;
                            default:
                                switch (i) {
                                    case 45:
                                        return 15;
                                    case 46:
                                        return 18;
                                    case 47:
                                        return 16;
                                    case 48:
                                    case 49:
                                        return 3;
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                        break;
                                    case 56:
                                        return 11;
                                    case 57:
                                        return 17;
                                    default:
                                        switch (i) {
                                            case 79:
                                                return 12;
                                            case 80:
                                                return 5;
                                            case 81:
                                                return 4;
                                            case 82:
                                                return 8;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
            }
        }
        return 6;
    }

    public static String whyDisallowedType(PackageData packageData, BuiltInAtomicType builtInAtomicType) {
        if (builtInAtomicType.isAllowedInXSD10() || packageData.getConfiguration().getXsdVersion() != 10) {
            return null;
        }
        return "The built-in atomic type " + builtInAtomicType.getDisplayName() + " is not recognized unless XSD 1.1 is enabled";
    }

    /* renamed from: A */
    public final Expression m62866A(Expression expression) throws XPathException {
        nextToken();
        Expression parseExprSingle = parseExprSingle();
        expect(49);
        nextToken();
        return Choose.makeConditional(expression, parseExprSingle, parseExprSingle());
    }

    /* renamed from: B */
    public final Expression m62867B() throws XPathException {
        Expression m62880t;
        Tokenizer tokenizer = this.f99997t;
        int i = tokenizer.currentToken;
        if (i == 15) {
            nextToken();
            m62880t = m62880t(15, m62867B());
        } else if (i == 16) {
            nextToken();
            m62880t = m62880t(299, m62867B());
        } else if (i != 60) {
            if (i != 218) {
                switch (i) {
                    case 102:
                    case 103:
                    case 104:
                    case 105:
                        m62880t = parseValidateExpression();
                        break;
                    default:
                        m62880t = parseSimpleMappingExpression();
                        break;
                }
            } else {
                m62880t = parseExtensionExpression();
            }
        } else if (tokenizer.currentTokenValue.equals("validate")) {
            m62880t = parseValidateExpression();
        } else {
            CSharp.emitCode("goto default;");
            m62880t = parseSimpleMappingExpression();
        }
        setLocation(m62880t);
        return m62880t;
    }

    /* renamed from: a */
    public final boolean m62868a() {
        int i = this.f99997t.currentToken;
        if (i == 6 || i == 20 || i == 22 || i == 29 || i == 38 || i == 39) {
            return false;
        }
        switch (i) {
            case 11:
            case 12:
            case 13:
            case 14:
                return false;
            default:
                switch (i) {
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                        return false;
                    default:
                        return true;
                }
        }
    }

    public boolean atStartOfRelativePath() {
        Tokenizer tokenizer = this.f99997t;
        int i = tokenizer.currentToken;
        if (i == 3 || i == 5 || i == 21 || i == 43 || i == 218 || i == 35 || i == 36 || i == 69 || i == 70 || i == 201 || i == 202) {
            return true;
        }
        switch (i) {
            case 60:
                return tokenizer.currentTokenValue.equals("ordered") || this.f99997t.currentTokenValue.equals("unordered");
            case 61:
            case 62:
            case 63:
            case 64:
                return true;
            default:
                switch (i) {
                    case 205:
                    case 206:
                    case 207:
                    case 208:
                    case 209:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* renamed from: c */
    public final void m62869c(StaticContext staticContext, BuiltInAtomicType builtInAtomicType) throws XPathException {
        String whyDisallowedType = whyDisallowedType(staticContext.getPackageData(), builtInAtomicType);
        if (whyDisallowedType != null) {
            grumble(whyDisallowedType, "XPST0080");
        }
    }

    public void checkLanguageVersion30() throws XPathException {
        if (this.allowXPath30Syntax) {
            return;
        }
        grumble("To use XPath 3.0 syntax, you must configure the XPath parser to handle it");
    }

    public void checkLanguageVersion31() throws XPathException {
        if (this.allowXPath31Syntax) {
            return;
        }
        grumble("The XPath parser is not configured to allow use of XPath 3.1 syntax");
    }

    public void checkLanguageVersion40() throws XPathException {
        if (this.allowXPath40Syntax) {
            return;
        }
        grumble("The XPath parser is not configured to allow use of XPath 4.0 syntax");
    }

    public void checkMapExtensions() throws XPathException {
        if (this.allowXPath31Syntax || this.allowXPath30XSLTExtensions) {
            return;
        }
        grumble("The XPath parser is not configured to allow use of the map syntax from XSLT 3.0 or XPath 3.1");
    }

    public void checkSyntaxExtensions(String str) throws XPathException {
        if (this.allowXPath40Syntax) {
            return;
        }
        grumble("Saxon XPath syntax extensions have not been enabled: " + str + " is not allowed");
    }

    public String currentTokenDisplay() {
        int i = this.f99997t.currentToken;
        if (i == 201) {
            return "name \"" + this.f99997t.currentTokenValue + '\"';
        }
        if (i == -1) {
            return "(unknown token)";
        }
        return '\"' + Token.tokens[this.f99997t.currentToken] + '\"';
    }

    public void customizeTokenizer(Tokenizer tokenizer) {
    }

    public void declareRangeVariable(LocalBinding localBinding) {
        this.rangeVariables.push(localBinding);
    }

    public boolean disallowedAtStartOfRelativePath() {
        int i = this.f99997t.currentToken;
        if (i == 57) {
            return true;
        }
        switch (i) {
            case 45:
            case 46:
            case 47:
                return true;
            default:
                return false;
        }
    }

    public void expect(int i) throws XPathException {
        if (this.f99997t.currentToken != i) {
            grumble("expected \"" + Token.tokens[i] + "\", found " + currentTokenDisplay());
        }
    }

    public LocalBinding findOuterRangeVariable(StructuredQName structuredQName) {
        return findOuterRangeVariable(structuredQName, this.inlineFunctionStack, getStaticContext());
    }

    public LocalBinding findRangeVariable(StructuredQName structuredQName) {
        for (int size = this.rangeVariables.size() - 1; size >= 0; size--) {
            LocalBinding localBinding = this.rangeVariables.get(size);
            if (localBinding.getVariableQName().equals(structuredQName)) {
                return localBinding;
            }
        }
        return findOuterRangeVariable(structuredQName);
    }

    public Expression generateApplyCall(Expression expression, ArrayList<Expression> arrayList) throws XPathException {
        SquareArrayConstructor squareArrayConstructor = new SquareArrayConstructor(arrayList);
        RetainedStaticContext retainedStaticContext = new RetainedStaticContext(getStaticContext());
        SystemFunction makeFunction = VendorFunctionSetHE.getInstance().makeFunction("apply", 2);
        makeFunction.setRetainedStaticContext(retainedStaticContext);
        Expression makeFunctionCall = makeFunction.makeFunctionCall(expression, squareArrayConstructor);
        ((ApplyFn) makeFunction).setDynamicFunctionCall(expression.toShortString());
        setLocation(makeFunctionCall, this.f99997t.currentTokenStartOffset);
        return makeFunctionCall;
    }

    public CodeInjector getCodeInjector() {
        return this.codeInjector;
    }

    public String getLanguage() {
        int i = C18323a.f100002a[this.language.ordinal()];
        return i != 2 ? i != 3 ? i != 4 ? i != 5 ? "XPath" : "Extended ItemType" : "XQuery" : "SequenceType" : "XSLT Pattern";
    }

    public ItemType getPlainType(StructuredQName structuredQName) throws XPathException {
        Configuration configuration = this.env.getConfiguration();
        String uri = structuredQName.getURI();
        if (uri.isEmpty()) {
            uri = this.env.getDefaultElementNamespace();
        }
        String localPart = structuredQName.getLocalPart();
        String displayName = structuredQName.getDisplayName();
        if (uri.equals("http://www.w3.org/2001/XMLSchema")) {
            ItemType builtInItemType = Type.getBuiltInItemType(uri, localPart);
            if (builtInItemType == null) {
                grumble("Unknown atomic type " + displayName, "XPST0051");
            }
            if (builtInItemType instanceof BuiltInAtomicType) {
                m62869c(this.env, (BuiltInAtomicType) builtInItemType);
                return builtInItemType;
            }
            if (builtInItemType.isPlainType()) {
                return builtInItemType;
            }
            grumble("The type " + displayName + " is not atomic", "XPST0051");
        } else {
            if (uri.equals(NamespaceConstant.JAVA_TYPE)) {
                try {
                    return configuration.getJavaExternalObjectType(configuration.getClass(JavaExternalObjectType.localNameToClassName(localPart), false));
                } catch (XPathException unused) {
                    this.grumble("Unknown Java class " + localPart, "XPST0051");
                    return AnyItemType.getInstance();
                }
            }
            if (uri.equals(NamespaceConstant.DOT_NET_TYPE)) {
                return Version.platform.getExternalObjectType(configuration, uri, localPart);
            }
            SchemaType schemaType = configuration.getSchemaType(structuredQName);
            if (schemaType != null) {
                if (schemaType.isAtomicType()) {
                    if (!this.env.isImportedSchema(uri)) {
                        grumble("Atomic type " + displayName + " exists, but its schema definition has not been imported", "XPST0051");
                    }
                    return (AtomicType) schemaType;
                }
                if (schemaType instanceof ItemType) {
                    ItemType itemType = (ItemType) schemaType;
                    if (itemType.isPlainType() && this.allowXPath30Syntax) {
                        if (!this.env.isImportedSchema(uri)) {
                            grumble("Type " + displayName + " exists, but its schema definition has not been imported", "XPST0051");
                        }
                        return itemType;
                    }
                }
                if (schemaType.isComplexType()) {
                    grumble("Type (" + displayName + ") is a complex type", "XPST0051");
                    return BuiltInAtomicType.ANY_ATOMIC;
                }
                if (((SimpleType) schemaType).isListType()) {
                    grumble("Type (" + displayName + ") is a list type", "XPST0051");
                    return BuiltInAtomicType.ANY_ATOMIC;
                }
                if (this.allowXPath30Syntax) {
                    grumble("Type (" + displayName + ") is a union type that cannot be used as an item type", "XPST0051");
                    return BuiltInAtomicType.ANY_ATOMIC;
                }
                grumble("The union type (" + displayName + ") cannot be used as an item type unless XPath 3.0 is enabled", "XPST0051");
                return BuiltInAtomicType.ANY_ATOMIC;
            }
            grumble("Unknown simple type " + displayName, "XPST0051");
        }
        grumble("Unknown atomic type " + displayName, "XPST0051");
        return BuiltInAtomicType.ANY_ATOMIC;
    }

    public QNameParser getQNameParser() {
        return this.qNameParser;
    }

    public IndexedStack<LocalBinding> getRangeVariables() {
        return this.rangeVariables;
    }

    public StaticContext getStaticContext() {
        return this.env;
    }

    public Tokenizer getTokenizer() {
        return this.f99997t;
    }

    public void grumble(String str) throws XPathException {
        grumble(str, this.language == ParsedLanguage.XSLT_PATTERN ? "XTSE0340" : "XPST0003");
    }

    /* renamed from: h */
    public final int m62870h() {
        return operatorPrecedence(this.f99997t.currentToken);
    }

    /* renamed from: i */
    public final ItemType m62871i(String str) throws XPathException {
        if (this.scanOnly) {
            return BuiltInAtomicType.STRING;
        }
        try {
            return getPlainType(this.qNameParser.parse(str, this.env.getDefaultElementNamespace()));
        } catch (XPathException e) {
            grumble(e.getMessage(), e.getErrorCodeLocalPart());
            return null;
        }
    }

    public boolean isAllowAbsentExpression() {
        return this.f99994a;
    }

    public boolean isAllowXPath31Syntax() {
        return this.allowXPath31Syntax;
    }

    public boolean isKeyword(String str) {
        Tokenizer tokenizer = this.f99997t;
        return tokenizer.currentToken == 201 && tokenizer.currentTokenValue.equals(str);
    }

    public boolean isNamespaceTestAllowed() {
        return this.allowXPath30Syntax;
    }

    public boolean isReservedInQuery(String str) {
        return NamespaceConstant.isReservedInQuery31(str);
    }

    /* renamed from: j */
    public final CastingTarget m62872j(String str) throws XPathException {
        StructuredQName structuredQName;
        if (this.scanOnly) {
            return BuiltInAtomicType.STRING;
        }
        try {
            structuredQName = this.qNameParser.parse(str, this.env.getDefaultElementNamespace());
        } catch (XPathException e) {
            grumble(e.getMessage(), e.getErrorCodeLocalPart());
            structuredQName = null;
        }
        String uri = structuredQName.getURI();
        String localPart = structuredQName.getLocalPart();
        if (uri.equals("http://www.w3.org/2001/XMLSchema")) {
            SimpleType builtInSimpleType = Type.getBuiltInSimpleType(uri, localPart);
            if (builtInSimpleType == null) {
                grumble("Unknown simple type " + str, this.allowXPath30Syntax ? "XQST0052" : "XPST0051");
            } else if (!(builtInSimpleType instanceof CastingTarget)) {
                grumble("Unsuitable type for cast: " + builtInSimpleType.getDescription(), "XPST0080");
            }
            CastingTarget castingTarget = (CastingTarget) builtInSimpleType;
            if (castingTarget instanceof BuiltInAtomicType) {
                m62869c(this.env, (BuiltInAtomicType) castingTarget);
            }
            return castingTarget;
        }
        if (uri.equals(NamespaceConstant.DOT_NET_TYPE)) {
            return (AtomicType) Version.platform.getExternalObjectType(this.env.getConfiguration(), uri, localPart);
        }
        SchemaType schemaType = this.env.getConfiguration().getSchemaType(new StructuredQName("", uri, localPart));
        if (schemaType == null) {
            if (this.allowXPath30Syntax) {
                grumble("Unknown simple type " + str, "XQST0052");
            } else {
                grumble("Unknown simple type " + str, "XPST0051");
            }
            return BuiltInAtomicType.ANY_ATOMIC;
        }
        if (this.allowXPath30Syntax) {
            if (!this.env.isImportedSchema(uri)) {
                grumble("Simple type " + str + " exists, but its target namespace has not been imported in the static context");
            }
            return (CastingTarget) schemaType;
        }
        if (schemaType.isAtomicType()) {
            if (!this.env.isImportedSchema(uri)) {
                grumble("Atomic type " + str + " exists, but its target namespace has not been imported in the static context");
            }
            return (AtomicType) schemaType;
        }
        if (schemaType.isComplexType()) {
            grumble("Cannot cast to a complex type (" + str + MotionUtils.f31762d, "XPST0051");
            return BuiltInAtomicType.ANY_ATOMIC;
        }
        if (((SimpleType) schemaType).isListType()) {
            grumble("Casting to a list type (" + str + ") requires XPath 3.0", "XPST0051");
            return BuiltInAtomicType.ANY_ATOMIC;
        }
        grumble("casting to a union type (" + str + ") requires XPath 3.0", "XPST0051");
        return BuiltInAtomicType.ANY_ATOMIC;
    }

    /* renamed from: k */
    public final int m62873k(String str) throws XPathException {
        if ("item".equals(str)) {
            return 88;
        }
        if ("document-node".equals(str)) {
            return 9;
        }
        if ("element".equals(str) || "schema-element".equals(str)) {
            return 1;
        }
        if ("attribute".equals(str) || "schema-attribute".equals(str)) {
            return 2;
        }
        if ("text".equals(str)) {
            return 3;
        }
        if ("comment".equals(str)) {
            return 8;
        }
        if (Constants.ELEMNAME_PI_STRING.equals(str)) {
            return 7;
        }
        if ("namespace-node".equals(str)) {
            return 13;
        }
        if ("node".equals(str)) {
            return 0;
        }
        grumble("Unknown type " + str);
        return -1;
    }

    /* renamed from: m */
    public final Expression m62874m(Expression expression, String str) {
        return new LookupExpression(expression, new StringLiteral(str));
    }

    public Expression makeCurriedFunction(int i, StructuredQName structuredQName, Expression[] expressionArr, IntSet intSet) throws XPathException {
        grumble("Partial function application is not allowed in Saxon-HE");
        return new ErrorExpression();
    }

    public final int makeFingerprint(String str, boolean z) throws XPathException {
        String defaultElementNamespace;
        if (this.scanOnly) {
            return StandardNames.XML_SPACE;
        }
        if (z) {
            try {
                defaultElementNamespace = this.env.getDefaultElementNamespace();
            } catch (XPathException e) {
                this.grumble(e.getMessage(), e.getErrorCodeLocalPart());
                return -1;
            }
        } else {
            defaultElementNamespace = "";
        }
        StructuredQName parse = this.qNameParser.parse(str, defaultElementNamespace);
        return this.env.getConfiguration().getNamePool().allocateFingerprint(parse.getURI(), parse.getLocalPart());
    }

    public LocalNameTest makeLocalNameTest(short s, String str) throws XPathException {
        if (!NameChecker.isValidNCName(StringTool.codePoints(str))) {
            grumble("Local name [" + str + "] contains invalid characters");
        }
        return new LocalNameTest(this.env.getConfiguration().getNamePool(), s, str);
    }

    public Location makeLocation(int i) {
        return makeNestedLocation(this.env.getContainingLocation(), this.f99997t.getLineNumber(i), this.f99997t.getColumnNumber(i), null);
    }

    public NodeTest makeNameTest(short s, String str, boolean z) throws XPathException {
        NamePool namePool = this.env.getConfiguration().getNamePool();
        String str2 = "";
        if (z && s == 1 && !str.startsWith("Q{") && !str.contains(":")) {
            int i = C18323a.f100003b[this.env.getUnprefixedElementMatchingPolicy().ordinal()];
            if (i == 1) {
                str2 = this.env.getDefaultElementNamespace();
            } else {
                if (i == 2) {
                    StructuredQName makeStructuredQName = makeStructuredQName(str, this.env.getDefaultElementNamespace());
                    return new CombinedNodeTest(new NameTest(s, namePool.allocateFingerprint(makeStructuredQName.getURI(), makeStructuredQName.getLocalPart()), namePool), 1, new NameTest(s, namePool.allocateFingerprint("", makeStructuredQName.getLocalPart()), namePool));
                }
                if (i == 3) {
                    if (!NameChecker.isValidNCName(StringTool.codePoints(str))) {
                        grumble("Invalid name '" + str + CloudStorageConstants.SINGLE_QUOTES);
                    }
                    return new LocalNameTest(namePool, s, str);
                }
            }
        }
        StructuredQName makeStructuredQName2 = makeStructuredQName(str, str2);
        return new NameTest(s, namePool.allocateFingerprint(makeStructuredQName2.getURI(), makeStructuredQName2.getLocalPart()), namePool);
    }

    public NamespaceTest makeNamespaceTest(short s, String str) throws XPathException {
        NamePool namePool = this.env.getConfiguration().getNamePool();
        if (this.scanOnly) {
            return new NamespaceTest(namePool, s, NamespaceConstant.SAXON);
        }
        if (str.startsWith("Q{")) {
            return new NamespaceTest(namePool, s, str.substring(2, str.length() - 2));
        }
        try {
            return new NamespaceTest(namePool, s, this.qNameParser.parse(str + ":dummy", "").getURI());
        } catch (XPathException e) {
            grumble(e.getMessage(), e.getErrorCodeLocalPart());
            return null;
        }
    }

    public Location makeNestedLocation(Location location, int i, int i2, String str) {
        return ((location instanceof Loc) && location.getLineNumber() <= 1 && location.getColumnNumber() == -1 && str == null) ? new Loc(this.env.getSystemId(), i + 1, i2 + 1) : new NestedLocation(location, i, i2, str);
    }

    public final NodeName makeNodeName(String str, boolean z) throws XPathException {
        StructuredQName makeStructuredQNameSilently = makeStructuredQNameSilently(str, z ? this.env.getDefaultElementNamespace() : "");
        String prefix = makeStructuredQNameSilently.getPrefix();
        String uri = makeStructuredQNameSilently.getURI();
        String localPart = makeStructuredQNameSilently.getLocalPart();
        return uri.isEmpty() ? new NoNamespaceName(localPart, this.env.getConfiguration().getNamePool().allocateFingerprint("", localPart)) : new FingerprintedQName(prefix, uri, localPart, this.env.getConfiguration().getNamePool().allocateFingerprint(uri, localPart));
    }

    public QNameTest makeQNameTest(short s, String str) throws XPathException {
        NamePool namePool = this.env.getConfiguration().getNamePool();
        StructuredQName makeStructuredQName = makeStructuredQName(str, "");
        return new NameTest(s, namePool.allocateFingerprint(makeStructuredQName.getURI(), makeStructuredQName.getLocalPart()), namePool);
    }

    public Literal makeStringLiteral(String str) throws XPathException {
        StringLiteral stringLiteral = new StringLiteral(str);
        setLocation(stringLiteral);
        return stringLiteral;
    }

    public final StructuredQName makeStructuredQName(String str, String str2) throws XPathException {
        try {
            return makeStructuredQNameSilently(str, str2);
        } catch (XPathException e) {
            this.grumble(e.getMessage(), e.getErrorCodeLocalPart());
            return new StructuredQName("", "", "error");
        }
    }

    public final StructuredQName makeStructuredQNameSilently(String str, String str2) throws XPathException {
        return this.scanOnly ? new StructuredQName("", NamespaceConstant.SAXON, "dummy") : this.qNameParser.parse(str, str2);
    }

    public Expression makeTracer(Expression expression, StructuredQName structuredQName) {
        expression.setRetainedStaticContextLocally(this.env.makeRetainedStaticContext());
        return expression;
    }

    public void nextToken() throws XPathException {
        try {
            this.f99997t.next();
        } catch (XPathException e) {
            grumble(e.getMessage());
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processFallThroughCases(RegionMaker.java:841)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:800)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0017. Please report as an issue. */
    /* renamed from: o */
    public final net.p110sf.saxon.expr.Expression m62875o(net.p110sf.saxon.expr.Expression r4, int r5, net.p110sf.saxon.expr.Expression r6) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.XPathParser.m62875o(net.sf.saxon.expr.Expression, int, net.sf.saxon.expr.Expression):net.sf.saxon.expr.Expression");
    }

    /* renamed from: p */
    public final Expression m62876p(Map<String, Expression> map) throws XPathException {
        Expression[] expressionArr = new Expression[map.size()];
        int i = 0;
        for (Map.Entry<String, Expression> entry : map.entrySet()) {
            expressionArr[i] = MapFunctionSet.getInstance().makeFunction("entry", 2).makeFunctionCall(new StringLiteral(entry.getKey()), entry.getValue());
            i++;
        }
        return MapFunctionSet.getInstance().makeFunction("merge", 1).makeFunctionCall(new Block(expressionArr));
    }

    public Expression parse(String str, int i, int i2, StaticContext staticContext) throws XPathException {
        Expression expression;
        this.env = staticContext;
        int xPathVersion = staticContext.getXPathVersion();
        if (xPathVersion == 20 && this.language == ParsedLanguage.XQUERY) {
            xPathVersion = 10;
        }
        setLanguage(this.language, xPathVersion);
        if (this.f99995b == null || staticContext.getUnprefixedElementMatchingPolicy() != UnprefixedElementMatchingPolicy.DEFAULT_NAMESPACE || i2 == -1 || (str.length() - i >= 30 && i2 != 215)) {
            expression = null;
        } else {
            Tokenizer tokenizer = new Tokenizer();
            this.f99997t = tokenizer;
            tokenizer.languageLevel = staticContext.getXPathVersion();
            expression = this.f99995b.parse(this.f99997t, staticContext, str, i, i2);
        }
        if (expression == null) {
            this.qNameParser = new QNameParser(staticContext.getNamespaceResolver()).withAcceptEQName(this.allowXPath30Syntax).withErrorOnBadSyntax(this.language == ParsedLanguage.XSLT_PATTERN ? "XTSE0340" : "XPST0003").withErrorOnUnresolvedPrefix("XPST0081");
            this.charChecker = staticContext.getConfiguration().getValidCharacterChecker();
            Tokenizer tokenizer2 = new Tokenizer();
            this.f99997t = tokenizer2;
            tokenizer2.languageLevel = staticContext.getXPathVersion();
            Tokenizer tokenizer3 = this.f99997t;
            boolean z = staticContext.getConfiguration().getBooleanProperty(Feature.ALLOW_SYNTAX_EXTENSIONS) || this.f99997t.languageLevel == 40;
            tokenizer3.allowSaxonExtensions = z;
            this.allowXPath40Syntax = z;
            Tokenizer tokenizer4 = this.f99997t;
            int i3 = tokenizer4.currentTokenStartOffset;
            customizeTokenizer(tokenizer4);
            try {
                this.f99997t.tokenize(str, i, -1);
            } catch (XPathException e) {
                grumble(e.getMessage());
            }
            if (this.f99997t.currentToken == i2) {
                if (this.f99994a) {
                    Literal makeEmptySequence = Literal.makeEmptySequence();
                    makeEmptySequence.setRetainedStaticContext(staticContext.makeRetainedStaticContext());
                    setLocation(makeEmptySequence);
                    return makeEmptySequence;
                }
                grumble("The expression is empty");
            }
            expression = parseExpression();
            int i4 = this.f99997t.currentToken;
            if (i4 != i2 && i2 != -1) {
                if (i4 == 0 && i2 == 215) {
                    grumble("Missing curly brace after expression in value template", "XTSE0350");
                } else {
                    grumble("Unexpected token " + currentTokenDisplay() + " beyond end of expression");
                }
            }
            setLocation(expression, i3);
        }
        expression.setRetainedStaticContextThoroughly(staticContext.makeRetainedStaticContext());
        return expression;
    }

    public AnnotationList parseAnnotationsList() throws XPathException {
        grumble("Function annotations are not allowed in XPath");
        return null;
    }

    public Expression parseArrayCurlyConstructor() throws XPathException {
        checkLanguageVersion31();
        Tokenizer tokenizer = getTokenizer();
        int i = tokenizer.currentTokenStartOffset;
        nextToken();
        if (tokenizer.currentToken == 215) {
            tokenizer.lookAhead();
            nextToken();
            return Literal.makeLiteral(SimpleArrayItem.EMPTY_ARRAY);
        }
        Expression parseExpression = parseExpression();
        expect(215);
        tokenizer.lookAhead();
        nextToken();
        Expression makeFunctionCall = ArrayFunctionSet.getInstance().makeFunction("_from-sequence", 1).makeFunctionCall(parseExpression);
        setLocation(makeFunctionCall, i);
        return makeFunctionCall;
    }

    public ItemType parseArrayItemType() throws XPathException {
        checkLanguageVersion31();
        Tokenizer tokenizer = getTokenizer();
        nextToken();
        int i = tokenizer.currentToken;
        if (i == 207 || i == 17) {
            nextToken();
            expect(204);
            nextToken();
            return ArrayItemType.ANY_ARRAY_TYPE;
        }
        SequenceType parseSequenceType = parseSequenceType();
        expect(204);
        nextToken();
        return new ArrayItemType(parseSequenceType);
    }

    public Expression parseArraySquareConstructor() throws XPathException {
        int i;
        checkLanguageVersion31();
        Tokenizer tokenizer = getTokenizer();
        int i2 = tokenizer.currentTokenStartOffset;
        ArrayList arrayList = new ArrayList();
        nextToken();
        if (tokenizer.currentToken == 203) {
            nextToken();
            SquareArrayConstructor squareArrayConstructor = new SquareArrayConstructor(arrayList);
            setLocation(squareArrayConstructor, i2);
            return squareArrayConstructor;
        }
        while (true) {
            arrayList.add(parseExprSingle());
            i = tokenizer.currentToken;
            if (i != 7) {
                break;
            }
            nextToken();
        }
        if (i == 203) {
            nextToken();
            SquareArrayConstructor squareArrayConstructor2 = new SquareArrayConstructor(arrayList);
            setLocation(squareArrayConstructor2, i2);
            return squareArrayConstructor2;
        }
        grumble("Expected ',' or ']', found " + Token.tokens[tokenizer.currentToken]);
        return new ErrorExpression();
    }

    public Expression parseArrowPostfix(Expression expression) throws XPathException {
        checkLanguageVersion31();
        nextToken();
        int i = getTokenizer().currentToken;
        if (i == 201 || i == 35) {
            return parseFunctionCall(expression);
        }
        if (i == 21) {
            Expression parseVariableReference = parseVariableReference();
            expect(5);
            return parseDynamicFunctionCall(parseVariableReference, expression);
        }
        if (i == 5) {
            Expression parseParenthesizedExpression = parseParenthesizedExpression();
            expect(5);
            return parseDynamicFunctionCall(parseParenthesizedExpression, expression);
        }
        grumble("Unexpected " + Token.tokens[i] + " after '=>'");
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c3, code lost:
    
        if (r0.equals("fn") == false) goto L44;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0056. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression parseBasicStep(boolean r17) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 730
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.XPathParser.parseBasicStep(boolean):net.sf.saxon.expr.Expression");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression parseBinaryExpression(net.p110sf.saxon.expr.Expression r9, int r10) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.XPathParser.parseBinaryExpression(net.sf.saxon.expr.Expression, int):net.sf.saxon.expr.Expression");
    }

    public Expression parseConstructor() throws XPathException {
        grumble("Node constructor expressions are allowed only in XQuery, not in XPath");
        return new ErrorExpression();
    }

    public Expression parseDynamicFunctionCall(Expression expression, Expression expression2) throws XPathException {
        Expression parseFunctionArgument;
        checkLanguageVersion30();
        ArrayList<Expression> arrayList = new ArrayList<>(10);
        if (expression2 != null) {
            arrayList.add(expression2);
        }
        nextToken();
        IntArraySet intArraySet = null;
        if (this.f99997t.currentToken != 204) {
            while (true) {
                int m62851f = this.f99997t.m62851f();
                if (this.f99997t.currentToken == 213 && (m62851f == 7 || m62851f == 204)) {
                    nextToken();
                    if (intArraySet == null) {
                        intArraySet = new IntArraySet();
                    }
                    intArraySet.add(arrayList.size());
                    parseFunctionArgument = Literal.makeEmptySequence();
                } else {
                    parseFunctionArgument = parseFunctionArgument();
                }
                arrayList.add(parseFunctionArgument);
                int i = this.f99997t.currentToken;
                if (i != 7) {
                    if (i != 76) {
                        break;
                    }
                    grumble("Keyword arguments are not allowed in a dynamic function call");
                } else {
                    nextToken();
                }
            }
            expect(204);
        }
        nextToken();
        return intArraySet == null ? generateApplyCall(expression, arrayList) : this.parserExtension.createDynamicCurriedFunction(this, expression, arrayList, intArraySet);
    }

    public EnumerationType parseEnumType() throws XPathException {
        checkLanguageVersion40();
        nextToken();
        HashSet hashSet = new HashSet(6);
        while (true) {
            expect(202);
            hashSet.add(this.f99997t.currentTokenValue);
            nextToken();
            int i = this.f99997t.currentToken;
            if (i == 204) {
                nextToken();
                return new EnumerationType(hashSet);
            }
            if (i == 7) {
                nextToken();
            } else {
                grumble("Expected ',' or ')' after string literal in enum type, found '" + Token.tokens[this.f99997t.currentToken] + Chars.QUOTE);
            }
        }
    }

    public Expression parseExprSingle() throws XPathException {
        Expression parseExtendedExprSingle = this.parserExtension.parseExtendedExprSingle(this);
        if (parseExtendedExprSingle != null) {
            return parseExtendedExprSingle;
        }
        int m62851f = this.f99997t.m62851f();
        if (m62851f == 0 || m62851f == 7 || m62851f == 204 || m62851f == 203) {
            int i = this.f99997t.currentToken;
            if (i != 70 && i != 201) {
                if (i == 202) {
                    return parseStringLiteral(true);
                }
                switch (i) {
                    case 205:
                        nextToken();
                        ContextItemExpression contextItemExpression = new ContextItemExpression();
                        setLocation(contextItemExpression);
                        return contextItemExpression;
                    case 206:
                        nextToken();
                        AxisExpression axisExpression = new AxisExpression(9, null);
                        setLocation(axisExpression);
                        return axisExpression;
                    case 209:
                        return parseNumericLiteral(true);
                }
            }
            return parseBasicStep(true);
        }
        Tokenizer tokenizer = this.f99997t;
        int i2 = tokenizer.currentToken;
        if (i2 == 0) {
            grumble("Expected an expression, but reached the end of the input");
            return null;
        }
        if (i2 == 37) {
            return m62881u();
        }
        if (i2 != 60) {
            if (i2 != 211 && i2 != 216) {
                if (i2 == 218) {
                    return parseExtensionExpression();
                }
                if (i2 == 32 || i2 == 33) {
                    return m62884x();
                }
                if (i2 == 65) {
                    return parseTypeswitchExpression();
                }
                if (i2 == 66) {
                    return parseSwitchExpression();
                }
                switch (i2) {
                    case 73:
                    case 74:
                    case 75:
                        break;
                    default:
                        switch (i2) {
                            case 102:
                            case 103:
                            case 104:
                            case 105:
                                return parseValidateExpression();
                        }
                }
            }
            return parseFLWORExpression();
        }
        if (tokenizer.currentTokenValue.equals("try")) {
            return parseTryCatchExpression();
        }
        CSharp.emitCode("goto default;");
        Expression parseBinaryExpression = parseBinaryExpression(m62867B(), 4);
        if (this.f99997t.currentToken != 48) {
            return parseBinaryExpression;
        }
        if (!this.allowXPath40Syntax) {
            grumble("Ternary conditionals (A ?? B !! C) require XPath 4.0 to be enabled");
        }
        return m62866A(parseBinaryExpression);
    }

    public Expression parseExpression() throws XPathException {
        int i = this.f99997t.currentTokenStartOffset;
        Expression parseExprSingle = parseExprSingle();
        ArrayList arrayList = null;
        while (this.f99997t.currentToken == 7) {
            if (arrayList == null) {
                arrayList = new ArrayList(10);
                arrayList.add(parseExprSingle);
            }
            nextToken();
            Expression parseExprSingle2 = parseExprSingle();
            setLocation(parseExprSingle2);
            arrayList.add(parseExprSingle2);
        }
        if (arrayList == null) {
            return parseExprSingle;
        }
        Expression makeBlock = Block.makeBlock(arrayList);
        setLocation(makeBlock, i);
        return makeBlock;
    }

    public ItemType parseExtendedItemType(String str, StaticContext staticContext) throws XPathException {
        this.env = staticContext;
        this.language = ParsedLanguage.EXTENDED_ITEM_TYPE;
        Tokenizer tokenizer = new Tokenizer();
        this.f99997t = tokenizer;
        tokenizer.languageLevel = staticContext.getXPathVersion();
        Tokenizer tokenizer2 = this.f99997t;
        tokenizer2.allowSaxonExtensions = true;
        this.allowSaxonExtensions = true;
        try {
            tokenizer2.tokenize(str, 0, -1);
        } catch (XPathException e) {
            grumble(e.getMessage());
        }
        ItemType parseItemType = parseItemType();
        if (this.f99997t.currentToken != 0) {
            grumble("Unexpected token " + currentTokenDisplay() + " beyond end of ItemType");
        }
        return parseItemType;
    }

    public SequenceType parseExtendedSequenceType(String str, StaticContext staticContext) throws XPathException {
        this.env = staticContext;
        this.language = ParsedLanguage.EXTENDED_ITEM_TYPE;
        Tokenizer tokenizer = new Tokenizer();
        this.f99997t = tokenizer;
        int xPathVersion = staticContext.getXPathVersion();
        this.languageVersion = xPathVersion;
        tokenizer.languageLevel = xPathVersion;
        Tokenizer tokenizer2 = this.f99997t;
        tokenizer2.allowSaxonExtensions = true;
        this.allowSaxonExtensions = true;
        this.allowXPath30Syntax = true;
        this.allowXPath31Syntax = true;
        this.allowXPath40Syntax = true;
        try {
            tokenizer2.tokenize(str, 0, -1);
        } catch (XPathException e) {
            grumble(e.getMessage());
        }
        SequenceType parseSequenceType = parseSequenceType();
        if (this.f99997t.currentToken != 0) {
            grumble("Unexpected token " + currentTokenDisplay() + " beyond end of SequenceType");
        }
        return parseSequenceType;
    }

    public Expression parseExtensionExpression() throws XPathException {
        grumble("extension expressions (#...#) are not allowed in XPath");
        return new ErrorExpression();
    }

    public Expression parseFLWORExpression() throws XPathException {
        Assignation letExpression;
        if (this.f99997t.currentToken == 216 && !this.allowXPath30Syntax) {
            grumble("'let' is not permitted in XPath 2.0");
        }
        int i = this.f99997t.currentToken;
        if (i == 74 || i == 73) {
            grumble("sliding/tumbling windows can only be used in XQuery");
        }
        if (this.f99997t.currentToken == 75 && !this.allowXPath40Syntax) {
            grumble("'for member' requires XPath 4.0 to be enabled");
        }
        int i2 = this.f99997t.currentToken;
        Assignation assignation = null;
        Assignation assignation2 = null;
        int i3 = 0;
        while (true) {
            int i4 = this.f99997t.currentTokenStartOffset;
            nextToken();
            expect(21);
            nextToken();
            expect(201);
            String str = this.f99997t.currentTokenValue;
            if (i2 == 211) {
                letExpression = new ForExpression();
                letExpression.setRequiredType(SequenceType.SINGLE_ITEM);
            } else if (i2 == 75) {
                letExpression = new ForMemberExpression();
                letExpression.setRequiredType(SequenceType.ANY_SEQUENCE);
            } else {
                letExpression = new LetExpression();
                letExpression.setRequiredType(SequenceType.ANY_SEQUENCE);
            }
            i3++;
            setLocation(letExpression, i4);
            letExpression.setVariableQName(makeStructuredQName(str, ""));
            nextToken();
            expect(i2 == 216 ? 58 : 31);
            nextToken();
            letExpression.setSequence(parseExprSingle());
            declareRangeVariable(letExpression);
            if (assignation == null) {
                assignation2 = letExpression;
            } else {
                assignation.setAction(letExpression);
            }
            if (this.f99997t.currentToken != 7) {
                break;
            }
            assignation = letExpression;
        }
        expect(25);
        nextToken();
        letExpression.setAction(parseExprSingle());
        for (int i5 = 0; i5 < i3; i5++) {
            undeclareRangeVariable();
        }
        return makeTracer(assignation2, assignation2.getVariableQName());
    }

    public Expression parseFocusFunction(AnnotationList annotationList) throws XPathException {
        Expression forEach;
        checkLanguageVersion40();
        int i = this.f99997t.currentTokenStartOffset;
        InlineFunctionDetails inlineFunctionDetails = new InlineFunctionDetails();
        inlineFunctionDetails.outerVariables = new IndexedStack<>();
        Iterator<LocalBinding> it2 = getRangeVariables().iterator();
        while (it2.hasNext()) {
            inlineFunctionDetails.outerVariables.push(it2.next());
        }
        inlineFunctionDetails.outerVariablesUsed = new ArrayList(4);
        inlineFunctionDetails.implicitParams = new ArrayList(4);
        this.inlineFunctionStack.push(inlineFunctionDetails);
        setRangeVariables(new IndexedStack<>());
        nextToken();
        ArrayList arrayList = new ArrayList(1);
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        StructuredQName structuredQName = new StructuredQName("saxon", NamespaceConstant.SAXON, gon.f71308x0);
        UserFunctionParameter userFunctionParameter = new UserFunctionParameter();
        userFunctionParameter.setRequiredType(SequenceType.SINGLE_ITEM);
        userFunctionParameter.setVariableQName(structuredQName);
        userFunctionParameter.setSlotNumber(0);
        arrayList.add(userFunctionParameter);
        Tokenizer tokenizer = this.f99997t;
        if (tokenizer.currentToken == 215) {
            tokenizer.lookAhead();
            nextToken();
            forEach = Literal.makeEmptySequence();
        } else {
            Expression parseExpression = parseExpression();
            expect(215);
            this.f99997t.lookAhead();
            nextToken();
            parseExpression.setRetainedStaticContext(getStaticContext().makeRetainedStaticContext());
            forEach = new ForEach(new LocalVariableReference(userFunctionParameter), parseExpression);
        }
        Expression makeInlineFunctionValue = makeInlineFunctionValue(this, AnnotationList.EMPTY, inlineFunctionDetails, arrayList, sequenceType, forEach);
        setLocation(makeInlineFunctionValue, i);
        setRangeVariables(inlineFunctionDetails.outerVariables);
        this.inlineFunctionStack.pop();
        return makeInlineFunctionValue;
    }

    public Expression parseFunctionArgument() throws XPathException {
        return parseExprSingle();
    }

    public Expression parseFunctionCall(Expression expression) throws XPathException {
        IntArraySet intArraySet;
        Expression parseExprSingle;
        Tokenizer tokenizer = this.f99997t;
        String str = tokenizer.currentTokenValue;
        int i = tokenizer.currentTokenStartOffset;
        ArrayList arrayList = new ArrayList(10);
        if (expression != null) {
            arrayList.add(expression);
        }
        StructuredQName resolveFunctionName = resolveFunctionName(str);
        nextToken();
        HashMap hashMap = null;
        if (this.f99997t.currentToken != 204) {
            IntArraySet intArraySet2 = null;
            while (true) {
                int m62851f = this.f99997t.m62851f();
                Tokenizer tokenizer2 = this.f99997t;
                if (tokenizer2.currentToken == 201 && (m62851f == 76 || m62851f == 58)) {
                    if (!NameChecker.isValidNCName(tokenizer2.currentTokenValue)) {
                        grumble("Name used as argument keyword must be a valid NCName (a space may be missing after ':')");
                    }
                    String str2 = this.f99997t.currentTokenValue;
                    nextToken();
                    nextToken();
                    Expression parseExprSingle2 = parseExprSingle();
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    } else if (hashMap.containsKey(str2)) {
                        grumble("Duplicate keyword '" + str2 + "'in function arguments");
                    }
                    hashMap.put(str2, parseExprSingle2);
                } else {
                    if (hashMap != null) {
                        grumble("Keyword arguments must not be followed by positional arguments in a function call");
                    }
                    if (this.f99997t.currentToken == 213 && (m62851f == 7 || m62851f == 204)) {
                        nextToken();
                        if (intArraySet2 == null) {
                            intArraySet2 = new IntArraySet();
                        }
                        intArraySet2.add(arrayList.size());
                        parseExprSingle = Literal.makeEmptySequence();
                    } else {
                        parseExprSingle = parseExprSingle();
                    }
                    arrayList.add(parseExprSingle);
                }
                if (this.f99997t.currentToken != 7) {
                    break;
                }
                nextToken();
            }
            expect(204);
            if (hashMap != null) {
                arrayList.add(m62876p(hashMap));
            }
            intArraySet = intArraySet2;
        } else {
            intArraySet = null;
        }
        nextToken();
        if (this.scanOnly) {
            return new StringLiteral(StringValue.EMPTY_STRING);
        }
        Expression[] expressionArr = (Expression[]) arrayList.toArray(new Expression[arrayList.size()]);
        if (intArraySet != null) {
            return this.parserExtension.makeCurriedFunction(this, i, resolveFunctionName, expressionArr, intArraySet);
        }
        SymbolicName.C18533F c18533f = new SymbolicName.C18533F(resolveFunctionName, arrayList.size());
        ArrayList arrayList2 = new ArrayList();
        Expression bind = this.env.getFunctionLibrary().bind(c18533f, expressionArr, this.env, arrayList2);
        if (bind == null) {
            return reportMissingFunction(i, resolveFunctionName, expressionArr, arrayList2);
        }
        if (this.language == ParsedLanguage.XSLT_PATTERN) {
            if (bind.isCallOn(RegexGroup.class)) {
                return Literal.makeEmptySequence();
            }
            if (bind instanceof CurrentGroupCall) {
                grumble("The current-group() function cannot be used in a pattern", "XTSE1060", i);
                return new ErrorExpression();
            }
            if (bind instanceof CurrentGroupingKeyCall) {
                grumble("The current-grouping-key() function cannot be used in a pattern", "XTSE1070", i);
                return new ErrorExpression();
            }
            if (bind.isCallOn(CurrentMergeGroup.class)) {
                grumble("The current-merge-group() function cannot be used in a pattern", "XTSE3470", i);
                return new ErrorExpression();
            }
            if (bind.isCallOn(CurrentMergeKey.class)) {
                grumble("The current-merge-key() function cannot be used in a pattern", "XTSE3500", i);
                return new ErrorExpression();
            }
        }
        setLocation(bind, i);
        for (Expression expression2 : expressionArr) {
            if (bind != expression2 && expression2.getParentExpression() == null && !resolveFunctionName.hasURI(NamespaceConstant.GLOBAL_JS)) {
                bind.adoptChildExpression(expression2);
            }
        }
        return makeTracer(bind, resolveFunctionName);
    }

    public ItemType parseFunctionItemType(AnnotationList annotationList) throws XPathException {
        return this.parserExtension.parseFunctionItemType(this, annotationList);
    }

    public Expression parseInlineFunction(AnnotationList annotationList) throws XPathException {
        Expression parseExpression;
        int i = this.f99997t.currentTokenStartOffset;
        InlineFunctionDetails inlineFunctionDetails = new InlineFunctionDetails();
        inlineFunctionDetails.outerVariables = new IndexedStack<>();
        Iterator<LocalBinding> it2 = getRangeVariables().iterator();
        while (it2.hasNext()) {
            inlineFunctionDetails.outerVariables.push(it2.next());
        }
        inlineFunctionDetails.outerVariablesUsed = new ArrayList(4);
        inlineFunctionDetails.implicitParams = new ArrayList(4);
        this.inlineFunctionStack.push(inlineFunctionDetails);
        setRangeVariables(new IndexedStack<>());
        nextToken();
        HashSet hashSet = new HashSet(8);
        ArrayList arrayList = new ArrayList(8);
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        int i2 = 0;
        while (this.f99997t.currentToken != 204) {
            expect(21);
            nextToken();
            expect(201);
            StructuredQName makeStructuredQName = makeStructuredQName(this.f99997t.currentTokenValue, "");
            if (hashSet.contains(makeStructuredQName)) {
                grumble("Duplicate parameter name " + Err.wrap(this.f99997t.currentTokenValue, 5), "XQST0039");
            }
            hashSet.add(makeStructuredQName);
            SequenceType sequenceType2 = SequenceType.ANY_SEQUENCE;
            nextToken();
            if (this.f99997t.currentToken == 71) {
                nextToken();
                sequenceType2 = parseSequenceType();
            }
            UserFunctionParameter userFunctionParameter = new UserFunctionParameter();
            userFunctionParameter.setRequiredType(sequenceType2);
            userFunctionParameter.setVariableQName(makeStructuredQName);
            int i3 = i2 + 1;
            userFunctionParameter.setSlotNumber(i2);
            arrayList.add(userFunctionParameter);
            declareRangeVariable(userFunctionParameter);
            int i4 = this.f99997t.currentToken;
            if (i4 == 204) {
                break;
            }
            if (i4 == 7) {
                nextToken();
            } else {
                grumble("Expected ',' or ')' after function argument, found '" + Token.tokens[this.f99997t.currentToken] + Chars.QUOTE);
            }
            i2 = i3;
        }
        this.f99997t.setState(1);
        nextToken();
        Tokenizer tokenizer = this.f99997t;
        if (tokenizer.currentToken == 71) {
            tokenizer.setState(2);
            nextToken();
            sequenceType = parseSequenceType();
        }
        SequenceType sequenceType3 = sequenceType;
        expect(59);
        this.f99997t.setState(0);
        nextToken();
        if (this.f99997t.currentToken == 215 && isAllowXPath31Syntax()) {
            this.f99997t.lookAhead();
            nextToken();
            parseExpression = Literal.makeEmptySequence();
        } else {
            parseExpression = parseExpression();
            expect(215);
            this.f99997t.lookAhead();
            nextToken();
        }
        Expression expression = parseExpression;
        ExpressionTool.setDeepRetainedStaticContext(expression, getStaticContext().makeRetainedStaticContext());
        int size = hashSet.size();
        for (int i5 = 0; i5 < size; i5++) {
            undeclareRangeVariable();
        }
        Expression makeInlineFunctionValue = makeInlineFunctionValue(this, annotationList, inlineFunctionDetails, arrayList, sequenceType3, expression);
        setLocation(makeInlineFunctionValue, i);
        setRangeVariables(inlineFunctionDetails.outerVariables);
        this.inlineFunctionStack.pop();
        return makeInlineFunctionValue;
    }

    public ItemType parseItemType() throws XPathException {
        ItemType parseExtendedItemType = this.parserExtension.parseExtendedItemType(this);
        return parseExtendedItemType == null ? m62886z() : parseExtendedItemType;
    }

    public Expression parseLookup(Expression expression) throws XPathException {
        Expression m62865n;
        checkLanguageVersion31();
        Tokenizer tokenizer = getTokenizer();
        int i = tokenizer.currentTokenStartOffset;
        tokenizer.setState(1);
        tokenizer.currentToken = 5;
        nextToken();
        int i2 = tokenizer.currentToken;
        tokenizer.setState(3);
        if (i2 == 201) {
            String str = tokenizer.currentTokenValue;
            if (!NameChecker.isValidNCName(StringTool.codePoints(str))) {
                grumble("The name following '?' must be a valid NCName");
            }
            nextToken();
            m62865n = m62874m(expression, str);
        } else if (i2 == 209) {
            NumericValue parseNumber = NumericValue.parseNumber(tokenizer.currentTokenValue);
            if (!(parseNumber instanceof IntegerValue)) {
                grumble("Number following '?' must be an integer");
            }
            nextToken();
            m62865n = m62864l(this, expression, Literal.makeLiteral(parseNumber));
        } else if (i2 == 17 || i2 == 207) {
            nextToken();
            m62865n = m62865n(expression);
        } else if (i2 == 5) {
            tokenizer.setState(0);
            m62865n = m62864l(this, expression, parseParenthesizedExpression());
        } else if (i2 == 202) {
            checkLanguageVersion40();
            m62865n = m62874m(expression, tokenizer.currentTokenValue);
            nextToken();
        } else {
            if (i2 != 21) {
                grumble("Unexpected " + Token.tokens[i2] + " after '?'");
                return null;
            }
            checkLanguageVersion40();
            m62865n = m62864l(this, expression, parseVariableReference());
        }
        setLocation(m62865n, i);
        return m62865n;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007a A[LOOP:0: B:3:0x001a->B:15:0x007a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0082 A[EDGE_INSN: B:16:0x0082->B:18:0x0082 BREAK  A[LOOP:0: B:3:0x001a->B:15:0x007a], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression parseMapExpression() throws net.p110sf.saxon.trans.XPathException {
        /*
            r11 = this;
            r11.checkMapExtensions()
            net.sf.saxon.expr.parser.Tokenizer r0 = r11.getTokenizer()
            int r1 = r0.currentTokenStartOffset
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r11.nextToken()
            int r3 = r0.currentToken
            r4 = 0
            r5 = 1
            r6 = 2
            r7 = 215(0xd7, float:3.01E-43)
            if (r3 == r7) goto L82
        L1a:
            net.sf.saxon.expr.Expression r3 = r11.parseExprSingle()
            int r8 = r0.currentToken
            r9 = 58
            if (r8 != r9) goto L29
            java.lang.String r8 = "The ':=' notation is no longer accepted in map expressions: use ':' instead"
            r11.grumble(r8)
        L29:
            r8 = 76
            r11.expect(r8)
            r11.nextToken()
            net.sf.saxon.expr.Expression r8 = r11.parseExprSingle()
            boolean r9 = r3 instanceof net.p110sf.saxon.expr.Literal
            if (r9 == 0) goto L5e
            r9 = r3
            net.sf.saxon.expr.Literal r9 = (net.p110sf.saxon.expr.Literal) r9
            net.sf.saxon.om.GroundedValue r10 = r9.getGroundedValue()
            boolean r10 = r10 instanceof net.p110sf.saxon.value.AtomicValue
            if (r10 == 0) goto L5e
            boolean r10 = r8 instanceof net.p110sf.saxon.expr.Literal
            if (r10 == 0) goto L5e
            net.sf.saxon.ma.map.SingleEntryMap r3 = new net.sf.saxon.ma.map.SingleEntryMap
            net.sf.saxon.om.GroundedValue r9 = r9.getGroundedValue()
            net.sf.saxon.value.AtomicValue r9 = (net.p110sf.saxon.value.AtomicValue) r9
            net.sf.saxon.expr.Literal r8 = (net.p110sf.saxon.expr.Literal) r8
            net.sf.saxon.om.GroundedValue r8 = r8.getGroundedValue()
            r3.<init>(r9, r8)
            net.sf.saxon.expr.Literal r3 = net.p110sf.saxon.expr.Literal.makeLiteral(r3)
            goto L72
        L5e:
            net.sf.saxon.ma.map.MapFunctionSet r9 = net.p110sf.saxon.ma.map.MapFunctionSet.getInstance()
            java.lang.String r10 = "entry"
            net.sf.saxon.functions.SystemFunction r9 = r9.makeFunction(r10, r6)
            net.sf.saxon.expr.Expression[] r10 = new net.p110sf.saxon.expr.Expression[r6]
            r10[r4] = r3
            r10[r5] = r8
            net.sf.saxon.expr.Expression r3 = r9.makeFunctionCall(r10)
        L72:
            r2.add(r3)
            int r3 = r0.currentToken
            if (r3 != r7) goto L7a
            goto L82
        L7a:
            r3 = 7
            r11.expect(r3)
            r11.nextToken()
            goto L1a
        L82:
            r0.lookAhead()
            r11.nextToken()
            int r0 = r2.size()
            if (r0 == 0) goto Lec
            if (r0 == r5) goto Le5
            int r0 = r2.size()
            net.sf.saxon.expr.Expression[] r0 = new net.p110sf.saxon.expr.Expression[r0]
            net.sf.saxon.expr.instruct.Block r3 = new net.sf.saxon.expr.instruct.Block
            java.lang.Object[] r0 = r2.toArray(r0)
            net.sf.saxon.expr.Expression[] r0 = (net.p110sf.saxon.expr.Expression[]) r0
            r3.<init>(r0)
            net.sf.saxon.ma.map.HashTrieMap r0 = new net.sf.saxon.ma.map.HashTrieMap
            r0.<init>()
            net.sf.saxon.value.StringValue r2 = new net.sf.saxon.value.StringValue
            java.lang.String r7 = "duplicates"
            r2.<init>(r7)
            net.sf.saxon.value.StringValue r7 = new net.sf.saxon.value.StringValue
            java.lang.String r8 = "reject"
            r7.<init>(r8)
            r0.initialPut(r2, r7)
            net.sf.saxon.value.QNameValue r2 = new net.sf.saxon.value.QNameValue
            java.lang.String r7 = "http://saxon.sf.net/"
            java.lang.String r8 = "duplicates-error-code"
            java.lang.String r9 = ""
            r2.<init>(r9, r7, r8)
            net.sf.saxon.value.StringValue r7 = new net.sf.saxon.value.StringValue
            java.lang.String r8 = "XQDY0137"
            r7.<init>(r8)
            r0.initialPut(r2, r7)
            net.sf.saxon.ma.map.MapFunctionSet r2 = net.p110sf.saxon.ma.map.MapFunctionSet.getInstance()
            java.lang.String r7 = "merge"
            net.sf.saxon.functions.SystemFunction r2 = r2.makeFunction(r7, r6)
            net.sf.saxon.expr.Expression[] r6 = new net.p110sf.saxon.expr.Expression[r6]
            r6[r4] = r3
            net.sf.saxon.expr.Literal r0 = net.p110sf.saxon.expr.Literal.makeLiteral(r0)
            r6[r5] = r0
            net.sf.saxon.expr.Expression r0 = r2.makeFunctionCall(r6)
            goto Lf5
        Le5:
            java.lang.Object r0 = r2.get(r4)
            net.sf.saxon.expr.Expression r0 = (net.p110sf.saxon.expr.Expression) r0
            goto Lf5
        Lec:
            net.sf.saxon.ma.map.HashTrieMap r0 = new net.sf.saxon.ma.map.HashTrieMap
            r0.<init>()
            net.sf.saxon.expr.Literal r0 = net.p110sf.saxon.expr.Literal.makeLiteral(r0)
        Lf5:
            r11.setLocation(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.XPathParser.parseMapExpression():net.sf.saxon.expr.Expression");
    }

    public ItemType parseMapItemType() throws XPathException {
        checkMapExtensions();
        Tokenizer tokenizer = getTokenizer();
        nextToken();
        int i = tokenizer.currentToken;
        if (i == 207 || i == 17) {
            nextToken();
            expect(204);
            nextToken();
            return MapType.ANY_MAP_TYPE;
        }
        ItemType parseItemType = parseItemType();
        expect(7);
        nextToken();
        SequenceType parseSequenceType = parseSequenceType();
        expect(204);
        nextToken();
        if (parseItemType instanceof AtomicType) {
            return new MapType((AtomicType) parseItemType, parseSequenceType);
        }
        grumble("Key type of a map must be atomic");
        return null;
    }

    public Expression parseNamedFunctionReference() throws XPathException {
        return this.parserExtension.parseNamedFunctionReference(this);
    }

    public NodeTest parseNodeTest(short s) throws XPathException {
        Tokenizer tokenizer = this.f99997t;
        int i = tokenizer.currentToken;
        String str = tokenizer.currentTokenValue;
        if (i == 69) {
            return m62882v();
        }
        if (i == 70) {
            nextToken();
            String str2 = this.f99997t.currentTokenValue;
            expect(201);
            nextToken();
            return makeLocalNameTest(s, str2);
        }
        if (i == 201) {
            nextToken();
            return makeNameTest(s, str, s == 1);
        }
        if (i == 207) {
            nextToken();
            return NodeKindTest.makeNodeKindTest(s);
        }
        if (i == 208) {
            nextToken();
            return makeNamespaceTest(s, str);
        }
        grumble("Unrecognized node test");
        throw new XPathException("");
    }

    public Expression parseNumericLiteral(boolean z) throws XPathException {
        Tokenizer tokenizer = this.f99997t;
        int i = tokenizer.currentTokenStartOffset;
        NumericValue parseNumber = NumericValue.parseNumber(tokenizer.currentTokenValue);
        if (parseNumber.isNaN()) {
            grumble("Invalid numeric literal " + Err.wrap(this.f99997t.currentTokenValue, 4));
        }
        nextToken();
        Literal makeLiteral = Literal.makeLiteral(parseNumber);
        setLocation(makeLiteral, i);
        return z ? makeTracer(makeLiteral, null) : makeLiteral;
    }

    public int parseOccurrenceIndicator() throws XPathException {
        Tokenizer tokenizer = this.f99997t;
        int i = tokenizer.currentToken;
        if (i == 15) {
            tokenizer.currentToken = 204;
            nextToken();
            return 49152;
        }
        if (i == 17 || i == 207) {
            tokenizer.currentToken = 204;
            nextToken();
            return 57344;
        }
        if (i != 213) {
            return 16384;
        }
        tokenizer.currentToken = 204;
        nextToken();
        return 24576;
    }

    public Expression parseParenthesizedExpression() throws XPathException {
        nextToken();
        if (this.f99997t.currentToken == 204) {
            nextToken();
            return makeTracer(Literal.makeEmptySequence(), null);
        }
        Expression parseExpression = parseExpression();
        expect(204);
        nextToken();
        return parseExpression;
    }

    public Expression parsePathExpression() throws XPathException {
        Tokenizer tokenizer = this.f99997t;
        int i = tokenizer.currentTokenStartOffset;
        int i2 = tokenizer.currentToken;
        if (i2 == 2) {
            nextToken();
            RootExpression rootExpression = new RootExpression();
            setLocation(rootExpression);
            if (disallowedAtStartOfRelativePath()) {
                grumble("Operator '" + Token.tokens[this.f99997t.currentToken] + "' is not allowed after '/'");
            }
            if (!atStartOfRelativePath()) {
                return rootExpression;
            }
            Expression parseRemainingPath = parseRemainingPath(rootExpression);
            setLocation(parseRemainingPath, i);
            return parseRemainingPath;
        }
        if (i2 == 8) {
            nextToken();
            RootExpression rootExpression2 = new RootExpression();
            setLocation(rootExpression2, i);
            AxisExpression axisExpression = new AxisExpression(5, null);
            setLocation(axisExpression, i);
            Expression makePathExpression = ExpressionTool.makePathExpression(rootExpression2, axisExpression);
            setLocation(makePathExpression, i);
            Expression parseRemainingPath2 = parseRemainingPath(makePathExpression);
            setLocation(parseRemainingPath2, i);
            return parseRemainingPath2;
        }
        if (i2 == 201 && (tokenizer.currentTokenValue.equals("true") || this.f99997t.currentTokenValue.equals("false"))) {
            warning("The expression is looking for a child element named '" + this.f99997t.currentTokenValue + "' - perhaps " + this.f99997t.currentTokenValue + "() was intended? To avoid this warning, use child::" + this.f99997t.currentTokenValue + " or ./" + this.f99997t.currentTokenValue + ".");
        }
        Tokenizer tokenizer2 = this.f99997t;
        if (tokenizer2.currentToken == 201 && tokenizer2.m62847b(tokenizer2.currentTokenValue) != -1 && this.language != ParsedLanguage.XSLT_PATTERN && (i > 0 || this.f99997t.m62851f() != 0)) {
            String str = this.f99997t.currentTokenValue;
            warning("The keyword '" + str + "' in this context means 'child::" + str + "'. If this was intended, use 'child::" + str + "' or './" + str + "' to avoid this warning.");
        }
        return parseRelativePath();
    }

    public Expression parsePredicate(Expression expression) throws XPathException {
        nextToken();
        Expression parsePredicate = parsePredicate();
        expect(203);
        nextToken();
        FilterExpression filterExpression = new FilterExpression(expression, parsePredicate);
        setLocation(filterExpression);
        return filterExpression;
    }

    public Expression parseRelativePath() throws XPathException {
        HomogeneityChecker homogeneityChecker;
        int i = this.f99997t.currentTokenStartOffset;
        Expression parseStepExpression = parseStepExpression(this.language == ParsedLanguage.XSLT_PATTERN);
        while (true) {
            int i2 = this.f99997t.currentToken;
            if (i2 != 2 && i2 != 8) {
                return parseStepExpression;
            }
            nextToken();
            Expression parseStepExpression2 = parseStepExpression(false);
            if (i2 == 2) {
                homogeneityChecker = new HomogeneityChecker(new SlashExpression(parseStepExpression, parseStepExpression2));
            } else {
                AxisExpression axisExpression = new AxisExpression(5, null);
                setLocation(axisExpression, i);
                Expression makePathExpression = ExpressionTool.makePathExpression(parseStepExpression, axisExpression);
                setLocation(makePathExpression, i);
                homogeneityChecker = new HomogeneityChecker(ExpressionTool.makePathExpression(makePathExpression, parseStepExpression2));
            }
            parseStepExpression = homogeneityChecker;
            setLocation(parseStepExpression, i);
        }
    }

    public Expression parseRemainingPath(Expression expression) throws XPathException {
        Expression forEach;
        int i = this.f99997t.currentTokenStartOffset;
        int i2 = 2;
        while (true) {
            Expression parseStepExpression = parseStepExpression(false);
            if (i2 == 2) {
                forEach = new HomogeneityChecker(new SlashExpression(expression, parseStepExpression));
            } else if (i2 == 8) {
                AxisExpression axisExpression = new AxisExpression(5, null);
                setLocation(axisExpression);
                Expression makePathExpression = ExpressionTool.makePathExpression(axisExpression, parseStepExpression);
                setLocation(makePathExpression);
                forEach = new HomogeneityChecker(ExpressionTool.makePathExpression(expression, makePathExpression));
            } else {
                if (!this.allowXPath30Syntax) {
                    grumble("XPath '!' operator requires XPath 3.0 to be enabled");
                }
                forEach = new ForEach(expression, parseStepExpression);
            }
            expression = forEach;
            setLocation(expression, i);
            i2 = this.f99997t.currentToken;
            if (i2 != 2 && i2 != 8 && i2 != 40) {
                return expression;
            }
            nextToken();
        }
    }

    public SequenceType parseSequenceType(String str, StaticContext staticContext) throws XPathException {
        this.env = staticContext;
        boolean z = true;
        if (this.qNameParser == null) {
            QNameParser qNameParser = new QNameParser(staticContext.getNamespaceResolver());
            this.qNameParser = qNameParser;
            if (this.languageVersion >= 30) {
                this.qNameParser = qNameParser.withAcceptEQName(true);
            }
        }
        this.language = ParsedLanguage.SEQUENCE_TYPE;
        this.f99997t = new Tokenizer();
        int xPathVersion = staticContext.getXPathVersion();
        Tokenizer tokenizer = this.f99997t;
        tokenizer.languageLevel = xPathVersion;
        this.allowXPath30Syntax = xPathVersion >= 30;
        this.allowXPath31Syntax = xPathVersion >= 31;
        if (!staticContext.getConfiguration().getBooleanProperty(Feature.ALLOW_SYNTAX_EXTENSIONS) && this.f99997t.languageLevel != 40) {
            z = false;
        }
        tokenizer.allowSaxonExtensions = z;
        this.allowXPath40Syntax = z;
        try {
            this.f99997t.tokenize(str, 0, -1);
        } catch (XPathException e) {
            grumble(e.getMessage());
        }
        SequenceType parseSequenceType = parseSequenceType();
        if (this.f99997t.currentToken != 0) {
            grumble("Unexpected token " + currentTokenDisplay() + " beyond end of SequenceType");
        }
        return parseSequenceType;
    }

    public Expression parseSimpleMappingExpression() throws XPathException {
        int i = this.f99997t.currentTokenStartOffset;
        Expression parsePathExpression = parsePathExpression();
        while (this.f99997t.currentToken == 40) {
            if (!this.allowXPath30Syntax) {
                grumble("XPath '!' operator requires XPath 3.0 to be enabled");
            }
            nextToken();
            ForEach forEach = new ForEach(parsePathExpression, parsePathExpression());
            setLocation(forEach, i);
            parsePathExpression = forEach;
        }
        return parsePathExpression;
    }

    public Expression parseStepExpression(boolean z) throws XPathException {
        Expression parseBasicStep = parseBasicStep(z);
        boolean z2 = (parseBasicStep instanceof AxisExpression) && !AxisInfo.isForwards[((AxisExpression) parseBasicStep).getAxis()];
        while (true) {
            int i = this.f99997t.currentToken;
            if (i != 4) {
                if (i != 5) {
                    if (i != 213) {
                        break;
                    }
                    parseBasicStep = parseLookup(parseBasicStep);
                    setLocation(parseBasicStep);
                } else {
                    parseBasicStep = parseDynamicFunctionCall(parseBasicStep, null);
                    setLocation(parseBasicStep);
                }
            } else {
                parseBasicStep = parsePredicate(parseBasicStep);
            }
        }
        return z2 ? SystemFunction.makeCall("reverse", this.env.makeRetainedStaticContext(), parseBasicStep) : parseBasicStep;
    }

    public Expression parseStringConstructor() throws XPathException {
        grumble("String constructor expressions are allowed only in XQuery");
        return null;
    }

    public Expression parseStringLiteral(boolean z) throws XPathException {
        Literal makeStringLiteral = makeStringLiteral(this.f99997t.currentTokenValue);
        nextToken();
        return z ? makeTracer(makeStringLiteral, null) : makeStringLiteral;
    }

    public Expression parseSwitchExpression() throws XPathException {
        grumble("switch is not allowed in XPath");
        return new ErrorExpression();
    }

    public Expression parseTryCatchExpression() throws XPathException {
        grumble("try/catch expressions are not allowed in XPath");
        return new ErrorExpression();
    }

    public Expression parseTypeswitchExpression() throws XPathException {
        grumble("typeswitch is not allowed in XPath");
        return new ErrorExpression();
    }

    public ItemType parseUnionType() throws XPathException {
        checkLanguageVersion40();
        nextToken();
        ArrayList arrayList = new ArrayList(6);
        while (true) {
            Tokenizer tokenizer = this.f99997t;
            if (tokenizer.currentToken == 69 && tokenizer.currentTokenValue.equals("enum")) {
                arrayList.add(parseEnumType());
            } else {
                expect(201);
                ItemType plainType = getPlainType(getQNameParser().parse(this.f99997t.currentTokenValue, getStaticContext().getDefaultElementNamespace()));
                if (plainType instanceof AtomicType) {
                    arrayList.add((AtomicType) plainType);
                } else if (plainType instanceof PlainType) {
                    for (PlainType plainType2 : ((UnionType) plainType).getPlainMemberTypes()) {
                        if (plainType2 instanceof AtomicType) {
                            arrayList.add((AtomicType) plainType2);
                        } else {
                            grumble("Union type " + plainType + " has a non-atomic member type " + plainType2);
                        }
                    }
                } else {
                    grumble("Type " + this.f99997t.currentTokenValue + " exists, but is not atomic");
                }
                nextToken();
            }
            int i = this.f99997t.currentToken;
            if (i == 204) {
                nextToken();
                return new LocalUnionType(arrayList);
            }
            if (i == 7) {
                nextToken();
            } else {
                grumble("Expected ',' or ')' after member name in union type, found '" + Token.tokens[this.f99997t.currentToken] + Chars.QUOTE);
            }
        }
    }

    public Expression parseValidateExpression() throws XPathException {
        grumble("validate{} expressions are not allowed in XPath");
        return new ErrorExpression();
    }

    public Expression parseVariableReference() throws XPathException {
        Expression bindVariable;
        int i = this.f99997t.currentTokenStartOffset;
        nextToken();
        if (this.f99997t.currentToken == 209) {
            return this.parserExtension.bindNumericParameterReference(this);
        }
        expect(201);
        String str = this.f99997t.currentTokenValue;
        nextToken();
        if (this.scanOnly) {
            return new ContextItemExpression();
        }
        StructuredQName makeStructuredQName = makeStructuredQName(str, "");
        LocalBinding findRangeVariable = findRangeVariable(makeStructuredQName);
        if (findRangeVariable != null) {
            bindVariable = new LocalVariableReference(findRangeVariable);
        } else {
            if (this.catchDepth > 0) {
                for (StructuredQName structuredQName : StandardNames.errorVariables) {
                    if (structuredQName.getLocalPart().equals(makeStructuredQName.getLocalPart())) {
                        return VendorFunctionSetHE.getInstance().bind(new SymbolicName.C18533F(new StructuredQName("saxon", NamespaceConstant.SAXON, "dynamic-error-info"), 1), new Expression[]{new StringLiteral(makeStructuredQName.getLocalPart())}, this.env, new ArrayList());
                    }
                }
            }
            try {
                bindVariable = this.env.bindVariable(makeStructuredQName);
            } catch (XPathException e) {
                e.maybeSetLocation(makeLocation());
                throw e;
            }
        }
        setLocation(bindVariable, i);
        return bindVariable;
    }

    /* renamed from: q */
    public final Expression m62877q(Expression expression, Expression expression2) throws XPathException {
        checkLanguageVersion40();
        LetExpression letExpression = new LetExpression();
        letExpression.setVariableQName(new StructuredQName("vv", NamespaceConstant.ANONYMOUS, GoogleApiAvailabilityLight.f29016b + expression.hashCode()));
        letExpression.setSequence(expression);
        letExpression.setRequiredType(SequenceType.ANY_SEQUENCE);
        LocalVariableReference localVariableReference = new LocalVariableReference(letExpression.getVariableQName());
        localVariableReference.setBinding(letExpression);
        letExpression.addReference(localVariableReference, false);
        LocalVariableReference localVariableReference2 = new LocalVariableReference(letExpression.getVariableQName());
        localVariableReference2.setBinding(letExpression);
        letExpression.addReference(localVariableReference2, false);
        letExpression.setAction(new Choose(new Expression[]{SystemFunction.makeCall("exists", new RetainedStaticContext(this.env), localVariableReference), Literal.makeLiteral(BooleanValue.TRUE, expression)}, new Expression[]{localVariableReference2, expression2}));
        return letExpression;
    }

    /* renamed from: r */
    public final Expression m62878r(Expression expression, int i, SequenceType sequenceType) {
        if (i == 45) {
            return new InstanceOfExpression(expression, sequenceType);
        }
        if (i == 47) {
            return TreatExpression.make(expression, sequenceType);
        }
        throw new IllegalArgumentException();
    }

    public Expression reportMissingFunction(int i, StructuredQName structuredQName, Expression[] expressionArr, List<String> list) throws XPathException {
        boolean z;
        StringBuilder sb = new StringBuilder();
        sb.append("Cannot find a ");
        sb.append(expressionArr.length);
        sb.append("-argument function named ");
        sb.append(structuredQName.getEQName());
        sb.append("()");
        Configuration configuration = this.env.getConfiguration();
        for (String str : list) {
            sb.append(". ");
            sb.append(str);
        }
        if (configuration.getBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS)) {
            int i2 = 0;
            while (true) {
                if (i2 >= expressionArr.length + 5) {
                    z = false;
                    break;
                }
                if (i2 != expressionArr.length) {
                    if (this.env.getFunctionLibrary().isAvailable(new SymbolicName.C18533F(structuredQName, i2), 31)) {
                        z = true;
                        break;
                    }
                }
                i2++;
            }
            if (z) {
                sb.append(". The namespace URI and local name are recognized, but the number of arguments is wrong");
            } else {
                String missingFunctionExplanation = getMissingFunctionExplanation(structuredQName, configuration);
                if (missingFunctionExplanation != null) {
                    sb.append(". ");
                    sb.append(missingFunctionExplanation);
                }
            }
        } else {
            sb.append(". External function calls have been disabled");
        }
        if (this.env.isInBackwardsCompatibleMode()) {
            return new ErrorExpression(sb.toString(), "XTDE1425", false);
        }
        grumble(sb.toString(), "XPST0017", i);
        return null;
    }

    public StructuredQName resolveFunctionName(String str) throws XPathException {
        StructuredQName structuredQName;
        if (this.scanOnly) {
            return new StructuredQName("", NamespaceConstant.SAXON, "dummy");
        }
        try {
            structuredQName = this.qNameParser.parse(str, this.env.getDefaultFunctionNamespace());
        } catch (XPathException e) {
            grumble(e.getMessage(), e.getErrorCodeLocalPart());
            structuredQName = null;
        }
        if (structuredQName.hasURI("http://www.w3.org/2001/XMLSchema")) {
            ItemType builtInItemType = Type.getBuiltInItemType(structuredQName.getURI(), structuredQName.getLocalPart());
            if (builtInItemType instanceof BuiltInAtomicType) {
                m62869c(this.env, (BuiltInAtomicType) builtInItemType);
            }
        }
        return structuredQName;
    }

    /* renamed from: s */
    public final Expression m62879s(Expression expression, int i, CastingTarget castingTarget, boolean z) throws XPathException {
        if ((castingTarget instanceof AtomicType) && castingTarget != ErrorType.getInstance()) {
            if (i == 46) {
                CastExpression castExpression = new CastExpression(expression, (AtomicType) castingTarget, z);
                if (expression instanceof StringLiteral) {
                    castExpression.setOperandIsStringLiteral(true);
                }
                return castExpression;
            }
            if (i != 57) {
                throw new IllegalArgumentException();
            }
            CastableExpression castableExpression = new CastableExpression(expression, (AtomicType) castingTarget, z);
            if (expression instanceof StringLiteral) {
                castableExpression.setOperandIsStringLiteral(true);
            }
            return castableExpression;
        }
        if (!this.allowXPath30Syntax) {
            throw new XPathException("Casting to list or union types requires XPath 3.0 to be enabled", "XPST0051");
        }
        if (i != 46) {
            if (i != 57) {
                throw new IllegalArgumentException();
            }
            if (castingTarget instanceof UnionType) {
                return new StaticFunctionCall(new UnionCastableFunction((UnionType) castingTarget, this.env.getNamespaceResolver(), z), new Expression[]{expression});
            }
            if (castingTarget instanceof ListType) {
                return new StaticFunctionCall(new ListCastableFunction((ListType) castingTarget, this.env.getNamespaceResolver(), z), new Expression[]{expression});
            }
        } else {
            if (castingTarget instanceof UnionType) {
                return new StaticFunctionCall(new UnionConstructorFunction((UnionType) castingTarget, this.env.getNamespaceResolver(), z), new Expression[]{expression});
            }
            if (castingTarget instanceof ListType) {
                return new StaticFunctionCall(new ListConstructorFunction((ListType) castingTarget, this.env.getNamespaceResolver(), z), new Expression[]{expression});
            }
        }
        throw new XPathException("Cannot cast to " + castingTarget.getClass(), "XPST0051");
    }

    public void setAccelerator(Accelerator accelerator) {
        this.f99995b = accelerator;
    }

    public void setAllowAbsentExpression(boolean z) {
        this.f99994a = z;
    }

    public void setCatchDepth(int i) {
        this.catchDepth = i;
    }

    public void setCodeInjector(CodeInjector codeInjector) {
        this.codeInjector = codeInjector;
    }

    public void setLanguage(ParsedLanguage parsedLanguage, int i) {
        if (i == 0) {
            i = 30;
        }
        if (i == 305) {
            this.allowXPath30XSLTExtensions = true;
            i = 30;
        }
        int i2 = C18323a.f100002a[parsedLanguage.ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                if (i != 20 && i != 30 && i != 31 && i != 40) {
                    throw new IllegalArgumentException("Unsupported language version " + i);
                }
            } else {
                if (i2 != 4) {
                    throw new IllegalArgumentException("Unknown language " + parsedLanguage);
                }
                if (i != 10 && i != 30 && i != 31 && i != 40) {
                    throw new IllegalArgumentException("Unsupported language version " + i);
                }
            }
        } else if (i != 20 && i != 30 && i != 31 && i != 40) {
            throw new IllegalArgumentException("Unsupported language version " + i);
        }
        this.language = parsedLanguage;
        this.languageVersion = i;
        this.allowXPath30Syntax = i >= 30;
        this.allowXPath31Syntax = i >= 31;
        this.allowXPath40Syntax = i >= 40;
    }

    public void setLocation(Expression expression) {
        setLocation(expression, this.f99997t.currentTokenStartOffset);
    }

    public void setParserExtension(ParserExtension parserExtension) {
        this.parserExtension = parserExtension;
    }

    public void setQNameParser(QNameParser qNameParser) {
        this.qNameParser = qNameParser;
    }

    public void setRangeVariableStack(IndexedStack<LocalBinding> indexedStack) {
        this.rangeVariables = indexedStack;
    }

    public void setRangeVariables(IndexedStack<LocalBinding> indexedStack) {
        this.rangeVariables = indexedStack;
    }

    public void setScanOnly(boolean z) {
        this.scanOnly = z;
    }

    /* renamed from: t */
    public final Expression m62880t(int i, Expression expression) {
        if (Literal.isAtomic(expression)) {
            AtomicValue atomicValue = (AtomicValue) ((Literal) expression).getGroundedValue();
            if (atomicValue instanceof NumericValue) {
                if (this.env.isInBackwardsCompatibleMode()) {
                    atomicValue = new DoubleValue(((NumericValue) atomicValue).getDoubleValue());
                }
                return Literal.makeLiteral(i == 299 ? ((NumericValue) atomicValue).negate() : (NumericValue) atomicValue);
            }
        }
        return this.env.getConfiguration().getTypeChecker(this.env.isInBackwardsCompatibleMode()).makeArithmeticExpression(Literal.makeLiteral(Int64Value.ZERO), i, expression);
    }

    public void testPermittedAxis(int i, String str) throws XPathException {
        if (i == 13) {
            grumble("The preceding-or-ancestor axis is for internal use only", str);
        }
    }

    /* renamed from: u */
    public final Expression m62881u() throws XPathException {
        int i = this.f99997t.currentTokenStartOffset;
        nextToken();
        Expression parseExpression = parseExpression();
        expect(204);
        nextToken();
        int i2 = this.f99997t.currentTokenStartOffset;
        expect(26);
        nextToken();
        Expression makeTracer = makeTracer(parseExprSingle(), null);
        int i3 = this.f99997t.currentTokenStartOffset;
        expect(27);
        nextToken();
        Expression makeConditional = Choose.makeConditional(parseExpression, makeTracer, makeTracer(parseExprSingle(), null));
        setLocation(makeConditional, i);
        return makeTracer(makeConditional, null);
    }

    public void undeclareRangeVariable() {
        this.rangeVariables.pop();
    }

    public String unescape(String str) throws XPathException {
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01ba  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.p110sf.saxon.pattern.NodeTest m62882v() throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 961
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.XPathParser.m62882v():net.sf.saxon.pattern.NodeTest");
    }

    /* renamed from: w */
    public final ItemType m62883w() throws XPathException {
        int i;
        if (!this.allowXPath30Syntax) {
            grumble("Parenthesized item types require 3.0 to be enabled");
        }
        nextToken();
        ItemType parseItemType = parseItemType();
        while ((parseItemType instanceof NodeTest) && this.language == ParsedLanguage.EXTENDED_ITEM_TYPE && (i = this.f99997t.currentToken) != 204) {
            if (i == 1 || i == 23 || i == 24) {
                nextToken();
                parseItemType = new CombinedNodeTest((NodeTest) parseItemType, i, (NodeTest) parseItemType());
            }
        }
        expect(204);
        nextToken();
        return parseItemType;
    }

    public void warning(String str) {
        if (this.env.getConfiguration().getBooleanProperty(Feature.SUPPRESS_XPATH_WARNINGS)) {
            return;
        }
        String m62852g = this.f99997t.m62852g(-1);
        StringBuilder sb = new StringBuilder();
        sb.append(str.startsWith(RemoveAudioAction.f58149k) ? "near" : "in");
        sb.append(' ');
        sb.append(Err.wrap(m62852g));
        sb.append(":\n    ");
        String sb2 = sb.toString();
        this.env.issueWarning(sb2 + str, makeLocation());
    }

    /* renamed from: x */
    public final Expression m62884x() throws XPathException {
        QuantifiedExpression quantifiedExpression;
        int i = this.f99997t.currentToken;
        Assignation assignation = null;
        int i2 = 0;
        QuantifiedExpression quantifiedExpression2 = null;
        while (true) {
            int i3 = this.f99997t.currentTokenStartOffset;
            nextToken();
            expect(21);
            nextToken();
            expect(201);
            String str = this.f99997t.currentTokenValue;
            i2++;
            quantifiedExpression = new QuantifiedExpression();
            quantifiedExpression.setRequiredType(SequenceType.SINGLE_ITEM);
            quantifiedExpression.setOperator(i);
            setLocation(quantifiedExpression, i3);
            quantifiedExpression.setVariableQName(makeStructuredQName(str, ""));
            nextToken();
            if (this.f99997t.currentToken == 71 && this.language == ParsedLanguage.XQUERY) {
                nextToken();
                SequenceType parseSequenceType = parseSequenceType();
                if (parseSequenceType.getCardinality() != 16384) {
                    warning("Occurrence indicator on singleton range variable has no effect");
                    parseSequenceType = SequenceType.makeSequenceType(parseSequenceType.getPrimaryType(), 16384);
                }
                quantifiedExpression.setRequiredType(parseSequenceType);
            }
            expect(31);
            nextToken();
            quantifiedExpression.setSequence(parseExprSingle());
            declareRangeVariable(quantifiedExpression);
            if (assignation != null) {
                assignation.setAction(quantifiedExpression);
            } else {
                quantifiedExpression2 = quantifiedExpression;
            }
            if (this.f99997t.currentToken != 7) {
                break;
            }
            assignation = quantifiedExpression;
        }
        expect(34);
        nextToken();
        quantifiedExpression.setAction(parseExprSingle());
        for (int i4 = 0; i4 < i2; i4++) {
            undeclareRangeVariable();
        }
        return makeTracer(quantifiedExpression2, quantifiedExpression2.getVariableQName());
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e1, code lost:
    
        r10.nextToken();
        r10.expect(204);
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e8, code lost:
    
        r10.nextToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ef, code lost:
    
        if (r1.isEmpty() == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f1, code lost:
    
        r10.grumble("RecordTest must contain at least one field");
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f7, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f8, code lost:
    
        r2.setDetails(r1, r4, r3, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fb, code lost:
    
        return r2;
     */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.p110sf.saxon.type.ItemType m62885y(net.p110sf.saxon.expr.parser.XPathParser r10) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.XPathParser.m62885y(net.sf.saxon.expr.parser.XPathParser):net.sf.saxon.type.ItemType");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0077, code lost:
    
        if (r0.equals("type") == false) goto L12;
     */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.p110sf.saxon.type.ItemType m62886z() throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.XPathParser.m62886z():net.sf.saxon.type.ItemType");
    }

    public static LocalBinding findOuterRangeVariable(StructuredQName structuredQName, IndexedStack<InlineFunctionDetails> indexedStack, StaticContext staticContext) {
        LocalBinding m62862f = m62862f(structuredQName, indexedStack);
        return (m62862f == null && (staticContext instanceof ExpressionContext) && !indexedStack.isEmpty()) ? m62863g(structuredQName, indexedStack, staticContext) : m62862f;
    }

    public void grumble(String str, String str2) throws XPathException {
        grumble(str, new StructuredQName("", NamespaceConstant.ERR, str2), -1);
    }

    public void setLocation(Expression expression, int i) {
        if (expression != null) {
            if (expression.getLocation() == null || expression.getLocation() == Loc.NONE) {
                expression.setLocation(makeLocation(i));
            }
        }
    }

    public void grumble(String str, String str2, int i) throws XPathException {
        grumble(str, new StructuredQName("", NamespaceConstant.ERR, str2), i);
    }

    /* loaded from: classes11.dex */
    public static class NestedLocation implements Location {

        /* renamed from: e */
        public final Location f99998e;

        /* renamed from: f */
        public final int f99999f;

        /* renamed from: g */
        public final int f100000g;

        /* renamed from: h */
        public String f100001h;

        public NestedLocation(Location location, int i, int i2) {
            this.f99998e = location.saveLocation();
            this.f99999f = i;
            this.f100000g = i2;
        }

        @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public int getColumnNumber() {
            return this.f100000g;
        }

        public Location getContainingLocation() {
            return this.f99998e;
        }

        @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public int getLineNumber() {
            return this.f99998e.getLineNumber() + this.f99999f;
        }

        public int getLocalLineNumber() {
            return this.f99999f;
        }

        public String getNearbyText() {
            return this.f100001h;
        }

        @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public String getPublicId() {
            return this.f99998e.getPublicId();
        }

        @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public String getSystemId() {
            return this.f99998e.getSystemId();
        }

        @Override // net.p110sf.saxon.s9api.Location
        public Location saveLocation() {
            return this;
        }

        public NestedLocation(Location location, int i, int i2, String str) {
            this.f99998e = location.saveLocation();
            this.f99999f = i;
            this.f100000g = i2;
            this.f100001h = str;
        }
    }

    public void grumble(String str, StructuredQName structuredQName, int i) throws XPathException {
        String str2;
        int i2;
        if (structuredQName == null) {
            structuredQName = new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, "XPST0003");
        }
        Tokenizer tokenizer = this.f99997t;
        int i3 = -1;
        if (tokenizer != null) {
            str2 = tokenizer.m62852g(-1);
            if (i == -1) {
                i3 = this.f99997t.getLineNumber();
                i2 = this.f99997t.getColumnNumber();
            } else {
                i3 = this.f99997t.getLineNumber(i);
                i2 = this.f99997t.getColumnNumber(i);
            }
        } else {
            str2 = null;
            i2 = -1;
        }
        Location makeNestedLocation = makeNestedLocation(this.env.getContainingLocation(), i3, i2, str2);
        XPathException xPathException = new XPathException(str);
        xPathException.setLocation(makeNestedLocation);
        xPathException.setIsSyntaxError("XPST0003".equals(structuredQName.getLocalPart()));
        xPathException.setIsStaticError(true);
        xPathException.setHostLanguage(getLanguage());
        xPathException.setErrorCodeQName(structuredQName);
        throw xPathException;
    }

    public Location makeLocation() {
        if (this.f99997t.getLineNumber() == this.f99996c.getLineNumber() && this.f99997t.getColumnNumber() == this.f99996c.getColumnNumber() && ((this.env.getSystemId() == null && this.f99996c.getSystemId() == null) || this.env.getSystemId().equals(this.f99996c.getSystemId()))) {
            return this.f99996c;
        }
        Location makeNestedLocation = makeNestedLocation(this.env.getContainingLocation(), this.f99997t.getLineNumber(), this.f99997t.getColumnNumber(), null);
        this.f99996c = makeNestedLocation;
        return makeNestedLocation;
    }

    public void setLocation(Clause clause, int i) {
        clause.setLocation(makeNestedLocation(this.env.getContainingLocation(), this.f99997t.getLineNumber(i), this.f99997t.getColumnNumber(i), null));
        clause.setPackageData(this.env.getPackageData());
    }

    public Expression parsePredicate() throws XPathException {
        return parseExpression();
    }

    public SequenceType parseSequenceType() throws XPathException {
        boolean equals = this.f99997t.currentTokenValue.equals("empty-sequence");
        ItemType parseItemType = parseItemType();
        if (equals) {
            return SequenceType.makeSequenceType(parseItemType, 8192);
        }
        return SequenceType.makeSequenceType(parseItemType, parseOccurrenceIndicator());
    }
}
