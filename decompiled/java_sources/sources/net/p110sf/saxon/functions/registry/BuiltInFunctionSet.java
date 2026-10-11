package net.p110sf.saxon.functions.registry;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import net.p110sf.saxon.expr.CardinalityChecker;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.functions.Concat;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.functions.OptionsParameter;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class BuiltInFunctionSet implements FunctionLibrary {
    protected static final int ABS = 33554432;
    public static final int AS_ARG0 = 1;
    public static final int AS_PRIM_ARG0 = 2;
    public static final int BASE = 8;
    public static final int CARD0 = 32768;
    public static final int CDOC = 16384;
    public static final int CITEM = 4;
    public static final int CTRL = 131072;
    public static final int DCOLL = 32;
    public static final int DEPENDS_ON_STATIC_CONTEXT = 56;
    public static final int DLANG = 64;
    public static Sequence EMPTY = EmptySequence.getInstance();
    public static final int FILTER = 256;
    public static final int FOCUS = 22532;
    protected static final int INS = 16777216;
    public static final int LAST = 4096;
    public static final int LATE = 512;
    protected static final int NAV = 134217728;
    public static final int NEW = 65536;

    /* renamed from: NS */
    public static final int f100412NS = 16;
    public static final int ONE = 16384;
    public static final int OPT = 24576;
    public static final int PLUS = 49152;
    public static final int POSN = 2048;
    public static final int SEQV = 262144;
    public static final int SIDE = 8192;
    public static final int STAR = 57344;
    protected static final int TRA = 67108864;

    /* renamed from: UO */
    public static final int f100413UO = 1024;

    /* renamed from: a */
    public final HashMap<String, Entry> f100414a = new HashMap<>(200);

    /* renamed from: b */
    public final HashMap<String, Integer> f100415b = new HashMap<>(10);

    /* loaded from: classes11.dex */
    public static class Entry {
        public SequenceType[] argumentTypes;
        public int arity;
        public int cardinality;
        public BuiltInFunctionSet functionSet;
        public Class<? extends SystemFunction> implementationClass;
        public ItemType itemType;
        public StructuredQName name;
        public OptionsParameter optionDetails;
        public int properties;
        public Sequence[] resultIfEmpty;
        public OperandUsage[] usage;

        public Entry arg(int i, ItemType itemType, int i2, Sequence sequence) {
            int i3 = 57344 & i2;
            OperandUsage operandUsage = OperandUsage.NAVIGATION;
            if ((33554432 & i2) != 0) {
                operandUsage = OperandUsage.ABSORPTION;
            } else if ((67108864 & i2) != 0) {
                operandUsage = OperandUsage.TRANSMISSION;
            } else if ((i2 & 16777216) != 0) {
                operandUsage = OperandUsage.INSPECTION;
            } else if (itemType instanceof PlainType) {
                operandUsage = OperandUsage.ABSORPTION;
            }
            try {
                this.argumentTypes[i] = SequenceType.makeSequenceType(itemType, i3);
                this.resultIfEmpty[i] = sequence;
                this.usage[i] = operandUsage;
            } catch (ArrayIndexOutOfBoundsException unused) {
                System.err.println("Internal Saxon error: Can't set argument " + i + " of " + this.name);
            }
            return this;
        }

        public Entry setOptionDetails(OptionsParameter optionsParameter) {
            this.optionDetails = optionsParameter;
            return this;
        }
    }

    /* renamed from: b */
    public static String m63243b(int i) {
        if (i == 0) {
            return "zero arguments";
        }
        if (i == 1) {
            return "one argument";
        }
        return i + " arguments";
    }

    /* renamed from: a */
    public final SystemFunction m63244a(String str, Class<? extends SystemFunction> cls) {
        try {
            return cls.newInstance();
        } catch (Exception e) {
            e.printStackTrace();
            throw new AssertionError("Failed to instantiate system function " + str + " - " + e.getMessage());
        }
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        StructuredQName componentName = c18533f.getComponentName();
        int arity = c18533f.getArity();
        String localPart = componentName.getLocalPart();
        Entry functionDetails = getFunctionDetails(localPart, arity);
        if (componentName.hasURI(getNamespace()) && functionDetails != null) {
            if ((functionDetails.properties & 262144) != 0) {
                if (staticContext.getXPathVersion() < 40 && localPart.equals(Keywords.FUNC_CONCAT_STRING)) {
                    if (expressionArr.length < 2) {
                        list.add("concat() prior to XPath 4.0 requires at least two arguments");
                        return null;
                    }
                    Expression[] expressionArr2 = new Expression[expressionArr.length];
                    for (int i = 0; i < expressionArr.length; i++) {
                        Expression expression = expressionArr[i];
                        if (expression instanceof StringLiteral) {
                            expressionArr2[i] = expression;
                        } else {
                            Expression makeCardinalityChecker = CardinalityChecker.makeCardinalityChecker(expressionArr[i], 24576, new RoleDiagnostic(0, Keywords.FUNC_CONCAT_STRING, i));
                            expressionArr2[i] = makeCardinalityChecker;
                            makeCardinalityChecker.setRetainedStaticContext(staticContext.makeRetainedStaticContext());
                        }
                    }
                    expressionArr = expressionArr2;
                }
                int i2 = functionDetails.arity;
                Expression[] expressionArr3 = (Expression[]) Arrays.copyOf(expressionArr, i2);
                if (i2 > expressionArr.length) {
                    expressionArr3[i2 - 1] = Literal.makeEmptySequence();
                } else if (i2 < expressionArr.length) {
                    int i3 = i2 - 1;
                    Block block = new Block((Expression[]) Arrays.copyOfRange(expressionArr, i3, expressionArr.length));
                    ExpressionTool.copyLocationInfo(expressionArr[0], block);
                    expressionArr3[i3] = block;
                }
                expressionArr = expressionArr3;
            }
            RetainedStaticContext retainedStaticContext = new RetainedStaticContext(staticContext);
            try {
                SystemFunction makeFunction = makeFunction(localPart, expressionArr.length);
                makeFunction.setRetainedStaticContext(retainedStaticContext);
                Expression makeFunctionCall = makeFunction.makeFunctionCall(expressionArr);
                makeFunctionCall.setRetainedStaticContext(retainedStaticContext);
                return makeFunctionCall;
            } catch (XPathException e) {
                list.add(e.getMessage());
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        return this;
    }

    public String getConventionalPrefix() {
        return "fn";
    }

    public Entry getFunctionDetails(String str, int i) {
        if (i == -1) {
            for (int i2 = 0; i2 < 20; i2++) {
                Entry functionDetails = getFunctionDetails(str, i2);
                if (functionDetails != null) {
                    return functionDetails;
                }
            }
            return null;
        }
        Entry entry = this.f100414a.get(str + "#" + i);
        if (entry != null) {
            return entry;
        }
        int intValue = this.f100415b.getOrDefault(str, -1).intValue();
        if (intValue == -1 || i < intValue) {
            return null;
        }
        return this.f100414a.get(str + "#" + (intValue + 1));
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        StructuredQName componentName = c18533f.getComponentName();
        int arity = c18533f.getArity();
        if (!componentName.hasURI(getNamespace()) || getFunctionDetails(componentName.getLocalPart(), arity) == null) {
            return null;
        }
        RetainedStaticContext makeRetainedStaticContext = staticContext.makeRetainedStaticContext();
        SystemFunction makeFunction = makeFunction(componentName.getLocalPart(), arity);
        if (staticContext.getXPathVersion() < 40 && (makeFunction instanceof Concat) && arity < 2) {
            return null;
        }
        makeFunction.setRetainedStaticContext(makeRetainedStaticContext);
        return makeFunction;
    }

    public String getNamespace() {
        return "http://www.w3.org/2005/xpath-functions";
    }

    public final void importFunctionSet(BuiltInFunctionSet builtInFunctionSet) {
        if (!builtInFunctionSet.getNamespace().equals(getNamespace())) {
            throw new IllegalArgumentException(builtInFunctionSet.getNamespace());
        }
        this.f100414a.putAll(builtInFunctionSet.f100414a);
        this.f100415b.putAll(builtInFunctionSet.f100415b);
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        Entry functionDetails;
        StructuredQName componentName = c18533f.getComponentName();
        if (componentName.hasURI(getNamespace()) && (functionDetails = getFunctionDetails(componentName.getLocalPart(), c18533f.getArity())) != null) {
            return (functionDetails.properties & 262144) == 0 || i >= 40 || !c18533f.getComponentName().getLocalPart().equals(Keywords.FUNC_CONCAT_STRING) || c18533f.getArity() >= 2;
        }
        return false;
    }

    public SystemFunction makeFunction(String str, int i) throws XPathException {
        String str2;
        Entry functionDetails = getFunctionDetails(str, i);
        if (functionDetails != null) {
            SystemFunction m63244a = m63244a(str, functionDetails.implementationClass);
            m63244a.setDetails(functionDetails);
            m63244a.setArity(i);
            return m63244a;
        }
        if (getNamespace().equals("http://www.w3.org/2005/xpath-functions")) {
            str2 = "System function " + str;
        } else {
            str2 = "Function Q{" + getNamespace() + "}" + str;
        }
        if (getFunctionDetails(str, -1) == null) {
            XPathException xPathException = new XPathException(str2 + "() does not exist or is not available in this environment");
            xPathException.setErrorCode("XPST0017");
            xPathException.setIsStaticError(true);
            throw xPathException;
        }
        XPathException xPathException2 = new XPathException(str2 + "() cannot be called with " + m63243b(i));
        xPathException2.setErrorCode("XPST0017");
        xPathException2.setIsStaticError(true);
        throw xPathException2;
    }

    public Entry register(String str, int i, Class<? extends SystemFunction> cls, ItemType itemType, int i2, int i3) {
        Entry entry = new Entry();
        entry.name = new StructuredQName(getConventionalPrefix(), getNamespace(), str);
        entry.arity = i;
        entry.implementationClass = cls;
        entry.functionSet = this;
        entry.itemType = itemType;
        entry.cardinality = i2;
        entry.properties = i3;
        if (i == -1) {
            entry.argumentTypes = new SequenceType[1];
            entry.resultIfEmpty = new AtomicValue[1];
            entry.usage = new OperandUsage[1];
        } else {
            entry.argumentTypes = new SequenceType[i];
            entry.resultIfEmpty = new Sequence[i];
            entry.usage = new OperandUsage[i];
        }
        this.f100414a.put(str + "#" + i, entry);
        if ((262144 & i3) != 0) {
            this.f100415b.put(str, Integer.valueOf(i - 1));
        }
        return entry;
    }

    public void registerReducedArityVariants(String str, int i, int i2) {
        Entry entry = this.f100414a.get(str);
        while (i <= i2) {
            Entry entry2 = new Entry();
            entry2.name = entry.name;
            entry2.arity = i;
            entry2.implementationClass = entry.implementationClass;
            entry2.itemType = entry.itemType;
            entry2.cardinality = entry.cardinality;
            entry2.properties = entry.properties;
            entry2.argumentTypes = new SequenceType[i];
            entry2.resultIfEmpty = new Sequence[i];
            entry2.usage = new OperandUsage[i];
            for (int i3 = 0; i3 < i; i3++) {
                entry2.argumentTypes[i3] = entry.argumentTypes[i3];
                entry2.resultIfEmpty[i3] = entry.resultIfEmpty[i3];
                entry2.usage[i3] = entry.usage[i3];
            }
            this.f100414a.put(entry2.name.getLocalPart() + "#" + i, entry2);
            i++;
        }
    }
}
