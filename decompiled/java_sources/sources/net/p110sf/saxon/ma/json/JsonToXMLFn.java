package net.p110sf.saxon.ma.json;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Map;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.OptionsParameter;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class JsonToXMLFn extends SystemFunction {
    public static OptionsParameter OPTION_DETAILS;

    static {
        SequenceType sequenceType = SequenceType.SINGLE_STRING;
        SpecificFunctionType specificFunctionType = new SpecificFunctionType(new SequenceType[]{sequenceType}, sequenceType);
        OptionsParameter optionsParameter = new OptionsParameter();
        SequenceType sequenceType2 = SequenceType.SINGLE_BOOLEAN;
        BooleanValue booleanValue = BooleanValue.FALSE;
        optionsParameter.addAllowedOption("liberal", sequenceType2, booleanValue);
        optionsParameter.addAllowedOption("duplicates", sequenceType, null);
        optionsParameter.setAllowedValues("duplicates", JsonParser.f100646f, "reject", "use-first", "retain");
        optionsParameter.addAllowedOption("validate", sequenceType2, booleanValue);
        optionsParameter.addAllowedOption("escape", sequenceType2, booleanValue);
        optionsParameter.addAllowedOption(Constants.ELEMNAME_FALLBACK_STRING, SequenceType.makeSequenceType(specificFunctionType, 16384), null);
        OPTION_DETAILS = optionsParameter;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Item head = sequenceArr[0].head();
        if (head == null) {
            return EmptySequence.getInstance();
        }
        return SequenceTool.itemOrEmpty(eval(head.getStringValue(), getArity() == 2 ? (MapItem) sequenceArr[1].head() : null, xPathContext));
    }

    public Item eval(String str, MapItem mapItem, XPathContext xPathContext) throws XPathException {
        int i;
        Map<String, Sequence> map;
        JsonParser jsonParser = new JsonParser();
        if (mapItem != null) {
            map = getDetails().optionDetails.processSuppliedOptions(mapItem, xPathContext);
            i = JsonParser.getFlags(map, true, xPathContext.getController().getExecutable().isSchemaAware());
            if ((i & 64) != 0) {
                throw new XPathException("json-to-xml: duplicates=use-last is not allowed", JsonParser.f100646f);
            }
            if ((i & JsonParser.DUPLICATES_SPECIFIED) == 0) {
                i = (i & 8) != 0 ? i | 256 : i | 32;
            }
        } else {
            i = 32;
            map = null;
        }
        JsonHandlerXML jsonHandlerXML = new JsonHandlerXML(xPathContext, getStaticBaseUriString(), i);
        if (mapItem != null) {
            jsonHandlerXML.setFallbackFunction(map, xPathContext);
        }
        jsonParser.parse(str, i, jsonHandlerXML, xPathContext);
        return jsonHandlerXML.getResult();
    }
}
