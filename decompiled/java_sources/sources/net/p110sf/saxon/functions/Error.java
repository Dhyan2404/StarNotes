package net.p110sf.saxon.functions;

import androidx.core.app.NotificationCompat;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Error extends SystemFunction implements Callable {

    /* loaded from: classes11.dex */
    public static class UserDefinedXPathException extends XPathException {
        public UserDefinedXPathException(String str) {
            super(str);
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        int length = sequenceArr.length;
        if (length == 0) {
            return error(xPathContext, null, null, null);
        }
        if (length == 1) {
            QNameValue qNameValue = (QNameValue) sequenceArr[0].head();
            if (qNameValue == null) {
                qNameValue = new QNameValue(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, "FOER0000");
            }
            return error(xPathContext, qNameValue, null, null);
        }
        if (length == 2) {
            return error(xPathContext, (QNameValue) sequenceArr[0].head(), (StringValue) sequenceArr[1].head(), null);
        }
        if (length != 3) {
            return null;
        }
        return error(xPathContext, (QNameValue) sequenceArr[0].head(), (StringValue) sequenceArr[1].head(), sequenceArr[2].iterate());
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.Item error(net.p110sf.saxon.expr.XPathContext r8, net.p110sf.saxon.value.QNameValue r9, net.p110sf.saxon.value.StringValue r10, net.p110sf.saxon.om.SequenceIterator r11) throws net.p110sf.saxon.trans.XPathException {
        /*
            r7 = this;
            int r0 = r7.getArity()
            if (r0 <= 0) goto L7
            goto L8
        L7:
            r9 = 0
        L8:
            r0 = 1
            if (r9 != 0) goto L24
            net.sf.saxon.value.QNameValue r9 = new net.sf.saxon.value.QNameValue
            java.lang.String r2 = "err"
            java.lang.String r3 = "http://www.w3.org/2005/xqt-errors"
            int r1 = r7.getArity()
            if (r1 != r0) goto L1a
            java.lang.String r1 = "FOTY0004"
            goto L1c
        L1a:
            java.lang.String r1 = "FOER0000"
        L1c:
            r4 = r1
            net.sf.saxon.type.BuiltInAtomicType r5 = net.p110sf.saxon.type.BuiltInAtomicType.QNAME
            r6 = 0
            r1 = r9
            r1.<init>(r2, r3, r4, r5, r6)
        L24:
            int r1 = r7.getArity()
            java.lang.String r2 = ""
            if (r1 <= r0) goto L35
            if (r10 != 0) goto L30
            r10 = r2
            goto L37
        L30:
            java.lang.String r10 = r10.getStringValue()
            goto L37
        L35:
            java.lang.String r10 = "Error signalled by application call on error()"
        L37:
            net.sf.saxon.functions.Error$UserDefinedXPathException r1 = new net.sf.saxon.functions.Error$UserDefinedXPathException
            r1.<init>(r10)
            net.sf.saxon.om.StructuredQName r9 = r9.getStructuredQName()
            r1.setErrorCodeQName(r9)
            r1.setXPathContext(r8)
            int r7 = r7.getArity()
            r9 = 2
            if (r7 <= r9) goto Lb3
            if (r11 == 0) goto Lb3
            net.sf.saxon.om.GroundedValue r7 = net.p110sf.saxon.om.SequenceTool.toGroundedValue(r11)
            int r9 = r7.getLength()
            if (r9 != r0) goto Lb0
            net.sf.saxon.om.Item r9 = r7.head()
            boolean r10 = r9 instanceof net.p110sf.saxon.om.NodeInfo
            if (r10 == 0) goto Lb0
            net.sf.saxon.om.NodeInfo r9 = (net.p110sf.saxon.om.NodeInfo) r9
            int r10 = r9.getNodeKind()
            r11 = 9
            if (r10 != r11) goto Lb0
            net.sf.saxon.pattern.NameTest r10 = new net.sf.saxon.pattern.NameTest
            net.sf.saxon.Configuration r8 = r8.getConfiguration()
            net.sf.saxon.om.NamePool r8 = r8.getNamePool()
            java.lang.String r11 = "error"
            r10.<init>(r0, r2, r11, r8)
            r8 = 3
            net.sf.saxon.tree.iter.AxisIterator r8 = r9.iterateAxis(r8, r10)
            net.sf.saxon.om.NodeInfo r8 = r8.next()
            if (r8 == 0) goto Lb0
            java.lang.String r9 = "module"
            java.lang.String r9 = r8.getAttributeValue(r2, r9)
            java.lang.String r10 = "line"
            java.lang.String r10 = r8.getAttributeValue(r2, r10)
            r11 = -1
            if (r10 != 0) goto L95
            goto L9a
        L95:
            int r10 = java.lang.Integer.parseInt(r10)     // Catch: java.lang.NumberFormatException -> L9a
            goto L9b
        L9a:
            r10 = r11
        L9b:
            java.lang.String r0 = "column"
            java.lang.String r8 = r8.getAttributeValue(r2, r0)
            if (r8 != 0) goto La4
            goto La8
        La4:
            int r11 = java.lang.Integer.parseInt(r8)     // Catch: java.lang.NumberFormatException -> La8
        La8:
            net.sf.saxon.expr.parser.Loc r8 = new net.sf.saxon.expr.parser.Loc
            r8.<init>(r9, r10, r11)
            r1.setLocator(r8)
        Lb0:
            r1.setErrorObject(r7)
        Lb3:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.Error.error(net.sf.saxon.expr.XPathContext, net.sf.saxon.value.QNameValue, net.sf.saxon.value.StringValue, net.sf.saxon.om.SequenceIterator):net.sf.saxon.om.Item");
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return super.getSpecialProperties(expressionArr) & (-8388609);
    }

    public boolean isVacuousExpression() {
        return true;
    }
}
