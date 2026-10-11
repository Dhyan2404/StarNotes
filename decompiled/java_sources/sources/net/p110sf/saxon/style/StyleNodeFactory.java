package net.p110sf.saxon.style;

import javax.xml.transform.TransformerFactoryConfigurationError;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.accum.AccumulatorRegistry;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.NodeFactory;
import net.p110sf.saxon.tree.linked.NodeImpl;
import net.p110sf.saxon.tree.linked.TextImpl;

/* loaded from: classes11.dex */
public class StyleNodeFactory implements NodeFactory {

    /* renamed from: a */
    public final Compilation f101810a;

    /* renamed from: b */
    public boolean f101811b;
    protected Configuration config;
    protected NamePool namePool;

    public StyleNodeFactory(Configuration configuration, Compilation compilation) {
        this.config = configuration;
        this.f101810a = compilation;
        this.namePool = configuration.getNamePool();
    }

    public Compilation getCompilation() {
        return this.f101810a;
    }

    public Configuration getConfiguration() {
        return this.config;
    }

    public boolean isElementAvailable(String str, String str2, boolean z) {
        StyleElement makeXSLElement;
        int fingerprint = this.namePool.getFingerprint(str, str2);
        if (!str.equals("http://www.w3.org/1999/XSL/Transform") || fingerprint == -1 || (makeXSLElement = makeXSLElement(fingerprint, null)) == null) {
            return false;
        }
        return !z || makeXSLElement.isInstruction();
    }

    public boolean isTopLevelModule() {
        return this.f101811b;
    }

    public AccumulatorRegistry makeAccumulatorManager() {
        return new AccumulatorRegistry();
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    @Override // net.p110sf.saxon.tree.linked.NodeFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.tree.linked.ElementImpl makeElementNode(net.p110sf.saxon.om.NodeInfo r18, net.p110sf.saxon.om.NodeName r19, net.p110sf.saxon.type.SchemaType r20, boolean r21, net.p110sf.saxon.om.AttributeMap r22, net.p110sf.saxon.om.NamespaceMap r23, net.p110sf.saxon.event.PipelineConfiguration r24, net.p110sf.saxon.s9api.Location r25, int r26) {
        /*
            Method dump skipped, instructions count: 721
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.StyleNodeFactory.makeElementNode(net.sf.saxon.om.NodeInfo, net.sf.saxon.om.NodeName, net.sf.saxon.type.SchemaType, boolean, net.sf.saxon.om.AttributeMap, net.sf.saxon.om.NamespaceMap, net.sf.saxon.event.PipelineConfiguration, net.sf.saxon.s9api.Location, int):net.sf.saxon.tree.linked.ElementImpl");
    }

    public StyleElement makeStyleElement(Class<? extends StyleElement> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            throw new TransformerFactoryConfigurationError(e, "Failed to access class " + cls.getName());
        } catch (InstantiationException e2) {
            throw new TransformerFactoryConfigurationError(e2, "Failed to create instance of " + cls.getName());
        }
    }

    @Override // net.p110sf.saxon.tree.linked.NodeFactory
    public TextImpl makeTextNode(NodeInfo nodeInfo, UnicodeString unicodeString) {
        return ((nodeInfo instanceof StyleElement) && ((StyleElement) nodeInfo).m63958I()) ? new TextValueTemplateNode(unicodeString) : new TextImpl(unicodeString);
    }

    public StyleElement makeXSLElement(int i, NodeImpl nodeImpl) {
        switch (i) {
            case 128:
                return new XSLAccept();
            case 129:
                return new XSLAccumulator();
            case 130:
                return new XSLAccumulatorRule();
            case 131:
                return new XSLAnalyzeString();
            case 132:
                return new XSLApplyImports();
            case 133:
                return new XSLApplyTemplates();
            case 134:
                return new XSLArray();
            case 135:
                return new XSLArrayMember();
            case 136:
                return new XSLAssert();
            case 137:
                return new XSLAttribute();
            case 138:
                return new XSLAttributeSet();
            case 139:
                return new XSLBreak();
            case 140:
                return new XSLCallTemplate();
            case 141:
                return new XSLCatch();
            case 142:
                return new XSLCharacterMap();
            case 143:
                return new XSLChoose();
            case 144:
                return new XSLComment();
            case 145:
                return new XSLContextItem();
            case 146:
                return new XSLCopy();
            case 147:
                return new XSLCopyOf();
            case 148:
                return new XSLDecimalFormat();
            case 149:
            case 157:
            case 158:
            case 167:
            case 177:
            case 196:
            case 197:
            case 206:
            case 207:
            case 216:
            case 217:
            default:
                return null;
            case 150:
                return new XSLDocument();
            case 151:
                return new XSLElement();
            case 152:
                return new XSLExpose();
            case 153:
                return new XSLEvaluate();
            case 154:
                return new XSLFallback();
            case 155:
                return new XSLForEach();
            case 156:
                return new XSLForEachGroup();
            case 159:
                return new XSLFork();
            case 160:
                return new XSLFunction();
            case 161:
                return new XSLGlobalContextItem();
            case 162:
                return new XSLIf();
            case 163:
                return new XSLImport();
            case 164:
                return new XSLImportSchema();
            case 165:
                return new XSLInclude();
            case 166:
                return new XSLItemType();
            case 168:
                return new XSLIterate();
            case 169:
                return new XSLKey();
            case 170:
                return new XSLMap();
            case 171:
                return new XSLMapEntry();
            case 172:
                return new XSLMatch();
            case 173:
                return new XSLMatchingSubstring();
            case 174:
                return new XSLMerge();
            case 175:
                return new XSLMergeAction();
            case 176:
                return new XSLMergeKey();
            case 178:
                return new XSLMergeSource();
            case 179:
                return new XSLMessage();
            case 180:
                return new XSLMode();
            case 181:
                return new XSLNamespace();
            case 182:
                return new XSLNamespaceAlias();
            case 183:
                return new XSLNextIteration();
            case 184:
                return new XSLNextMatch();
            case 185:
                return new XSLMatchingSubstring();
            case 186:
                return new XSLNumber();
            case 187:
                return new XSLOtherwise();
            case 188:
                return new XSLOnCompletion();
            case 189:
                return new XSLOnEmpty();
            case 190:
                return new XSLOnNonEmpty();
            case 191:
                return new XSLOutput();
            case 192:
                return new XSLOverride();
            case 193:
                return new XSLOutputCharacter();
            case 194:
                return new XSLPackage();
            case 195:
                return ((nodeImpl instanceof XSLModuleRoot) || (nodeImpl instanceof XSLOverride)) ? new XSLGlobalParam() : new XSLLocalParam();
            case 198:
                return new XSLPerformSort();
            case 199:
                return new XSLPreserveSpace();
            case 200:
                return new XSLProcessingInstruction();
            case 201:
                this.f101810a.setCreatesSecondaryResultDocuments(true);
                return new XSLResultDocument();
            case 202:
                return new XSLSequence();
            case 203:
                return new XSLSort();
            case 204:
                return new XSLSourceDocument();
            case 205:
                return new XSLPreserveSpace();
            case 208:
            case 212:
                return this.f101811b ? new XSLPackage() : new XSLStylesheet();
            case 209:
                return new XSLSwitch();
            case 210:
                return new XSLTemplate();
            case 211:
                return new XSLText();
            case 213:
                return new XSLTry();
            case 214:
                return new XSLUsePackage();
            case 215:
                return new XSLValueOf();
            case 218:
                return ((nodeImpl instanceof XSLModuleRoot) || (nodeImpl instanceof XSLOverride)) ? new XSLGlobalVariable() : new XSLLocalVariable();
            case 219:
                return new XSLWhen();
            case 220:
                return new XSLWherePopulated();
            case 221:
                return new XSLWithParam();
        }
    }

    public PrincipalStylesheetModule newPrincipalModule(XSLPackage xSLPackage) throws XPathException {
        return new PrincipalStylesheetModule(xSLPackage);
    }

    public void setTopLevelModule(boolean z) {
        this.f101811b = z;
    }
}
