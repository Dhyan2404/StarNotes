package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.StringValue;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes11.dex */
public class QNameFn extends SystemFunction {
    public static QNameValue expandedQName(StringValue stringValue, StringValue stringValue2) throws XPathException {
        String stringValue3 = stringValue == null ? null : stringValue.getStringValue();
        try {
            String[] qNameParts = NameChecker.getQNameParts(stringValue2.getStringValue());
            if (!qNameParts[0].isEmpty() && !NameChecker.isValidNCName(qNameParts[0])) {
                XPathException xPathException = new XPathException("Malformed prefix in QName: '" + qNameParts[0] + Chars.QUOTE);
                xPathException.setErrorCode("FOCA0002");
                throw xPathException;
            }
            return new QNameValue(qNameParts[0], stringValue3, qNameParts[1], BuiltInAtomicType.QNAME, true);
        } catch (QNameException e) {
            throw new XPathException(e.getMessage(), "FOCA0002");
        } catch (XPathException e2) {
            if (e2.getErrorCodeLocalPart().equals("FORG0001")) {
                e2.setErrorCode("FOCA0002");
            }
            throw e2;
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "QNameFnCompiler";
    }

    @Override // net.p110sf.saxon.expr.Callable
    public QNameValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return expandedQName((StringValue) sequenceArr[0].head(), (StringValue) sequenceArr[1].head());
    }
}
