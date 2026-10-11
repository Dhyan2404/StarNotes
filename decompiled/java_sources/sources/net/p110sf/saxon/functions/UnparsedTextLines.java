package net.p110sf.saxon.functions;

import java.io.LineNumberReader;
import java.io.StringReader;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.UnparsedTextIterator;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class UnparsedTextLines extends UnparsedTextFunction implements Callable {

    /* renamed from: h */
    public static final /* synthetic */ boolean f100362h = false;

    /* renamed from: c */
    public final SequenceIterator m63220c(StringValue stringValue, String str, XPathContext xPathContext) throws XPathException {
        if (stringValue == null) {
            return EmptyIterator.ofAtomic();
        }
        String stringValue2 = stringValue.getStringValue();
        if (!xPathContext.getConfiguration().getBooleanProperty(Feature.STABLE_UNPARSED_TEXT)) {
            return new UnparsedTextIterator(UnparsedTextFunction.getAbsoluteURI(stringValue2, getRetainedStaticContext().getStaticBaseUriString(), xPathContext), xPathContext, str, (Location) null);
        }
        StringValue evalUnparsedText = UnparsedText.evalUnparsedText(stringValue, getStaticBaseUriString(), str, xPathContext);
        return new UnparsedTextIterator(new LineNumberReader(new StringReader(evalUnparsedText.getStringValue())), UnparsedTextFunction.getAbsoluteURI(stringValue2, getStaticBaseUriString(), xPathContext), xPathContext, str);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        try {
            return SequenceTool.toLazySequence(m63220c((StringValue) sequenceArr[0].head(), getArity() == 2 ? sequenceArr[1].head().getStringValue() : null, xPathContext));
        } catch (XPathException e) {
            if (e.getErrorCodeQName() == null) {
                e.setErrorCode("FOUT1170");
            }
            if (this.getArity() == 2 && "FOUT1200".equals(e.getErrorCodeLocalPart())) {
                e.setErrorCode("FOUT1190");
            }
            throw e;
        }
    }
}
