package net.p110sf.saxon.functions;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.URISyntaxException;
import java.util.HashSet;
import java.util.Map;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.accum.AccumulatorRegistry;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.AllElementsSpaceStrippingRule;
import net.p110sf.saxon.om.IgnorableSpaceStrippingRule;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class Doc_2 extends SystemFunction implements Callable {
    public static OptionsParameter makeOptionsParameter() {
        SequenceType makeSequenceType = SequenceType.makeSequenceType(BuiltInAtomicType.QNAME, 57344);
        OptionsParameter optionsParameter = new OptionsParameter();
        SequenceType sequenceType = SequenceType.SINGLE_STRING;
        optionsParameter.addAllowedOption("base-uri", sequenceType);
        optionsParameter.addAllowedOption("validation", sequenceType);
        optionsParameter.setAllowedValues("validation", "SXZZ0001", "strict", "lax", "preserve", "strip", "skip");
        optionsParameter.addAllowedOption("type", SequenceType.SINGLE_QNAME);
        optionsParameter.addAllowedOption(Constants.ELEMNAME_STRIPSPACE_STRING, sequenceType);
        optionsParameter.setAllowedValues(Constants.ELEMNAME_STRIPSPACE_STRING, "SXZZ0001", "none", "all", "ignorable", "package-defined", "default");
        SequenceType sequenceType2 = SequenceType.SINGLE_BOOLEAN;
        optionsParameter.addAllowedOption("stable", sequenceType2);
        optionsParameter.addAllowedOption("dtd-validation", sequenceType2);
        optionsParameter.addAllowedOption("accumulators", makeSequenceType);
        optionsParameter.addAllowedOption("use-xsi-schema-location", sequenceType2);
        return optionsParameter;
    }

    public static ParseOptions setParseOptions(RetainedStaticContext retainedStaticContext, Map<String, Sequence> map, XPathContext xPathContext) throws XPathException {
        ParseOptions parseOptions = new ParseOptions(xPathContext.getConfiguration().getParseOptions());
        Sequence sequence = map.get("validation");
        char c = 65535;
        if (sequence != null) {
            String stringValue = sequence.head().getStringValue();
            if ("skip".equals(stringValue)) {
                stringValue = "strip";
            }
            int code = Validation.getCode(stringValue);
            if (code == -1) {
                throw new XPathException("Invalid validation value " + stringValue, "SXZZ0002");
            }
            parseOptions.setSchemaValidationMode(code);
        }
        Sequence sequence2 = map.get("type");
        if (sequence2 != null) {
            parseOptions.setTopLevelType(xPathContext.getConfiguration().getSchemaType(((QNameValue) sequence2.head()).getStructuredQName()));
            parseOptions.setSchemaValidationMode(8);
        }
        Sequence sequence3 = map.get(Constants.ELEMNAME_STRIPSPACE_STRING);
        if (sequence3 != null) {
            String stringValue2 = sequence3.head().getStringValue();
            stringValue2.hashCode();
            switch (stringValue2.hashCode()) {
                case 96673:
                    if (stringValue2.equals("all")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3387192:
                    if (stringValue2.equals("none")) {
                        c = 1;
                        break;
                    }
                    break;
                case 443942093:
                    if (stringValue2.equals("ignorable")) {
                        c = 2;
                        break;
                    }
                    break;
                case 718524290:
                    if (stringValue2.equals("package-defined")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1544803905:
                    if (stringValue2.equals("default")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    parseOptions.setSpaceStrippingRule(AllElementsSpaceStrippingRule.getInstance());
                    break;
                case 1:
                    parseOptions.setSpaceStrippingRule(NoElementsSpaceStrippingRule.getInstance());
                    break;
                case 2:
                    parseOptions.setSpaceStrippingRule(IgnorableSpaceStrippingRule.getInstance());
                    break;
                case 3:
                case 4:
                    PackageData packageData = retainedStaticContext.getPackageData();
                    if (packageData instanceof StylesheetPackage) {
                        parseOptions.setSpaceStrippingRule(((StylesheetPackage) packageData).getSpaceStrippingRule());
                        break;
                    }
                    break;
            }
        }
        Sequence sequence4 = map.get("dtd-validation");
        if (sequence4 != null) {
            parseOptions.setDTDValidationMode(((BooleanValue) sequence4.head()).getBooleanValue() ? 1 : 4);
        }
        Sequence sequence5 = map.get("accumulators");
        if (sequence5 != null) {
            AccumulatorRegistry accumulatorRegistry = retainedStaticContext.getPackageData().getAccumulatorRegistry();
            HashSet hashSet = new HashSet();
            SequenceIterator iterate = sequence5.iterate();
            while (true) {
                Item next = iterate.next();
                if (next != null) {
                    hashSet.add(accumulatorRegistry.getAccumulator(((QNameValue) next).getStructuredQName()));
                } else {
                    parseOptions.setApplicableAccumulators(hashSet);
                }
            }
        }
        Sequence sequence6 = map.get("use-xsi-schema-location");
        if (sequence6 != null) {
            parseOptions.setUseXsiSchemaLocation(((BooleanValue) sequence6.head()).getBooleanValue());
        }
        return parseOptions;
    }

    /* renamed from: a */
    public final TreeInfo m62977a(String str, ParseOptions parseOptions, XPathContext xPathContext) throws XPathException {
        Configuration configuration = xPathContext.getConfiguration();
        Controller controller = xPathContext.getController();
        try {
            ActiveSource resolveSource = configuration.getSourceResolver().resolveSource(new StreamSource(ResolveURI.makeAbsolute(str, getStaticBaseUriString()).toASCIIString()), configuration);
            if (DocumentFn.sourceIsTree(resolveSource)) {
                return controller.prepareInputTree(resolveSource).getTreeInfo();
            }
            Builder makeBuilder = controller.makeBuilder();
            if (makeBuilder instanceof TinyBuilder) {
                ((TinyBuilder) makeBuilder).setStatistics(configuration.getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
            }
            makeBuilder.setPipelineConfiguration(makeBuilder.getPipelineConfiguration());
            try {
                Sender.send(resolveSource, makeBuilder, parseOptions);
                TreeInfo treeInfo = makeBuilder.getCurrentRoot().getTreeInfo();
                makeBuilder.reset();
                return treeInfo;
            } finally {
                if (parseOptions.isPleaseCloseAfterUse()) {
                    ParseOptions.close(resolveSource);
                }
            }
        } catch (URISyntaxException e) {
            throw new XPathException("Invalid URI supplied to saxon:doc - " + e.getMessage(), "FODC0002");
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) sequenceArr[0].head();
        if (atomicValue == null) {
            return EmptySequence.getInstance();
        }
        String stringValue = atomicValue.getStringValue();
        ParseOptions parseOptions = setParseOptions(getRetainedStaticContext(), getDetails().optionDetails.processSuppliedOptions((MapItem) sequenceArr[1].head(), xPathContext), xPathContext);
        NodeInfo rootNode = m62977a(stringValue, parseOptions, xPathContext).getRootNode();
        if (rootNode != null) {
            Controller controller = xPathContext.getController();
            if (controller instanceof XsltController) {
                ((XsltController) controller).getAccumulatorManager().setApplicableAccumulators(rootNode.getTreeInfo(), parseOptions.getApplicableAccumulators());
            }
            return rootNode;
        }
        throw new XPathException("Failed to load document " + stringValue, "FODC0002", xPathContext);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return 25821184;
    }
}
