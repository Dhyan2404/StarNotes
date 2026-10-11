package net.p110sf.saxon.style;

import com.caverock.androidsvg.SVGParser;
import com.google.firebase.ktx.BuildConfig;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SimpleMode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.VisibilityProvenance;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.RuleManager;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class XSLMode extends StyleElement {

    /* renamed from: u */
    public SimpleMode f102048u;

    /* renamed from: v */
    public Set<? extends Accumulator> f102049v;

    /* renamed from: w */
    public boolean f102050w = false;

    /* renamed from: x */
    public boolean f102051x = false;

    /* renamed from: y */
    public boolean f102052y = false;

    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (getPrincipalStylesheetModule().getStylesheetPackage().getComponent(this.f102048u.getSymbolicName()) == null) {
            throw new AssertionError();
        }
    }

    public SimpleMode getMode() {
        return this.f102048u;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public StructuredQName getObjectName() {
        StructuredQName objectName = super.getObjectName();
        if (objectName != null) {
            return objectName;
        }
        String trim = Whitespace.trim(getAttributeValue("", "name"));
        if (trim == null) {
            return Mode.UNNAMED_MODE_NAME;
        }
        StructuredQName makeQName = makeQName(trim, null, "name");
        setObjectName(makeQName);
        return makeQName;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) throws XPathException {
        Component component;
        StructuredQName objectName = getObjectName();
        SymbolicName symbolicName = new SymbolicName(180, objectName);
        HashMap<SymbolicName, Component> componentIndex = principalStylesheetModule.getStylesheetPackage().getComponentIndex();
        StructuredQName structuredQName = Mode.UNNAMED_MODE_NAME;
        if (!objectName.equals(structuredQName) && (component = componentIndex.get(symbolicName)) != null && component.getDeclaringPackage() != principalStylesheetModule.getStylesheetPackage()) {
            compileError("Mode " + objectName.getDisplayName() + " conflicts with a public named mode in package " + component.getDeclaringPackage().getPackageName(), "XTSE3050");
        }
        this.f102048u = (SimpleMode) principalStylesheetModule.getRuleManager().obtainMode(objectName, true);
        if (objectName.equals(structuredQName)) {
            principalStylesheetModule.getRuleManager().setUnnamedModeExplicit(true);
            return;
        }
        if (this.f102048u.getDeclaringComponent().getDeclaringPackage() != getContainingPackage()) {
            compileError("Mode name conflicts with a mode in a used package", "XTSE3050");
            return;
        }
        principalStylesheetModule.indexMode(componentDeclaration);
        Visibility declaredVisibility = getDeclaredVisibility();
        Visibility visibility = Visibility.UNDEFINED;
        this.f102048u.getDeclaringComponent().setVisibility(declaredVisibility == visibility ? Visibility.PRIVATE : declaredVisibility, declaredVisibility == visibility ? VisibilityProvenance.DEFAULTED : VisibilityProvenance.EXPLICIT);
        principalStylesheetModule.indexMode(componentDeclaration);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v8 */
    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        SequenceType sequenceType;
        ?? r10;
        char c;
        if (this.f102050w) {
            return;
        }
        boolean z = true;
        this.f102050w = true;
        Visibility visibility = Visibility.PRIVATE;
        String str = null;
        String str2 = null;
        String str3 = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            displayName.hashCode();
            switch (displayName.hashCode()) {
                case -1554661834:
                    if (displayName.equals("warning-on-no-match")) {
                        r10 = 0;
                        break;
                    }
                    break;
                case -1431958154:
                    if (displayName.equals("on-multiple-match")) {
                        r10 = z;
                        break;
                    }
                    break;
                case -1194384166:
                    if (displayName.equals("streamable")) {
                        r10 = 2;
                        break;
                    }
                    break;
                case 3373707:
                    if (displayName.equals("name")) {
                        r10 = 3;
                        break;
                    }
                    break;
                case 110844010:
                    if (displayName.equals("typed")) {
                        r10 = 4;
                        break;
                    }
                    break;
                case 1596193587:
                    if (displayName.equals("use-accumulators")) {
                        r10 = 5;
                        break;
                    }
                    break;
                case 1890995589:
                    if (displayName.equals("warning-on-multiple-match")) {
                        r10 = 6;
                        break;
                    }
                    break;
                case 1941332754:
                    if (displayName.equals("visibility")) {
                        r10 = 7;
                        break;
                    }
                    break;
                case 2085390055:
                    if (displayName.equals("on-no-match")) {
                        r10 = 8;
                        break;
                    }
                    break;
            }
            r10 = -1;
            switch (r10) {
                case 0:
                    processBooleanAttribute("warning-on-no-match", value);
                    break;
                case 1:
                    String trim = Whitespace.trim(value);
                    trim.hashCode();
                    if (!trim.equals("use-last") && !trim.equals(OneDriverConstants.CONFLICT_BEHAVIOR_FAIL)) {
                        invalidAttribute(displayName, "fail|use-last");
                        break;
                    }
                    break;
                case 2:
                    this.f102051x = m63969U(value);
                    break;
                case 3:
                    str = Whitespace.trim(value);
                    if (str.equals("#default")) {
                        break;
                    } else {
                        setObjectName(makeQName(str, null, "name"));
                        break;
                    }
                case 4:
                    m63976o("typed", Whitespace.trim(value), false, new String[]{"0", "1", "false", "lax", SVGParser.f16048t, "strict", "true", BuildConfig.VERSION_NAME, "yes"});
                    break;
                case 5:
                    this.f102049v = getPrincipalStylesheetModule().getStylesheetPackage().getAccumulatorRegistry().getUsedAccumulators(value, this);
                    break;
                case 6:
                    processBooleanAttribute("warning-on-multiple-match", value);
                    break;
                case 7:
                    str2 = Whitespace.trim(value);
                    Visibility m63954E = m63954E(str2, "");
                    if (m63954E == Visibility.ABSTRACT) {
                        invalidAttribute(displayName, "public|private|final");
                    }
                    this.f102048u.setDeclaredVisibility(m63954E);
                    break;
                case 8:
                    String trim2 = Whitespace.trim(value);
                    trim2.hashCode();
                    switch (trim2.hashCode()) {
                        case -2068713386:
                            if (trim2.equals("text-only-copy")) {
                                c = 0;
                                break;
                            }
                            break;
                        case -2026960970:
                            if (trim2.equals("deep-copy")) {
                                c = 1;
                                break;
                            }
                            break;
                        case -2026488384:
                            if (trim2.equals("deep-skip")) {
                                c = 2;
                                break;
                            }
                            break;
                        case -1628128370:
                            if (trim2.equals("shallow-copy")) {
                                c = 3;
                                break;
                            }
                            break;
                        case -1627655784:
                            if (trim2.equals("shallow-skip")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 3135262:
                            if (trim2.equals(OneDriverConstants.CONFLICT_BEHAVIOR_FAIL)) {
                                c = 5;
                                break;
                            }
                            break;
                    }
                    c = 65535;
                    switch (c) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                            break;
                        default:
                            invalidAttribute(displayName, "text-only-copy|shallow-copy|deep-copy|shallow-skip|deep-skip|fail");
                            break;
                    }
                default:
                    if (nodeName.hasURI(NamespaceConstant.SAXON)) {
                        isExtensionAttributeAllowed(nodeName.getDisplayName());
                        if (nodeName.getLocalPart().equals(AbstractLogger.TRACE)) {
                            this.f102052y = processBooleanAttribute("saxon:trace", value);
                            break;
                        } else if (nodeName.getLocalPart().equals("as")) {
                            str3 = value;
                            break;
                        } else {
                            break;
                        }
                    } else {
                        checkUnknownAttribute(nodeName);
                        break;
                    }
            }
            z = true;
        }
        if (str == null && str2 != null && this.f102048u.getDeclaredVisibility() != Visibility.PRIVATE) {
            compileError("The unnamed mode must be private", "XTSE0020");
        }
        RuleManager ruleManager = getCompilation().getPrincipalStylesheetModule().getRuleManager();
        if (getObjectName() == null) {
            this.f102048u = ruleManager.getUnnamedMode();
        } else {
            Mode obtainMode = ruleManager.obtainMode(getObjectName(), true);
            if (obtainMode instanceof SimpleMode) {
                this.f102048u = (SimpleMode) obtainMode;
            } else {
                compileError("Mode name refers to an overridden mode");
                this.f102048u = ruleManager.getUnnamedMode();
            }
        }
        this.f102048u.obtainDeclaringComponent(this);
        this.f102048u.setModeTracing(this.f102052y);
        if (str3 != null) {
            try {
                sequenceType = m63959K(str3);
            } catch (XPathException e) {
                compileErrorInAttribute(e.getMessage(), e.getErrorCodeLocalPart(), "saxon:as");
                sequenceType = SequenceType.ANY_SEQUENCE;
            }
            this.f102048u.setDefaultResultType(sequenceType);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        Set<? extends Accumulator> set;
        checkTopLevel("XTSE0010", false);
        for (AttributeInfo attributeInfo : attributes()) {
            String displayName = attributeInfo.getNodeName().getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("streamable") || displayName.equals("on-multiple-match") || displayName.equals("on-no-match") || displayName.equals("warning-on-multiple-match") || displayName.equals("warning-on-no-match") || displayName.equals("typed") || displayName.equals("visibility")) {
                String trim = Whitespace.trim(value);
                boolean equals = "true".equals(trim);
                String str = SVGParser.f16048t;
                if (equals || "1".equals(trim)) {
                    trim = "yes";
                } else if ("false".equals(trim) || "0".equals(trim)) {
                    trim = SVGParser.f16048t;
                }
                if (!displayName.equals("streamable") || this.f102051x) {
                    str = trim;
                }
                this.f102048u.getActivePart().setExplicitProperty(displayName, str, componentDeclaration.getPrecedence());
                if (this.f102048u.isMustBeTyped() && getContainingPackage().getTargetEdition().matches("JS\\d?")) {
                    compileWarning("In SaxonJS, all data is untyped", "XTTE3110");
                }
            } else if (displayName.equals("use-accumulators") && (set = this.f102049v) != null) {
                int size = set.size();
                String[] strArr = new String[size];
                Iterator<? extends Accumulator> it2 = this.f102049v.iterator();
                int i = 0;
                while (it2.hasNext()) {
                    strArr[i] = it2.next().getAccumulatorName().getEQName();
                    i++;
                }
                Arrays.sort(strArr);
                StringBuilder sb = new StringBuilder();
                boolean z = true;
                for (int i2 = 0; i2 < size; i2++) {
                    String str2 = strArr[i2];
                    if (z) {
                        z = false;
                    } else {
                        sb.append(" ");
                    }
                    sb.append(str2);
                }
                this.f102048u.getActivePart().setExplicitProperty(displayName, sb.toString(), componentDeclaration.getPrecedence());
            }
        }
        checkEmpty();
        checkTopLevel("XTSE0010", false);
    }
}
