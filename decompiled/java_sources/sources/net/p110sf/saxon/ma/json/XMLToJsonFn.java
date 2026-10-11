package net.p110sf.saxon.ma.json;

import java.util.Map;
import net.p110sf.saxon.event.DocumentValidator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.functions.OptionsParameter;
import net.p110sf.saxon.functions.PushableFunction;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.str.UniStringConsumer;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class XMLToJsonFn extends SystemFunction implements PushableFunction {

    /* renamed from: h */
    public static final FunctionItemType f100669h;

    /* renamed from: net.sf.saxon.ma.json.XMLToJsonFn$b */
    /* loaded from: classes11.dex */
    public static class C18403b {

        /* renamed from: a */
        public boolean f100670a;

        /* renamed from: b */
        public Function f100671b;

        public C18403b() {
        }
    }

    static {
        SequenceType sequenceType = SequenceType.SINGLE_STRING;
        f100669h = new SpecificFunctionType(new SequenceType[]{sequenceType}, sequenceType);
    }

    public static OptionsParameter makeOptionsParameter() {
        OptionsParameter optionsParameter = new OptionsParameter();
        optionsParameter.addAllowedOption("indent", SequenceType.SINGLE_BOOLEAN, BooleanValue.FALSE);
        optionsParameter.addAllowedOption("number-formatter", SequenceType.makeSequenceType(f100669h, 24576), EmptySequence.getInstance());
        return optionsParameter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [net.sf.saxon.event.DocumentValidator] */
    /* JADX WARN: Type inference failed for: r2v0, types: [net.sf.saxon.om.NodeInfo] */
    /* renamed from: a */
    public final void m63339a(NodeInfo nodeInfo, UniStringConsumer uniStringConsumer, C18403b c18403b, XPathContext xPathContext) throws XPathException {
        PipelineConfiguration makePipelineConfiguration = xPathContext.getController().makePipelineConfiguration();
        makePipelineConfiguration.setXPathContext(xPathContext);
        JsonReceiver jsonReceiver = new JsonReceiver(makePipelineConfiguration, xPathContext, uniStringConsumer);
        jsonReceiver.setIndenting(c18403b.f100670a);
        Function function = c18403b.f100671b;
        if (function != null) {
            jsonReceiver.setNumberFormatter(function);
        }
        if (nodeInfo.getNodeKind() == 9) {
            jsonReceiver = new DocumentValidator(jsonReceiver, JsonReceiver.f100656p);
        }
        jsonReceiver.open();
        nodeInfo.copy(jsonReceiver, 0, Loc.NONE);
        jsonReceiver.close();
    }

    /* renamed from: b */
    public final C18403b m63340b(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        if (getArity() <= 1) {
            return new C18403b();
        }
        Map<String, Sequence> processSuppliedOptions = getDetails().optionDetails.processSuppliedOptions((MapItem) sequenceArr[1].head(), xPathContext);
        C18403b c18403b = new C18403b();
        c18403b.f100670a = ((BooleanValue) processSuppliedOptions.get("indent").head()).getBooleanValue();
        Sequence sequence = processSuppliedOptions.get("number-formatter");
        if (sequence != null) {
            c18403b.f100671b = (Function) sequence.head();
        }
        return c18403b;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NodeInfo nodeInfo = (NodeInfo) sequenceArr[0].head();
        if (nodeInfo == null) {
            return EmptySequence.getInstance();
        }
        C18403b m63340b = m63340b(xPathContext, sequenceArr);
        xPathContext.getController().makePipelineConfiguration().setXPathContext(xPathContext);
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        m63339a(nodeInfo, unicodeBuilder, m63340b, xPathContext);
        return new StringValue(unicodeBuilder.toUnicodeString());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "XmlToJsonFn";
    }

    @Override // net.p110sf.saxon.functions.PushableFunction
    public void process(Outputter outputter, XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NodeInfo nodeInfo = (NodeInfo) sequenceArr[0].head();
        if (nodeInfo != null) {
            C18403b m63340b = m63340b(xPathContext, sequenceArr);
            xPathContext.getController().makePipelineConfiguration().setXPathContext(xPathContext);
            m63339a(nodeInfo, outputter.getStringReceiver(false, Loc.NONE), m63340b, xPathContext);
        }
    }
}
