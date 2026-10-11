package net.p110sf.saxon.trans;

import androidx.room.FtsOptions;
import androidx.transition.Transition;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.caverock.androidsvg.SVGParser;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ImagesContract;
import com.onyx.android.sdk.base.data.Operators;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import com.sunia.HTREnginev2.gon;
import com.sunia.commonv2.global.HWREngineConstant;
import java.io.IOException;
import java.io.LineNumberReader;
import java.io.StringReader;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Stack;
import java.util.StringTokenizer;
import java.util.function.Predicate;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.CheckSumFilter;
import net.p110sf.saxon.event.ContentHandlerProxy;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.expr.AdjacentTextNodeMerger;
import net.p110sf.saxon.expr.AndExpression;
import net.p110sf.saxon.expr.ArithmeticExpression;
import net.p110sf.saxon.expr.AtomicSequenceConverter;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.AttributeGetter;
import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.Calculator;
import net.p110sf.saxon.expr.CardinalityChecker;
import net.p110sf.saxon.expr.CastExpression;
import net.p110sf.saxon.expr.CastableExpression;
import net.p110sf.saxon.expr.CompareToIntegerConstant;
import net.p110sf.saxon.expr.CompareToStringConstant;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ComponentBinding;
import net.p110sf.saxon.expr.ComponentInvocation;
import net.p110sf.saxon.expr.ConsumingOperand;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.EarlyEvaluationContext;
import net.p110sf.saxon.expr.EmptyTextNodeRemover;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FilterExpression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.ForExpression;
import net.p110sf.saxon.expr.GeneralComparison20;
import net.p110sf.saxon.expr.GlobalVariableReference;
import net.p110sf.saxon.expr.HomogeneityChecker;
import net.p110sf.saxon.expr.IdentityComparison;
import net.p110sf.saxon.expr.InstanceOfExpression;
import net.p110sf.saxon.expr.IntegerRangeTest;
import net.p110sf.saxon.expr.IsLastExpression;
import net.p110sf.saxon.expr.ItemChecker;
import net.p110sf.saxon.expr.LastItemExpression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.ListCastableFunction;
import net.p110sf.saxon.expr.ListConstructorFunction;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.LookupAllExpression;
import net.p110sf.saxon.expr.LookupExpression;
import net.p110sf.saxon.expr.NegateExpression;
import net.p110sf.saxon.expr.NumberSequenceFormatter;
import net.p110sf.saxon.expr.OrExpression;
import net.p110sf.saxon.expr.QuantifiedExpression;
import net.p110sf.saxon.expr.RangeExpression;
import net.p110sf.saxon.expr.RootExpression;
import net.p110sf.saxon.expr.SimpleStepExpression;
import net.p110sf.saxon.expr.SingletonAtomizer;
import net.p110sf.saxon.expr.SingletonIntersectExpression;
import net.p110sf.saxon.expr.SlashExpression;
import net.p110sf.saxon.expr.StaticFunctionCall;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.SubscriptExpression;
import net.p110sf.saxon.expr.SuppliedParameterReference;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.TailCallLoop;
import net.p110sf.saxon.expr.TailExpression;
import net.p110sf.saxon.expr.TryCatch;
import net.p110sf.saxon.expr.UnionCastableFunction;
import net.p110sf.saxon.expr.UnionConstructorFunction;
import net.p110sf.saxon.expr.UntypedSequenceConverter;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.ValueComparison;
import net.p110sf.saxon.expr.VennExpression;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.expr.accum.AccumulatorRegistry;
import net.p110sf.saxon.expr.accum.AccumulatorRule;
import net.p110sf.saxon.expr.compat.ArithmeticExpression10;
import net.p110sf.saxon.expr.compat.GeneralComparison10;
import net.p110sf.saxon.expr.flwor.LocalVariableBinding;
import net.p110sf.saxon.expr.instruct.AnalyzeString;
import net.p110sf.saxon.expr.instruct.ApplyImports;
import net.p110sf.saxon.expr.instruct.ApplyTemplates;
import net.p110sf.saxon.expr.instruct.AttributeSet;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.BreakInstr;
import net.p110sf.saxon.expr.instruct.CallTemplate;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.instruct.Comment;
import net.p110sf.saxon.expr.instruct.ComputedAttribute;
import net.p110sf.saxon.expr.instruct.ComputedElement;
import net.p110sf.saxon.expr.instruct.ConditionalBlock;
import net.p110sf.saxon.expr.instruct.Copy;
import net.p110sf.saxon.expr.instruct.CopyOf;
import net.p110sf.saxon.expr.instruct.Doctype;
import net.p110sf.saxon.expr.instruct.DocumentInstr;
import net.p110sf.saxon.expr.instruct.EvaluateInstr;
import net.p110sf.saxon.expr.instruct.FixedAttribute;
import net.p110sf.saxon.expr.instruct.FixedElement;
import net.p110sf.saxon.expr.instruct.ForEach;
import net.p110sf.saxon.expr.instruct.ForEachGroup;
import net.p110sf.saxon.expr.instruct.Fork;
import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.IterateInstr;
import net.p110sf.saxon.expr.instruct.LocalParam;
import net.p110sf.saxon.expr.instruct.LocalParamBlock;
import net.p110sf.saxon.expr.instruct.MessageInstr;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.instruct.NamespaceConstructor;
import net.p110sf.saxon.expr.instruct.NextIteration;
import net.p110sf.saxon.expr.instruct.NextMatch;
import net.p110sf.saxon.expr.instruct.NumberInstruction;
import net.p110sf.saxon.expr.instruct.OnEmptyExpr;
import net.p110sf.saxon.expr.instruct.OnNonEmptyExpr;
import net.p110sf.saxon.expr.instruct.OriginalFunction;
import net.p110sf.saxon.expr.instruct.ProcessingInstruction;
import net.p110sf.saxon.expr.instruct.ResultDocument;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.SourceDocument;
import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.expr.instruct.UseAttributeSet;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.expr.instruct.WherePopulated;
import net.p110sf.saxon.expr.instruct.WithParam;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.expr.parser.Evaluators;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.AtomicSortComparer;
import net.p110sf.saxon.expr.sort.CalendarValueComparer;
import net.p110sf.saxon.expr.sort.CodepointCollatingComparer;
import net.p110sf.saxon.expr.sort.CollatingAtomicComparer;
import net.p110sf.saxon.expr.sort.ConditionalSorter;
import net.p110sf.saxon.expr.sort.ContextFreeAtomicComparer;
import net.p110sf.saxon.expr.sort.DecimalSortComparer;
import net.p110sf.saxon.expr.sort.DescendingComparer;
import net.p110sf.saxon.expr.sort.DocumentSorter;
import net.p110sf.saxon.expr.sort.DoubleSortComparer;
import net.p110sf.saxon.expr.sort.EqualityComparer;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.expr.sort.MergeInstr;
import net.p110sf.saxon.expr.sort.NumericComparer;
import net.p110sf.saxon.expr.sort.NumericComparer11;
import net.p110sf.saxon.expr.sort.SortExpression;
import net.p110sf.saxon.expr.sort.SortKeyDefinition;
import net.p110sf.saxon.expr.sort.SortKeyDefinitionList;
import net.p110sf.saxon.expr.sort.TextComparer;
import net.p110sf.saxon.expr.sort.UntypedNumericComparer;
import net.p110sf.saxon.functions.Count;
import net.p110sf.saxon.functions.Current;
import net.p110sf.saxon.functions.CurrentGroupCall;
import net.p110sf.saxon.functions.CurrentGroupingKeyCall;
import net.p110sf.saxon.functions.ExecutableFunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.IntegratedFunctionCall;
import net.p110sf.saxon.functions.MathFunctionSet;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.hof.CoercedFunction;
import net.p110sf.saxon.functions.hof.CurriedFunction;
import net.p110sf.saxon.functions.hof.FunctionLiteral;
import net.p110sf.saxon.functions.hof.FunctionSequenceCoercer;
import net.p110sf.saxon.functions.hof.PartialApply;
import net.p110sf.saxon.functions.hof.UserFunctionReference;
import net.p110sf.saxon.functions.registry.ConstructorFunctionLibrary;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.ma.arrays.ArrayFunctionSet;
import net.p110sf.saxon.ma.arrays.SimpleArrayItem;
import net.p110sf.saxon.ma.arrays.SquareArrayConstructor;
import net.p110sf.saxon.ma.json.JsonParser;
import net.p110sf.saxon.ma.map.HashTrieMap;
import net.p110sf.saxon.ma.map.MapFunctionSet;
import net.p110sf.saxon.om.Action;
import net.p110sf.saxon.om.AllElementsSpaceStrippingRule;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.QNameParser;
import net.p110sf.saxon.om.SelectedElementsSpaceStrippingRule;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.pattern.AncestorQualifiedPattern;
import net.p110sf.saxon.pattern.AnchorPattern;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.BasePatternWithPredicate;
import net.p110sf.saxon.pattern.BooleanExpressionPattern;
import net.p110sf.saxon.pattern.ExceptPattern;
import net.p110sf.saxon.pattern.GeneralNodePattern;
import net.p110sf.saxon.pattern.GeneralPositionalPattern;
import net.p110sf.saxon.pattern.IntersectPattern;
import net.p110sf.saxon.pattern.ItemTypePattern;
import net.p110sf.saxon.pattern.LocalNameTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NamespaceTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeSelector;
import net.p110sf.saxon.pattern.NodeSetPattern;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.pattern.PatternThatSetsCurrent;
import net.p110sf.saxon.pattern.QNameTest;
import net.p110sf.saxon.pattern.SimplePositionalPattern;
import net.p110sf.saxon.pattern.UnionPattern;
import net.p110sf.saxon.pattern.UnionQNameTest;
import net.p110sf.saxon.pattern.UniversalPattern;
import net.p110sf.saxon.query.XQueryFunctionLibrary;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.CharacterMap;
import net.p110sf.saxon.serialize.CharacterMapIndex;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.style.PackageVersion;
import net.p110sf.saxon.style.StylesheetFunctionLibrary;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.trans.PackageLoaderHE;
import net.p110sf.saxon.trans.SimpleMode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.packages.IPackageLoader;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.trans.rules.RuleManager;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.jiter.TopDownStackIterable;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.tree.wrapper.VirtualCopy;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.ListType;
import net.p110sf.saxon.type.LocalUnionType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.StringToDouble;
import net.p110sf.saxon.type.UnionType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.IntegerRange;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NestedIntegerValue;
import net.p110sf.saxon.value.NotationValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class PackageLoaderHE implements IPackageLoader {
    protected static final Map<String, ExpressionLoader> eMap;

    /* renamed from: l */
    public static final NestedIntegerValue f102325l = new NestedIntegerValue(new int[]{9, 9, 1, 1});
    protected static final Map<String, String> licensableConstructs;

    /* renamed from: m */
    public static final Map<String, PatternLoader> f102326m;

    /* renamed from: n */
    public static final /* synthetic */ boolean f102327n = false;

    /* renamed from: a */
    public final Configuration f102328a;

    /* renamed from: b */
    public final XPathParser f102329b;

    /* renamed from: c */
    public final ExecutableFunctionLibrary f102330c;

    /* renamed from: d */
    public final ExecutableFunctionLibrary f102331d;

    /* renamed from: k */
    public UserFunction f102338k;
    public Stack<LocalBinding> localBindings;
    public StylesheetPackage topLevelPackage;
    protected final Stack<StylesheetPackage> packStack = new Stack<>();
    public final Stack<List<ComponentInvocation>> fixups = new Stack<>();
    public final List<Action> completionActions = new ArrayList();
    public final Map<String, StylesheetPackage> allPackages = new HashMap();

    /* renamed from: e */
    public final Stack<RetainedStaticContext> f102332e = new Stack<>();
    public final Map<SymbolicName, UserFunction> userFunctions = new HashMap();

    /* renamed from: f */
    public final Map<String, IntHashMap<Location>> f102333f = new HashMap();

    /* renamed from: g */
    public final Map<Integer, Component> f102334g = new HashMap();

    /* renamed from: h */
    public final Map<Component, String> f102335h = new HashMap();

    /* renamed from: i */
    public String f102336i = null;

    /* renamed from: j */
    public NestedIntegerValue f102337j = null;

    @FunctionalInterface
    /* loaded from: classes11.dex */
    public interface ExpressionLoader {
        Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException;
    }

    @FunctionalInterface
    /* loaded from: classes11.dex */
    public interface PatternLoader {
        Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException;
    }

    static {
        HashMap hashMap = new HashMap(200);
        eMap = hashMap;
        HashMap hashMap2 = new HashMap(30);
        licensableConstructs = hashMap2;
        hashMap2.put("gcEE", "EE");
        hashMap2.put("indexedFilter", "EE");
        hashMap2.put("indexedFilter2", "EE");
        hashMap2.put("indexedLookup", "EE");
        hashMap2.put("stream", "EE");
        hashMap2.put("switch", "EE");
        hashMap2.put("acFnRef", "PE");
        hashMap2.put("assign", "PE");
        hashMap2.put("do", "PE");
        hashMap2.put("javaCall", "PE");
        hashMap2.put("while", "PE");
        hashMap.put("among", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.yqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64203L4;
                m64203L4 = PackageLoaderHE.m64203L4(packageLoaderHE, nodeInfo);
                return m64203L4;
            }
        });
        hashMap.put("analyzeString", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.opk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64269W4;
                m64269W4 = PackageLoaderHE.m64269W4(packageLoaderHE, nodeInfo);
                return m64269W4;
            }
        });
        hashMap.put(Operators.AND, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.aqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64422w2;
                m64422w2 = PackageLoaderHE.m64422w2(packageLoaderHE, nodeInfo);
                return m64422w2;
            }
        });
        hashMap.put("applyImports", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.mqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64177H2;
                m64177H2 = PackageLoaderHE.m64177H2(packageLoaderHE, nodeInfo);
                return m64177H2;
            }
        });
        hashMap.put("applyT", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.zqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64243S2;
                m64243S2 = PackageLoaderHE.m64243S2(packageLoaderHE, nodeInfo);
                return m64243S2;
            }
        });
        hashMap.put("arith", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.olk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64303c3;
                m64303c3 = PackageLoaderHE.m64303c3(packageLoaderHE, nodeInfo);
                return m64303c3;
            }
        });
        hashMap.put("arith10", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.amk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64369n3;
                m64369n3 = PackageLoaderHE.m64369n3(packageLoaderHE, nodeInfo);
                return m64369n3;
            }
        });
        hashMap.put("array", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.mmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64435y3;
                m64435y3 = PackageLoaderHE.m64435y3(packageLoaderHE, nodeInfo);
                return m64435y3;
            }
        });
        hashMap.put("arrayBlock", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ymk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64154D3;
                m64154D3 = PackageLoaderHE.m64154D3(packageLoaderHE, nodeInfo);
                return m64154D3;
            }
        });
        hashMap.put("atomic", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.knk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64160E3;
                m64160E3 = PackageLoaderHE.m64160E3(packageLoaderHE, nodeInfo);
                return m64160E3;
            }
        });
        hashMap.put("atomSing", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ynk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64166F3;
                m64166F3 = PackageLoaderHE.m64166F3(packageLoaderHE, nodeInfo);
                return m64166F3;
            }
        });
        hashMap.put("att", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.lok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64172G3;
                m64172G3 = PackageLoaderHE.m64172G3(packageLoaderHE, nodeInfo);
                return m64172G3;
            }
        });
        hashMap.put("attVal", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.xok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64178H3;
                m64178H3 = PackageLoaderHE.m64178H3(packageLoaderHE, nodeInfo);
                return m64178H3;
            }
        });
        hashMap.put("axis", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.hpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64184I3;
                m64184I3 = PackageLoaderHE.m64184I3(packageLoaderHE, nodeInfo);
                return m64184I3;
            }
        });
        hashMap.put("break", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ipk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64190J3;
                m64190J3 = PackageLoaderHE.m64190J3(packageLoaderHE, nodeInfo);
                return m64190J3;
            }
        });
        hashMap.put("callT", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.jpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64196K3;
                m64196K3 = PackageLoaderHE.m64196K3(packageLoaderHE, nodeInfo);
                return m64196K3;
            }
        });
        hashMap.put("cast", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.kpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64202L3;
                m64202L3 = PackageLoaderHE.m64202L3(packageLoaderHE, nodeInfo);
                return m64202L3;
            }
        });
        hashMap.put("castable", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.lpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64208M3;
                m64208M3 = PackageLoaderHE.m64208M3(packageLoaderHE, nodeInfo);
                return m64208M3;
            }
        });
        hashMap.put("check", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.mpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64214N3;
                m64214N3 = PackageLoaderHE.m64214N3(packageLoaderHE, nodeInfo);
                return m64214N3;
            }
        });
        hashMap.put(Constants.ELEMNAME_CHOOSE_STRING, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.npk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64220O3;
                m64220O3 = PackageLoaderHE.m64220O3(packageLoaderHE, nodeInfo);
                return m64220O3;
            }
        });
        hashMap.put("coercedFn", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ppk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64226P3;
                m64226P3 = PackageLoaderHE.m64226P3(packageLoaderHE, nodeInfo);
                return m64226P3;
            }
        });
        hashMap.put("comment", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.qpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64232Q3;
                m64232Q3 = PackageLoaderHE.m64232Q3(packageLoaderHE, nodeInfo);
                return m64232Q3;
            }
        });
        hashMap.put("compareToInt", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.spk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64238R3;
                m64238R3 = PackageLoaderHE.m64238R3(packageLoaderHE, nodeInfo);
                return m64238R3;
            }
        });
        hashMap.put("compareToString", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.tpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64244S3;
                m64244S3 = PackageLoaderHE.m64244S3(packageLoaderHE, nodeInfo);
                return m64244S3;
            }
        });
        hashMap.put("compAtt", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.upk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64250T3;
                m64250T3 = PackageLoaderHE.m64250T3(packageLoaderHE, nodeInfo);
                return m64250T3;
            }
        });
        hashMap.put("compElem", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.vpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64256U3;
                m64256U3 = PackageLoaderHE.m64256U3(packageLoaderHE, nodeInfo);
                return m64256U3;
            }
        });
        hashMap.put("conditionalSort", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.wpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64262V3;
                m64262V3 = PackageLoaderHE.m64262V3(packageLoaderHE, nodeInfo);
                return m64262V3;
            }
        });
        hashMap.put("condCont", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.xpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64268W3;
                m64268W3 = PackageLoaderHE.m64268W3(packageLoaderHE, nodeInfo);
                return m64268W3;
            }
        });
        hashMap.put("condSeq", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ypk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64274X3;
                m64274X3 = PackageLoaderHE.m64274X3(packageLoaderHE, nodeInfo);
                return m64274X3;
            }
        });
        hashMap.put("consume", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.zpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64279Y3;
                m64279Y3 = PackageLoaderHE.m64279Y3(packageLoaderHE, nodeInfo);
                return m64279Y3;
            }
        });
        hashMap.put("convert", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.bqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64284Z3;
                m64284Z3 = PackageLoaderHE.m64284Z3(packageLoaderHE, nodeInfo);
                return m64284Z3;
            }
        });
        hashMap.put("copy", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.dqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64291a4;
                m64291a4 = PackageLoaderHE.m64291a4(packageLoaderHE, nodeInfo);
                return m64291a4;
            }
        });
        hashMap.put("copyOf", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.eqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64297b4;
                m64297b4 = PackageLoaderHE.m64297b4(packageLoaderHE, nodeInfo);
                return m64297b4;
            }
        });
        hashMap.put("currentGroup", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.fqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64304c4;
                m64304c4 = PackageLoaderHE.m64304c4(packageLoaderHE, nodeInfo);
                return m64304c4;
            }
        });
        hashMap.put("currentGroupingKey", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.gqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64310d4;
                m64310d4 = PackageLoaderHE.m64310d4(packageLoaderHE, nodeInfo);
                return m64310d4;
            }
        });
        hashMap.put("curriedFunc", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.hqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64316e4;
                m64316e4 = PackageLoaderHE.m64316e4(packageLoaderHE, nodeInfo);
                return m64316e4;
            }
        });
        hashMap.put("cvUntyped", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.iqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64321f4;
                m64321f4 = PackageLoaderHE.m64321f4(packageLoaderHE, nodeInfo);
                return m64321f4;
            }
        });
        hashMap.put("data", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.jqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64327g4;
                m64327g4 = PackageLoaderHE.m64327g4(packageLoaderHE, nodeInfo);
                return m64327g4;
            }
        });
        hashMap.put("dbl", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.kqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64333h4;
                m64333h4 = PackageLoaderHE.m64333h4(packageLoaderHE, nodeInfo);
                return m64333h4;
            }
        });
        hashMap.put("dec", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.lqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64339i4;
                m64339i4 = PackageLoaderHE.m64339i4(packageLoaderHE, nodeInfo);
                return m64339i4;
            }
        });
        hashMap.put("doc", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.oqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64345j4;
                m64345j4 = PackageLoaderHE.m64345j4(packageLoaderHE, nodeInfo);
                return m64345j4;
            }
        });
        hashMap.put("docOrder", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.pqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64351k4;
                m64351k4 = PackageLoaderHE.m64351k4(packageLoaderHE, nodeInfo);
                return m64351k4;
            }
        });
        hashMap.put(gon.f71308x0, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.qqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64358l4;
                m64358l4 = PackageLoaderHE.m64358l4(packageLoaderHE, nodeInfo);
                return m64358l4;
            }
        });
        hashMap.put("elem", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.rqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64364m4;
                m64364m4 = PackageLoaderHE.m64364m4(packageLoaderHE, nodeInfo);
                return m64364m4;
            }
        });
        hashMap.put(Constants.ELEMNAME_EMPTY_STRING, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.sqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64370n4;
                m64370n4 = PackageLoaderHE.m64370n4(packageLoaderHE, nodeInfo);
                return m64370n4;
            }
        });
        hashMap.put("emptyTextNodeRemover", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.tqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64376o4;
                m64376o4 = PackageLoaderHE.m64376o4(packageLoaderHE, nodeInfo);
                return m64376o4;
            }
        });
        hashMap.put("error", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.uqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64382p4;
                m64382p4 = PackageLoaderHE.m64382p4(packageLoaderHE, nodeInfo);
                return m64382p4;
            }
        });
        hashMap.put("evaluate", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.vqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64388q4;
                m64388q4 = PackageLoaderHE.m64388q4(packageLoaderHE, nodeInfo);
                return m64388q4;
            }
        });
        hashMap.put("every", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.wqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64394r4;
                m64394r4 = PackageLoaderHE.m64394r4(packageLoaderHE, nodeInfo);
                return m64394r4;
            }
        });
        hashMap.put("except", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.xqk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64400s4;
                m64400s4 = PackageLoaderHE.m64400s4(packageLoaderHE, nodeInfo);
                return m64400s4;
            }
        });
        hashMap.put("false", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ark
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64406t4;
                m64406t4 = PackageLoaderHE.m64406t4(packageLoaderHE, nodeInfo);
                return m64406t4;
            }
        });
        hashMap.put("filter", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.brk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64412u4;
                m64412u4 = PackageLoaderHE.m64412u4(packageLoaderHE, nodeInfo);
                return m64412u4;
            }
        });
        hashMap.put("first", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.crk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64418v4;
                m64418v4 = PackageLoaderHE.m64418v4(packageLoaderHE, nodeInfo);
                return m64418v4;
            }
        });
        hashMap.put("fn", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.drk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64424w4;
                m64424w4 = PackageLoaderHE.m64424w4(packageLoaderHE, nodeInfo);
                return m64424w4;
            }
        });
        hashMap.put("fnCoercer", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.erk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64430x4;
                m64430x4 = PackageLoaderHE.m64430x4(packageLoaderHE, nodeInfo);
                return m64430x4;
            }
        });
        hashMap.put("fnRef", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.frk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64436y4;
                m64436y4 = PackageLoaderHE.m64436y4(packageLoaderHE, nodeInfo);
                return m64436y4;
            }
        });
        hashMap.put(XResourceBundle.MULT_FOLLOWS, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.grk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64442z4;
                m64442z4 = PackageLoaderHE.m64442z4(packageLoaderHE, nodeInfo);
                return m64442z4;
            }
        });
        hashMap.put("for", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.hrk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64137A4;
                m64137A4 = PackageLoaderHE.m64137A4(packageLoaderHE, nodeInfo);
                return m64137A4;
            }
        });
        hashMap.put("forEach", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.irk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64143B4;
                m64143B4 = PackageLoaderHE.m64143B4(packageLoaderHE, nodeInfo);
                return m64143B4;
            }
        });
        hashMap.put("forEachGroup", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.nlk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64149C4;
                m64149C4 = PackageLoaderHE.m64149C4(packageLoaderHE, nodeInfo);
                return m64149C4;
            }
        });
        hashMap.put("fork", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.plk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64155D4;
                m64155D4 = PackageLoaderHE.m64155D4(packageLoaderHE, nodeInfo);
                return m64155D4;
            }
        });
        hashMap.put("gc", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.qlk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64161E4;
                m64161E4 = PackageLoaderHE.m64161E4(packageLoaderHE, nodeInfo);
                return m64161E4;
            }
        });
        hashMap.put("gc10", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.rlk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64167F4;
                m64167F4 = PackageLoaderHE.m64167F4(packageLoaderHE, nodeInfo);
                return m64167F4;
            }
        });
        hashMap.put("gVarRef", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.slk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64173G4;
                m64173G4 = PackageLoaderHE.m64173G4(packageLoaderHE, nodeInfo);
                return m64173G4;
            }
        });
        hashMap.put("homCheck", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.tlk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64179H4;
                m64179H4 = PackageLoaderHE.m64179H4(packageLoaderHE, nodeInfo);
                return m64179H4;
            }
        });
        hashMap.put("ifCall", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ulk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64185I4;
                m64185I4 = PackageLoaderHE.m64185I4(packageLoaderHE, nodeInfo);
                return m64185I4;
            }
        });
        hashMap.put("inlineFn", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.vlk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64191J4;
                m64191J4 = PackageLoaderHE.m64191J4(packageLoaderHE, nodeInfo);
                return m64191J4;
            }
        });
        hashMap.put(Transition.f10626J0, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.wlk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64197K4;
                m64197K4 = PackageLoaderHE.m64197K4(packageLoaderHE, nodeInfo);
                return m64197K4;
            }
        });
        hashMap.put("int", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ylk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64209M4;
                m64209M4 = PackageLoaderHE.m64209M4(packageLoaderHE, nodeInfo);
                return m64209M4;
            }
        });
        hashMap.put("intersect", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.zlk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64215N4;
                m64215N4 = PackageLoaderHE.m64215N4(packageLoaderHE, nodeInfo);
                return m64215N4;
            }
        });
        hashMap.put("intRangeTest", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.bmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64221O4;
                m64221O4 = PackageLoaderHE.m64221O4(packageLoaderHE, nodeInfo);
                return m64221O4;
            }
        });
        hashMap.put("is", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.cmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64227P4;
                m64227P4 = PackageLoaderHE.m64227P4(packageLoaderHE, nodeInfo);
                return m64227P4;
            }
        });
        hashMap.put("isLast", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.dmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64233Q4;
                m64233Q4 = PackageLoaderHE.m64233Q4(packageLoaderHE, nodeInfo);
                return m64233Q4;
            }
        });
        hashMap.put("iterate", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.emk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64239R4;
                m64239R4 = PackageLoaderHE.m64239R4(packageLoaderHE, nodeInfo);
                return m64239R4;
            }
        });
        hashMap.put("lastOf", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.fmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64245S4;
                m64245S4 = PackageLoaderHE.m64245S4(packageLoaderHE, nodeInfo);
                return m64245S4;
            }
        });
        hashMap.put("let", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.gmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64251T4;
                m64251T4 = PackageLoaderHE.m64251T4(packageLoaderHE, nodeInfo);
                return m64251T4;
            }
        });
        hashMap.put("literal", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.hmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64257U4;
                m64257U4 = PackageLoaderHE.m64257U4(packageLoaderHE, nodeInfo);
                return m64257U4;
            }
        });
        hashMap.put("lookup", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.jmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64263V4;
                m64263V4 = PackageLoaderHE.m64263V4(packageLoaderHE, nodeInfo);
                return m64263V4;
            }
        });
        hashMap.put("lookupAll", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.kmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64275X4;
                m64275X4 = PackageLoaderHE.m64275X4(packageLoaderHE, nodeInfo);
                return m64275X4;
            }
        });
        hashMap.put(Constant.MAP_TAG, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.lmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64280Y4;
                m64280Y4 = PackageLoaderHE.m64280Y4(packageLoaderHE, nodeInfo);
                return m64280Y4;
            }
        });
        hashMap.put("merge", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.nmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64285Z4;
                m64285Z4 = PackageLoaderHE.m64285Z4(packageLoaderHE, nodeInfo);
                return m64285Z4;
            }
        });
        hashMap.put("mergeAdj", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.omk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64292a5;
                m64292a5 = PackageLoaderHE.m64292a5(packageLoaderHE, nodeInfo);
                return m64292a5;
            }
        });
        hashMap.put("message", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.pmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64298b5;
                m64298b5 = PackageLoaderHE.m64298b5(packageLoaderHE, nodeInfo);
                return m64298b5;
            }
        });
        hashMap.put("minus", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.qmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64305c5;
                m64305c5 = PackageLoaderHE.m64305c5(packageLoaderHE, nodeInfo);
                return m64305c5;
            }
        });
        hashMap.put(Constants.ATTRNAME_NAMESPACE, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.rmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64311d5;
                m64311d5 = PackageLoaderHE.m64311d5(packageLoaderHE, nodeInfo);
                return m64311d5;
            }
        });
        hashMap.put("nextIteration", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.smk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64428x2;
                m64428x2 = PackageLoaderHE.m64428x2(packageLoaderHE, nodeInfo);
                return m64428x2;
            }
        });
        hashMap.put("nextMatch", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.umk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64434y2;
                m64434y2 = PackageLoaderHE.m64434y2(packageLoaderHE, nodeInfo);
                return m64434y2;
            }
        });
        hashMap.put("node", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.vmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64440z2;
                m64440z2 = PackageLoaderHE.m64440z2(packageLoaderHE, nodeInfo);
                return m64440z2;
            }
        });
        hashMap.put("nodeNum", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.wmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64135A2;
                m64135A2 = PackageLoaderHE.m64135A2(packageLoaderHE, nodeInfo);
                return m64135A2;
            }
        });
        hashMap.put("numSeqFmt", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.xmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64141B2;
                m64141B2 = PackageLoaderHE.m64141B2(packageLoaderHE, nodeInfo);
                return m64141B2;
            }
        });
        hashMap.put("onEmpty", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.zmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64147C2;
                m64147C2 = PackageLoaderHE.m64147C2(packageLoaderHE, nodeInfo);
                return m64147C2;
            }
        });
        hashMap.put("onNonEmpty", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ank
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64153D2;
                m64153D2 = PackageLoaderHE.m64153D2(packageLoaderHE, nodeInfo);
                return m64153D2;
            }
        });
        hashMap.put(Operators.OR, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.bnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64159E2;
                m64159E2 = PackageLoaderHE.m64159E2(packageLoaderHE, nodeInfo);
                return m64159E2;
            }
        });
        hashMap.put("origF", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.cnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64165F2;
                m64165F2 = PackageLoaderHE.m64165F2(packageLoaderHE, nodeInfo);
                return m64165F2;
            }
        });
        hashMap.put("origFC", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.dnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64171G2;
                m64171G2 = PackageLoaderHE.m64171G2(packageLoaderHE, nodeInfo);
                return m64171G2;
            }
        });
        hashMap.put(Constants.ELEMNAME_PARAMVARIABLE_STRING, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.fnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64183I2;
                m64183I2 = PackageLoaderHE.m64183I2(packageLoaderHE, nodeInfo);
                return m64183I2;
            }
        });
        hashMap.put("params", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.gnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64189J2;
                m64189J2 = PackageLoaderHE.m64189J2(packageLoaderHE, nodeInfo);
                return m64189J2;
            }
        });
        hashMap.put("partialApply", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.hnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64195K2;
                m64195K2 = PackageLoaderHE.m64195K2(packageLoaderHE, nodeInfo);
                return m64195K2;
            }
        });
        hashMap.put(XResourceBundle.MULT_PRECEDES, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ink
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64201L2;
                m64201L2 = PackageLoaderHE.m64201L2(packageLoaderHE, nodeInfo);
                return m64201L2;
            }
        });
        hashMap.put("procInst", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.jnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64207M2;
                m64207M2 = PackageLoaderHE.m64207M2(packageLoaderHE, nodeInfo);
                return m64207M2;
            }
        });
        hashMap.put("qName", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.jrk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64213N2;
                m64213N2 = PackageLoaderHE.m64213N2(packageLoaderHE, nodeInfo);
                return m64213N2;
            }
        });
        hashMap.put(SessionDescription.f26441q, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.xlk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64219O2;
                m64219O2 = PackageLoaderHE.m64219O2(packageLoaderHE, nodeInfo);
                return m64219O2;
            }
        });
        hashMap.put("resultDoc", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.imk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64225P2;
                m64225P2 = PackageLoaderHE.m64225P2(packageLoaderHE, nodeInfo);
                return m64225P2;
            }
        });
        hashMap.put("root", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.tmk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64231Q2;
                m64231Q2 = PackageLoaderHE.m64231Q2(packageLoaderHE, nodeInfo);
                return m64231Q2;
            }
        });
        hashMap.put("saxonDoctype", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.enk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64237R2;
                m64237R2 = PackageLoaderHE.m64237R2(packageLoaderHE, nodeInfo);
                return m64237R2;
            }
        });
        hashMap.put("sequence", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.pnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64249T2;
                m64249T2 = PackageLoaderHE.m64249T2(packageLoaderHE, nodeInfo);
                return m64249T2;
            }
        });
        hashMap.put("slash", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.unk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64255U2;
                m64255U2 = PackageLoaderHE.m64255U2(packageLoaderHE, nodeInfo);
                return m64255U2;
            }
        });
        hashMap.put("some", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.vnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64261V2;
                m64261V2 = PackageLoaderHE.m64261V2(packageLoaderHE, nodeInfo);
                return m64261V2;
            }
        });
        hashMap.put(Constants.ELEMNAME_SORT_STRING, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.wnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64267W2;
                m64267W2 = PackageLoaderHE.m64267W2(packageLoaderHE, nodeInfo);
                return m64267W2;
            }
        });
        hashMap.put("sourceDoc", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.xnk
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64273X2;
                m64273X2 = PackageLoaderHE.m64273X2(packageLoaderHE, nodeInfo);
                return m64273X2;
            }
        });
        hashMap.put(ExtensionNamespaceContext.EXSLT_STRING_PREFIX, new ExpressionLoader() { // from class: com.sunia.HTREnginev2.aok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64278Y2;
                m64278Y2 = PackageLoaderHE.m64278Y2(packageLoaderHE, nodeInfo);
                return m64278Y2;
            }
        });
        hashMap.put("subscript", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.bok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64283Z2;
                m64283Z2 = PackageLoaderHE.m64283Z2(packageLoaderHE, nodeInfo);
                return m64283Z2;
            }
        });
        hashMap.put("supplied", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.cok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64290a3;
                m64290a3 = PackageLoaderHE.m64290a3(packageLoaderHE, nodeInfo);
                return m64290a3;
            }
        });
        hashMap.put("tail", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.dok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64296b3;
                m64296b3 = PackageLoaderHE.m64296b3(packageLoaderHE, nodeInfo);
                return m64296b3;
            }
        });
        hashMap.put("tailCallLoop", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.eok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64309d3;
                m64309d3 = PackageLoaderHE.m64309d3(packageLoaderHE, nodeInfo);
                return m64309d3;
            }
        });
        hashMap.put("to", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.fok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64315e3;
                m64315e3 = PackageLoaderHE.m64315e3(packageLoaderHE, nodeInfo);
                return m64315e3;
            }
        });
        hashMap.put("treat", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.gok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64320f3;
                m64320f3 = PackageLoaderHE.m64320f3(packageLoaderHE, nodeInfo);
                return m64320f3;
            }
        });
        hashMap.put("true", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.hok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64326g3;
                m64326g3 = PackageLoaderHE.m64326g3(packageLoaderHE, nodeInfo);
                return m64326g3;
            }
        });
        hashMap.put("try", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.iok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64332h3;
                m64332h3 = PackageLoaderHE.m64332h3(packageLoaderHE, nodeInfo);
                return m64332h3;
            }
        });
        hashMap.put("ufCall", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.jok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64338i3;
                m64338i3 = PackageLoaderHE.m64338i3(packageLoaderHE, nodeInfo);
                return m64338i3;
            }
        });
        hashMap.put("ufRef", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.mok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64344j3;
                m64344j3 = PackageLoaderHE.m64344j3(packageLoaderHE, nodeInfo);
                return m64344j3;
            }
        });
        hashMap.put("union", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.nok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64350k3;
                m64350k3 = PackageLoaderHE.m64350k3(packageLoaderHE, nodeInfo);
                return m64350k3;
            }
        });
        hashMap.put("useAS", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.ook
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64357l3;
                m64357l3 = PackageLoaderHE.m64357l3(packageLoaderHE, nodeInfo);
                return m64357l3;
            }
        });
        hashMap.put("valueOf", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.pok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64363m3;
                m64363m3 = PackageLoaderHE.m64363m3(packageLoaderHE, nodeInfo);
                return m64363m3;
            }
        });
        hashMap.put("varRef", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.qok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64375o3;
                m64375o3 = PackageLoaderHE.m64375o3(packageLoaderHE, nodeInfo);
                return m64375o3;
            }
        });
        hashMap.put("vc", new ExpressionLoader() { // from class: com.sunia.HTREnginev2.rok
            @Override // net.sf.saxon.trans.PackageLoaderHE.ExpressionLoader
            public final Expression loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Expression m64381p3;
                m64381p3 = PackageLoaderHE.m64381p3(packageLoaderHE, nodeInfo);
                return m64381p3;
            }
        });
        HashMap hashMap3 = new HashMap(200);
        f102326m = hashMap3;
        hashMap3.put("p.anchor", new PatternLoader() { // from class: com.sunia.HTREnginev2.sok
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                return PackageLoaderHE.m64387q3(packageLoaderHE, nodeInfo);
            }
        });
        hashMap3.put("p.any", new PatternLoader() { // from class: com.sunia.HTREnginev2.tok
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64393r3;
                m64393r3 = PackageLoaderHE.m64393r3(packageLoaderHE, nodeInfo);
                return m64393r3;
            }
        });
        hashMap3.put("p.booleanExp", new PatternLoader() { // from class: com.sunia.HTREnginev2.uok
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64399s3;
                m64399s3 = PackageLoaderHE.m64399s3(packageLoaderHE, nodeInfo);
                return m64399s3;
            }
        });
        hashMap3.put("p.genNode", new PatternLoader() { // from class: com.sunia.HTREnginev2.wok
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64405t3;
                m64405t3 = PackageLoaderHE.m64405t3(packageLoaderHE, nodeInfo);
                return m64405t3;
            }
        });
        hashMap3.put("p.genPos", new PatternLoader() { // from class: com.sunia.HTREnginev2.yok
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64411u3;
                m64411u3 = PackageLoaderHE.m64411u3(packageLoaderHE, nodeInfo);
                return m64411u3;
            }
        });
        hashMap3.put("p.nodeSet", new PatternLoader() { // from class: com.sunia.HTREnginev2.zok
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64417v3;
                m64417v3 = PackageLoaderHE.m64417v3(packageLoaderHE, nodeInfo);
                return m64417v3;
            }
        });
        hashMap3.put("p.nodeTest", new PatternLoader() { // from class: com.sunia.HTREnginev2.apk
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64423w3;
                m64423w3 = PackageLoaderHE.m64423w3(packageLoaderHE, nodeInfo);
                return m64423w3;
            }
        });
        hashMap3.put("p.venn", new PatternLoader() { // from class: com.sunia.HTREnginev2.bpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64429x3;
                m64429x3 = PackageLoaderHE.m64429x3(packageLoaderHE, nodeInfo);
                return m64429x3;
            }
        });
        hashMap3.put("p.simPos", new PatternLoader() { // from class: com.sunia.HTREnginev2.cpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64441z3;
                m64441z3 = PackageLoaderHE.m64441z3(packageLoaderHE, nodeInfo);
                return m64441z3;
            }
        });
        hashMap3.put("p.withCurrent", new PatternLoader() { // from class: com.sunia.HTREnginev2.dpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64136A3;
                m64136A3 = PackageLoaderHE.m64136A3(packageLoaderHE, nodeInfo);
                return m64136A3;
            }
        });
        hashMap3.put("p.withUpper", new PatternLoader() { // from class: com.sunia.HTREnginev2.epk
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64142B3;
                m64142B3 = PackageLoaderHE.m64142B3(packageLoaderHE, nodeInfo);
                return m64142B3;
            }
        });
        hashMap3.put("p.withPredicate", new PatternLoader() { // from class: com.sunia.HTREnginev2.fpk
            @Override // net.sf.saxon.trans.PackageLoaderHE.PatternLoader
            public final Pattern loadFrom(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) {
                Pattern m64148C3;
                m64148C3 = PackageLoaderHE.m64148C3(packageLoaderHE, nodeInfo);
                return m64148C3;
            }
        });
    }

    public PackageLoaderHE(Configuration configuration) {
        this.f102328a = configuration;
        this.f102330c = new ExecutableFunctionLibrary(configuration);
        this.f102331d = new ExecutableFunctionLibrary(configuration);
        try {
            XPathParser newExpressionParser = configuration.newExpressionParser("XP", false, 31);
            this.f102329b = newExpressionParser;
            newExpressionParser.setQNameParser(new QNameParser(null).withAcceptEQName(true));
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: A2 */
    public static /* synthetic */ Expression m64135A2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new NumberInstruction(packageLoaderHE.getExpressionWithRole(nodeInfo, "select"), m64302c2(nodeInfo.getAttributeValue("", "level")), packageLoaderHE.getPatternWithRole(nodeInfo, "count"), packageLoaderHE.getPatternWithRole(nodeInfo, "from"));
    }

    /* renamed from: A3 */
    public static /* synthetic */ Pattern m64136A3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        LocalVariableBinding localVariableBinding = new LocalVariableBinding(Current.FN_CURRENT, SequenceType.SINGLE_ITEM);
        localVariableBinding.setSlotNumber(0);
        packageLoaderHE.localBindings.push(localVariableBinding);
        Pattern m64447b2 = packageLoaderHE.m64447b2(nodeInfo);
        packageLoaderHE.localBindings.pop();
        return new PatternThatSetsCurrent(m64447b2, localVariableBinding);
    }

    /* renamed from: A4 */
    public static /* synthetic */ Expression m64137A4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        int integerAttribute = packageLoaderHE.getIntegerAttribute(nodeInfo, "slot");
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "var");
        SequenceType parseAlphaCode = packageLoaderHE.parseAlphaCode(nodeInfo, "as");
        ForExpression forExpression = new ForExpression();
        forExpression.setSequence(firstChildExpression);
        forExpression.setRequiredType(parseAlphaCode);
        forExpression.setSlotNumber(integerAttribute);
        forExpression.setVariableQName(qNameAttribute);
        packageLoaderHE.localBindings.push(forExpression);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        packageLoaderHE.localBindings.pop();
        forExpression.setAction(secondChildExpression);
        return forExpression;
    }

    /* renamed from: B2 */
    public static /* synthetic */ Expression m64141B2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression expressionWithRole = packageLoaderHE.getExpressionWithRole(nodeInfo, "value");
        Expression expressionWithRole2 = packageLoaderHE.getExpressionWithRole(nodeInfo, Constants.ATTRNAME_FORMAT);
        if (expressionWithRole2 == null) {
            expressionWithRole2 = new StringLiteral("1");
        }
        Expression expression = expressionWithRole2;
        Expression expressionWithRole3 = packageLoaderHE.getExpressionWithRole(nodeInfo, "gpSize");
        Expression expressionWithRole4 = packageLoaderHE.getExpressionWithRole(nodeInfo, "gpSep");
        Expression expressionWithRole5 = packageLoaderHE.getExpressionWithRole(nodeInfo, "letterValue");
        Expression expressionWithRole6 = packageLoaderHE.getExpressionWithRole(nodeInfo, "ordinal");
        Expression expressionWithRole7 = packageLoaderHE.getExpressionWithRole(nodeInfo, "startAt");
        Expression expressionWithRole8 = packageLoaderHE.getExpressionWithRole(nodeInfo, "lang");
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        NumberSequenceFormatter numberSequenceFormatter = new NumberSequenceFormatter(expressionWithRole, expression, expressionWithRole3, expressionWithRole4, expressionWithRole5, expressionWithRole6, expressionWithRole7, expressionWithRole8, null, attributeValue != null && attributeValue.contains("1"));
        numberSequenceFormatter.preallocateNumberer(packageLoaderHE.f102328a);
        return numberSequenceFormatter;
    }

    /* renamed from: B3 */
    public static /* synthetic */ Pattern m64142B3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new AncestorQualifiedPattern(packageLoaderHE.m64447b2(nodeInfo), packageLoaderHE.m64448d2(nodeInfo), AxisInfo.getAxisNumber(nodeInfo.getAttributeValue("", "axis")));
    }

    /* renamed from: B4 */
    public static /* synthetic */ Expression m64143B4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        Expression expressionWithRole = packageLoaderHE.getExpressionWithRole(nodeInfo, "threads");
        if (expressionWithRole == null) {
            ForEach forEach = new ForEach(firstChildExpression, secondChildExpression);
            Expression expressionWithRole2 = packageLoaderHE.getExpressionWithRole(nodeInfo, "separator");
            if (expressionWithRole2 != null) {
                forEach.setSeparatorExpression(expressionWithRole2);
            }
            return forEach;
        }
        ForEach forEach2 = new ForEach(firstChildExpression, secondChildExpression, false, expressionWithRole);
        Expression expressionWithRole3 = packageLoaderHE.getExpressionWithRole(nodeInfo, "separator");
        if (expressionWithRole3 != null) {
            forEach2.setSeparatorExpression(expressionWithRole3);
        }
        return packageLoaderHE.getConfiguration().obtainOptimizer().generateMultithreadedInstruction(forEach2);
    }

    /* renamed from: C2 */
    public static /* synthetic */ Expression m64147C2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new OnEmptyExpr(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: C3 */
    public static /* synthetic */ Pattern m64148C3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new BasePatternWithPredicate(packageLoaderHE.m64447b2(nodeInfo), packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: C4 */
    public static /* synthetic */ Expression m64149C4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        byte b;
        byte b2;
        String attributeValue = nodeInfo.getAttributeValue("", "algorithm");
        boolean z = false;
        if ("by".equals(attributeValue)) {
            b = 0;
        } else if ("adjacent".equals(attributeValue)) {
            b = 1;
        } else {
            if ("starting".equals(attributeValue)) {
                b2 = 2;
            } else if ("ending".equals(attributeValue)) {
                b2 = 3;
            } else {
                if (!"breaking".equals(attributeValue)) {
                    throw new AssertionError("Unknown grouping algorithm: " + attributeValue);
                }
                b = 4;
            }
            b = b2;
        }
        String attributeValue2 = nodeInfo.getAttributeValue("", "flags");
        boolean z2 = attributeValue2 != null && attributeValue2.contains("c");
        if (attributeValue2 != null && attributeValue2.contains(C4921e.f26537n)) {
            z = true;
        }
        Expression expressionWithRole = packageLoaderHE.getExpressionWithRole(nodeInfo, "select");
        Expression expressionWithRole2 = (b == 0 || b == 1 || b == 4) ? packageLoaderHE.getExpressionWithRole(nodeInfo, "key") : packageLoaderHE.getPatternWithRole(nodeInfo, Constants.ATTRNAME_MATCH);
        SortKeyDefinitionList m64452f5 = packageLoaderHE.m64452f5(nodeInfo);
        SortKeyDefinitionList sortKeyDefinitionList = m64452f5.size() == 0 ? null : m64452f5;
        Expression expressionWithRole3 = packageLoaderHE.getExpressionWithRole(nodeInfo, "collation");
        ForEachGroup forEachGroup = new ForEachGroup(expressionWithRole, packageLoaderHE.getExpressionWithRole(nodeInfo, "content"), b, expressionWithRole2, expressionWithRole3 instanceof StringLiteral ? packageLoaderHE.f102328a.getCollation(((StringLiteral) expressionWithRole3).getString().toString()) : null, expressionWithRole3, sortKeyDefinitionList);
        forEachGroup.setComposite(z2);
        forEachGroup.setIsInFork(z);
        return forEachGroup;
    }

    /* renamed from: D2 */
    public static /* synthetic */ Expression m64153D2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new OnNonEmptyExpr(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: D3 */
    public static /* synthetic */ Expression m64154D3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new SquareArrayConstructor(getChildExpressionList(packageLoaderHE, nodeInfo));
    }

    /* renamed from: D4 */
    public static /* synthetic */ Expression m64155D4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new Fork(getChildExpressionArray(packageLoaderHE, nodeInfo));
    }

    /* renamed from: E2 */
    public static /* synthetic */ Expression m64159E2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new OrExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: E3 */
    public static /* synthetic */ Expression m64160E3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return Literal.makeLiteral(((AtomicType) packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, "type")).getStringConverter(packageLoaderHE.f102328a.getConversionRules()).convertString(StringView.m63901of(nodeInfo.getAttributeValue("", "val")).tidy()).asAtomic());
    }

    /* renamed from: E4 */
    public static /* synthetic */ Expression m64161E4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        int operator = getOperator(nodeInfo.getAttributeValue("", "op"));
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        AtomicComparer makeAtomicComparer = packageLoaderHE.makeAtomicComparer(nodeInfo.getAttributeValue("", "comp"), nodeInfo);
        GeneralComparison20 generalComparison20 = new GeneralComparison20(firstChildExpression, operator, secondChildExpression);
        generalComparison20.setAtomicComparer(makeAtomicComparer);
        return generalComparison20;
    }

    /* renamed from: F2 */
    public static /* synthetic */ Expression m64165F2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "name");
        String attributeValue = nodeInfo.getAttributeValue("", "pack");
        StylesheetPackage stylesheetPackage = packageLoaderHE.getPackage(attributeValue);
        if (stylesheetPackage != null) {
            return new FunctionLiteral(new OriginalFunction(stylesheetPackage.getComponent(new SymbolicName.C18533F(qNameAttribute, packageLoaderHE.getIntegerAttribute(nodeInfo, "arity")))));
        }
        throw new XPathException("Unknown package key " + attributeValue);
    }

    /* renamed from: F3 */
    public static /* synthetic */ Expression m64166F3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new SingletonAtomizer(packageLoaderHE.getFirstChildExpression(nodeInfo), RoleDiagnostic.reconstruct(nodeInfo.getAttributeValue("", "diag")), "?".equals(nodeInfo.getAttributeValue("", "card")));
    }

    /* renamed from: F4 */
    public static /* synthetic */ Expression m64167F4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        int operator = getOperator(nodeInfo.getAttributeValue("", "op"));
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "comp");
        GeneralComparison10 generalComparison10 = new GeneralComparison10(firstChildExpression, operator, secondChildExpression);
        generalComparison10.setAtomicComparer(packageLoaderHE.makeAtomicComparer(attributeValue, nodeInfo));
        return generalComparison10;
    }

    /* renamed from: G2 */
    public static /* synthetic */ Expression m64171G2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "name");
        String attributeValue = nodeInfo.getAttributeValue("", "pack");
        StylesheetPackage stylesheetPackage = packageLoaderHE.getPackage(attributeValue);
        if (stylesheetPackage != null) {
            Expression[] childExpressionArray = getChildExpressionArray(packageLoaderHE, nodeInfo);
            return new StaticFunctionCall(new OriginalFunction(stylesheetPackage.getComponent(new SymbolicName.C18533F(qNameAttribute, childExpressionArray.length))), childExpressionArray);
        }
        throw new XPathException("Unknown package key " + attributeValue);
    }

    /* renamed from: G3 */
    public static /* synthetic */ Expression m64172G3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        try {
            String[] qNameParts = NameChecker.getQNameParts(nodeInfo.getAttributeValue("", "name"));
            String attributeValue = nodeInfo.getAttributeValue("", "nsuri");
            if (attributeValue == null) {
                attributeValue = "";
            }
            FingerprintedQName fingerprintedQName = new FingerprintedQName(new StructuredQName(qNameParts[0], attributeValue, qNameParts[1]), packageLoaderHE.f102328a.getNamePool());
            String attributeValue2 = nodeInfo.getAttributeValue("", "validation");
            int code = attributeValue2 != null ? Validation.getCode(attributeValue2) : 4;
            SchemaType typeAttribute = packageLoaderHE.getTypeAttribute(nodeInfo, "type");
            if (typeAttribute != null) {
                code = 8;
            }
            Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
            FixedAttribute fixedAttribute = new FixedAttribute(fingerprintedQName, code, (SimpleType) typeAttribute);
            fixedAttribute.setSelect(firstChildExpression);
            return fixedAttribute;
        } catch (QNameException e) {
            throw new XPathException(e);
        }
    }

    /* renamed from: G4 */
    public static /* synthetic */ Expression m64173G4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        GlobalVariableReference globalVariableReference = new GlobalVariableReference(packageLoaderHE.getQNameAttribute(nodeInfo, "name"));
        globalVariableReference.setBindingSlot(packageLoaderHE.getIntegerAttribute(nodeInfo, "bSlot"));
        packageLoaderHE.m64445Y1(globalVariableReference);
        return globalVariableReference;
    }

    /* renamed from: H2 */
    public static /* synthetic */ Expression m64177H2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        ApplyImports applyImports = new ApplyImports();
        WithParam[] m64453g5 = packageLoaderHE.m64453g5(nodeInfo, applyImports, false);
        WithParam[] m64453g52 = packageLoaderHE.m64453g5(nodeInfo, applyImports, true);
        applyImports.setActualParams(m64453g5);
        applyImports.setTunnelParams(m64453g52);
        return applyImports;
    }

    /* renamed from: H3 */
    public static /* synthetic */ Expression m64178H3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        AttributeGetter attributeGetter = new AttributeGetter(new FingerprintedQName(packageLoaderHE.getQNameAttribute(nodeInfo, "name"), packageLoaderHE.f102328a.getNamePool()));
        attributeGetter.setRequiredChecks(packageLoaderHE.getIntegerAttribute(nodeInfo, "chk"));
        return attributeGetter;
    }

    /* renamed from: H4 */
    public static /* synthetic */ Expression m64179H4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new HomogeneityChecker(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: I2 */
    public static /* synthetic */ Expression m64183I2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "name");
        int integerAttribute = packageLoaderHE.getIntegerAttribute(nodeInfo, "slot");
        LocalParam localParam = new LocalParam();
        localParam.setVariableQName(qNameAttribute);
        localParam.setSlotNumber(integerAttribute);
        Expression expressionWithRole = packageLoaderHE.getExpressionWithRole(nodeInfo, "select");
        if (expressionWithRole != null) {
            localParam.setSelectExpression(expressionWithRole);
            localParam.computeEvaluationMode();
        }
        Expression expressionWithRole2 = packageLoaderHE.getExpressionWithRole(nodeInfo, "conversion");
        if (expressionWithRole2 != null) {
            localParam.setConversion(expressionWithRole2);
        }
        localParam.setRequiredType(packageLoaderHE.parseAlphaCode(nodeInfo, "as"));
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        if (attributeValue != null) {
            localParam.setTunnel(attributeValue.contains("t"));
            localParam.setRequiredParam(attributeValue.contains("r"));
            localParam.setImplicitlyRequiredParam(attributeValue.contains("i"));
        }
        packageLoaderHE.localBindings.push(localParam);
        return localParam;
    }

    /* renamed from: I3 */
    public static /* synthetic */ Expression m64184I3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new AxisExpression(AxisInfo.getAxisNumber(nodeInfo.getAttributeValue("", "name")), (NodeTest) packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, "nodeTest"));
    }

    /* renamed from: I4 */
    public static /* synthetic */ Expression m64185I4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression expression;
        Expression[] childExpressionArray = getChildExpressionArray(packageLoaderHE, nodeInfo);
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "name");
        if (qNameAttribute.hasURI(NamespaceConstant.MATH)) {
            expression = MathFunctionSet.getInstance().makeFunction(qNameAttribute.getLocalPart(), childExpressionArray.length).makeFunctionCall(childExpressionArray);
        } else if (qNameAttribute.hasURI(NamespaceConstant.MAP_FUNCTIONS)) {
            expression = MapFunctionSet.getInstance().makeFunction(qNameAttribute.getLocalPart(), childExpressionArray.length).makeFunctionCall(childExpressionArray);
        } else if (qNameAttribute.hasURI(NamespaceConstant.ARRAY_FUNCTIONS)) {
            expression = ArrayFunctionSet.getInstance().makeFunction(qNameAttribute.getLocalPart(), childExpressionArray.length).makeFunctionCall(childExpressionArray);
        } else {
            if (qNameAttribute.hasURI(NamespaceConstant.SAXON)) {
                packageLoaderHE.needsPELicense("Saxon extension functions");
            }
            expression = null;
        }
        if (expression == null) {
            SymbolicName.C18533F c18533f = new SymbolicName.C18533F(qNameAttribute, childExpressionArray.length);
            SequenceType parseAlphaCode = packageLoaderHE.parseAlphaCode(nodeInfo, "type");
            IndependentContext independentContext = new IndependentContext(packageLoaderHE.f102328a);
            RetainedStaticContext makeRetainedStaticContext = packageLoaderHE.makeRetainedStaticContext(nodeInfo);
            independentContext.setBaseURI(makeRetainedStaticContext.getStaticBaseUriString());
            independentContext.setPackageData(makeRetainedStaticContext.getPackageData());
            independentContext.setXPathLanguageLevel(31);
            independentContext.setDefaultElementNamespace(makeRetainedStaticContext.getDefaultElementNamespace());
            independentContext.setNamespaceResolver(makeRetainedStaticContext);
            independentContext.setBackwardsCompatibilityMode(makeRetainedStaticContext.isBackwardsCompatibility());
            independentContext.setDefaultCollationName(makeRetainedStaticContext.getDefaultCollationName());
            independentContext.setDefaultFunctionNamespace(makeRetainedStaticContext.getDefaultFunctionNamespace());
            independentContext.setDecimalFormatManager(makeRetainedStaticContext.getDecimalFormatManager());
            ArrayList<String> arrayList = new ArrayList();
            Expression bind = packageLoaderHE.f102328a.getIntegratedFunctionLibrary().bind(c18533f, childExpressionArray, independentContext, arrayList);
            if (bind == null) {
                bind = packageLoaderHE.f102328a.getBuiltInExtensionLibraryList().bind(c18533f, childExpressionArray, independentContext, arrayList);
            }
            if (bind instanceof SystemFunctionCall) {
                SystemFunction targetFunction = ((SystemFunctionCall) bind).getTargetFunction();
                targetFunction.setRetainedStaticContext(packageLoaderHE.makeRetainedStaticContext(nodeInfo));
                AxisIterator iterateAxis = nodeInfo.iterateAxis(2);
                Properties properties = new Properties();
                while (true) {
                    NodeInfo nodeInfo2 = (NodeInfo) iterateAxis.next();
                    if (nodeInfo2 == null) {
                        break;
                    }
                    properties.setProperty(nodeInfo2.getLocalPart(), nodeInfo2.getStringValue());
                }
                targetFunction.importAttributes(properties);
            }
            if (bind == null) {
                StringBuilder sb = new StringBuilder("IntegratedFunctionCall to " + c18533f + " not found");
                for (String str : arrayList) {
                    sb.append(". ");
                    sb.append(str);
                }
                throw new XPathException(sb.toString());
            }
            if (bind instanceof IntegratedFunctionCall) {
                IntegratedFunctionCall integratedFunctionCall = (IntegratedFunctionCall) bind;
                integratedFunctionCall.getFunction().supplyStaticContext(independentContext, -1, childExpressionArray);
                integratedFunctionCall.setResultType(parseAlphaCode);
            }
            expression = bind;
        }
        if (expression instanceof SystemFunctionCall) {
            ((SystemFunctionCall) expression).allocateArgumentEvaluators(childExpressionArray);
        }
        return expression;
    }

    /* renamed from: J2 */
    public static /* synthetic */ Expression m64189J2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        ArrayList arrayList = new ArrayList();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return new LocalParamBlock((LocalParam[]) arrayList.toArray(new LocalParam[0]));
            }
            arrayList.add((LocalParam) packageLoaderHE.loadExpression(next));
        }
    }

    /* renamed from: J3 */
    public static /* synthetic */ Expression m64190J3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new BreakInstr();
    }

    /* renamed from: J4 */
    public static /* synthetic */ Expression m64191J4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new UserFunctionReference(packageLoaderHE.readFunction(packageLoaderHE.getChild(nodeInfo, 0)));
    }

    /* renamed from: K2 */
    public static /* synthetic */ Expression m64195K2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression[] expressionArr = new Expression[Count.count(nodeInfo.iterateAxis(3, r0)) - 1];
        int i = 0;
        Expression expression = null;
        for (NodeInfo nodeInfo2 : nodeInfo.children(NodeKindTest.ELEMENT)) {
            if (i == 0) {
                expression = packageLoaderHE.loadExpression(nodeInfo2);
            } else if (nodeInfo2.getLocalPart().equals("null")) {
                expressionArr[i - 1] = null;
            } else {
                expressionArr[i - 1] = packageLoaderHE.loadExpression(nodeInfo2);
            }
            i++;
        }
        return new PartialApply(expression, expressionArr);
    }

    /* renamed from: K3 */
    public static /* synthetic */ Expression m64196K3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage peek = packageLoaderHE.packStack.peek();
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "name");
        Component component = peek.getComponent(new SymbolicName(210, qNameAttribute));
        NamedTemplate namedTemplate = component == null ? new NamedTemplate(qNameAttribute) : (NamedTemplate) component.getActor();
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        CallTemplate callTemplate = new CallTemplate(namedTemplate, qNameAttribute, attributeValue != null && attributeValue.contains("t"), attributeValue != null && attributeValue.contains("d"));
        callTemplate.setActualParameters(packageLoaderHE.m64453g5(nodeInfo, callTemplate, false), packageLoaderHE.m64453g5(nodeInfo, callTemplate, true));
        callTemplate.setBindingSlot(packageLoaderHE.getIntegerAttribute(nodeInfo, "bSlot"));
        packageLoaderHE.m64445Y1(callTemplate);
        return callTemplate;
    }

    /* renamed from: K4 */
    public static /* synthetic */ Expression m64197K4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new InstanceOfExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), packageLoaderHE.parseAlphaCode(nodeInfo, "of"));
    }

    /* renamed from: L2 */
    public static /* synthetic */ Expression m64201L2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new IdentityComparison(packageLoaderHE.getFirstChildExpression(nodeInfo), 38, packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: L3 */
    public static /* synthetic */ Expression m64202L3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        boolean contains = attributeValue.contains("e");
        if (attributeValue.contains("a")) {
            return new CastExpression(firstChildExpression, (AtomicType) packageLoaderHE.parseAlphaCode(nodeInfo, "as").getPrimaryType(), contains);
        }
        if (attributeValue.contains("l")) {
            return new StaticFunctionCall(new ListConstructorFunction((ListType) packageLoaderHE.f102328a.getSchemaType(StructuredQName.fromEQName(nodeInfo.getAttributeValue("", "as"))), nodeInfo.getAllNamespaces(), contains), new Expression[]{firstChildExpression});
        }
        if (attributeValue.contains("u")) {
            return nodeInfo.getAttributeValue("", "as") != null ? new StaticFunctionCall(new UnionConstructorFunction((UnionType) packageLoaderHE.f102328a.getSchemaType(StructuredQName.fromEQName(nodeInfo.getAttributeValue("", "as"))), nodeInfo.getAllNamespaces(), contains), new Expression[]{firstChildExpression}) : new StaticFunctionCall(new UnionConstructorFunction((LocalUnionType) packageLoaderHE.parseAlphaCode(nodeInfo, "to").getPrimaryType(), nodeInfo.getAllNamespaces(), contains), new Expression[]{firstChildExpression});
        }
        throw new AssertionError("Unknown simple type variety " + attributeValue);
    }

    /* renamed from: L4 */
    public static /* synthetic */ Expression m64203L4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new SingletonIntersectExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), 23, packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: M2 */
    public static /* synthetic */ Expression m64207M2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        ProcessingInstruction processingInstruction = new ProcessingInstruction(firstChildExpression);
        processingInstruction.setSelect(secondChildExpression);
        return processingInstruction;
    }

    /* renamed from: M3 */
    public static /* synthetic */ Expression m64208M3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        boolean contains = attributeValue.contains("e");
        if (attributeValue.contains("a")) {
            return new CastableExpression(firstChildExpression, (AtomicType) packageLoaderHE.parseAlphaCode(nodeInfo, "as").getPrimaryType(), contains);
        }
        if (attributeValue.contains("l")) {
            return new StaticFunctionCall(new ListCastableFunction((ListType) packageLoaderHE.f102328a.getSchemaType(StructuredQName.fromEQName(nodeInfo.getAttributeValue("", "as"))), nodeInfo.getAllNamespaces(), contains), new Expression[]{firstChildExpression});
        }
        if (attributeValue.contains("u")) {
            return nodeInfo.getAttributeValue("", "as") != null ? new StaticFunctionCall(new UnionCastableFunction((UnionType) packageLoaderHE.f102328a.getSchemaType(StructuredQName.fromEQName(nodeInfo.getAttributeValue("", "as"))), nodeInfo.getAllNamespaces(), contains), new Expression[]{firstChildExpression}) : new StaticFunctionCall(new UnionCastableFunction((LocalUnionType) packageLoaderHE.parseAlphaCode(nodeInfo, "to").getPrimaryType(), nodeInfo.getAllNamespaces(), contains), new Expression[]{firstChildExpression});
        }
        throw new AssertionError("Unknown simple type variety " + attributeValue);
    }

    /* renamed from: M4 */
    public static /* synthetic */ Expression m64209M4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return Literal.makeLiteral(IntegerValue.makeIntegerValue(new BigInteger(nodeInfo.getAttributeValue("", "val"))));
    }

    /* renamed from: N2 */
    public static /* synthetic */ Expression m64213N2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        AtomicValue notationValue;
        String attributeValue = nodeInfo.getAttributeValue("", "pre");
        String attributeValue2 = nodeInfo.getAttributeValue("", "uri");
        String attributeValue3 = nodeInfo.getAttributeValue("", "loc");
        AtomicType atomicType = nodeInfo.getAttributeValue("", "type") != null ? (AtomicType) packageLoaderHE.parseItemTypeAttribute(nodeInfo, "type") : BuiltInAtomicType.QNAME;
        if (atomicType.getPrimitiveType() == 530) {
            notationValue = new QNameValue(attributeValue, attributeValue2, attributeValue3, atomicType, false);
        } else {
            notationValue = new NotationValue(attributeValue, attributeValue2, attributeValue3, (AtomicType) null);
            notationValue.setTypeLabel(atomicType);
        }
        return Literal.makeLiteral(notationValue);
    }

    /* renamed from: N3 */
    public static /* synthetic */ Expression m64214N3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        int i;
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "card");
        attributeValue.hashCode();
        char c = 65535;
        switch (attributeValue.hashCode()) {
            case 42:
                if (attributeValue.equals("*")) {
                    c = 0;
                    break;
                }
                break;
            case 43:
                if (attributeValue.equals("+")) {
                    c = 1;
                    break;
                }
                break;
            case 48:
                if (attributeValue.equals("0")) {
                    c = 2;
                    break;
                }
                break;
            case 49:
                if (attributeValue.equals("1")) {
                    c = 3;
                    break;
                }
                break;
            case 63:
                if (attributeValue.equals("?")) {
                    c = 4;
                    break;
                }
                break;
            case 176:
                if (attributeValue.equals("°")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                i = 57344;
                break;
            case 1:
                i = 49152;
                break;
            case 2:
            case 5:
                i = 8192;
                break;
            case 3:
                i = 16384;
                break;
            case 4:
                i = 24576;
                break;
            default:
                throw new IllegalStateException("Occurrence indicator: '" + attributeValue + CloudStorageConstants.SINGLE_QUOTES);
        }
        return CardinalityChecker.makeCardinalityChecker(firstChildExpression, i, RoleDiagnostic.reconstruct(nodeInfo.getAttributeValue("", "diag")));
    }

    /* renamed from: N4 */
    public static /* synthetic */ Expression m64215N4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new VennExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), 23, packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: O2 */
    public static /* synthetic */ Expression m64219O2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return Literal.makeLiteral(new IntegerRange(packageLoaderHE.getIntegerAttribute(nodeInfo, "from"), 1L, packageLoaderHE.getIntegerAttribute(nodeInfo, "to")));
    }

    /* renamed from: O3 */
    public static /* synthetic */ Expression m64220O3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT);
        boolean z = true;
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return new Choose((Expression[]) arrayList.toArray(new Expression[0]), (Expression[]) arrayList2.toArray(new Expression[0]));
            }
            if (z) {
                arrayList.add(packageLoaderHE.loadExpression(next));
            } else {
                arrayList2.add(packageLoaderHE.loadExpression(next));
            }
            z = !z;
        }
    }

    /* renamed from: O4 */
    public static /* synthetic */ Expression m64221O4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new IntegerRangeTest(packageLoaderHE.getFirstChildExpression(nodeInfo), packageLoaderHE.getSecondChildExpression(nodeInfo), packageLoaderHE.getNthChildExpression(nodeInfo, 2));
    }

    /* renamed from: P2 */
    public static /* synthetic */ Expression m64225P2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        int i;
        SchemaType schemaType;
        packageLoaderHE.packStack.peek().setCreatesSecondaryResultDocuments(true);
        String attributeValue = nodeInfo.getAttributeValue("", "global");
        String attributeValue2 = nodeInfo.getAttributeValue("", ImagesContract.LOCAL);
        Properties properties = attributeValue == null ? new Properties() : packageLoaderHE.m64451f2(attributeValue);
        Properties properties2 = attributeValue2 == null ? new Properties() : packageLoaderHE.m64451f2(attributeValue2);
        HashMap hashMap = new HashMap();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT);
        Expression expression = null;
        Expression expression2 = null;
        Expression expression3 = null;
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                break;
            }
            Expression loadExpression = packageLoaderHE.loadExpression(next);
            String attributeValue3 = next.getAttributeValue("", "role");
            if ("href".equals(attributeValue3)) {
                expression = loadExpression;
            } else if (Constants.ATTRNAME_FORMAT.equals(attributeValue3)) {
                expression2 = loadExpression;
            } else if ("content".equals(attributeValue3)) {
                expression3 = loadExpression;
            } else {
                hashMap.put(StructuredQName.fromEQName(attributeValue3), loadExpression);
            }
        }
        String attributeValue4 = nodeInfo.getAttributeValue("", "validation");
        int code = attributeValue4 != null ? Validation.getCode(attributeValue4) : 4;
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "type");
        if (qNameAttribute != null) {
            schemaType = packageLoaderHE.f102328a.getSchemaType(qNameAttribute);
            i = 8;
        } else {
            i = code;
            schemaType = null;
        }
        ResultDocument resultDocument = new ResultDocument(properties, properties2, expression, expression2, i, schemaType, hashMap, packageLoaderHE.packStack.peek().getCharacterMapIndex());
        resultDocument.setContentExpression(expression3);
        if ("a".equals(nodeInfo.getAttributeValue("", "flags"))) {
            resultDocument.setAsynchronous(true);
        }
        return resultDocument;
    }

    /* renamed from: P3 */
    public static /* synthetic */ Expression m64226P3(final PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        final CoercedFunction coercedFunction;
        ItemType parseItemTypeAttribute = packageLoaderHE.parseItemTypeAttribute(nodeInfo, "type");
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        if (firstChildExpression instanceof UserFunctionReference) {
            coercedFunction = new CoercedFunction((SpecificFunctionType) parseItemTypeAttribute);
            final SymbolicName symbolicName = ((UserFunctionReference) firstChildExpression).getSymbolicName();
            packageLoaderHE.addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.nqk
                @Override // net.p110sf.saxon.om.Action
                public final void doAction() {
                    PackageLoaderHE.m64349k2(CoercedFunction.this, packageLoaderHE, symbolicName);
                }
            });
        } else {
            if (!(firstChildExpression instanceof Literal)) {
                throw new AssertionError();
            }
            coercedFunction = new CoercedFunction((Function) ((Literal) firstChildExpression).getGroundedValue(), (SpecificFunctionType) parseItemTypeAttribute);
        }
        return Literal.makeLiteral(coercedFunction);
    }

    /* renamed from: P4 */
    public static /* synthetic */ Expression m64227P4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new IdentityComparison(packageLoaderHE.getFirstChildExpression(nodeInfo), 20, packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: Q2 */
    public static /* synthetic */ Expression m64231Q2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new RootExpression();
    }

    /* renamed from: Q3 */
    public static /* synthetic */ Expression m64232Q3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        Comment comment = new Comment();
        comment.setSelect(firstChildExpression);
        return comment;
    }

    /* renamed from: Q4 */
    public static /* synthetic */ Expression m64233Q4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new IsLastExpression(nodeInfo.getAttributeValue("", Constants.ATTRNAME_TEST).equals("1"));
    }

    /* renamed from: R2 */
    public static /* synthetic */ Expression m64237R2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new Doctype(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: R3 */
    public static /* synthetic */ Expression m64238R3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        BigInteger bigInteger = new BigInteger(nodeInfo.getAttributeValue("", "val"));
        return new CompareToIntegerConstant(packageLoaderHE.getFirstChildExpression(nodeInfo), m64352k5(nodeInfo.getAttributeValue("", "op")), bigInteger.longValue());
    }

    /* renamed from: R4 */
    public static /* synthetic */ Expression m64239R4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new IterateInstr(packageLoaderHE.getExpressionWithRole(nodeInfo, "select"), (LocalParamBlock) packageLoaderHE.getExpressionWithRole(nodeInfo, "params"), packageLoaderHE.getExpressionWithRole(nodeInfo, "action"), packageLoaderHE.getExpressionWithRole(nodeInfo, "on-completion"));
    }

    /* renamed from: S2 */
    public static /* synthetic */ Expression m64243S2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage peek = packageLoaderHE.packStack.peek();
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, Constants.ATTRNAME_MODE);
        SimpleMode simpleMode = qNameAttribute != null ? (SimpleMode) peek.getRuleManager().obtainMode(qNameAttribute, true) : (SimpleMode) peek.getRuleManager().obtainMode(null, true);
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        String str = attributeValue != null ? attributeValue : "";
        ApplyTemplates applyTemplates = new ApplyTemplates(firstChildExpression, str.contains("c"), str.contains("t"), str.contains("i"), str.contains("d"), simpleMode, packageLoaderHE.packStack.peek().getRuleManager());
        Expression expressionWithRole = packageLoaderHE.getExpressionWithRole(nodeInfo, "separator");
        if (expressionWithRole != null) {
            applyTemplates.setSeparatorExpression(expressionWithRole);
        }
        WithParam[] m64453g5 = packageLoaderHE.m64453g5(nodeInfo, applyTemplates, false);
        WithParam[] m64453g52 = packageLoaderHE.m64453g5(nodeInfo, applyTemplates, true);
        applyTemplates.setActualParams(m64453g5);
        applyTemplates.setTunnelParams(m64453g52);
        applyTemplates.setBindingSlot(packageLoaderHE.getIntegerAttribute(nodeInfo, "bSlot"));
        return applyTemplates;
    }

    /* renamed from: S3 */
    public static /* synthetic */ Expression m64244S3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        String attributeValue = nodeInfo.getAttributeValue("", "val");
        return new CompareToStringConstant(packageLoaderHE.getFirstChildExpression(nodeInfo), m64352k5(nodeInfo.getAttributeValue("", "op")), StringView.tidy(attributeValue));
    }

    /* renamed from: S4 */
    public static /* synthetic */ Expression m64245S4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new LastItemExpression(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: T2 */
    public static /* synthetic */ Expression m64249T2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new Block(getChildExpressionArray(packageLoaderHE, nodeInfo));
    }

    /* renamed from: T3 */
    public static /* synthetic */ Expression m64250T3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression expressionWithRole = packageLoaderHE.getExpressionWithRole(nodeInfo, "name");
        Expression expressionWithRole2 = packageLoaderHE.getExpressionWithRole(nodeInfo, Constants.ATTRNAME_NAMESPACE);
        Expression expressionWithRole3 = packageLoaderHE.getExpressionWithRole(nodeInfo, "select");
        String attributeValue = nodeInfo.getAttributeValue("", "validation");
        int code = attributeValue != null ? Validation.getCode(attributeValue) : 4;
        SchemaType typeAttribute = packageLoaderHE.getTypeAttribute(nodeInfo, "type");
        ComputedAttribute computedAttribute = new ComputedAttribute(expressionWithRole, expressionWithRole2, null, typeAttribute != null ? 8 : code, (SimpleType) typeAttribute, false);
        computedAttribute.setSelect(expressionWithRole3);
        return computedAttribute;
    }

    /* renamed from: T4 */
    public static /* synthetic */ Expression m64251T4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        int integerAttribute = packageLoaderHE.getIntegerAttribute(nodeInfo, "slot");
        int integerAttribute2 = packageLoaderHE.getIntegerAttribute(nodeInfo, Constants.ELEMNAME_EVAL_STRING);
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "var");
        SequenceType parseAlphaCode = packageLoaderHE.parseAlphaCode(nodeInfo, "as");
        LetExpression letExpression = new LetExpression();
        letExpression.setSequence(firstChildExpression);
        letExpression.setRequiredType(parseAlphaCode);
        letExpression.setSlotNumber(integerAttribute);
        letExpression.setVariableQName(qNameAttribute);
        letExpression.setEvaluator(Evaluators.getEvaluator(integerAttribute2));
        packageLoaderHE.localBindings.push(letExpression);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        packageLoaderHE.localBindings.pop();
        letExpression.setAction(secondChildExpression);
        return letExpression;
    }

    /* renamed from: U2 */
    public static /* synthetic */ Expression m64255U2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", FtsOptions.TOKENIZER_SIMPLE);
        if ("1".equals(attributeValue)) {
            return new SimpleStepExpression(firstChildExpression, secondChildExpression);
        }
        SlashExpression slashExpression = new SlashExpression(firstChildExpression, secondChildExpression);
        if ("2".equals(attributeValue)) {
            slashExpression.setContextFree(true);
        }
        return slashExpression;
    }

    /* renamed from: U3 */
    public static /* synthetic */ Expression m64256U3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression expressionWithRole = packageLoaderHE.getExpressionWithRole(nodeInfo, "name");
        Expression expressionWithRole2 = packageLoaderHE.getExpressionWithRole(nodeInfo, Constants.ATTRNAME_NAMESPACE);
        Expression expressionWithRole3 = packageLoaderHE.getExpressionWithRole(nodeInfo, "content");
        String attributeValue = nodeInfo.getAttributeValue("", "validation");
        int code = attributeValue != null ? Validation.getCode(attributeValue) : 4;
        SchemaType typeAttribute = packageLoaderHE.getTypeAttribute(nodeInfo, "type");
        if (typeAttribute != null) {
            code = 8;
        }
        String attributeValue2 = nodeInfo.getAttributeValue("", "flags");
        ComputedElement computedElement = new ComputedElement(expressionWithRole, expressionWithRole2, typeAttribute, code, true, false);
        if (attributeValue2 != null) {
            computedElement.setInheritanceFlags(attributeValue2);
        }
        computedElement.setContentExpression(expressionWithRole3);
        return computedElement.simplify();
    }

    /* renamed from: U4 */
    public static /* synthetic */ Expression m64257U4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        ArrayList arrayList = new ArrayList();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return Literal.makeLiteral(SequenceExtent.makeSequenceExtent(arrayList));
            }
            arrayList.add(((Literal) packageLoaderHE.loadExpression(next)).getGroundedValue().head());
        }
    }

    /* renamed from: V2 */
    public static /* synthetic */ Expression m64261V2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        int integerAttribute = packageLoaderHE.getIntegerAttribute(nodeInfo, "slot");
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "var");
        SequenceType parseAlphaCode = packageLoaderHE.parseAlphaCode(nodeInfo, "as");
        QuantifiedExpression quantifiedExpression = new QuantifiedExpression();
        quantifiedExpression.setOperator(32);
        quantifiedExpression.setSequence(firstChildExpression);
        quantifiedExpression.setRequiredType(parseAlphaCode);
        quantifiedExpression.setSlotNumber(integerAttribute);
        quantifiedExpression.setVariableQName(qNameAttribute);
        packageLoaderHE.localBindings.push(quantifiedExpression);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        packageLoaderHE.localBindings.pop();
        quantifiedExpression.setAction(secondChildExpression);
        return quantifiedExpression;
    }

    /* renamed from: V3 */
    public static /* synthetic */ Expression m64262V3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new ConditionalSorter(packageLoaderHE.getFirstChildExpression(nodeInfo), (DocumentSorter) packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: V4 */
    public static /* synthetic */ Expression m64263V4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new LookupExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: W2 */
    public static /* synthetic */ Expression m64267W2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new SortExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), packageLoaderHE.m64452f5(nodeInfo));
    }

    /* renamed from: W3 */
    public static /* synthetic */ Expression m64268W3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new WherePopulated(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: W4 */
    public static /* synthetic */ Expression m64269W4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        AnalyzeString analyzeString = new AnalyzeString(packageLoaderHE.getExpressionWithRole(nodeInfo, "select"), packageLoaderHE.getExpressionWithRole(nodeInfo, "regex"), packageLoaderHE.getExpressionWithRole(nodeInfo, "flags"), packageLoaderHE.getExpressionWithRole(nodeInfo, "matching"), packageLoaderHE.getExpressionWithRole(nodeInfo, "nonMatching"), null);
        analyzeString.precomputeRegex(packageLoaderHE.getConfiguration(), null);
        return analyzeString;
    }

    /* renamed from: X2 */
    public static /* synthetic */ Expression m64273X2(final PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        SchemaType schemaType;
        int integerAttribute = packageLoaderHE.getIntegerAttribute(nodeInfo, "validation");
        if (integerAttribute == Integer.MIN_VALUE) {
            integerAttribute = 4;
        }
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "schemaType");
        if (qNameAttribute != null) {
            schemaType = packageLoaderHE.getConfiguration().getSchemaType(qNameAttribute);
            integerAttribute = 8;
        } else {
            schemaType = null;
        }
        final ParseOptions parseOptions = new ParseOptions(packageLoaderHE.getConfiguration().getParseOptions());
        parseOptions.setSchemaValidationMode(integerAttribute);
        parseOptions.setTopLevelType(schemaType);
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        if (attributeValue != null) {
            if (attributeValue.contains("s")) {
                packageLoaderHE.addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.cqk
                    @Override // net.p110sf.saxon.om.Action
                    public final void doAction() {
                        PackageLoaderHE.m64343j2(ParseOptions.this, packageLoaderHE);
                    }
                });
            }
            if (attributeValue.contains("S")) {
                parseOptions.setSpaceStrippingRule(AllElementsSpaceStrippingRule.getInstance());
            }
            if (attributeValue.contains("l")) {
                parseOptions.setLineNumbering(true);
            }
            parseOptions.setExpandAttributeDefaults(attributeValue.contains("a"));
            if (attributeValue.contains("d")) {
                parseOptions.setDTDValidationMode(1);
            }
            if (attributeValue.contains("i")) {
                parseOptions.setXIncludeAware(true);
            }
        }
        SourceDocument sourceDocument = new SourceDocument(packageLoaderHE.getExpressionWithRole(nodeInfo, "href"), packageLoaderHE.getExpressionWithRole(nodeInfo, "body"), parseOptions);
        processAccumulatorList(packageLoaderHE, sourceDocument, nodeInfo.getAttributeValue("", "accum"));
        return sourceDocument;
    }

    /* renamed from: X3 */
    public static /* synthetic */ Expression m64274X3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new ConditionalBlock(getChildExpressionArray(packageLoaderHE, nodeInfo));
    }

    /* renamed from: X4 */
    public static /* synthetic */ Expression m64275X4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new LookupAllExpression(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: Y2 */
    public static /* synthetic */ Expression m64278Y2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return Literal.makeLiteral(new StringValue(nodeInfo.getAttributeValue("", "val")));
    }

    /* renamed from: Y3 */
    public static /* synthetic */ Expression m64279Y3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new ConsumingOperand(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: Y4 */
    public static /* synthetic */ Expression m64280Y4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression next;
        List<Expression> childExpressionList = getChildExpressionList(packageLoaderHE, nodeInfo);
        HashTrieMap hashTrieMap = new HashTrieMap();
        Iterator<Expression> it2 = childExpressionList.iterator();
        while (true) {
            AtomicValue atomicValue = null;
            while (it2.hasNext()) {
                next = it2.next();
                if (atomicValue == null) {
                    atomicValue = (AtomicValue) ((Literal) next).getGroundedValue();
                }
            }
            return Literal.makeLiteral(hashTrieMap);
            hashTrieMap.initialPut(atomicValue, ((Literal) next).getGroundedValue());
        }
    }

    /* renamed from: Z2 */
    public static /* synthetic */ Expression m64283Z2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new SubscriptExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: Z3 */
    public static /* synthetic */ Expression m64284Z3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        ItemType parseAlphaCodeForItemType = packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, "from");
        ItemType parseAlphaCodeForItemType2 = packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, "to");
        AtomicSequenceConverter atomicSequenceConverter = new AtomicSequenceConverter(firstChildExpression, (PlainType) parseAlphaCodeForItemType2);
        if (!"p".equals(nodeInfo.getAttributeValue("", "flags"))) {
            atomicSequenceConverter.setConverter(atomicSequenceConverter.allocateConverter(packageLoaderHE.f102328a, false, parseAlphaCodeForItemType));
        } else if (parseAlphaCodeForItemType2.equals(BuiltInAtomicType.DOUBLE)) {
            atomicSequenceConverter.setConverter(new Converter.PromoterToDouble());
        } else {
            atomicSequenceConverter.setConverter(new Converter.PromoterToFloat());
        }
        String attributeValue = nodeInfo.getAttributeValue("", "diag");
        if (attributeValue != null) {
            atomicSequenceConverter.setRoleDiagnostic(RoleDiagnostic.reconstruct(attributeValue));
        }
        return atomicSequenceConverter;
    }

    /* renamed from: Z4 */
    public static /* synthetic */ Expression m64285Z4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        final MergeInstr mergeInstr = new MergeInstr();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "mergeSrc", packageLoaderHE.f102328a.getNamePool()));
        ArrayList arrayList = new ArrayList();
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                mergeInstr.init((MergeInstr.MergeSource[]) arrayList.toArray(new MergeInstr.MergeSource[0]), packageLoaderHE.getExpressionWithRole(nodeInfo, "action"));
                packageLoaderHE.addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.nnk
                    @Override // net.p110sf.saxon.om.Action
                    public final void doAction() {
                        MergeInstr.this.fixupGroupReferences();
                    }
                });
                return mergeInstr;
            }
            final MergeInstr.MergeSource mergeSource = new MergeInstr.MergeSource(mergeInstr);
            String attributeValue = next.getAttributeValue("", "name");
            if (attributeValue != null) {
                mergeSource.sourceName = attributeValue;
            }
            String attributeValue2 = next.getAttributeValue("", "validation");
            if (attributeValue2 != null) {
                mergeSource.validation = Validation.getCode(attributeValue2);
            }
            SchemaType typeAttribute = packageLoaderHE.getTypeAttribute(next, "type");
            if (typeAttribute != null) {
                mergeSource.schemaType = typeAttribute;
                mergeSource.validation = 8;
            }
            boolean equals = "s".equals(next.getAttributeValue("", "flags"));
            mergeSource.streamable = equals;
            if (equals) {
                packageLoaderHE.addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.lnk
                    @Override // net.p110sf.saxon.om.Action
                    public final void doAction() {
                        MergeInstr.MergeSource.this.prepareForStreaming();
                    }
                });
            }
            mergeSource.baseURI = packageLoaderHE.makeRetainedStaticContext(nodeInfo).getStaticBaseUriString();
            String attributeValue3 = next.getAttributeValue("", "accum");
            String str = attributeValue3 != null ? attributeValue3 : "";
            final ArrayList arrayList2 = new ArrayList();
            StringTokenizer stringTokenizer = new StringTokenizer(str);
            while (stringTokenizer.hasMoreTokens()) {
                arrayList2.add(StructuredQName.fromEQName(stringTokenizer.nextToken()));
            }
            final StylesheetPackage peek = packageLoaderHE.getPackStack().peek();
            packageLoaderHE.addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.mnk
                @Override // net.p110sf.saxon.om.Action
                public final void doAction() {
                    PackageLoaderHE.m64380p2(arrayList2, peek, mergeSource);
                }
            });
            Expression expressionWithRole = packageLoaderHE.getExpressionWithRole(next, "forEachItem");
            if (expressionWithRole != null) {
                mergeSource.initForEachItem(mergeInstr, expressionWithRole);
            }
            Expression expressionWithRole2 = packageLoaderHE.getExpressionWithRole(next, "forEachStream");
            if (expressionWithRole2 != null) {
                mergeSource.initForEachStream(mergeInstr, expressionWithRole2);
            }
            Expression expressionWithRole3 = packageLoaderHE.getExpressionWithRole(next, "selectRows");
            if (expressionWithRole3 != null) {
                mergeSource.initRowSelect(mergeInstr, expressionWithRole3);
            }
            mergeSource.setMergeKeyDefinitionSet(packageLoaderHE.m64452f5(next));
            arrayList.add(mergeSource);
        }
    }

    /* renamed from: a2 */
    public static LocalBinding m64289a2(Stack<LocalBinding> stack, StructuredQName structuredQName) {
        Iterator it2 = new TopDownStackIterable(stack).iterator();
        while (it2.hasNext()) {
            LocalBinding localBinding = (LocalBinding) it2.next();
            if (localBinding.getVariableQName().equals(structuredQName)) {
                return localBinding;
            }
        }
        return null;
    }

    /* renamed from: a3 */
    public static /* synthetic */ Expression m64290a3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new SuppliedParameterReference(packageLoaderHE.getIntegerAttribute(nodeInfo, "slot"));
    }

    /* renamed from: a4 */
    public static /* synthetic */ Expression m64291a4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        String attributeValue = nodeInfo.getAttributeValue("", "validation");
        int code = attributeValue != null ? Validation.getCode(attributeValue) : 4;
        SchemaType typeAttribute = packageLoaderHE.getTypeAttribute(nodeInfo, "type");
        if (typeAttribute != null) {
            code = 8;
        }
        String attributeValue2 = nodeInfo.getAttributeValue("", "sit");
        Copy copy = new Copy(false, false, typeAttribute, code);
        copy.setContentExpression(packageLoaderHE.getFirstChildExpression(nodeInfo));
        String attributeValue3 = nodeInfo.getAttributeValue("", "flags");
        copy.setCopyNamespaces(attributeValue3.contains("c"));
        copy.setBequeathNamespacesToChildren(attributeValue3.contains("i"));
        copy.setInheritNamespacesFromParent(attributeValue3.contains(GoogleApiAvailabilityLight.f29016b));
        if (attributeValue2 != null) {
            copy.setSelectItemType(AlphaCode.toSequenceType(attributeValue2, packageLoaderHE.getConfiguration()).getPrimaryType());
        }
        return copy;
    }

    /* renamed from: a5 */
    public static /* synthetic */ Expression m64292a5(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new AdjacentTextNodeMerger(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: b3 */
    public static /* synthetic */ Expression m64296b3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new TailExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), packageLoaderHE.getIntegerAttribute(nodeInfo, gon.f71290o0));
    }

    /* renamed from: b4 */
    public static /* synthetic */ Expression m64297b4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        String str = attributeValue == null ? "" : attributeValue;
        boolean contains = str.contains("c");
        boolean contains2 = str.contains("d");
        String attributeValue2 = nodeInfo.getAttributeValue("", "validation");
        int code = attributeValue2 != null ? Validation.getCode(attributeValue2) : 4;
        SchemaType typeAttribute = packageLoaderHE.getTypeAttribute(nodeInfo, "type");
        CopyOf copyOf = new CopyOf(firstChildExpression, contains, typeAttribute != null ? 8 : code, typeAttribute, contains2);
        copyOf.setCopyAccumulators(str.contains("m"));
        copyOf.setCopyLineNumbers(str.contains("l"));
        copyOf.setSchemaAware(str.contains("s"));
        copyOf.setCopyForUpdate(str.contains("u"));
        return copyOf;
    }

    /* renamed from: b5 */
    public static /* synthetic */ Expression m64298b5(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new MessageInstr(packageLoaderHE.getExpressionWithRole(nodeInfo, "select"), packageLoaderHE.getExpressionWithRole(nodeInfo, Constants.ATTRNAME_TERMINATE), packageLoaderHE.getExpressionWithRole(nodeInfo, "error"));
    }

    /* renamed from: c2 */
    public static int m64302c2(String str) {
        if (str == null) {
            return 0;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -902286926:
                if (str.equals(FtsOptions.TOKENIZER_SIMPLE)) {
                    c = 0;
                    break;
                }
                break;
            case -902265784:
                if (str.equals(Constants.ATTRVAL_SINGLE)) {
                    c = 1;
                    break;
                }
                break;
            case 96748:
                if (str.equals("any")) {
                    c = 2;
                    break;
                }
                break;
            case 104256825:
                if (str.equals("multi")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 3;
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 1;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: c3 */
    public static /* synthetic */ Expression m64303c3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "calc");
        Calculator reconstructCalculator = Calculator.reconstructCalculator(attributeValue);
        ArithmeticExpression arithmeticExpression = new ArithmeticExpression(firstChildExpression, Calculator.getTokenFromOperator(Calculator.operatorFromCode(attributeValue.charAt(1))), secondChildExpression);
        arithmeticExpression.setCalculator(reconstructCalculator);
        return arithmeticExpression;
    }

    /* renamed from: c4 */
    public static /* synthetic */ Expression m64304c4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new CurrentGroupCall();
    }

    /* renamed from: c5 */
    public static /* synthetic */ Expression m64305c5(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new NegateExpression(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: d3 */
    public static /* synthetic */ Expression m64309d3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new TailCallLoop(packageLoaderHE.f102338k, packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: d4 */
    public static /* synthetic */ Expression m64310d4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new CurrentGroupingKeyCall();
    }

    /* renamed from: d5 */
    public static /* synthetic */ Expression m64311d5(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        NamespaceConstructor namespaceConstructor = new NamespaceConstructor(firstChildExpression);
        namespaceConstructor.setSelect(secondChildExpression);
        return namespaceConstructor;
    }

    /* renamed from: e3 */
    public static /* synthetic */ Expression m64315e3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new RangeExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: e4 */
    public static /* synthetic */ Expression m64316e4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Function function = (Function) ((Literal) packageLoaderHE.getFirstChildExpression(nodeInfo)).getGroundedValue();
        NodeInfo child = packageLoaderHE.getChild(nodeInfo, 1);
        NodeKindTest nodeKindTest = NodeKindTest.ELEMENT;
        Sequence[] sequenceArr = new Sequence[Count.count(child.iterateAxis(3, nodeKindTest))];
        int i = 0;
        for (NodeInfo nodeInfo2 : child.children(nodeKindTest)) {
            if (nodeInfo2.getLocalPart().equals("x")) {
                sequenceArr[i] = null;
                i++;
            } else {
                sequenceArr[i] = ((Literal) packageLoaderHE.loadExpression(nodeInfo2)).getGroundedValue();
                i++;
            }
        }
        return Literal.makeLiteral(new CurriedFunction(function, sequenceArr));
    }

    /* renamed from: f3 */
    public static /* synthetic */ Expression m64320f3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new ItemChecker(packageLoaderHE.getFirstChildExpression(nodeInfo), packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, "as"), RoleDiagnostic.reconstruct(nodeInfo.getAttributeValue("", "diag")));
    }

    /* renamed from: f4 */
    public static /* synthetic */ Expression m64321f4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        ItemType parseAlphaCodeForItemType = packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, "to");
        if (((SimpleType) parseAlphaCodeForItemType).isNamespaceSensitive()) {
            return UntypedSequenceConverter.makeUntypedSequenceRejector(packageLoaderHE.f102328a, firstChildExpression, (PlainType) parseAlphaCodeForItemType);
        }
        UntypedSequenceConverter makeUntypedSequenceConverter = UntypedSequenceConverter.makeUntypedSequenceConverter(packageLoaderHE.f102328a, firstChildExpression, (PlainType) parseAlphaCodeForItemType);
        String attributeValue = nodeInfo.getAttributeValue("", "diag");
        if (attributeValue != null) {
            makeUntypedSequenceConverter.setRoleDiagnostic(RoleDiagnostic.reconstruct(attributeValue));
        }
        return makeUntypedSequenceConverter;
    }

    /* renamed from: g2 */
    public static /* synthetic */ Receiver m64325g2(List list, Receiver receiver) {
        CheckSumFilter checkSumFilter = new CheckSumFilter(receiver);
        checkSumFilter.setCheckExistingChecksum(true);
        list.add(checkSumFilter);
        return checkSumFilter;
    }

    /* renamed from: g3 */
    public static /* synthetic */ Expression m64326g3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return Literal.makeLiteral(BooleanValue.TRUE);
    }

    /* renamed from: g4 */
    public static /* synthetic */ Expression m64327g4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "diag");
        return new Atomizer(firstChildExpression, attributeValue == null ? null : RoleDiagnostic.reconstruct(attributeValue));
    }

    public static Expression[] getChildExpressionArray(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return (Expression[]) getChildExpressionList(packageLoaderHE, nodeInfo).toArray(new Expression[0]);
    }

    public static List<Expression> getChildExpressionList(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        ArrayList arrayList = new ArrayList();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return arrayList;
            }
            arrayList.add(packageLoaderHE.loadExpression(next));
        }
    }

    public static int getOperator(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 60:
                if (str.equals("<")) {
                    c = 0;
                    break;
                }
                break;
            case 61:
                if (str.equals("=")) {
                    c = 1;
                    break;
                }
                break;
            case 62:
                if (str.equals(">")) {
                    c = 2;
                    break;
                }
                break;
            case 1084:
                if (str.equals("!=")) {
                    c = 3;
                    break;
                }
                break;
            case 1921:
                if (str.equals("<=")) {
                    c = 4;
                    break;
                }
                break;
            case 1983:
                if (str.equals(">=")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 12;
            case 1:
                return 6;
            case 2:
                return 11;
            case 3:
                return 22;
            case 4:
                return 14;
            case 5:
                return 13;
            default:
                throw new IllegalStateException();
        }
    }

    /* renamed from: h2 */
    public static /* synthetic */ boolean m64331h2(NodeInfo nodeInfo) {
        return nodeInfo.getLocalPart().equals("package");
    }

    /* renamed from: h3 */
    public static /* synthetic */ Expression m64332h3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        TryCatch tryCatch = new TryCatch(packageLoaderHE.getFirstChildExpression(nodeInfo));
        if ("r".equals(nodeInfo.getAttributeValue("", "flags"))) {
            tryCatch.setRollbackOutput(true);
        }
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "catch", packageLoaderHE.f102328a.getNamePool()));
        NamePool namePool = packageLoaderHE.getConfiguration().getNamePool();
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return tryCatch;
            }
            String[] split = next.getAttributeValue("", "errors").split(" ");
            ArrayList arrayList = new ArrayList();
            for (String str : split) {
                if (str.equals("*")) {
                    arrayList.add(AnyNodeTest.getInstance());
                } else if (str.startsWith("*:")) {
                    arrayList.add(new LocalNameTest(namePool, 1, str.substring(2)));
                } else if (str.endsWith("}*")) {
                    arrayList.add(new NamespaceTest(namePool, 1, str.substring(2, str.length() - 2)));
                } else {
                    arrayList.add(new NameTest(1, new FingerprintedQName(StructuredQName.fromEQName(str), namePool), namePool));
                }
            }
            tryCatch.addCatchExpression(arrayList.size() == 1 ? (QNameTest) arrayList.get(0) : new UnionQNameTest(arrayList), packageLoaderHE.getFirstChildExpression(next));
        }
    }

    /* renamed from: h4 */
    public static /* synthetic */ Expression m64333h4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return Literal.makeLiteral(new DoubleValue(StringToDouble.getInstance().stringToNumber(StringView.m63901of(nodeInfo.getAttributeValue("", "val")).tidy())));
    }

    /* renamed from: i2 */
    public static /* synthetic */ void m64337i2(Pattern pattern) throws XPathException {
        ((GeneralNodePattern) pattern).makeTopNodeEquivalent();
    }

    /* renamed from: i3 */
    public static /* synthetic */ Expression m64338i3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression[] childExpressionArray = getChildExpressionArray(packageLoaderHE, nodeInfo);
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "name");
        UserFunctionCall userFunctionCall = new UserFunctionCall();
        userFunctionCall.setFunctionName(qNameAttribute);
        userFunctionCall.setArguments(childExpressionArray);
        userFunctionCall.setBindingSlot(packageLoaderHE.getIntegerAttribute(nodeInfo, "bSlot"));
        String attributeValue = nodeInfo.getAttributeValue("", Constants.ELEMNAME_EVAL_STRING);
        if (attributeValue != null) {
            String[] split = attributeValue.split(" ");
            Evaluator[] evaluatorArr = new Evaluator[split.length];
            for (int i = 0; i < split.length; i++) {
                evaluatorArr[i] = Evaluators.getEvaluator(Integer.parseInt(split[i]));
            }
            userFunctionCall.setArgumentEvaluators(evaluatorArr);
        }
        packageLoaderHE.m64445Y1(userFunctionCall);
        return userFunctionCall;
    }

    /* renamed from: i4 */
    public static /* synthetic */ Expression m64339i4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return Literal.makeLiteral(BigDecimalValue.makeDecimalValue(nodeInfo.getAttributeValue("", "val"), false).asAtomic());
    }

    /* renamed from: j2 */
    public static /* synthetic */ void m64343j2(ParseOptions parseOptions, PackageLoaderHE packageLoaderHE) throws XPathException {
        parseOptions.setSpaceStrippingRule(packageLoaderHE.getTopLevelPackage().getSpaceStrippingRule());
    }

    /* renamed from: j3 */
    public static /* synthetic */ Expression m64344j3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        UserFunctionReference userFunctionReference = new UserFunctionReference(new SymbolicName.C18533F(packageLoaderHE.getQNameAttribute(nodeInfo, "name"), packageLoaderHE.getIntegerAttribute(nodeInfo, "arity")));
        userFunctionReference.setBindingSlot(packageLoaderHE.getIntegerAttribute(nodeInfo, "bSlot"));
        packageLoaderHE.m64445Y1(userFunctionReference);
        return userFunctionReference;
    }

    /* renamed from: j4 */
    public static /* synthetic */ Expression m64345j4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        String attributeValue = nodeInfo.getAttributeValue("", "validation");
        int code = attributeValue != null ? Validation.getCode(attributeValue) : 4;
        SchemaType typeAttribute = packageLoaderHE.getTypeAttribute(nodeInfo, "type");
        if (typeAttribute != null) {
            code = 8;
        }
        String attributeValue2 = nodeInfo.getAttributeValue("", "flags");
        boolean z = attributeValue2 != null && attributeValue2.contains("t");
        nodeInfo.getAttributeValue("", gon.f71271X);
        String attributeValue3 = nodeInfo.getAttributeValue("", "text");
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        DocumentInstr documentInstr = new DocumentInstr(z, attributeValue3 == null ? null : StringView.tidy(attributeValue3));
        documentInstr.setContentExpression(firstChildExpression);
        documentInstr.setValidationAction(code, typeAttribute);
        return documentInstr;
    }

    /* renamed from: k2 */
    public static /* synthetic */ void m64349k2(CoercedFunction coercedFunction, PackageLoaderHE packageLoaderHE, SymbolicName symbolicName) throws XPathException {
        coercedFunction.setTargetFunction(packageLoaderHE.m64449e2((SymbolicName.C18533F) symbolicName));
    }

    /* renamed from: k3 */
    public static /* synthetic */ Expression m64350k3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new VennExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), 1, packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: k4 */
    public static /* synthetic */ Expression m64351k4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new DocumentSorter(packageLoaderHE.getFirstChildExpression(nodeInfo), nodeInfo.getAttributeValue("", "intra").equals("1"));
    }

    /* renamed from: k5 */
    public static int m64352k5(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 3244:
                if (str.equals("eq")) {
                    c = 0;
                    break;
                }
                break;
            case 3294:
                if (str.equals("ge")) {
                    c = 1;
                    break;
                }
                break;
            case 3309:
                if (str.equals(WebvttCueParser.f27234n)) {
                    c = 2;
                    break;
                }
                break;
            case 3449:
                if (str.equals("le")) {
                    c = 3;
                    break;
                }
                break;
            case 3464:
                if (str.equals(WebvttCueParser.f27233m)) {
                    c = 4;
                    break;
                }
                break;
            case 3511:
                if (str.equals("ne")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 50;
            case 1:
                return 54;
            case 2:
                return 52;
            case 3:
                return 55;
            case 4:
                return 53;
            case 5:
                return 51;
            default:
                throw new IllegalStateException();
        }
    }

    /* renamed from: l2 */
    public static /* synthetic */ boolean m64356l2(NodeInfo nodeInfo) {
        return nodeInfo.getLocalPart().equals("withParam");
    }

    /* renamed from: l3 */
    public static /* synthetic */ Expression m64357l3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        UseAttributeSet useAttributeSet = new UseAttributeSet(packageLoaderHE.getQNameAttribute(nodeInfo, "name"), "s".equals(nodeInfo.getAttributeValue("", "flags")));
        useAttributeSet.setBindingSlot(packageLoaderHE.getIntegerAttribute(nodeInfo, "bSlot"));
        packageLoaderHE.m64445Y1(useAttributeSet);
        return useAttributeSet;
    }

    /* renamed from: l4 */
    public static /* synthetic */ Expression m64358l4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        ContextItemExpression contextItemExpression = new ContextItemExpression();
        contextItemExpression.setStaticInfo(packageLoaderHE.getConfiguration().makeContextItemStaticInfo(packageLoaderHE.parseAlphaCode(nodeInfo, "type").getPrimaryType(), "a".equals(nodeInfo.getAttributeValue("", "flags"))));
        return contextItemExpression;
    }

    /* renamed from: m2 */
    public static /* synthetic */ void m64362m2(Expression expression, Expression[] expressionArr) throws XPathException {
        ((SystemFunctionCall) expression).allocateArgumentEvaluators(expressionArr);
    }

    /* renamed from: m3 */
    public static /* synthetic */ Expression m64363m3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        return new ValueOf(firstChildExpression, attributeValue != null && attributeValue.contains("d"), attributeValue != null && attributeValue.contains("e"));
    }

    /* renamed from: m4 */
    public static /* synthetic */ Expression m64364m4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        try {
            String[] qNameParts = NameChecker.getQNameParts(nodeInfo.getAttributeValue("", "name"));
            FingerprintedQName fingerprintedQName = new FingerprintedQName(new StructuredQName(qNameParts[0], nodeInfo.getAttributeValue("", "nsuri"), qNameParts[1]), packageLoaderHE.f102328a.getNamePool());
            String attributeValue = nodeInfo.getAttributeValue("", "namespaces");
            NamespaceMap emptyMap = NamespaceMap.emptyMap();
            if (attributeValue != null && !attributeValue.isEmpty()) {
                for (String str : attributeValue.split(" ")) {
                    int indexOf = str.indexOf(61);
                    if (indexOf >= 0) {
                        String substring = str.substring(0, indexOf);
                        if (substring.equals("#")) {
                            substring = "";
                        }
                        String substring2 = str.substring(indexOf + 1);
                        if (substring2.equals("~")) {
                            substring2 = NamespaceConstant.getUriForConventionalPrefix(substring);
                        }
                        emptyMap = emptyMap.put(substring, substring2);
                    } else {
                        RetainedStaticContext peek = packageLoaderHE.f102332e.peek();
                        if (str.equals("#")) {
                            str = "";
                        }
                        emptyMap = emptyMap.put(str, peek.getURIForPrefix(str, true));
                    }
                }
            }
            NamespaceMap namespaceMap = emptyMap;
            String attributeValue2 = nodeInfo.getAttributeValue("", "validation");
            int code = attributeValue2 != null ? Validation.getCode(attributeValue2) : 4;
            SchemaType typeAttribute = packageLoaderHE.getTypeAttribute(nodeInfo, "type");
            if (typeAttribute != null) {
                code = 8;
            }
            Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
            FixedElement fixedElement = new FixedElement(fingerprintedQName, namespaceMap, true, true, typeAttribute, code);
            String attributeValue3 = nodeInfo.getAttributeValue("", "flags");
            if (attributeValue3 != null) {
                fixedElement.setInheritanceFlags(attributeValue3);
            }
            fixedElement.setContentExpression(firstChildExpression);
            return fixedElement;
        } catch (QNameException e) {
            throw new XPathException(e);
        }
    }

    /* renamed from: n3 */
    public static /* synthetic */ Expression m64369n3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "calc");
        Calculator reconstructCalculator = Calculator.reconstructCalculator(attributeValue);
        ArithmeticExpression10 arithmeticExpression10 = new ArithmeticExpression10(firstChildExpression, Calculator.getTokenFromOperator(Calculator.operatorFromCode(attributeValue.charAt(1))), secondChildExpression);
        arithmeticExpression10.setCalculator(reconstructCalculator);
        return arithmeticExpression10;
    }

    /* renamed from: n4 */
    public static /* synthetic */ Expression m64370n4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return Literal.makeLiteral(EmptySequence.getInstance());
    }

    /* renamed from: o3 */
    public static /* synthetic */ Expression m64375o3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "name");
        LocalBinding m64289a2 = m64289a2(packageLoaderHE.localBindings, qNameAttribute);
        if (m64289a2 != null) {
            int integerAttribute = packageLoaderHE.getIntegerAttribute(nodeInfo, "slot");
            LocalVariableReference localVariableReference = new LocalVariableReference(m64289a2);
            localVariableReference.setSlotNumber(integerAttribute);
            return localVariableReference;
        }
        throw new XPathException("No binding found for local variable " + qNameAttribute);
    }

    /* renamed from: o4 */
    public static /* synthetic */ Expression m64376o4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new EmptyTextNodeRemover(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: p2 */
    public static /* synthetic */ void m64380p2(List list, StylesheetPackage stylesheetPackage, MergeInstr.MergeSource mergeSource) throws XPathException {
        HashSet hashSet = new HashSet();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            StructuredQName structuredQName = (StructuredQName) it2.next();
            for (Accumulator accumulator : stylesheetPackage.getAccumulatorRegistry().getAllAccumulators()) {
                if (accumulator.getAccumulatorName().equals(structuredQName)) {
                    hashSet.add(accumulator);
                }
            }
        }
        mergeSource.accumulators = hashSet;
    }

    /* renamed from: p3 */
    public static /* synthetic */ Expression m64381p3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        ValueComparison valueComparison = new ValueComparison(packageLoaderHE.getFirstChildExpression(nodeInfo), m64352k5(nodeInfo.getAttributeValue("", "op")), packageLoaderHE.getSecondChildExpression(nodeInfo));
        valueComparison.setAtomicComparer(packageLoaderHE.makeAtomicComparer(nodeInfo.getAttributeValue("", "comp"), nodeInfo));
        String attributeValue = nodeInfo.getAttributeValue("", "onEmpty");
        if (attributeValue != null) {
            valueComparison.setResultWhenEmpty(BooleanValue.get("1".equals(attributeValue)));
        }
        return valueComparison;
    }

    /* renamed from: p4 */
    public static /* synthetic */ Expression m64382p4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new ErrorExpression(nodeInfo.getAttributeValue("", "message"), nodeInfo.getAttributeValue("", "code"), "1".equals(nodeInfo.getAttributeValue("", "isTypeErr")));
    }

    public static void processAccumulatorList(PackageLoaderHE packageLoaderHE, final SourceDocument sourceDocument, String str) {
        if (str != null) {
            final ArrayList arrayList = new ArrayList();
            StringTokenizer stringTokenizer = new StringTokenizer(str);
            while (stringTokenizer.hasMoreTokens()) {
                arrayList.add(StructuredQName.fromEQName(stringTokenizer.nextToken()));
            }
            final StylesheetPackage peek = packageLoaderHE.getPackStack().peek();
            packageLoaderHE.addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.rnk
                @Override // net.p110sf.saxon.om.Action
                public final void doAction() {
                    PackageLoaderHE.m64392r2(arrayList, peek, sourceDocument);
                }
            });
        }
    }

    /* renamed from: q3 */
    public static /* synthetic */ Pattern m64387q3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return AnchorPattern.getInstance();
    }

    /* renamed from: q4 */
    public static /* synthetic */ Expression m64388q4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        SequenceType parseAlphaCode = packageLoaderHE.parseAlphaCode(nodeInfo, "as");
        Expression expressionWithRole = packageLoaderHE.getExpressionWithRole(nodeInfo, "xpath");
        Expression expressionWithRole2 = packageLoaderHE.getExpressionWithRole(nodeInfo, "cxt");
        Expression expressionWithRole3 = packageLoaderHE.getExpressionWithRole(nodeInfo, "baseUri");
        Expression expressionWithRole4 = packageLoaderHE.getExpressionWithRole(nodeInfo, "nsCxt");
        Expression expressionWithRole5 = packageLoaderHE.getExpressionWithRole(nodeInfo, "sa");
        Expression expressionWithRole6 = packageLoaderHE.getExpressionWithRole(nodeInfo, "wp");
        Expression expressionWithRole7 = packageLoaderHE.getExpressionWithRole(nodeInfo, "options");
        EvaluateInstr evaluateInstr = new EvaluateInstr(expressionWithRole, parseAlphaCode, expressionWithRole2, expressionWithRole3, expressionWithRole4, expressionWithRole5);
        if (expressionWithRole7 != null) {
            evaluateInstr.setOptionsExpression(expressionWithRole7);
        }
        String attributeValue = nodeInfo.getAttributeValue("", "schNS");
        if (attributeValue != null) {
            for (String str : attributeValue.split(" ")) {
                if (str.equals(ContentHandlerProxy.f98951n)) {
                    str = "";
                }
                evaluateInstr.importSchemaNamespace(str);
            }
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (NodeInfo nodeInfo2 : nodeInfo.children(NodeSelector.m63449of(new Predicate() { // from class: com.sunia.HTREnginev2.mlk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m64356l2;
                m64356l2 = PackageLoaderHE.m64356l2((NodeInfo) obj);
                return m64356l2;
            }
        }))) {
            WithParam withParam = new WithParam();
            withParam.setVariableQName(packageLoaderHE.getQNameAttribute(nodeInfo2, "name"));
            withParam.setSlotNumber(i);
            withParam.setRequiredType(packageLoaderHE.parseAlphaCode(nodeInfo2, "as"));
            withParam.setSelectExpression(evaluateInstr, packageLoaderHE.getFirstChildExpression(nodeInfo2));
            arrayList.add(withParam);
            i++;
        }
        evaluateInstr.setActualParameters((WithParam[]) arrayList.toArray(new WithParam[0]));
        if (expressionWithRole6 != null) {
            evaluateInstr.setDynamicParams(expressionWithRole6);
        }
        return evaluateInstr;
    }

    /* renamed from: r2 */
    public static /* synthetic */ void m64392r2(List list, StylesheetPackage stylesheetPackage, SourceDocument sourceDocument) throws XPathException {
        HashSet hashSet = new HashSet();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            StructuredQName structuredQName = (StructuredQName) it2.next();
            for (Accumulator accumulator : stylesheetPackage.getAccumulatorRegistry().getAllAccumulators()) {
                if (accumulator.getAccumulatorName().equals(structuredQName)) {
                    hashSet.add(accumulator);
                }
            }
        }
        sourceDocument.setUsedAccumulators(hashSet);
    }

    /* renamed from: r3 */
    public static /* synthetic */ Pattern m64393r3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new UniversalPattern();
    }

    /* renamed from: r4 */
    public static /* synthetic */ Expression m64394r4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        int integerAttribute = packageLoaderHE.getIntegerAttribute(nodeInfo, "slot");
        StructuredQName qNameAttribute = packageLoaderHE.getQNameAttribute(nodeInfo, "var");
        SequenceType parseAlphaCode = packageLoaderHE.parseAlphaCode(nodeInfo, "as");
        QuantifiedExpression quantifiedExpression = new QuantifiedExpression();
        quantifiedExpression.setOperator(33);
        quantifiedExpression.setSequence(firstChildExpression);
        quantifiedExpression.setRequiredType(parseAlphaCode);
        quantifiedExpression.setSlotNumber(integerAttribute);
        quantifiedExpression.setVariableQName(qNameAttribute);
        packageLoaderHE.localBindings.push(quantifiedExpression);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        packageLoaderHE.localBindings.pop();
        quantifiedExpression.setAction(secondChildExpression);
        return quantifiedExpression;
    }

    /* renamed from: s3 */
    public static /* synthetic */ Pattern m64399s3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new BooleanExpressionPattern(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: s4 */
    public static /* synthetic */ Expression m64400s4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new VennExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), 24, packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: t2 */
    public static /* synthetic */ boolean m64404t2(NodeInfo nodeInfo) {
        return nodeInfo.getLocalPart().equals("glob");
    }

    /* renamed from: t3 */
    public static /* synthetic */ Pattern m64405t3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new GeneralNodePattern(packageLoaderHE.getFirstChildExpression(nodeInfo), (NodeTest) packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, Constants.ATTRNAME_TEST));
    }

    /* renamed from: t4 */
    public static /* synthetic */ Expression m64406t4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return Literal.makeLiteral(BooleanValue.FALSE);
    }

    /* renamed from: u2 */
    public static /* synthetic */ void m64410u2(StylesheetPackage stylesheetPackage, List list, SimpleMode simpleMode) throws XPathException {
        AccumulatorRegistry accumulatorRegistry = stylesheetPackage.getAccumulatorRegistry();
        HashSet hashSet = new HashSet();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            hashSet.add(accumulatorRegistry.getAccumulator((StructuredQName) it2.next()));
        }
        simpleMode.setAccumulators(hashSet);
    }

    /* renamed from: u3 */
    public static /* synthetic */ Pattern m64411u3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        NodeTest nodeTest = (NodeTest) packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, Constants.ATTRNAME_TEST);
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        GeneralPositionalPattern generalPositionalPattern = new GeneralPositionalPattern(nodeTest, firstChildExpression);
        generalPositionalPattern.setUsesPosition(!"P".equals(attributeValue));
        return generalPositionalPattern;
    }

    /* renamed from: u4 */
    public static /* synthetic */ Expression m64412u4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Expression firstChildExpression = packageLoaderHE.getFirstChildExpression(nodeInfo);
        Expression secondChildExpression = packageLoaderHE.getSecondChildExpression(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        FilterExpression filterExpression = new FilterExpression(firstChildExpression, secondChildExpression);
        filterExpression.setFlags(attributeValue);
        return filterExpression;
    }

    /* renamed from: v3 */
    public static /* synthetic */ Pattern m64417v3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        ItemType parseAlphaCodeForItemType = packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, Constants.ATTRNAME_TEST);
        NodeSetPattern nodeSetPattern = new NodeSetPattern(packageLoaderHE.getFirstChildExpression(nodeInfo));
        nodeSetPattern.setItemType(parseAlphaCodeForItemType);
        return nodeSetPattern;
    }

    /* renamed from: v4 */
    public static /* synthetic */ Expression m64418v4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return FirstItemExpression.makeFirstItemExpression(packageLoaderHE.getFirstChildExpression(nodeInfo));
    }

    /* renamed from: w2 */
    public static /* synthetic */ Expression m64422w2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new AndExpression(packageLoaderHE.getFirstChildExpression(nodeInfo), packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: w3 */
    public static /* synthetic */ Pattern m64423w3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        ItemType parseAlphaCodeForItemType = packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, Constants.ATTRNAME_TEST);
        return parseAlphaCodeForItemType instanceof NodeTest ? new NodeTestPattern((NodeTest) parseAlphaCodeForItemType) : new ItemTypePattern(parseAlphaCodeForItemType);
    }

    /* renamed from: w4 */
    public static /* synthetic */ Expression m64424w4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        RetainedStaticContext makeRetainedStaticContext = packageLoaderHE.makeRetainedStaticContext(nodeInfo);
        packageLoaderHE.f102332e.push(makeRetainedStaticContext);
        final Expression[] childExpressionArray = getChildExpressionArray(packageLoaderHE, nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "name");
        if (attributeValue.equals("_STRING-JOIN_2.0")) {
            attributeValue = "string-join";
        }
        final Expression makeCall = SystemFunction.makeCall(attributeValue, makeRetainedStaticContext, childExpressionArray);
        if (makeCall == null) {
            throw new XPathException("Unknown system function " + attributeValue + "#" + childExpressionArray.length);
        }
        if (makeCall instanceof SystemFunctionCall) {
            final SystemFunction targetFunction = ((SystemFunctionCall) makeCall).getTargetFunction();
            targetFunction.setRetainedStaticContext(makeRetainedStaticContext);
            AxisIterator iterateAxis = nodeInfo.iterateAxis(2);
            Properties properties = new Properties();
            while (true) {
                NodeInfo nodeInfo2 = (NodeInfo) iterateAxis.next();
                if (nodeInfo2 == null) {
                    break;
                }
                properties.setProperty(nodeInfo2.getLocalPart(), nodeInfo2.getStringValue());
            }
            targetFunction.importAttributes(properties);
            packageLoaderHE.addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.snk
                @Override // net.p110sf.saxon.om.Action
                public final void doAction() {
                    PackageLoaderHE.m64362m2(Expression.this, childExpressionArray);
                }
            });
            packageLoaderHE.addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.tnk
                @Override // net.p110sf.saxon.om.Action
                public final void doAction() {
                    SystemFunction.this.fixArguments(childExpressionArray);
                }
            });
        }
        packageLoaderHE.f102332e.pop();
        return makeCall;
    }

    /* renamed from: x2 */
    public static /* synthetic */ Expression m64428x2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        NextIteration nextIteration = new NextIteration();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "withParam", packageLoaderHE.f102328a.getNamePool()));
        ArrayList arrayList = new ArrayList();
        while (true) {
            NodeInfo next = iterateAxis.next();
            boolean z = false;
            if (next == null) {
                nextIteration.setParameters((WithParam[]) arrayList.toArray(new WithParam[0]));
                return nextIteration;
            }
            WithParam withParam = new WithParam();
            String attributeValue = next.getAttributeValue("", "flags");
            withParam.setVariableQName(packageLoaderHE.getQNameAttribute(next, "name"));
            withParam.setSlotNumber(packageLoaderHE.getIntegerAttribute(next, "slot"));
            withParam.setRequiredType(SequenceType.ANY_SEQUENCE);
            withParam.setSelectExpression(nextIteration, packageLoaderHE.getFirstChildExpression(next));
            withParam.setRequiredType(packageLoaderHE.parseAlphaCode(next, "as"));
            if (attributeValue != null && attributeValue.contains("c")) {
                z = true;
            }
            withParam.setTypeChecked(z);
            arrayList.add(withParam);
        }
    }

    /* renamed from: x3 */
    public static /* synthetic */ Pattern m64429x3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        Pattern m64447b2 = packageLoaderHE.m64447b2(nodeInfo);
        Pattern m64448d2 = packageLoaderHE.m64448d2(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", "op");
        attributeValue.hashCode();
        char c = 65535;
        switch (attributeValue.hashCode()) {
            case -1289550567:
                if (attributeValue.equals("except")) {
                    c = 0;
                    break;
                }
                break;
            case 111433423:
                if (attributeValue.equals("union")) {
                    c = 1;
                    break;
                }
                break;
            case 503014687:
                if (attributeValue.equals("intersect")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new ExceptPattern(m64447b2, m64448d2);
            case 1:
                return new UnionPattern(m64447b2, m64448d2);
            case 2:
                return new IntersectPattern(m64447b2, m64448d2);
            default:
                return null;
        }
    }

    /* renamed from: x4 */
    public static /* synthetic */ Expression m64430x4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new FunctionSequenceCoercer(packageLoaderHE.getFirstChildExpression(nodeInfo), (SpecificFunctionType) packageLoaderHE.parseAlphaCode(nodeInfo, "to").getPrimaryType(), RoleDiagnostic.reconstruct(nodeInfo.getAttributeValue("", "diag")));
    }

    /* renamed from: y2 */
    public static /* synthetic */ Expression m64434y2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        NextMatch nextMatch = new NextMatch(attributeValue != null && attributeValue.contains("t"));
        WithParam[] m64453g5 = packageLoaderHE.m64453g5(nodeInfo, nextMatch, false);
        WithParam[] m64453g52 = packageLoaderHE.m64453g5(nodeInfo, nextMatch, true);
        nextMatch.setActualParams(m64453g5);
        nextMatch.setTunnelParams(m64453g52);
        return nextMatch;
    }

    /* renamed from: y3 */
    public static /* synthetic */ Expression m64435y3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        List<Expression> childExpressionList = getChildExpressionList(packageLoaderHE, nodeInfo);
        ArrayList arrayList = new ArrayList(childExpressionList.size());
        Iterator<Expression> it2 = childExpressionList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Literal) it2.next()).getGroundedValue());
        }
        return Literal.makeLiteral(new SimpleArrayItem(arrayList));
    }

    /* renamed from: y4 */
    public static /* synthetic */ Expression m64436y4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        SystemFunction makeFunction;
        packageLoaderHE.needsPELicense("higher order functions");
        String attributeValue = nodeInfo.getAttributeValue("", "name");
        int integerAttribute = packageLoaderHE.getIntegerAttribute(nodeInfo, "arity");
        RetainedStaticContext makeRetainedStaticContext = packageLoaderHE.makeRetainedStaticContext(nodeInfo);
        if (attributeValue.startsWith("Q{")) {
            StructuredQName fromEQName = StructuredQName.fromEQName(attributeValue);
            String uri = fromEQName.getURI();
            uri.hashCode();
            char c = 65535;
            switch (uri.hashCode()) {
                case -352164960:
                    if (uri.equals(NamespaceConstant.MAP_FUNCTIONS)) {
                        c = 0;
                        break;
                    }
                    break;
                case 861319069:
                    if (uri.equals(NamespaceConstant.ARRAY_FUNCTIONS)) {
                        c = 1;
                        break;
                    }
                    break;
                case 1404543606:
                    if (uri.equals(NamespaceConstant.SAXON)) {
                        c = 2;
                        break;
                    }
                    break;
                case 1967788356:
                    if (uri.equals(NamespaceConstant.MATH)) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    makeFunction = MapFunctionSet.getInstance().makeFunction(fromEQName.getLocalPart(), integerAttribute);
                    break;
                case 1:
                    makeFunction = ArrayFunctionSet.getInstance().makeFunction(fromEQName.getLocalPart(), integerAttribute);
                    break;
                case 2:
                    makeFunction = packageLoaderHE.getConfiguration().bindSaxonExtensionFunction(fromEQName.getLocalPart(), integerAttribute);
                    break;
                case 3:
                    makeFunction = MathFunctionSet.getInstance().makeFunction(fromEQName.getLocalPart(), integerAttribute);
                    break;
                default:
                    makeFunction = null;
                    break;
            }
        } else {
            makeFunction = SystemFunction.makeFunction(attributeValue, makeRetainedStaticContext, integerAttribute);
        }
        if (makeFunction != null) {
            return new FunctionLiteral(makeFunction);
        }
        throw new XPathException("Unknown system function " + attributeValue + "#" + integerAttribute, SaxonErrorCode.SXPK0002);
    }

    /* renamed from: z2 */
    public static /* synthetic */ Expression m64440z2(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        NodeInfo nodeInfo2;
        int integerAttribute = packageLoaderHE.getIntegerAttribute(nodeInfo, HWREngineConstant.Constant.KIND);
        String attributeValue = nodeInfo.getAttributeValue("", "content");
        String attributeValue2 = nodeInfo.getAttributeValue("", "baseURI");
        if (integerAttribute != 1) {
            if (integerAttribute == 3 || integerAttribute == 8) {
                Orphan orphan = new Orphan(packageLoaderHE.getConfiguration());
                orphan.setNodeKind((short) integerAttribute);
                orphan.setStringValue(StringView.tidy(attributeValue));
                nodeInfo2 = orphan;
            } else if (integerAttribute != 9) {
                Orphan orphan2 = new Orphan(packageLoaderHE.getConfiguration());
                orphan2.setNodeKind((short) integerAttribute);
                orphan2.setStringValue(StringView.tidy(attributeValue));
                String attributeValue3 = nodeInfo.getAttributeValue("", RequestParameters.PREFIX);
                String attributeValue4 = nodeInfo.getAttributeValue("", Constants.ATTRNAME_NS);
                String attributeValue5 = nodeInfo.getAttributeValue("", "localName");
                nodeInfo2 = orphan2;
                if (attributeValue5 != null) {
                    if (attributeValue3 == null) {
                        attributeValue3 = "";
                    }
                    orphan2.setNodeName(new FingerprintedQName(attributeValue3, attributeValue4 != null ? attributeValue4 : "", attributeValue5));
                    nodeInfo2 = orphan2;
                }
            }
            return Literal.makeLiteral(nodeInfo2);
        }
        NodeInfo rootNode = packageLoaderHE.f102328a.buildDocumentTree(new StreamSource(new StringReader(attributeValue), attributeValue2)).getRootNode();
        nodeInfo2 = rootNode;
        if (integerAttribute == 1) {
            nodeInfo2 = VirtualCopy.makeVirtualCopy(rootNode.iterateAxis(3, NodeKindTest.ELEMENT).next());
        }
        return Literal.makeLiteral(nodeInfo2);
    }

    /* renamed from: z3 */
    public static /* synthetic */ Pattern m64441z3(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new SimplePositionalPattern((NodeTest) packageLoaderHE.parseAlphaCodeForItemType(nodeInfo, Constants.ATTRNAME_TEST), packageLoaderHE.getIntegerAttribute(nodeInfo, "pos"));
    }

    /* renamed from: z4 */
    public static /* synthetic */ Expression m64442z4(PackageLoaderHE packageLoaderHE, NodeInfo nodeInfo) throws XPathException {
        return new IdentityComparison(packageLoaderHE.getFirstChildExpression(nodeInfo), 39, packageLoaderHE.getSecondChildExpression(nodeInfo));
    }

    /* renamed from: A5 */
    public final void m64443A5() throws XPathException {
        StylesheetPackage peek = this.packStack.peek();
        Iterator<ComponentInvocation> it2 = this.fixups.peek().iterator();
        while (it2.hasNext() && !processComponentReference(peek, it2.next())) {
        }
        peek.allocateBinderySlots();
    }

    /* renamed from: B5 */
    public final StructuredQName m64444B5(String str, NodeInfo nodeInfo) throws XPathException {
        return str.startsWith("Q{") ? StructuredQName.fromEQName(str) : str.contains(":") ? StructuredQName.fromLexicalQName(str, true, true, nodeInfo.getAllNamespaces()) : new StructuredQName("", "", str);
    }

    /* renamed from: Y1 */
    public final void m64445Y1(ComponentInvocation componentInvocation) {
        this.fixups.peek().add(componentInvocation);
    }

    /* renamed from: Z1 */
    public final Location m64446Z1(String str, int i) {
        IntHashMap<Location> intHashMap = this.f102333f.get(str);
        if (intHashMap == null) {
            intHashMap = new IntHashMap<>();
            this.f102333f.put(str, intHashMap);
        }
        Location location = intHashMap.get(i);
        if (location != null) {
            return location;
        }
        Loc loc = new Loc(str, i, -1);
        intHashMap.put(i, loc);
        return loc;
    }

    public void addCompletionAction(Action action) {
        this.completionActions.add(action);
    }

    public void addVendorFunctionLibrary(FunctionLibraryList functionLibraryList, Configuration configuration) {
    }

    /* renamed from: b2 */
    public final Pattern m64447b2(NodeInfo nodeInfo) throws XPathException {
        return m64450e5(nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT).next());
    }

    /* renamed from: d2 */
    public final Pattern m64448d2(NodeInfo nodeInfo) throws XPathException {
        return m64450e5(getChild(nodeInfo, 1));
    }

    /* renamed from: e2 */
    public final UserFunction m64449e2(SymbolicName.C18533F c18533f) {
        return this.userFunctions.get(c18533f);
    }

    /* renamed from: e5 */
    public final Pattern m64450e5(NodeInfo nodeInfo) throws XPathException {
        String localPart = nodeInfo.getLocalPart();
        PatternLoader patternLoader = f102326m.get(localPart);
        if (patternLoader == null) {
            throw new XPathException("Cannot load pattern with tag " + localPart, SaxonErrorCode.SXPK0002);
        }
        final Pattern loadFrom = patternLoader.loadFrom(this, nodeInfo);
        loadFrom.setLocation(m64454h5(nodeInfo));
        loadFrom.setRetainedStaticContext(makeRetainedStaticContext(nodeInfo));
        if (loadFrom instanceof GeneralNodePattern) {
            addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.znk
                @Override // net.p110sf.saxon.om.Action
                public final void doAction() {
                    PackageLoaderHE.m64337i2(Pattern.this);
                }
            });
        }
        return loadFrom;
    }

    /* renamed from: f2 */
    public final Properties m64451f2(String str) {
        try {
            StringReader stringReader = new StringReader(str);
            Properties properties = new Properties();
            LineNumberReader lineNumberReader = new LineNumberReader(stringReader);
            while (true) {
                String readLine = lineNumberReader.readLine();
                if (readLine == null) {
                    return properties;
                }
                int indexOf = readLine.indexOf(61);
                String substring = readLine.substring(0, indexOf);
                String substring2 = indexOf == readLine.length() - 1 ? "" : readLine.substring(indexOf + 1);
                if (substring.equals(SaxonOutputKeys.ITEM_SEPARATOR) || substring.equals("Q{http://saxon.sf.net/}newline")) {
                    try {
                        substring2 = JsonParser.unescape(substring2, 0, "", -1);
                    } catch (XPathException unused) {
                    }
                }
                if (substring.startsWith("Q{")) {
                    substring = substring.substring(1);
                }
                properties.setProperty(substring, substring2);
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: f5 */
    public final SortKeyDefinitionList m64452f5(NodeInfo nodeInfo) throws XPathException {
        ArrayList arrayList = new ArrayList(4);
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "sortKey", this.f102328a.getNamePool()));
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return new SortKeyDefinitionList((SortKeyDefinition[]) arrayList.toArray(new SortKeyDefinition[0]));
            }
            SortKeyDefinition sortKeyDefinition = new SortKeyDefinition();
            String attributeValue = next.getAttributeValue("", "comp");
            if (attributeValue != null) {
                sortKeyDefinition.setFinalComparator(makeAtomicComparer(attributeValue, next));
            }
            sortKeyDefinition.setSortKey(getExpressionWithRole(next, "select"), true);
            sortKeyDefinition.setOrder(getExpressionWithRole(next, Constants.ATTRNAME_ORDER));
            sortKeyDefinition.setLanguage(getExpressionWithRole(next, "lang"));
            sortKeyDefinition.setCollationNameExpression(getExpressionWithRole(next, "collation"));
            sortKeyDefinition.setCaseOrder(getExpressionWithRole(next, "caseOrder"));
            sortKeyDefinition.setStable(getExpressionWithRole(next, "stable"));
            sortKeyDefinition.setDataTypeExpression(getExpressionWithRole(next, "dataType"));
            arrayList.add(sortKeyDefinition);
        }
    }

    /* renamed from: g5 */
    public final WithParam[] m64453g5(NodeInfo nodeInfo, Expression expression, boolean z) throws XPathException {
        ArrayList arrayList = new ArrayList(4);
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "withParam", this.f102328a.getNamePool()));
        while (true) {
            NodeInfo next = iterateAxis.next();
            boolean z2 = false;
            if (next == null) {
                return (WithParam[]) arrayList.toArray(new WithParam[0]);
            }
            String attributeValue = next.getAttributeValue("", "flags");
            if (z == (attributeValue != null && attributeValue.contains("t"))) {
                WithParam withParam = new WithParam();
                withParam.setVariableQName(getQNameAttribute(next, "name"));
                withParam.setSelectExpression(expression, getFirstChildExpression(next));
                withParam.setRequiredType(parseAlphaCode(next, "as"));
                if (attributeValue != null && attributeValue.contains("c")) {
                    z2 = true;
                }
                withParam.setTypeChecked(z2);
                arrayList.add(withParam);
            }
        }
    }

    public NodeInfo getChild(NodeInfo nodeInfo, int i) {
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT);
        NodeInfo next = iterateAxis.next();
        for (int i2 = 0; i2 < i; i2++) {
            next = iterateAxis.next();
        }
        return next;
    }

    public NodeInfo getChildWithRole(NodeInfo nodeInfo, String str) {
        NodeInfo next;
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT);
        do {
            next = iterateAxis.next();
            if (next == null) {
                return null;
            }
        } while (!str.equals(next.getAttributeValue("", "role")));
        return next;
    }

    public Configuration getConfiguration() {
        return this.f102328a;
    }

    public Expression getExpressionWithRole(NodeInfo nodeInfo, String str) throws XPathException {
        NodeInfo childWithRole = getChildWithRole(nodeInfo, str);
        if (childWithRole == null) {
            return null;
        }
        return loadExpression(childWithRole);
    }

    public Expression getFirstChildExpression(NodeInfo nodeInfo) throws XPathException {
        return loadExpression(nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT).next());
    }

    public String getInheritedAttribute(NodeInfo nodeInfo, String str) {
        while (nodeInfo != null) {
            String attributeValue = nodeInfo.getAttributeValue("", str);
            if (attributeValue != null) {
                return attributeValue;
            }
            nodeInfo = nodeInfo.getParent();
        }
        return null;
    }

    public int getIntegerAttribute(NodeInfo nodeInfo, String str) throws XPathException {
        String attributeValue = nodeInfo.getAttributeValue("", str);
        if (attributeValue == null) {
            return Integer.MIN_VALUE;
        }
        try {
            return Integer.parseInt(attributeValue);
        } catch (NumberFormatException unused) {
            throw new XPathException("Expected integer value for " + nodeInfo.getDisplayName() + "/" + str + ", found '" + attributeValue + CloudStorageConstants.SINGLE_QUOTES, SaxonErrorCode.SXPK0002);
        }
    }

    public List<StructuredQName> getListOfQNameAttribute(NodeInfo nodeInfo, String str) throws XPathException {
        String attributeValue = nodeInfo.getAttributeValue("", str);
        if (attributeValue == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : attributeValue.split(" ")) {
            arrayList.add(m64444B5(str2, nodeInfo));
        }
        return arrayList;
    }

    public Expression getNthChildExpression(NodeInfo nodeInfo, int i) throws XPathException {
        return loadExpression(getChild(nodeInfo, i));
    }

    public Stack<StylesheetPackage> getPackStack() {
        return this.packStack;
    }

    public StylesheetPackage getPackage(String str) {
        return this.allPackages.get(str);
    }

    public Pattern getPatternWithRole(NodeInfo nodeInfo, String str) throws XPathException {
        NodeInfo childWithRole = getChildWithRole(nodeInfo, str);
        if (childWithRole == null) {
            return null;
        }
        return m64450e5(childWithRole);
    }

    public StructuredQName getQNameAttribute(NodeInfo nodeInfo, String str) {
        String attributeValue = nodeInfo.getAttributeValue("", str);
        if (attributeValue == null) {
            return null;
        }
        return StructuredQName.fromEQName(attributeValue);
    }

    public Expression getSecondChildExpression(NodeInfo nodeInfo) throws XPathException {
        return loadExpression(getChild(nodeInfo, 1));
    }

    public StylesheetPackage getTopLevelPackage() {
        return this.topLevelPackage;
    }

    public SchemaType getTypeAttribute(NodeInfo nodeInfo, String str) {
        String attributeValue = nodeInfo.getAttributeValue("", str);
        if (attributeValue == null) {
            return null;
        }
        if (attributeValue.startsWith("xs:")) {
            return this.f102328a.getSchemaType(new StructuredQName("xs", "http://www.w3.org/2001/XMLSchema", attributeValue.substring(3)));
        }
        return this.f102328a.getSchemaType(getQNameAttribute(nodeInfo, str));
    }

    /* renamed from: h5 */
    public final Location m64454h5(NodeInfo nodeInfo) {
        String inheritedAttribute = getInheritedAttribute(nodeInfo, "line");
        String inheritedAttribute2 = getInheritedAttribute(nodeInfo, "module");
        return (inheritedAttribute == null || inheritedAttribute2 == null) ? Loc.NONE : m64446Z1(inheritedAttribute2, Integer.parseInt(inheritedAttribute));
    }

    /* renamed from: i5 */
    public final IndependentContext m64455i5(NodeInfo nodeInfo) {
        StylesheetPackage peek = this.packStack.peek();
        IndependentContext independentContext = new IndependentContext(this.f102328a);
        NamespaceMap allNamespaces = nodeInfo.getAllNamespaces();
        independentContext.setNamespaceResolver(allNamespaces);
        independentContext.setImportedSchemaNamespaces(peek.getSchemaNamespaces());
        independentContext.getImportedSchemaNamespaces().add(NamespaceConstant.ANONYMOUS);
        XPathParser xPathParser = this.f102329b;
        xPathParser.setQNameParser(xPathParser.getQNameParser().withNamespaceResolver(allNamespaces));
        return independentContext;
    }

    /* renamed from: j5 */
    public final ItemType m64456j5(NodeInfo nodeInfo, String str) throws XPathException {
        return this.f102329b.parseExtendedItemType(str, m64455i5(nodeInfo));
    }

    /* renamed from: l5 */
    public final void m64457l5(Accumulator accumulator, NodeInfo nodeInfo) throws XPathException {
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "accRule", this.f102328a.getNamePool()));
        boolean equals = nodeInfo.getLocalPart().equals("pre");
        SimpleMode preDescentRules = equals ? accumulator.getPreDescentRules() : accumulator.getPostDescentRules();
        preDescentRules.setStackFrameSlotsNeeded(getIntegerAttribute(nodeInfo, "slots"));
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                preDescentRules.computeRankings(1);
                return;
            }
            int integerAttribute = getIntegerAttribute(next, "slots");
            int integerAttribute2 = getIntegerAttribute(next, "rank");
            String attributeValue = next.getAttributeValue("", "flags");
            SlotManager slotManager = new SlotManager(integerAttribute);
            Pattern m64447b2 = m64447b2(next);
            AccumulatorRule accumulatorRule = new AccumulatorRule(getSecondChildExpression(next), slotManager, !equals);
            if (attributeValue != null && attributeValue.contains("c")) {
                accumulatorRule.setCapturing(true);
            }
            preDescentRules.addRule(m64447b2, preDescentRules.makeRule(m64447b2, accumulatorRule, integerAttribute2, 0, integerAttribute2, 0, 0));
        }
    }

    public Expression loadExpression(NodeInfo nodeInfo) throws XPathException {
        if (nodeInfo == null) {
            return null;
        }
        String localPart = nodeInfo.getLocalPart();
        ExpressionLoader expressionLoader = eMap.get(localPart);
        if (expressionLoader != null) {
            RetainedStaticContext makeRetainedStaticContext = makeRetainedStaticContext(nodeInfo);
            this.f102332e.push(makeRetainedStaticContext);
            Expression loadFrom = expressionLoader.loadFrom(this, nodeInfo);
            loadFrom.setRetainedStaticContextLocally(makeRetainedStaticContext);
            this.f102332e.pop();
            loadFrom.setLocation(m64454h5(nodeInfo));
            return loadFrom;
        }
        String str = "Cannot load expression with tag " + localPart;
        String str2 = licensableConstructs.get(localPart);
        if (str2 != null) {
            str = str + ". The stylesheet uses Saxon-" + str2 + " features";
        }
        throw new XPathException(str, SaxonErrorCode.SXPK0002);
    }

    @Override // net.p110sf.saxon.trans.packages.IPackageLoader
    public StylesheetPackage loadPackage(Source source) throws XPathException {
        ParseOptions parseOptions = new ParseOptions();
        parseOptions.setSpaceStrippingRule(AllElementsSpaceStrippingRule.getInstance());
        parseOptions.setSchemaValidationMode(4);
        parseOptions.setDTDValidationMode(4);
        final ArrayList arrayList = new ArrayList(1);
        parseOptions.addFilter(new FilterFactory() { // from class: com.sunia.HTREnginev2.onk
            @Override // net.p110sf.saxon.event.FilterFactory
            public final Receiver makeFilter(Receiver receiver) {
                Receiver m64325g2;
                m64325g2 = PackageLoaderHE.m64325g2(arrayList, receiver);
                return m64325g2;
            }
        });
        NodeInfo rootNode = this.f102328a.buildDocumentTree(source, parseOptions).getRootNode();
        if (((CheckSumFilter) arrayList.get(0)).isChecksumCorrect()) {
            return loadPackageDoc(rootNode);
        }
        throw new XPathException("Package cannot be loaded: incorrect checksum", SaxonErrorCode.SXPK0002);
    }

    @Override // net.p110sf.saxon.trans.packages.IPackageLoader
    public StylesheetPackage loadPackageDoc(NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage makeStylesheetPackage = this.f102328a.makeStylesheetPackage();
        makeStylesheetPackage.setRuleManager(new RuleManager(makeStylesheetPackage));
        makeStylesheetPackage.setCharacterMapIndex(new CharacterMapIndex());
        makeStylesheetPackage.setJustInTimeCompilation(false);
        if (this.packStack.isEmpty()) {
            this.topLevelPackage = makeStylesheetPackage;
        }
        this.packStack.push(makeStylesheetPackage);
        NodeInfo next = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT).next();
        if (!next.getURI().equals(NamespaceConstant.SAXON_XSLT_EXPORT)) {
            throw new XPathException("Incorrect namespace for XSLT export file", SaxonErrorCode.SXPK0002);
        }
        if (!next.getLocalPart().equals("package")) {
            throw new XPathException("Outermost element of XSLT export file must be 'package'", SaxonErrorCode.SXPK0002);
        }
        String attributeValue = next.getAttributeValue("", "saxonVersion");
        if (attributeValue == null) {
            attributeValue = "9.8.0.1";
        }
        this.f102337j = NestedIntegerValue.parse(attributeValue);
        String attributeValue2 = next.getAttributeValue("", "dmk");
        if (attributeValue2 != null) {
            makeStylesheetPackage.setLocalLicenseId(this.f102328a.registerLocalLicense(attributeValue2));
        }
        loadPackageElement(next, makeStylesheetPackage);
        for (Map.Entry<Component, String> entry : this.f102335h.entrySet()) {
            Component key = entry.getKey();
            StringTokenizer stringTokenizer = new StringTokenizer(entry.getValue());
            while (stringTokenizer.hasMoreTokens()) {
                int parseInt = Integer.parseInt(stringTokenizer.nextToken());
                Component component = this.f102334g.get(Integer.valueOf(parseInt));
                if (component == null) {
                    throw new XPathException("Unresolved external reference to component " + parseInt);
                }
                key.getComponentBindings().add(new ComponentBinding(component.getActor().getSymbolicName(), component));
            }
        }
        return makeStylesheetPackage;
    }

    public void loadPackageElement(NodeInfo nodeInfo, StylesheetPackage stylesheetPackage) throws XPathException {
        this.fixups.push(new ArrayList());
        String attributeValue = nodeInfo.getAttributeValue("", "name");
        String attributeValue2 = nodeInfo.getAttributeValue("", "id");
        if (attributeValue2 == null) {
            attributeValue2 = attributeValue;
        }
        boolean equals = "true".equals(nodeInfo.getAttributeValue("", "relocatable"));
        if (attributeValue != null) {
            stylesheetPackage.setPackageName(attributeValue);
            this.allPackages.put(attributeValue2, stylesheetPackage);
        }
        stylesheetPackage.setPackageVersion(new PackageVersion(nodeInfo.getAttributeValue("", "packageVersion")));
        stylesheetPackage.setLanguageVersion(getIntegerAttribute(nodeInfo, "version"));
        stylesheetPackage.setSchemaAware("1".equals(nodeInfo.getAttributeValue("", "schemaAware")));
        if (stylesheetPackage.isSchemaAware()) {
            needsEELicense("schema-awareness");
        }
        String attributeValue3 = nodeInfo.getAttributeValue("", "implicit");
        if (attributeValue3 != null) {
            stylesheetPackage.setImplicitPackage(attributeValue3.equals("true"));
        } else {
            stylesheetPackage.setImplicitPackage(this.f102337j.compareTo(f102325l) <= 0);
        }
        stylesheetPackage.setStripsTypeAnnotations("1".equals(nodeInfo.getAttributeValue("", "stripType")));
        stylesheetPackage.setKeyManager(new KeyManager(stylesheetPackage.getConfiguration(), stylesheetPackage));
        stylesheetPackage.setDeclaredModes("1".equals(nodeInfo.getAttributeValue("", "declaredModes")));
        for (NodeInfo nodeInfo2 : nodeInfo.children(NodeSelector.m63449of(new Predicate() { // from class: com.sunia.HTREnginev2.qnk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m64331h2;
                m64331h2 = PackageLoaderHE.m64331h2((NodeInfo) obj);
                return m64331h2;
            }
        }))) {
            StylesheetPackage makeStylesheetPackage = this.f102328a.makeStylesheetPackage();
            makeStylesheetPackage.setRuleManager(new RuleManager(stylesheetPackage));
            makeStylesheetPackage.setCharacterMapIndex(new CharacterMapIndex());
            makeStylesheetPackage.setJustInTimeCompilation(false);
            this.packStack.push(makeStylesheetPackage);
            loadPackageElement(nodeInfo2, makeStylesheetPackage);
            this.packStack.pop();
            stylesheetPackage.addUsedPackage(makeStylesheetPackage);
        }
        FunctionLibraryList functionLibraryList = new FunctionLibraryList();
        functionLibraryList.addFunctionLibrary(this.f102328a.getXSLT30FunctionSet());
        addVendorFunctionLibrary(functionLibraryList, this.f102328a);
        functionLibraryList.addFunctionLibrary(MapFunctionSet.getInstance());
        functionLibraryList.addFunctionLibrary(ArrayFunctionSet.getInstance());
        functionLibraryList.addFunctionLibrary(MathFunctionSet.getInstance());
        functionLibraryList.addFunctionLibrary(new StylesheetFunctionLibrary(stylesheetPackage, true));
        functionLibraryList.addFunctionLibrary(new ConstructorFunctionLibrary(this.f102328a));
        functionLibraryList.addFunctionLibrary(new XQueryFunctionLibrary(this.f102328a));
        functionLibraryList.addFunctionLibrary(this.f102328a.getIntegratedFunctionLibrary());
        this.f102328a.addExtensionBinders(functionLibraryList);
        functionLibraryList.addFunctionLibrary(new StylesheetFunctionLibrary(stylesheetPackage, false));
        stylesheetPackage.setFunctionLibraryDetails(functionLibraryList, this.f102330c, this.f102331d);
        RetainedStaticContext retainedStaticContext = new RetainedStaticContext(this.f102328a);
        if (equals) {
            String baseURI = nodeInfo.getBaseURI();
            this.f102336i = baseURI;
            retainedStaticContext.setStaticBaseUriString(baseURI);
        }
        retainedStaticContext.setPackageData(stylesheetPackage);
        this.f102332e.push(retainedStaticContext);
        this.localBindings = new Stack<>();
        m64463r5(nodeInfo);
        readSchemaNamespaces(nodeInfo);
        m64467v5(nodeInfo);
        m64461p5(nodeInfo, false);
        NodeInfo next = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "overridden", this.f102328a.getNamePool())).next();
        if (next != null) {
            m64461p5(next, true);
        }
        m64458m5(nodeInfo);
        m64470y5(nodeInfo);
        m64460o5(nodeInfo);
        m64471z5(nodeInfo);
        m64462q5(nodeInfo);
        m64443A5();
        this.fixups.pop();
        Iterator<Action> it2 = this.completionActions.iterator();
        while (it2.hasNext()) {
            it2.next().doAction();
        }
        StructuredQName qNameAttribute = getQNameAttribute(nodeInfo, "defaultMode");
        if (qNameAttribute == null) {
            stylesheetPackage.setDefaultMode(Mode.UNNAMED_MODE_NAME);
        } else {
            stylesheetPackage.setDefaultMode(qNameAttribute);
        }
    }

    /* renamed from: m5 */
    public final void m64458m5(NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage peek = this.packStack.peek();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "accumulator", this.f102328a.getNamePool()));
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return;
            }
            StructuredQName qNameAttribute = getQNameAttribute(next, "name");
            Accumulator accumulator = new Accumulator();
            Component makeComponent = Component.makeComponent(accumulator, Visibility.PRIVATE, VisibilityProvenance.DEFAULTED, peek, peek);
            accumulator.setDeclaringComponent(makeComponent);
            accumulator.setSlotManagerForInitialValueExpression(new SlotManager(getIntegerAttribute(next, "slots")));
            accumulator.setAccumulatorName(qNameAttribute);
            this.f102335h.put(makeComponent, next.getAttributeValue("", "binds"));
            boolean equals = "1".equals(next.getAttributeValue("", "streamable"));
            String attributeValue = next.getAttributeValue("", "flags");
            boolean z = attributeValue != null && attributeValue.contains("u");
            accumulator.setDeclaredStreamable(equals);
            accumulator.setUniversallyApplicable(z);
            accumulator.setInitialValueExpression(getExpressionWithRole(next, "init"));
            m64457l5(accumulator, getChild(next, 1));
            m64457l5(accumulator, getChild(next, 2));
            peek.getAccumulatorRegistry().addAccumulator(accumulator);
        }
    }

    public AtomicComparer makeAtomicComparer(String str, NodeInfo nodeInfo) throws XPathException {
        if (str.equals("CCC")) {
            return CodepointCollatingComparer.getInstance();
        }
        if (str.equals("CAVC")) {
            return ContextFreeAtomicComparer.getInstance();
        }
        if (str.startsWith("GAC|")) {
            return new GenericAtomicComparer(this.f102328a.getCollation(str.substring(4)), null);
        }
        if (str.equals("CalVC")) {
            return new CalendarValueComparer(null);
        }
        if (str.equals("EQC")) {
            return EqualityComparer.getInstance();
        }
        if (str.equals("NC")) {
            return NumericComparer.getInstance();
        }
        if (str.equals("NC11")) {
            return NumericComparer11.getInstance();
        }
        if (str.equals("QUNC")) {
            return new UntypedNumericComparer();
        }
        if (str.equals("DblSC")) {
            return DoubleSortComparer.getInstance();
        }
        if (str.equals("DecSC")) {
            return DecimalSortComparer.getDecimalSortComparerInstance();
        }
        if (str.startsWith("CAC|")) {
            return new CollatingAtomicComparer(this.f102328a.getCollation(str.substring(4)));
        }
        if (str.startsWith("AtSC|")) {
            int indexOf = str.indexOf(124, 5);
            return AtomicSortComparer.makeSortComparer(this.f102328a.getCollation(str.substring(indexOf + 1)), Integer.parseInt(str.substring(5, indexOf)), new EarlyEvaluationContext(this.f102328a));
        }
        if (str.startsWith("DESC|")) {
            return new DescendingComparer(makeAtomicComparer(str.substring(5), nodeInfo));
        }
        if (str.startsWith("TEXT|")) {
            return new TextComparer(makeAtomicComparer(str.substring(5), nodeInfo));
        }
        throw new XPathException("Unknown comparer " + str, SaxonErrorCode.SXPK0002);
    }

    public UserFunction makeFunction(String str) {
        return new UserFunction();
    }

    public RetainedStaticContext makeRetainedStaticContext(NodeInfo nodeInfo) {
        StylesheetPackage peek = this.packStack.peek();
        String attributeValue = nodeInfo.getAttributeValue("", "baseUri");
        String attributeValue2 = nodeInfo.getAttributeValue("", "defaultCollation");
        String attributeValue3 = nodeInfo.getAttributeValue("", "defaultElementNS");
        String attributeValue4 = nodeInfo.getAttributeValue("", Constants.ATTRNAME_NS);
        String attributeValue5 = nodeInfo.getAttributeValue("", "vn");
        if (attributeValue == null && attributeValue2 == null && attributeValue4 == null && attributeValue5 == null && attributeValue3 == null && this.f102332e.peek().getDecimalFormatManager() != null) {
            return this.f102332e.peek();
        }
        RetainedStaticContext retainedStaticContext = new RetainedStaticContext(this.f102328a);
        retainedStaticContext.setPackageData(peek);
        if (attributeValue2 != null) {
            retainedStaticContext.setDefaultCollationName(attributeValue2);
        } else {
            retainedStaticContext.setDefaultCollationName(NamespaceConstant.CODEPOINT_COLLATION_URI);
        }
        if (attributeValue != null) {
            retainedStaticContext.setStaticBaseUriString(attributeValue);
        } else {
            String str = this.f102336i;
            if (str != null) {
                retainedStaticContext.setStaticBaseUriString(str);
            } else {
                String inheritedAttributeValue = Navigator.getInheritedAttributeValue(nodeInfo, "", "baseUri");
                if (inheritedAttributeValue != null) {
                    retainedStaticContext.setStaticBaseUriString(inheritedAttributeValue);
                }
            }
        }
        if (attributeValue4 == null) {
            attributeValue4 = Navigator.getInheritedAttributeValue(nodeInfo, "", Constants.ATTRNAME_NS);
        }
        if (attributeValue4 != null && !attributeValue4.isEmpty()) {
            for (String str2 : attributeValue4.split(" ")) {
                int indexOf = str2.indexOf(61);
                if (indexOf < 0) {
                    throw new IllegalStateException("ns=" + attributeValue4);
                }
                String substring = str2.substring(0, indexOf);
                String substring2 = str2.substring(indexOf + 1);
                if (substring2.equals("~")) {
                    substring2 = NamespaceConstant.getUriForConventionalPrefix(substring);
                }
                retainedStaticContext.declareNamespace(substring, substring2);
            }
        }
        if (attributeValue3 == null) {
            attributeValue3 = Navigator.getInheritedAttributeValue(nodeInfo, "", "defaultElementNS");
        }
        if (attributeValue3 != null) {
            retainedStaticContext.setDefaultElementNamespace(attributeValue3);
        }
        retainedStaticContext.setDecimalFormatManager(this.packStack.peek().getDecimalFormatManager());
        return retainedStaticContext;
    }

    /* renamed from: n5 */
    public final AttributeSet m64459n5(NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage peek = this.packStack.peek();
        this.localBindings = new Stack<>();
        StructuredQName qNameAttribute = getQNameAttribute(nodeInfo, "name");
        int integerAttribute = getIntegerAttribute(nodeInfo, "slots");
        AttributeSet attributeSet = new AttributeSet();
        attributeSet.setName(qNameAttribute);
        attributeSet.setStackFrameMap(new SlotManager(integerAttribute));
        attributeSet.setPackageData(peek);
        attributeSet.setBody(getFirstChildExpression(nodeInfo));
        attributeSet.setDeclaredStreamable("s".equals(nodeInfo.getAttributeValue("", "flags")));
        return attributeSet;
    }

    public void needsEELicense(String str) {
        this.f102328a.checkLicensedFeature(2, str, getTopLevelPackage().getLocalLicenseId());
    }

    public void needsPELicense(String str) {
        this.f102328a.checkLicensedFeature(8, str, getTopLevelPackage().getLocalLicenseId());
    }

    /* renamed from: o5 */
    public final void m64460o5(NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage peek = this.packStack.peek();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "charMap", this.f102328a.getNamePool()));
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return;
            }
            StructuredQName qNameAttribute = getQNameAttribute(next, "name");
            AxisIterator iterateAxis2 = next.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "m", this.f102328a.getNamePool()));
            IntHashMap intHashMap = new IntHashMap();
            while (true) {
                NodeInfo next2 = iterateAxis2.next();
                if (next2 != null) {
                    intHashMap.put(getIntegerAttribute(next2, "c"), next2.getAttributeValue("", "s"));
                }
            }
            peek.getCharacterMapIndex().putCharacterMap(qNameAttribute, new CharacterMap(qNameAttribute, intHashMap));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0122, code lost:
    
        if (r6.equals("globalVariable") == false) goto L30;
     */
    /* renamed from: p5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m64461p5(net.p110sf.saxon.om.NodeInfo r14, boolean r15) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.trans.PackageLoaderHE.m64461p5(net.sf.saxon.om.NodeInfo, boolean):void");
    }

    public SequenceType parseAlphaCode(NodeInfo nodeInfo, String str) throws XPathException {
        String attributeValue = nodeInfo.getAttributeValue("", str);
        if (attributeValue == null) {
            return SequenceType.ANY_SEQUENCE;
        }
        try {
            return AlphaCode.toSequenceType(attributeValue, this.f102328a);
        } catch (IllegalArgumentException | IllegalStateException e) {
            throw new XPathException("Invalid alpha code " + nodeInfo.getDisplayName() + "/@" + str + "='" + attributeValue + "': " + e.getMessage());
        }
    }

    public ItemType parseAlphaCodeForItemType(NodeInfo nodeInfo, String str) throws XPathException {
        String attributeValue = nodeInfo.getAttributeValue("", str);
        if (attributeValue == null) {
            return AnyItemType.getInstance();
        }
        try {
            return AlphaCode.toItemType(attributeValue, this.f102328a);
        } catch (IllegalArgumentException | IllegalStateException e) {
            throw new XPathException("Invalid alpha code " + nodeInfo.getDisplayName() + "/@" + str + "='" + attributeValue + "': " + e.getMessage());
        }
    }

    public ItemType parseItemTypeAttribute(NodeInfo nodeInfo, String str) throws XPathException {
        String attributeValue = nodeInfo.getAttributeValue("", str);
        return attributeValue == null ? AnyItemType.getInstance() : m64456j5(nodeInfo, attributeValue);
    }

    public SequenceType parseSequenceType(NodeInfo nodeInfo, String str) throws XPathException {
        IndependentContext m64455i5 = m64455i5(nodeInfo);
        String attributeValue = nodeInfo.getAttributeValue("", str);
        return attributeValue == null ? SequenceType.ANY_SEQUENCE : this.f102329b.parseExtendedSequenceType(attributeValue, m64455i5);
    }

    public boolean processComponentReference(StylesheetPackage stylesheetPackage, ComponentInvocation componentInvocation) throws XPathException {
        SymbolicName symbolicName = componentInvocation.getSymbolicName();
        Component component = stylesheetPackage.getComponent(symbolicName);
        if (component == null) {
            if (symbolicName.getComponentName().hasURI("http://www.w3.org/1999/XSL/Transform") && symbolicName.getComponentName().getLocalPart().equals("original")) {
                return true;
            }
            throw new XPathException("Loading compiled package: unresolved component reference to " + symbolicName);
        }
        if (componentInvocation instanceof GlobalVariableReference) {
            ((GlobalVariableReference) componentInvocation).setTarget(component);
            return false;
        }
        if (componentInvocation instanceof UserFunctionCall) {
            UserFunctionCall userFunctionCall = (UserFunctionCall) componentInvocation;
            userFunctionCall.setFunction((UserFunction) component.getActor());
            userFunctionCall.setStaticType(((UserFunction) component.getActor()).getResultType());
            return false;
        }
        if (componentInvocation instanceof UserFunctionReference) {
            ((UserFunctionReference) componentInvocation).setFunction((UserFunction) component.getActor());
            return false;
        }
        if (componentInvocation instanceof CallTemplate) {
            ((CallTemplate) componentInvocation).setTargetTemplate((NamedTemplate) component.getActor());
            return false;
        }
        if (componentInvocation instanceof UseAttributeSet) {
            ((UseAttributeSet) componentInvocation).setTarget((AttributeSet) component.getActor());
            return false;
        }
        if (componentInvocation instanceof ApplyTemplates) {
            ((ApplyTemplates) componentInvocation).setMode((SimpleMode) component.getActor());
            return false;
        }
        throw new XPathException("Unknown component reference " + componentInvocation.getClass());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
    
        switch(r16) {
            case 0: goto L31;
            case 1: goto L32;
            case 2: goto L30;
            default: goto L29;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0085, code lost:
    
        r7.setIntProperty(r11, getIntegerAttribute(r5, r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008d, code lost:
    
        r7.setInfinity(r5.getAttributeValue("", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_INFINITY));
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0095, code lost:
    
        r7.setNaN(r5.getAttributeValue("", "NaN"));
     */
    /* renamed from: q5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m64462q5(net.p110sf.saxon.om.NodeInfo r18) throws net.p110sf.saxon.trans.XPathException {
        /*
            r17 = this;
            r0 = r17
            java.util.Stack<net.sf.saxon.style.StylesheetPackage> r1 = r0.packStack
            java.lang.Object r1 = r1.peek()
            net.sf.saxon.style.StylesheetPackage r1 = (net.p110sf.saxon.style.StylesheetPackage) r1
            net.sf.saxon.trans.DecimalFormatManager r1 = r1.getDecimalFormatManager()
            net.sf.saxon.pattern.NameTest r2 = new net.sf.saxon.pattern.NameTest
            net.sf.saxon.Configuration r3 = r0.f102328a
            net.sf.saxon.om.NamePool r3 = r3.getNamePool()
            r4 = 1
            java.lang.String r5 = "http://ns.saxonica.com/xslt/export"
            java.lang.String r6 = "decimalFormat"
            r2.<init>(r4, r5, r6, r3)
            r3 = 3
            r5 = r18
            net.sf.saxon.tree.iter.AxisIterator r2 = r5.iterateAxis(r3, r2)
            java.lang.String[] r3 = net.p110sf.saxon.trans.DecimalSymbols.propertyNames
        L27:
            net.sf.saxon.om.NodeInfo r5 = r2.next()
            if (r5 == 0) goto L9f
            java.lang.String r6 = "name"
            net.sf.saxon.om.StructuredQName r7 = r0.getQNameAttribute(r5, r6)
            if (r7 != 0) goto L3a
            net.sf.saxon.trans.DecimalSymbols r7 = r1.getDefaultDecimalFormat()
            goto L3e
        L3a:
            net.sf.saxon.trans.DecimalSymbols r7 = r1.obtainNamedDecimalFormat(r7)
        L3e:
            net.sf.saxon.s9api.HostLanguage r8 = net.p110sf.saxon.s9api.HostLanguage.XSLT
            r9 = 31
            r7.setHostLanguage(r8, r9)
            int r8 = r3.length
            r9 = 0
            r10 = r9
        L48:
            if (r10 >= r8) goto L27
            r11 = r3[r10]
            java.lang.String r12 = ""
            java.lang.String r13 = r5.getAttributeValue(r12, r11)
            if (r13 == 0) goto L9c
            r11.hashCode()
            int r13 = r11.hashCode()
            java.lang.String r14 = "infinity"
            java.lang.String r15 = "NaN"
            r16 = -1
            switch(r13) {
                case 78043: goto L79;
                case 3373707: goto L6f;
                case 173173288: goto L65;
                default: goto L64;
            }
        L64:
            goto L82
        L65:
            boolean r13 = r11.equals(r14)
            if (r13 != 0) goto L6c
            goto L82
        L6c:
            r16 = 2
            goto L82
        L6f:
            boolean r13 = r11.equals(r6)
            if (r13 != 0) goto L76
            goto L82
        L76:
            r16 = r4
            goto L82
        L79:
            boolean r13 = r11.equals(r15)
            if (r13 != 0) goto L80
            goto L82
        L80:
            r16 = r9
        L82:
            switch(r16) {
                case 0: goto L95;
                case 1: goto L9c;
                case 2: goto L8d;
                default: goto L85;
            }
        L85:
            int r12 = r0.getIntegerAttribute(r5, r11)
            r7.setIntProperty(r11, r12)
            goto L9c
        L8d:
            java.lang.String r11 = r5.getAttributeValue(r12, r14)
            r7.setInfinity(r11)
            goto L9c
        L95:
            java.lang.String r11 = r5.getAttributeValue(r12, r15)
            r7.setNaN(r11)
        L9c:
            int r10 = r10 + 1
            goto L48
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.trans.PackageLoaderHE.m64462q5(net.sf.saxon.om.NodeInfo):void");
    }

    /* renamed from: r5 */
    public final void m64463r5(NodeInfo nodeInfo) throws XPathException {
        GlobalContextRequirement globalContextRequirement = null;
        for (NodeInfo nodeInfo2 : nodeInfo.children(NodeSelector.m63449of(new Predicate() { // from class: com.sunia.HTREnginev2.kok
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m64404t2;
                m64404t2 = PackageLoaderHE.m64404t2((NodeInfo) obj);
                return m64404t2;
            }
        }))) {
            if (globalContextRequirement == null) {
                globalContextRequirement = new GlobalContextRequirement();
                this.packStack.peek().setContextItemRequirements(globalContextRequirement);
            }
            String attributeValue = nodeInfo2.getAttributeValue("", "use");
            if ("opt".equals(attributeValue)) {
                globalContextRequirement.setMayBeOmitted(true);
                globalContextRequirement.setAbsentFocus(false);
            } else if ("pro".equals(attributeValue)) {
                globalContextRequirement.setMayBeOmitted(true);
                globalContextRequirement.setAbsentFocus(true);
            } else if ("req".equals(attributeValue)) {
                globalContextRequirement.setMayBeOmitted(false);
                globalContextRequirement.setAbsentFocus(false);
            }
            ItemType parseItemTypeAttribute = parseItemTypeAttribute(nodeInfo2, "type");
            if (parseItemTypeAttribute != null) {
                globalContextRequirement.addRequiredItemType(parseItemTypeAttribute);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0106 A[LOOP:0: B:12:0x0100->B:14:0x0106, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0128 A[EDGE_INSN: B:15:0x0128->B:16:0x0128 BREAK  A[LOOP:0: B:12:0x0100->B:14:0x0106], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0166 A[LOOP:1: B:23:0x0160->B:25:0x0166, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0152  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.instruct.UserFunction readFunction(net.p110sf.saxon.om.NodeInfo r12) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.trans.PackageLoaderHE.readFunction(net.sf.saxon.om.NodeInfo):net.sf.saxon.expr.instruct.UserFunction");
    }

    public void readSchemaNamespaces(NodeInfo nodeInfo) throws XPathException {
    }

    /* renamed from: s5 */
    public final UserFunction m64464s5(NodeInfo nodeInfo) throws XPathException {
        this.localBindings = new Stack<>();
        UserFunction readFunction = readFunction(nodeInfo);
        this.userFunctions.put(readFunction.getSymbolicName(), readFunction);
        this.f102331d.addFunction(readFunction);
        return readFunction;
    }

    /* renamed from: t5 */
    public final GlobalParam m64465t5(NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage peek = this.packStack.peek();
        StructuredQName qNameAttribute = getQNameAttribute(nodeInfo, "name");
        this.localBindings = new Stack<>();
        GlobalParam globalParam = new GlobalParam();
        globalParam.setVariableQName(qNameAttribute);
        globalParam.setPackageData(peek);
        globalParam.setRequiredType(parseAlphaCode(nodeInfo, "as"));
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        if (attributeValue != null) {
            if (attributeValue.contains("a")) {
                globalParam.setAssignable(true);
            }
            if (attributeValue.contains("x")) {
                globalParam.setIndexedVariable();
            }
            if (attributeValue.contains("r")) {
                globalParam.setRequiredParam(true);
            }
            if (attributeValue.contains("i")) {
                globalParam.setImplicitlyRequiredParam(true);
            }
        }
        int integerAttribute = getIntegerAttribute(nodeInfo, "slots");
        if (integerAttribute > 0) {
            globalParam.setContainsLocals(new SlotManager(integerAttribute));
        }
        NodeInfo next = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT).next();
        if (next == null) {
            globalParam.setBody(Literal.makeEmptySequence());
        } else {
            Expression loadExpression = loadExpression(next);
            globalParam.setBody(loadExpression);
            loadExpression.setRetainedStaticContext(loadExpression.getRetainedStaticContext());
        }
        return globalParam;
    }

    /* renamed from: u5 */
    public final GlobalVariable m64466u5(NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage peek = this.packStack.peek();
        StructuredQName qNameAttribute = getQNameAttribute(nodeInfo, "name");
        GlobalVariable globalVariable = new GlobalVariable();
        globalVariable.setVariableQName(qNameAttribute);
        globalVariable.setPackageData(peek);
        globalVariable.setRequiredType(parseAlphaCode(nodeInfo, "as"));
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        if (attributeValue != null) {
            if (attributeValue.contains("a")) {
                globalVariable.setAssignable(true);
            }
            if (attributeValue.contains("x")) {
                globalVariable.setIndexedVariable();
            }
            if (attributeValue.contains("r")) {
                globalVariable.setRequiredParam(true);
            }
        }
        int integerAttribute = getIntegerAttribute(nodeInfo, "slots");
        if (integerAttribute > 0) {
            globalVariable.setContainsLocals(new SlotManager(integerAttribute));
        }
        NodeInfo next = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT).next();
        if (next == null) {
            globalVariable.setBody(Literal.makeEmptySequence());
        } else {
            Expression loadExpression = loadExpression(next);
            globalVariable.setBody(loadExpression);
            loadExpression.setRetainedStaticContext(loadExpression.getRetainedStaticContext());
        }
        peek.addGlobalVariable(globalVariable);
        return globalVariable;
    }

    /* renamed from: v5 */
    public final void m64467v5(NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage peek = this.packStack.peek();
        boolean z = true;
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "key", this.f102328a.getNamePool()));
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return;
            }
            StructuredQName qNameAttribute = getQNameAttribute(next, "name");
            SymbolicName symbolicName = new SymbolicName(169, qNameAttribute);
            String attributeValue = next.getAttributeValue("", "flags");
            boolean z2 = (attributeValue == null || !attributeValue.contains("b")) ? false : z;
            boolean z3 = (attributeValue == null || !attributeValue.contains("r")) ? false : z;
            boolean z4 = (attributeValue == null || !attributeValue.contains("u")) ? false : z;
            boolean z5 = (attributeValue == null || !attributeValue.contains("c")) ? false : z;
            boolean z6 = (attributeValue == null || !attributeValue.contains("v")) ? false : z;
            boolean z7 = (attributeValue == null || !attributeValue.contains("s")) ? false : z;
            Pattern m64447b2 = m64447b2(next);
            Expression secondChildExpression = getSecondChildExpression(next);
            String attributeValue2 = next.getAttributeValue("", "collation");
            if (attributeValue2 == null) {
                attributeValue2 = NamespaceConstant.CODEPOINT_COLLATION_URI;
            }
            AxisIterator axisIterator = iterateAxis;
            boolean z8 = z7;
            boolean z9 = z4;
            boolean z10 = z6;
            KeyDefinition keyDefinition = new KeyDefinition(symbolicName, m64447b2, secondChildExpression, attributeValue2, this.f102328a.getCollation(attributeValue2));
            int integerAttribute = getIntegerAttribute(next, "slots");
            if (integerAttribute != Integer.MIN_VALUE) {
                keyDefinition.setStackFrameMap(new SlotManager(integerAttribute));
            }
            this.f102335h.put(keyDefinition.makeDeclaringComponent(Visibility.PRIVATE, peek), next.getAttributeValue("", "binds"));
            if (z2) {
                keyDefinition.setBackwardsCompatible(true);
            }
            if (z3) {
                keyDefinition.setRangeKey(true);
            }
            if (z5) {
                keyDefinition.setComposite(true);
            }
            keyDefinition.setStrictComparison(z8);
            keyDefinition.setConvertUntypedToOther(z10);
            peek.getKeyManager().addKeyDefinition(qNameAttribute, keyDefinition, z9, peek.getConfiguration());
            iterateAxis = axisIterator;
            z = true;
        }
    }

    /* renamed from: w5 */
    public final Mode m64468w5(NodeInfo nodeInfo) throws XPathException {
        final StylesheetPackage peek = this.packStack.peek();
        StructuredQName qNameAttribute = getQNameAttribute(nodeInfo, "name");
        if (qNameAttribute == null) {
            qNameAttribute = Mode.UNNAMED_MODE_NAME;
        }
        final SimpleMode simpleMode = (SimpleMode) peek.getRuleManager().obtainMode(qNameAttribute, true);
        simpleMode.allocatePatternSlots(getIntegerAttribute(nodeInfo, "patternSlots"));
        String attributeValue = nodeInfo.getAttributeValue("", "onNo");
        if (attributeValue != null) {
            simpleMode.setBuiltInRuleSet(simpleMode.getBuiltInRuleSetForCode(attributeValue));
        }
        String str = "flags";
        String attributeValue2 = nodeInfo.getAttributeValue("", "flags");
        int i = 0;
        String str2 = "s";
        if (attributeValue2 != null) {
            simpleMode.setStreamable(attributeValue2.contains("s"));
            if (attributeValue2.contains("t")) {
                simpleMode.setExplicitProperty("typed", "yes", 1);
            }
            if (attributeValue2.contains("u")) {
                simpleMode.setExplicitProperty("typed", SVGParser.f16048t, 1);
            }
            if (attributeValue2.contains("F")) {
                simpleMode.setRecoveryPolicy(RecoveryPolicy.DO_NOT_RECOVER);
            }
            if (attributeValue2.contains("W")) {
                simpleMode.setRecoveryPolicy(RecoveryPolicy.RECOVER_WITH_WARNINGS);
            }
            if (attributeValue2.contains("e")) {
                simpleMode.setHasRules(false);
            }
        }
        final List<StructuredQName> listOfQNameAttribute = getListOfQNameAttribute(nodeInfo, "useAcc");
        addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.gpk
            @Override // net.p110sf.saxon.om.Action
            public final void doAction() {
                PackageLoaderHE.m64410u2(StylesheetPackage.this, listOfQNameAttribute, simpleMode);
            }
        });
        AxisIterator iterateAxis = nodeInfo.iterateAxis(4, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "templateRule", this.f102328a.getNamePool()));
        LinkedList linkedList = new LinkedList();
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                break;
            }
            linkedList.addFirst(next);
        }
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            NodeInfo nodeInfo2 = (NodeInfo) it2.next();
            int integerAttribute = getIntegerAttribute(nodeInfo2, "prec");
            int integerAttribute2 = getIntegerAttribute(nodeInfo2, "rank");
            double parseDouble = Double.parseDouble(nodeInfo2.getAttributeValue("", "prio"));
            int integerAttribute3 = getIntegerAttribute(nodeInfo2, "seq");
            int integerAttribute4 = getIntegerAttribute(nodeInfo2, "part");
            int i2 = integerAttribute4 == Integer.MIN_VALUE ? i : integerAttribute4;
            int integerAttribute5 = getIntegerAttribute(nodeInfo2, "minImp");
            int integerAttribute6 = getIntegerAttribute(nodeInfo2, "slots");
            boolean equals = "1".equals(nodeInfo2.getAttributeValue("", "streamable"));
            String attributeValue3 = nodeInfo2.getAttributeValue("", str);
            SequenceType parseAlphaCode = parseAlphaCode(nodeInfo2, "cxt");
            ItemType anyItemType = parseAlphaCode == null ? AnyItemType.getInstance() : parseAlphaCode.getPrimaryType();
            Pattern m64450e5 = m64450e5(getChildWithRole(nodeInfo2, Constants.ATTRNAME_MATCH));
            Iterator it3 = it2;
            this.localBindings = new Stack<>();
            TemplateRule makeTemplateRule = this.f102328a.makeTemplateRule();
            makeTemplateRule.setMatchPattern(m64450e5);
            String str3 = str;
            makeTemplateRule.setStackFrameMap(new SlotManager(integerAttribute6));
            makeTemplateRule.setPackageData(peek);
            makeTemplateRule.setRequiredType(parseAlphaCode(nodeInfo2, "as"));
            makeTemplateRule.setDeclaredStreamable(equals);
            makeTemplateRule.setContextItemRequirements(anyItemType, !attributeValue3.contains(str2));
            NodeInfo childWithRole = getChildWithRole(nodeInfo2, "action");
            if (childWithRole == null) {
                makeTemplateRule.setBody(Literal.makeEmptySequence());
            } else {
                Expression loadExpression = loadExpression(childWithRole);
                makeTemplateRule.setBody(loadExpression);
                loadExpression.setRetainedStaticContext(loadExpression.getRetainedStaticContext());
            }
            Rule makeRule = simpleMode.makeRule(m64450e5, makeTemplateRule, integerAttribute, integerAttribute5, parseDouble, integerAttribute3, i2);
            makeRule.setRank(integerAttribute2);
            simpleMode.addRule(m64450e5, makeRule);
            simpleMode.setHasRules(true);
            str2 = str2;
            i = 0;
            str = str3;
            it2 = it3;
        }
        addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.rpk
            @Override // net.p110sf.saxon.om.Action
            public final void doAction() {
                SimpleMode.this.prepareStreamability();
            }
        });
        return simpleMode;
    }

    /* renamed from: x5 */
    public final NamedTemplate m64469x5(NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage peek = this.packStack.peek();
        this.localBindings = new Stack<>();
        StructuredQName qNameAttribute = getQNameAttribute(nodeInfo, "name");
        String attributeValue = nodeInfo.getAttributeValue("", "flags");
        int integerAttribute = getIntegerAttribute(nodeInfo, "slots");
        SequenceType parseAlphaCode = parseAlphaCode(nodeInfo, "cxt");
        ItemType anyItemType = parseAlphaCode == null ? AnyItemType.getInstance() : parseAlphaCode.getPrimaryType();
        NamedTemplate namedTemplate = new NamedTemplate(qNameAttribute);
        namedTemplate.setStackFrameMap(new SlotManager(integerAttribute));
        namedTemplate.setPackageData(peek);
        namedTemplate.setRequiredType(parseAlphaCode(nodeInfo, "as"));
        namedTemplate.setContextItemRequirements(anyItemType, attributeValue.contains(C4921e.f26528e), !attributeValue.contains("s"));
        NodeInfo childWithRole = getChildWithRole(nodeInfo, "body");
        if (childWithRole == null) {
            namedTemplate.setBody(Literal.makeEmptySequence());
        } else {
            Expression loadExpression = loadExpression(childWithRole);
            namedTemplate.setBody(loadExpression);
            loadExpression.setRetainedStaticContext(loadExpression.getRetainedStaticContext());
        }
        return namedTemplate;
    }

    /* renamed from: y5 */
    public final void m64470y5(NodeInfo nodeInfo) {
        StylesheetPackage peek = this.packStack.peek();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, Constants.ELEMNAME_OUTPUT_STRING, this.f102328a.getNamePool()));
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return;
            }
            StructuredQName qNameAttribute = getQNameAttribute(next, "name");
            Properties properties = new Properties();
            AxisIterator iterateAxis2 = next.iterateAxis(3, new NameTest(1, NamespaceConstant.SAXON_XSLT_EXPORT, "property", this.f102328a.getNamePool()));
            while (true) {
                NodeInfo next2 = iterateAxis2.next();
                if (next2 == null) {
                    break;
                }
                String attributeValue = next2.getAttributeValue("", "name");
                if (attributeValue.startsWith("Q{")) {
                    attributeValue = attributeValue.substring(1);
                }
                String attributeValue2 = next2.getAttributeValue("", "value");
                if (attributeValue.startsWith(StandardNames.f100862g) && !attributeValue.equals(SaxonOutputKeys.STYLESHEET_VERSION)) {
                    needsPELicense("Saxon output properties");
                }
                properties.setProperty(attributeValue, attributeValue2);
            }
            if (qNameAttribute == null) {
                peek.setDefaultOutputProperties(properties);
            } else {
                peek.setNamedOutputProperties(qNameAttribute, properties);
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0023. Please report as an issue. */
    /* renamed from: z5 */
    public final void m64471z5(NodeInfo nodeInfo) throws XPathException {
        StylesheetPackage peek = this.packStack.peek();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3, NodeKindTest.ELEMENT);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return;
            }
            String localPart = next.getLocalPart();
            localPart.hashCode();
            char c = 65535;
            switch (localPart.hashCode()) {
                case -1567681458:
                    if (localPart.equals("strip.none")) {
                        c = 0;
                        break;
                    }
                    break;
                case -189130293:
                    if (localPart.equals("strip.all")) {
                        c = 1;
                        break;
                    }
                    break;
                case 109773592:
                    if (localPart.equals("strip")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    peek.setStripperRules(new NoElementsSpaceStrippingRule());
                    break;
                case 1:
                    peek.setStripperRules(new AllElementsSpaceStrippingRule());
                    peek.setStripsWhitespace(true);
                    break;
                case 2:
                    AxisIterator iterateAxis2 = next.iterateAxis(3, NodeKindTest.ELEMENT);
                    SelectedElementsSpaceStrippingRule selectedElementsSpaceStrippingRule = new SelectedElementsSpaceStrippingRule(false);
                    while (true) {
                        NodeInfo next2 = iterateAxis2.next();
                        if (next2 == null) {
                            peek.setStripperRules(selectedElementsSpaceStrippingRule);
                            peek.setStripsWhitespace(true);
                            break;
                        } else {
                            Stripper.StripRuleTarget stripRuleTarget = next2.getLocalPart().equals("s") ? Stripper.STRIP : Stripper.PRESERVE;
                            NodeTest nodeTest = next2.getAttributeValue("", Constants.ATTRNAME_TEST).equals("*") ? NodeKindTest.ELEMENT : (NodeTest) parseAlphaCodeForItemType(next2, Constants.ATTRNAME_TEST);
                            int integerAttribute = getIntegerAttribute(next2, "prec");
                            selectedElementsSpaceStrippingRule.addRule(new NodeTestPattern(nodeTest), stripRuleTarget, integerAttribute, integerAttribute);
                        }
                    }
            }
        }
    }
}
