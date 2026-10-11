package net.p110sf.saxon.ma.json;

import java.io.IOException;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.UnparsedTextFunction;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntSetPredicate;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class JsonDoc extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Map<String, Sequence> defaultOptions;
        Item head = sequenceArr[0].head();
        if (head == null) {
            return EmptySequence.getInstance();
        }
        String stringValue = head.getStringValue();
        Configuration configuration = xPathContext.getConfiguration();
        IntPredicateProxy intPredicateProxy = IntSetPredicate.ALWAYS_TRUE;
        URI absoluteURI = UnparsedTextFunction.getAbsoluteURI(stringValue, getStaticBaseUriString(), xPathContext);
        try {
            Reader resolve = xPathContext.getController().getUnparsedTextURIResolver().resolve(absoluteURI, "UTF-8", configuration);
            if (resolve == null) {
                throw new XPathException("Unable to resolve json-doc() URI " + absoluteURI, "FOUT1170");
            }
            try {
                UnicodeString readFile = UnparsedTextFunction.readFile(intPredicateProxy, resolve);
                if (getArity() == 2) {
                    defaultOptions = getDetails().optionDetails.processSuppliedOptions((MapItem) sequenceArr[1].head(), xPathContext);
                } else {
                    defaultOptions = ParseJsonFn.OPTION_DETAILS.getDefaultOptions();
                }
                return SequenceTool.itemOrEmpty(ParseJsonFn.parse(readFile.toString(), defaultOptions, xPathContext));
            } catch (UnsupportedEncodingException e) {
                XPathException xPathException = new XPathException("Unknown encoding " + Err.wrap("UTF-8"), e);
                xPathException.setErrorCode("FOUT1190");
                throw xPathException;
            } catch (IOException e2) {
                throw UnparsedTextFunction.handleIOError(absoluteURI, e2);
            }
        } catch (XPathException e3) {
            e3.maybeSetErrorCode("FOUT1170");
            throw e3;
        }
    }
}
