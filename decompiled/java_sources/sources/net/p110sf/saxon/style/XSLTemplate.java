package net.p110sf.saxon.style;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.w2n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.trans.rules.RuleManager;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public final class XSLTemplate extends StyleElement implements StylesheetComponent {

    /* renamed from: E0 */
    public boolean f102107E0;

    /* renamed from: J */
    public StructuredQName[] f102108J;

    /* renamed from: O */
    public String f102109O;

    /* renamed from: Q */
    public Pattern f102110Q;

    /* renamed from: Z */
    public boolean f102111Z;

    /* renamed from: k0 */
    public double f102112k0;

    /* renamed from: q0 */
    public SlotManager f102113q0;

    /* renamed from: t0 */
    public NamedTemplate f102114t0;

    /* renamed from: u */
    public String f102115u = null;

    /* renamed from: v */
    public String f102117v = null;

    /* renamed from: w */
    public String f102119w = null;

    /* renamed from: x */
    public String f102121x = null;

    /* renamed from: y */
    public String f102123y = null;

    /* renamed from: z */
    public String f102125z = null;

    /* renamed from: u0 */
    public final Map<StructuredQName, TemplateRule> f102116u0 = new HashMap();

    /* renamed from: v0 */
    public SequenceType f102118v0 = SequenceType.ANY_SEQUENCE;

    /* renamed from: w0 */
    public boolean f102120w0 = false;

    /* renamed from: x0 */
    public boolean f102122x0 = false;

    /* renamed from: y0 */
    public boolean f102124y0 = false;

    /* renamed from: z0 */
    public Visibility f102126z0 = Visibility.PRIVATE;

    /* renamed from: A0 */
    public ItemType f102103A0 = AnyItemType.getInstance();

    /* renamed from: B0 */
    public boolean f102104B0 = true;

    /* renamed from: C0 */
    public boolean f102105C0 = false;

    /* renamed from: D0 */
    public boolean f102106D0 = false;

    /* renamed from: net.sf.saxon.style.XSLTemplate$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18525a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102127a;

        static {
            int[] iArr = new int[Affinity.values().length];
            f102127a = iArr;
            try {
                iArr[Affinity.DISJOINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102127a[Affinity.SUBSUMED_BY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102127a[Affinity.OVERLAPS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f102127a[Affinity.SAME_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f102127a[Affinity.SUBSUMES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: Z */
    public final void m64055Z(Compilation compilation) throws XPathException {
        if (compilation.getErrorCount() <= 0) {
            return;
        }
        XPathException xPathException = new XPathException("Errors were reported during JIT compilation of template rule with match=\"" + this.f102115u + "\"", SaxonErrorCode.SXST0001, this);
        xPathException.setHasBeenReported(true);
        throw xPathException;
    }

    /* renamed from: a0 */
    public final void m64056a0(Expression expression) throws XPathException {
        getConfiguration().checkStrictStreamability(this, expression);
    }

    public void allocatePatternSlotNumbers() {
        if (this.f102110Q != null) {
            Iterator<TemplateRule> it2 = this.f102116u0.values().iterator();
            while (it2.hasNext()) {
                Iterator<Rule> it3 = it2.next().getRules().iterator();
                while (it3.hasNext()) {
                    Pattern pattern = it3.next().getPattern();
                    boolean z = true;
                    int allocateSlots = pattern.allocateSlots(getSlotManager(), (pattern.getDependencies() & 1) != 0 ? 1 : 0);
                    if (allocateSlots == 0 && (pattern.getDependencies() & 256) != 0) {
                        allocateSlots = 1;
                    }
                    if (allocateSlots > 0) {
                        RuleManager ruleManager = getCompilation().getPrincipalStylesheetModule().getRuleManager();
                        StructuredQName[] structuredQNameArr = this.f102108J;
                        int length = structuredQNameArr.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                z = false;
                                break;
                            }
                            StructuredQName structuredQName = structuredQNameArr[i];
                            if (structuredQName.equals(Mode.OMNI_MODE)) {
                                break;
                            }
                            ruleManager.obtainMode(structuredQName, true).getActivePart().allocatePatternSlots(allocateSlots);
                            i++;
                        }
                        if (z) {
                            Iterator<Mode> it4 = ruleManager.getAllNamedModes().iterator();
                            while (it4.hasNext()) {
                                it4.next().getActivePart().allocatePatternSlots(allocateSlots);
                            }
                            ruleManager.getUnnamedMode().getActivePart().allocatePatternSlots(allocateSlots);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b0 */
    public final void m64057b0(Compilation compilation, Expression expression, ComponentDeclaration componentDeclaration) throws XPathException {
        RetainedStaticContext retainedStaticContext = expression.getRetainedStaticContext();
        this.f102114t0.setPackageData(retainedStaticContext.getPackageData());
        this.f102114t0.setBody(expression);
        this.f102114t0.setStackFrameMap(this.f102113q0);
        this.f102114t0.setSystemId(getSystemId());
        this.f102114t0.setLineNumber(getLineNumber());
        this.f102114t0.setColumnNumber(getColumnNumber());
        this.f102114t0.setHasRequiredParams(this.f102122x0);
        this.f102114t0.setRequiredType(this.f102118v0);
        this.f102114t0.setContextItemRequirements(this.f102103A0, this.f102104B0, this.f102105C0);
        this.f102114t0.setRetainedStaticContext(retainedStaticContext);
        this.f102114t0.setDeclaredVisibility(getDeclaredVisibility());
        Component m63952C = m63952C();
        if (m63952C != null) {
            checkCompatibility(m63952C);
        }
        this.f102114t0.setBody(m64059d0(expression, getConfiguration().makeContextItemStaticInfo(this.f102103A0, this.f102104B0)));
        if (getCompilation().getCompilerInfo().getCodeInjector() != null) {
            getCompilation().getCompilerInfo().getCodeInjector().process(this.f102114t0);
        }
    }

    /* renamed from: c0 */
    public final void m64058c0(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        StructuredQName[] structuredQNameArr = this.f102108J;
        if (isOmniMode()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Mode.UNNAMED_MODE_NAME);
            Iterator<Mode> it2 = getCompilation().getPrincipalStylesheetModule().getRuleManager().getAllNamedModes().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getModeName());
            }
            structuredQNameArr = (StructuredQName[]) arrayList.toArray(new StructuredQName[0]);
        }
        for (StructuredQName structuredQName : structuredQNameArr) {
            TemplateRule templateRule = this.f102116u0.get(structuredQName);
            if (templateRule == null) {
                templateRule = getConfiguration().makeTemplateRule();
            }
            templateRule.prepareInitializer(compilation, componentDeclaration, structuredQName);
            this.f102116u0.put(structuredQName, templateRule);
            templateRule.setPackageData(makeRetainedStaticContext().getPackageData());
            m64060e0(templateRule, null);
        }
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void checkCompatibility(Component component) {
        NamedTemplate namedTemplate = (NamedTemplate) component.getActor();
        if (!getSymbolicName().equals(namedTemplate.getSymbolicName())) {
            throw new IllegalArgumentException();
        }
        SequenceType sequenceType = this.f102118v0;
        if (sequenceType == null) {
            sequenceType = SequenceType.ANY_SEQUENCE;
        }
        if (!sequenceType.equals(namedTemplate.getRequiredType())) {
            compileError("The overriding template has a different required type from the overridden template", "XTSE3070");
            return;
        }
        if (!this.f102103A0.equals(namedTemplate.getRequiredContextItemType()) || this.f102104B0 != namedTemplate.isMayOmitContextItem() || this.f102105C0 != namedTemplate.isAbsentFocus()) {
            compileError("The required context item for the overriding template differs from that of the overridden template", "XTSE3070");
            return;
        }
        List<NamedTemplate.LocalParamInfo> localParamDetails = namedTemplate.getLocalParamDetails();
        HashSet hashSet = new HashSet();
        for (NamedTemplate.LocalParamInfo localParamInfo : localParamDetails) {
            XSLLocalParam param = getParam(localParamInfo.name);
            if (param == null) {
                if (localParamInfo.isTunnel) {
                    return;
                }
                compileError("The overridden template declares a parameter " + localParamInfo.name.getDisplayName() + " which is not declared in the overriding template", "XTSE3070");
                return;
            }
            if (!param.getRequiredType().equals(localParamInfo.requiredType)) {
                param.compileError("The parameter " + localParamInfo.name.getDisplayName() + " has a different required type in the overridden template", "XTSE3070");
                return;
            }
            if (param.isRequiredParam() != localParamInfo.isRequired && !localParamInfo.isTunnel) {
                StringBuilder sb = new StringBuilder();
                sb.append("The parameter ");
                sb.append(localParamInfo.name.getDisplayName());
                sb.append(" is ");
                sb.append(param.isRequiredParam() ? "required" : "optional");
                sb.append(" in the overriding template, but ");
                sb.append(localParamInfo.isRequired ? "required" : "optional");
                sb.append(" in the overridden template");
                param.compileError(sb.toString(), "XTSE3070");
                return;
            }
            if (param.isTunnelParam() != localParamInfo.isTunnel) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("The parameter ");
                sb2.append(localParamInfo.name.getDisplayName());
                sb2.append(" is a ");
                sb2.append(param.isTunnelParam() ? "tunnel" : "non-tunnel");
                sb2.append(" parameter in the overriding template, but ");
                sb2.append(localParamInfo.isTunnel ? "tunnel" : "non-tunnel");
                sb2.append(" parameter in the overridden template");
                param.compileError(sb2.toString(), "XTSE3070");
                return;
            }
            hashSet.add(localParamInfo.name);
        }
        Iterator<? extends NodeInfo> it2 = children(new w2n(XSLLocalParam.class)).iterator();
        while (it2.hasNext()) {
            XSLLocalParam xSLLocalParam = (XSLLocalParam) it2.next();
            if (!hashSet.contains(xSLLocalParam.getObjectName()) && xSLLocalParam.isRequiredParam()) {
                xSLLocalParam.compileError("An overriding template cannot introduce a required parameter that is not declared in the overridden template", "XTSE3070");
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (isDeferredCompilation(compilation)) {
            m64058c0(compilation, componentDeclaration);
            return;
        }
        if (compilation.getCompilerInfo().getOptimizerOptions().isSet(16384)) {
            this.f102124y0 = markTailCalls();
        }
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        compileSequenceConstructor.restoreParentPointers();
        RetainedStaticContext makeRetainedStaticContext = makeRetainedStaticContext();
        if (compileSequenceConstructor.getRetainedStaticContext() == null) {
            compileSequenceConstructor.setRetainedStaticContext(makeRetainedStaticContext);
        }
        if (this.f102110Q != null && compilation.getConfiguration().getBooleanProperty(Feature.STRICT_STREAMABILITY) && isWithinDeclaredStreamableConstruct()) {
            m64056a0(compileSequenceConstructor);
        }
        if (getTemplateName() != null) {
            m64057b0(compilation, compileSequenceConstructor, componentDeclaration);
        }
        if (this.f102110Q != null) {
            compileTemplateRule(compilation, compileSequenceConstructor, componentDeclaration);
        }
    }

    public void compileTemplateRule(Compilation compilation, Expression expression, ComponentDeclaration componentDeclaration) {
        Configuration configuration = getConfiguration();
        if (getTemplateName() != null) {
            expression = expression.copy(new RebindingMap());
        }
        ItemType itemType = this.f102110Q.getItemType();
        if (itemType.equals(ErrorType.getInstance())) {
            itemType = AnyItemType.getInstance();
        }
        Expression m64059d0 = m64059d0(expression, configuration.makeContextItemStaticInfo(itemType, this.f102104B0));
        boolean z = true;
        for (Map.Entry<StructuredQName, TemplateRule> entry : this.f102116u0.entrySet()) {
            if (!entry.getKey().equals(Mode.OMNI_MODE)) {
                TemplateRule value = entry.getValue();
                if (z) {
                    value.setMatchPattern(this.f102110Q);
                    value.setBody(m64059d0);
                    if (compilation.getCompilerInfo().getCodeInjector() != null) {
                        compilation.getCompilerInfo().getCodeInjector().process(value);
                        m64059d0 = value.getBody();
                    }
                    z = false;
                } else {
                    m64059d0 = value.getBody() == null ? m64059d0.copy(new RebindingMap()) : value.getBody();
                }
                m64060e0(value, m64059d0);
                value.updateSlaveCopies();
            }
        }
    }

    /* renamed from: d0 */
    public final Expression m64059d0(Expression expression, ContextItemStaticInfo contextItemStaticInfo) {
        Expression expression2;
        try {
            expression2 = expression.simplify();
        } catch (XPathException e) {
            if (e.isReportableStatically()) {
                compileError(e);
                expression2 = expression;
            } else {
                ErrorExpression errorExpression = new ErrorExpression(new XmlProcessingException(e));
                ExpressionTool.copyLocationInfo(expression, errorExpression);
                expression2 = errorExpression;
            }
        }
        Configuration configuration = getConfiguration();
        if (this.f102126z0 != Visibility.ABSTRACT) {
            try {
                SequenceType sequenceType = this.f102118v0;
                if (sequenceType != null && sequenceType != SequenceType.ANY_SEQUENCE) {
                    RoleDiagnostic roleDiagnostic = new RoleDiagnostic(7, this.f102109O, 0);
                    roleDiagnostic.setErrorCode("XTTE0505");
                    expression2 = configuration.getTypeChecker(false).staticTypeCheck(expression2, this.f102118v0, roleDiagnostic, makeExpressionVisitor());
                }
            } catch (XPathException e2) {
                if (e2.isReportableStatically()) {
                    compileError(e2);
                }
                ErrorExpression errorExpression2 = new ErrorExpression(new XmlProcessingException(e2));
                ExpressionTool.copyLocationInfo(expression, errorExpression2);
                expression2 = errorExpression2;
            }
        }
        try {
            return expression2.typeCheck(makeExpressionVisitor(), contextItemStaticInfo);
        } catch (XPathException e3) {
            compileError(e3);
            return expression2;
        }
    }

    /* renamed from: e0 */
    public final void m64060e0(TemplateRule templateRule, Expression expression) {
        templateRule.setMatchPattern(this.f102110Q);
        templateRule.setBody(expression);
        templateRule.setStackFrameMap(this.f102113q0);
        templateRule.setSystemId(getSystemId());
        templateRule.setLineNumber(getLineNumber());
        templateRule.setColumnNumber(getColumnNumber());
        templateRule.setHasRequiredParams(this.f102122x0);
        templateRule.setRequiredType(this.f102118v0);
        templateRule.setContextItemRequirements(this.f102103A0, this.f102105C0);
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void generateByteCode(Optimizer optimizer) throws XPathException {
    }

    public Set<Mode> getApplicableModes() throws XPathException {
        StructuredQName[] modeNames = getModeNames();
        HashSet hashSet = new HashSet(modeNames.length);
        RuleManager ruleManager = getPrincipalStylesheetModule().getRuleManager();
        for (StructuredQName structuredQName : modeNames) {
            if (structuredQName.equals(Mode.OMNI_MODE)) {
                hashSet.add(ruleManager.getUnnamedMode());
                hashSet.addAll(ruleManager.getAllNamedModes());
            } else {
                Mode obtainMode = ruleManager.obtainMode(structuredQName, false);
                if (obtainMode != null) {
                    hashSet.add(obtainMode);
                }
            }
        }
        return hashSet;
    }

    public NamedTemplate getCompiledNamedTemplate() {
        return this.f102114t0;
    }

    public ItemType getContextItemTypeForTemplateRule() throws XPathException {
        Configuration configuration = getConfiguration();
        ItemType itemType = this.f102110Q.getItemType();
        if (itemType.equals(ErrorType.getInstance())) {
            itemType = AnyItemType.getInstance();
        }
        if (this.f102103A0 == AnyItemType.getInstance()) {
            return itemType;
        }
        int i = C18525a.f102127a[configuration.getTypeHierarchy().relationship(itemType, this.f102103A0).ordinal()];
        if (i != 1) {
            return i != 5 ? itemType : this.f102103A0;
        }
        XPathException xPathException = new XPathException("The declared context item type is inconsistent with the match pattern", "XPTY0004", this);
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    public Pattern getMatch() {
        return this.f102110Q;
    }

    public StructuredQName[] getModeNames() throws XPathException {
        StructuredQName makeQName;
        if (this.f102108J == null) {
            if (this.f102117v == null) {
                String attributeValue = getAttributeValue(Constants.ATTRNAME_MODE);
                this.f102117v = attributeValue;
                if (attributeValue == null) {
                    this.f102117v = "#default";
                }
            }
            String[] split = Whitespace.trim(this.f102117v).split("[ \t\n\r]+");
            this.f102108J = new StructuredQName[split.length];
            int length = split.length;
            int i = 0;
            boolean z = false;
            int i2 = 0;
            while (i < length) {
                String str = split[i];
                if ("#default".equals(str)) {
                    makeQName = m63986y();
                    if (makeQName == null) {
                        makeQName = Mode.UNNAMED_MODE_NAME;
                    }
                } else if ("#unnamed".equals(str)) {
                    makeQName = Mode.UNNAMED_MODE_NAME;
                } else if ("#all".equals(str)) {
                    makeQName = Mode.OMNI_MODE;
                    z = true;
                } else {
                    makeQName = makeQName(str, "XTSE0550", Constants.ATTRNAME_MODE);
                }
                for (int i3 = 0; i3 < i2; i3++) {
                    if (this.f102108J[i3].equals(makeQName)) {
                        compileError("In the list of modes, the value " + str + " is duplicated", "XTSE0550");
                    }
                }
                this.f102108J[i2] = makeQName;
                i++;
                i2++;
            }
            if (z && i2 > 1) {
                compileError("mode='#all' cannot be combined with other modes", "XTSE0550");
            }
        }
        return this.f102108J;
    }

    public XSLLocalParam getParam(StructuredQName structuredQName) {
        Iterator<? extends NodeInfo> it2 = children(new w2n(XSLLocalParam.class)).iterator();
        while (it2.hasNext()) {
            XSLLocalParam xSLLocalParam = (XSLLocalParam) it2.next();
            if (structuredQName.equals(xSLLocalParam.getObjectName())) {
                return xSLLocalParam;
            }
        }
        return null;
    }

    public ItemType getRequiredContextItemType() {
        return this.f102103A0;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SlotManager getSlotManager() {
        return this.f102113q0;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SymbolicName getSymbolicName() {
        if (getTemplateName() == null) {
            return null;
        }
        return new SymbolicName(210, getTemplateName());
    }

    public StructuredQName getTemplateName() {
        String attributeValue;
        if (getObjectName() == null && (attributeValue = getAttributeValue("", "name")) != null) {
            setObjectName(makeQName(attributeValue, null, "name"));
        }
        return getObjectName();
    }

    public Map<StructuredQName, TemplateRule> getTemplateRulesByMode() {
        return this.f102116u0;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) throws XPathException {
        if (getTemplateName() != null) {
            if (this.f102114t0 == null) {
                this.f102114t0 = new NamedTemplate(getTemplateName());
            }
            principalStylesheetModule.indexNamedTemplate(componentDeclaration);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    public boolean isDeferredCompilation(Compilation compilation) {
        return compilation.isPreScan() && getTemplateName() == null && !compilation.isLibraryPackage();
    }

    public boolean isMayOmitContextItem() {
        return this.f102104B0;
    }

    public boolean isOmniMode() throws XPathException {
        for (StructuredQName structuredQName : getModeNames()) {
            if (structuredQName.equals(Mode.OMNI_MODE)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isPermittedChild(StyleElement styleElement) {
        return (styleElement instanceof XSLLocalParam) || styleElement.getFingerprint() == 145;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isWithinDeclaredStreamableConstruct() {
        try {
            Iterator<Mode> it2 = getApplicableModes().iterator();
            while (it2.hasNext()) {
                if (it2.next().isDeclaredStreamable()) {
                    return true;
                }
            }
        } catch (XPathException unused) {
        }
        return false;
    }

    public synchronized void jitCompile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (!this.f102106D0) {
            this.f102106D0 = true;
            compilation.setPreScan(false);
            processAllAttributes();
            m64055Z(compilation);
            validateSubtree(componentDeclaration, false);
            m64055Z(compilation);
            compileDeclaration(compilation, componentDeclaration);
            m64055Z(compilation);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean markTailCalls() {
        StyleElement m63951B = m63951B();
        return m63951B != null && m63951B.markTailCalls();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainParam() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void optimize(ComponentDeclaration componentDeclaration) throws XPathException {
        char c;
        Configuration configuration = getConfiguration();
        NamedTemplate namedTemplate = this.f102114t0;
        char c2 = ':';
        if (namedTemplate != null) {
            Expression body = namedTemplate.getBody();
            ContextItemStaticInfo makeContextItemStaticInfo = getConfiguration().makeContextItemStaticInfo(this.f102103A0, this.f102104B0);
            ExpressionVisitor makeExpressionVisitor = makeExpressionVisitor();
            Expression optimizeComponentBody = ExpressionTool.optimizeComponentBody(body.typeCheck(makeExpressionVisitor, makeContextItemStaticInfo), getCompilation(), makeExpressionVisitor, makeContextItemStaticInfo, true);
            this.f102114t0.setBody(optimizeComponentBody);
            m63974m(optimizeComponentBody);
            if (this.f102107E0) {
                Logger logger = getConfiguration().getLogger();
                logger.info("Optimized expression tree for named template at line " + getLineNumber() + CloudStorageConstants.OPERATION_IN + getSystemId() + ':');
                optimizeComponentBody.explain(logger);
            }
            optimizeComponentBody.restoreParentPointers();
            if (configuration.isDeferredByteCode(HostLanguage.XSLT) && !this.f102124y0) {
                Optimizer obtainOptimizer = configuration.obtainOptimizer();
                NamedTemplate namedTemplate2 = this.f102114t0;
                namedTemplate2.setBody(obtainOptimizer.makeByteCodeCandidate(namedTemplate2, optimizeComponentBody, this.f102109O, 6));
            }
        }
        if (this.f102110Q != null) {
            ContextItemStaticInfo makeContextItemStaticInfo2 = configuration.makeContextItemStaticInfo(getContextItemTypeForTemplateRule(), this.f102104B0);
            makeContextItemStaticInfo2.setContextPostureStriding();
            ExpressionVisitor makeExpressionVisitor2 = makeExpressionVisitor();
            this.f102110Q.resetLocalStaticProperties();
            this.f102110Q = this.f102110Q.optimize(makeExpressionVisitor2, makeContextItemStaticInfo2);
            if (isDeferredCompilation(getCompilation())) {
                return;
            }
            Optimizer obtainOptimizer2 = getConfiguration().obtainOptimizer();
            try {
                for (Map.Entry<StructuredQName, TemplateRule> entry : this.f102116u0.entrySet()) {
                    if (entry.getKey().equals(Mode.OMNI_MODE)) {
                        c = c2;
                    } else {
                        TemplateRule value = entry.getValue();
                        Expression body2 = value.getBody();
                        makeExpressionVisitor2.setOptimizeForStreaming(value.isDeclaredStreamable());
                        Expression optimizeComponentBody2 = ExpressionTool.optimizeComponentBody(body2.typeCheck(makeExpressionVisitor2, makeContextItemStaticInfo2), getCompilation(), makeExpressionVisitor2, makeContextItemStaticInfo2, true);
                        value.setBody(optimizeComponentBody2);
                        obtainOptimizer2.checkStreamability(this, value);
                        m63974m(optimizeComponentBody2);
                        for (Rule rule : value.getRules()) {
                            Pattern pattern = rule.getPattern();
                            ContextItemStaticInfo makeContextItemStaticInfo3 = getConfiguration().makeContextItemStaticInfo(pattern.getItemType(), this.f102104B0);
                            makeContextItemStaticInfo3.setContextPostureStriding();
                            Pattern optimize = pattern.optimize(makeExpressionVisitor2, makeContextItemStaticInfo3);
                            if (this.f102116u0.size() > 1) {
                                optimize = optimize.copy(new RebindingMap());
                            }
                            if (optimize != pattern) {
                                rule.setPattern(optimize);
                            }
                        }
                        if (makeExpressionVisitor2.getConfiguration().isDeferredByteCode(HostLanguage.XSLT) && !this.f102124y0) {
                            value.setBody(obtainOptimizer2.makeByteCodeCandidate(value, optimizeComponentBody2, this.f102109O, 6));
                        }
                        if (this.f102107E0) {
                            Logger logger2 = getConfiguration().getLogger();
                            StringBuilder sb = new StringBuilder();
                            sb.append("Optimized expression tree for template rule at line ");
                            sb.append(getLineNumber());
                            sb.append(CloudStorageConstants.OPERATION_IN);
                            sb.append(getSystemId());
                            c = ':';
                            sb.append(':');
                            logger2.info(sb.toString());
                            optimizeComponentBody2.explain(logger2);
                        } else {
                            c = ':';
                        }
                    }
                    c2 = c;
                }
            } catch (XPathException e) {
                e.maybeSetLocation(this);
                compileError(e);
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        SequenceType sequenceType;
        String str = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            if (displayName.equals(Constants.ATTRNAME_MODE)) {
                this.f102117v = Whitespace.trim(attributeInfo.getValue());
            } else if (displayName.equals("name")) {
                this.f102119w = Whitespace.trim(attributeInfo.getValue());
            } else if (displayName.equals(Constants.ATTRNAME_MATCH)) {
                this.f102115u = attributeInfo.getValue();
            } else if (displayName.equals("priority")) {
                this.f102121x = Whitespace.trim(attributeInfo.getValue());
            } else if (displayName.equals("as")) {
                this.f102123y = attributeInfo.getValue();
            } else if (displayName.equals("visibility")) {
                this.f102125z = Whitespace.trim(attributeInfo.getValue());
            } else if (nodeName.hasURI(NamespaceConstant.SAXON)) {
                isExtensionAttributeAllowed(nodeName.getDisplayName());
                if (nodeName.getLocalPart().equals("as")) {
                    str = attributeInfo.getValue();
                } else if (nodeName.getLocalPart().equals("explain")) {
                    this.f102107E0 = StyleElement.isYes(Whitespace.trim(attributeInfo.getValue()));
                }
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        try {
            if (this.f102117v != null) {
                if (this.f102115u == null) {
                    compileError("The mode attribute must be absent if the match attribute is absent", "XTSE0500");
                }
                getModeNames();
            } else if (this.f102115u != null) {
                StructuredQName m63986y = m63986y();
                if (m63986y == null) {
                    m63986y = Mode.UNNAMED_MODE_NAME;
                }
                this.f102108J = r13;
                StructuredQName[] structuredQNameArr = {m63986y};
            }
        } catch (XPathException e) {
            e.maybeSetErrorCode("XTSE0280");
            if (e.getErrorCodeLocalPart().equals("XTSE0020")) {
                e.setErrorCode("XTSE0550");
            }
            e.setIsStaticError(true);
            compileError(e);
        }
        if (this.f102119w != null) {
            if (getObjectName() == null) {
                setObjectName(makeQName(this.f102119w, "XTSE0280", "name"));
            }
            NamedTemplate namedTemplate = this.f102114t0;
            if (namedTemplate != null) {
                namedTemplate.setTemplateName(getObjectName());
            }
            this.f102109O = this.f102119w;
        }
        boolean z = this.f102121x != null;
        this.f102111Z = z;
        if (z) {
            if (this.f102115u == null) {
                compileError("The priority attribute must be absent if the match attribute is absent", "XTSE0500");
            }
            try {
                if (!BigDecimalValue.castableAsDecimal(this.f102121x)) {
                    compileError("Invalid numeric value for priority (" + this.f102112k0 + ')', "XTSE0530");
                }
                this.f102112k0 = Double.parseDouble(this.f102121x);
            } catch (NumberFormatException unused) {
                compileError("Invalid numeric value for priority (" + this.f102112k0 + ')', "XTSE0530");
            }
        }
        String str2 = this.f102115u;
        if (str2 != null) {
            this.f102110Q = m63960L(str2, Constants.ATTRNAME_MATCH);
            if (this.f102109O == null) {
                this.f102109O = "match=\"" + this.f102115u + '\"';
                if (this.f102117v != null) {
                    this.f102109O += " mode=\"" + this.f102117v + '\"';
                }
            }
        }
        if (this.f102110Q == null && this.f102119w == null) {
            compileError("xsl:template must have a name or match attribute (or both)", "XTSE0500");
        }
        String str3 = this.f102123y;
        if (str3 != null) {
            try {
                this.f102118v0 = makeSequenceType(str3);
                this.f102120w0 = true;
            } catch (XPathException e2) {
                compileErrorInAttribute(e2.getMessage(), e2.getErrorCodeLocalPart(), "as");
            }
        }
        if (str != null) {
            this.f102120w0 = true;
            try {
                sequenceType = m63959K(str);
            } catch (XPathException e3) {
                compileErrorInAttribute(e3.getMessage(), e3.getErrorCodeLocalPart(), "saxon:as");
                sequenceType = this.f102118v0;
            }
            if (this.f102123y != null) {
                Affinity sequenceTypeRelationship = getConfiguration().getTypeHierarchy().sequenceTypeRelationship(sequenceType, this.f102118v0);
                if (sequenceTypeRelationship == Affinity.SAME_TYPE || sequenceTypeRelationship == Affinity.SUBSUMED_BY) {
                    this.f102118v0 = sequenceType;
                } else {
                    compileErrorInAttribute("When both are present, @saxon:as must be a subtype of @as", "SXER7TBA", "saxon:as");
                }
            } else {
                this.f102118v0 = sequenceType;
            }
        }
        String str4 = this.f102125z;
        if (str4 != null) {
            this.f102126z0 = m63954E(str4, "");
            if (this.f102119w == null) {
                compileError("xsl:template/@visibility can be specified only if the template has a @name attribute", "XTSE0020");
            } else {
                this.f102114t0.setDeclaredVisibility(getVisibility());
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void processAllAttributes() throws XPathException {
        if (!isDeferredCompilation(getCompilation())) {
            super.processAllAttributes();
            return;
        }
        m63962N();
        m63963O();
        this.staticContext = new ExpressionContext(this, null);
        processAttributes();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void register(net.p110sf.saxon.style.ComponentDeclaration r25) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLTemplate.register(net.sf.saxon.style.ComponentDeclaration):void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void setCompilation(Compilation compilation) {
        super.setCompilation(compilation);
    }

    public void setContextItemRequirements(ItemType itemType, boolean z, boolean z2) {
        this.f102103A0 = itemType;
        this.f102104B0 = z;
        this.f102105C0 = z2;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102113q0 = getConfiguration().makeSlotManager();
        checkTopLevel("XTSE0010", true);
        Pattern pattern = this.f102110Q;
        boolean z = false;
        if (pattern != null) {
            Pattern typeCheck = typeCheck(Constants.ATTRNAME_MATCH, pattern);
            this.f102110Q = typeCheck;
            if (typeCheck.getItemType() instanceof ErrorType) {
                issueWarning(new XPathException("Pattern will never match anything", SaxonErrorCode.SXWN9015, this));
            }
            if (getPrincipalStylesheetModule().isDeclaredModes()) {
                RuleManager ruleManager = getPrincipalStylesheetModule().getRuleManager();
                StructuredQName[] structuredQNameArr = this.f102108J;
                if (structuredQNameArr != null) {
                    for (StructuredQName structuredQName : structuredQNameArr) {
                        if (structuredQName.equals(Mode.UNNAMED_MODE_NAME) && !ruleManager.isUnnamedModeExplicit()) {
                            compileError("The unnamed mode has not been declared in an xsl:mode declaration", "XTSE3085");
                        }
                        if (ruleManager.obtainMode(structuredQName, false) == null) {
                            compileError("Mode name " + structuredQName.getDisplayName() + " has not been declared in an xsl:mode declaration", "XTSE3085");
                        }
                    }
                } else if (!ruleManager.isUnnamedModeExplicit()) {
                    compileError("The unnamed mode has not been declared in an xsl:mode declaration", "XTSE3085");
                }
            }
            if (this.f102126z0 == Visibility.ABSTRACT) {
                compileError("An abstract template must have no match attribute");
            }
        }
        for (NodeInfo nodeInfo : children(new w2n(StyleElement.class))) {
            if (nodeInfo.getFingerprint() != 145) {
                if (!(nodeInfo instanceof XSLLocalParam)) {
                    z = true;
                } else if (((XSLLocalParam) nodeInfo).isRequiredParam()) {
                    this.f102122x0 = true;
                }
            }
        }
        if (this.f102126z0 == Visibility.ABSTRACT && z) {
            compileError("A template with visibility='abstract' must have no body");
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validateSubtree(ComponentDeclaration componentDeclaration, boolean z) throws XPathException {
        if (!isDeferredCompilation(getCompilation())) {
            super.validateSubtree(componentDeclaration, z);
            return;
        }
        try {
            validate(componentDeclaration);
        } catch (XPathException e) {
            compileError(e);
        }
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public NamedTemplate getActor() {
        return this.f102114t0;
    }
}
