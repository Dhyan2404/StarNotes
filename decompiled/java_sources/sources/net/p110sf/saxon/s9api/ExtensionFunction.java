package net.p110sf.saxon.s9api;

/* loaded from: classes11.dex */
public interface ExtensionFunction {
    XdmValue call(XdmValue[] xdmValueArr) throws SaxonApiException;

    SequenceType[] getArgumentTypes();

    QName getName();

    default SequenceType getResultType() {
        return SequenceType.ANY;
    }
}
