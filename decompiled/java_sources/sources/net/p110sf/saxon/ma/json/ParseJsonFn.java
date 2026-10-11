package net.p110sf.saxon.ma.json;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Map;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.OptionsParameter;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class ParseJsonFn extends JsonToXMLFn {
    public static OptionsParameter OPTION_DETAILS;

    static {
        SequenceType sequenceType = SequenceType.SINGLE_STRING;
        SpecificFunctionType specificFunctionType = new SpecificFunctionType(new SequenceType[]{sequenceType}, sequenceType);
        SpecificFunctionType specificFunctionType2 = new SpecificFunctionType(new SequenceType[]{sequenceType}, SequenceType.SINGLE_ATOMIC);
        OptionsParameter optionsParameter = new OptionsParameter();
        SequenceType sequenceType2 = SequenceType.SINGLE_BOOLEAN;
        BooleanValue booleanValue = BooleanValue.FALSE;
        optionsParameter.addAllowedOption("liberal", sequenceType2, booleanValue);
        optionsParameter.addAllowedOption("duplicates", sequenceType, StringValue.bmp("use-first"));
        optionsParameter.setAllowedValues("duplicates", JsonParser.f100646f, "reject", "use-first", "use-last");
        optionsParameter.addAllowedOption("escape", sequenceType2, booleanValue);
        optionsParameter.addAllowedOption(Constants.ELEMNAME_FALLBACK_STRING, SequenceType.makeSequenceType(specificFunctionType, 16384), null);
        optionsParameter.addAllowedOption("number-parser", SequenceType.makeSequenceType(specificFunctionType2, 16384), null);
        OPTION_DETAILS = optionsParameter;
    }

    public static Item parse(String str, Map<String, Sequence> map, XPathContext xPathContext) throws XPathException {
        JsonParser jsonParser = new JsonParser();
        int flags = map != null ? JsonParser.getFlags(map, false, false) : 0;
        JsonHandlerMap jsonHandlerMap = new JsonHandlerMap(xPathContext, flags);
        if ((flags & 32) != 0) {
            throw new XPathException("parse-json: duplicates=retain is not allowed", JsonParser.f100646f);
        }
        if ((flags & JsonParser.DUPLICATES_SPECIFIED) == 0) {
            flags |= 128;
        }
        if (map != null) {
            jsonHandlerMap.setFallbackFunction(map, xPathContext);
            jsonParser.setNumberParser(map, xPathContext);
        }
        jsonParser.parse(str, flags, jsonHandlerMap, xPathContext);
        return jsonHandlerMap.getResult().head();
    }

    @Override // net.p110sf.saxon.ma.json.JsonToXMLFn
    public Item eval(String str, MapItem mapItem, XPathContext xPathContext) throws XPathException {
        return parse(str, mapItem != null ? getDetails().optionDetails.processSuppliedOptions(mapItem, xPathContext) : null, xPathContext);
    }
}
