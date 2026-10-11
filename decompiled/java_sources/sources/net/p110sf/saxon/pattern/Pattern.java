package net.p110sf.saxon.pattern;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemFilter;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.MappingIterator;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.PseudoExpression;
import net.p110sf.saxon.expr.SequenceMapper;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.functions.Current;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.style.ExpressionContext;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.ConcatenatingAxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.SingleNodeIterator;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public abstract class Pattern extends PseudoExpression {

    /* renamed from: n */
    public double f100927n = 0.5d;

    /* renamed from: o */
    public boolean f100928o = true;

    /* renamed from: p */
    public String f100929p;

    /* renamed from: m */
    public static /* synthetic */ SequenceIterator m63459m(Item item) throws XPathException {
        return ((NodeInfo) item).iterateAxis(2);
    }

    public static Pattern make(String str, StaticContext staticContext, PackageData packageData) throws XPathException {
        int xPathVersion = staticContext.getXPathVersion();
        if (xPathVersion == 30) {
            xPathVersion = 305;
        }
        if (staticContext instanceof ExpressionContext) {
            ((ExpressionContext) staticContext).getStyleElement().getLineNumber();
        }
        PatternParser patternParser = (PatternParser) staticContext.getConfiguration().newExpressionParser("PATTERN", false, xPathVersion);
        patternParser.setLanguage(XPathParser.ParsedLanguage.XSLT_PATTERN, xPathVersion);
        Pattern parsePattern = patternParser.parsePattern(str, staticContext);
        parsePattern.setRetainedStaticContext(staticContext.makeRetainedStaticContext());
        return parsePattern.simplify();
    }

    /* renamed from: o */
    public static /* synthetic */ SequenceIterator m63461o(Item item) throws XPathException {
        return ((NodeInfo) item).iterateAxis(8);
    }

    public static boolean patternContainsVariable(Pattern pattern) {
        return (pattern == null || (pattern.getDependencies() & 128) == 0) ? false : true;
    }

    /* renamed from: r */
    public static /* synthetic */ SequenceIterator m63464r(UType uType, Item item) throws XPathException {
        NodeInfo nodeInfo = (NodeInfo) item;
        AxisIterator makeIterator = SingleNodeIterator.makeIterator(nodeInfo);
        if (uType.subsumes(UType.NAMESPACE)) {
            makeIterator = new ConcatenatingAxisIterator(makeIterator, nodeInfo.iterateAxis(8));
        }
        return uType.subsumes(UType.ATTRIBUTE) ? new ConcatenatingAxisIterator(makeIterator, nodeInfo.iterateAxis(2)) : makeIterator;
    }

    public static void replaceCurrent(Expression expression, LocalBinding localBinding) {
        for (Operand operand : expression.operands()) {
            Expression childExpression = operand.getChildExpression();
            if (childExpression.isCallOn(Current.class)) {
                operand.setChildExpression(new LocalVariableReference(localBinding));
            } else {
                replaceCurrent(childExpression, localBinding);
            }
        }
    }

    public int allocateSlots(SlotManager slotManager, int i) {
        return i;
    }

    public void bindCurrent(LocalBinding localBinding) {
    }

    public Pattern convertToTypedPattern(String str) throws XPathException {
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public abstract Pattern copy(RebindingMap rebindingMap);

    @Override // net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public final boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        return m63465s(xPathContext.getContextItem(), xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public abstract void export(ExpressionPresenter expressionPresenter) throws XPathException;

    public double getDefaultPriority() {
        return this.f100927n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getDependencies() {
        return 0;
    }

    public int getFingerprint() {
        return -1;
    }

    public HostLanguage getHostLanguage() {
        return HostLanguage.XSLT;
    }

    @Override // net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public abstract ItemType getItemType();

    public String getOriginalText() {
        return this.f100929p;
    }

    public abstract UType getUType();

    public void handleDynamicError(XPathException xPathException, XPathContext xPathContext) throws XPathException {
        if ("XTDE0640".equals(xPathException.getErrorCodeLocalPart())) {
            throw xPathException;
        }
        if (!isRecoverable()) {
            throw xPathException;
        }
        xPathContext.getController().warning("An error occurred matching pattern {" + this + "}: " + xPathException.getMessage(), xPathException.getErrorCodeQName().getEQName(), getLocation());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isLiftable(boolean z) {
        return false;
    }

    public boolean isMotionless() {
        return true;
    }

    public boolean isRecoverable() {
        return this.f100928o;
    }

    /* renamed from: matches, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public abstract boolean m63465s(Item item, XPathContext xPathContext) throws XPathException;

    public boolean matchesBeneathAnchor(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        return m63465s(nodeInfo, xPathContext);
    }

    public boolean matchesCurrentGroup() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }

    public String reconstruct() {
        return "pattern matching " + getItemType();
    }

    public SequenceIterator selectNodes(TreeInfo treeInfo, final XPathContext xPathContext) throws XPathException {
        NodeInfo rootNode = treeInfo.getRootNode();
        final UType uType = getUType();
        UType uType2 = UType.DOCUMENT;
        if (uType2.subsumes(uType)) {
            return m63465s(rootNode, xPathContext) ? SingletonIterator.makeIterator(rootNode) : EmptyIterator.ofNodes();
        }
        if (UType.ATTRIBUTE.subsumes(uType)) {
            return ItemMappingIterator.filter(MappingIterator.map(rootNode.iterateAxis(4, NodeKindTest.ELEMENT), new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.uzk
                @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                public final SequenceIterator map(Item item) {
                    SequenceIterator m63459m;
                    m63459m = Pattern.m63459m(item);
                    return m63459m;
                }
            }), new ItemFilter.Lambda() { // from class: com.sunia.HTREnginev2.vzk
                @Override // net.sf.saxon.expr.ItemFilter.Lambda
                public final boolean test(Item item) {
                    boolean m63460n;
                    m63460n = Pattern.this.m63460n(xPathContext, item);
                    return m63460n;
                }
            });
        }
        if (UType.NAMESPACE.subsumes(uType)) {
            return ItemMappingIterator.filter(MappingIterator.map(rootNode.iterateAxis(4, NodeKindTest.ELEMENT), new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.wzk
                @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                public final SequenceIterator map(Item item) {
                    SequenceIterator m63461o;
                    m63461o = Pattern.m63461o(item);
                    return m63461o;
                }
            }), new ItemFilter.Lambda() { // from class: com.sunia.HTREnginev2.xzk
                @Override // net.sf.saxon.expr.ItemFilter.Lambda
                public final boolean test(Item item) {
                    boolean m63462p;
                    m63462p = Pattern.this.m63462p(xPathContext, item);
                    return m63462p;
                }
            });
        }
        if (UType.CHILD_NODE_KINDS.subsumes(uType)) {
            return ItemMappingIterator.filter(rootNode.iterateAxis(4, uType.equals(UType.ELEMENT) ? NodeKindTest.ELEMENT : new MultipleNodeKindTest(uType)), new ItemFilter.Lambda() { // from class: com.sunia.HTREnginev2.yzk
                @Override // net.sf.saxon.expr.ItemFilter.Lambda
                public final boolean test(Item item) {
                    boolean m63463q;
                    m63463q = Pattern.this.m63463q(xPathContext, item);
                    return m63463q;
                }
            });
        }
        return ItemMappingIterator.filter(MappingIterator.map(rootNode.iterateAxis(uType.subsumes(uType2) ? 5 : 4), new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.zzk
            @Override // net.sf.saxon.expr.SequenceMapper.Lambda
            public final SequenceIterator map(Item item) {
                SequenceIterator m63464r;
                m63464r = Pattern.m63464r(UType.this, item);
                return m63464r;
            }
        }), new ItemFilter.Lambda() { // from class: com.sunia.HTREnginev2.a0l
            @Override // net.sf.saxon.expr.ItemFilter.Lambda
            public final boolean test(Item item) {
                boolean m63465s;
                m63465s = Pattern.this.m63465s(xPathContext, item);
                return m63465s;
            }
        });
    }

    public void setOriginalText(String str) {
        this.f100929p = str;
    }

    public void setPriority(double d) {
        this.f100927n = d;
    }

    public void setRecoverable(boolean z) {
        this.f100928o = z;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern simplify() throws XPathException {
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) {
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        String str = this.f100929p;
        return str != null ? str : reconstruct();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        return this;
    }
}
