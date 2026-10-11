package com.sun.org.apache.xpath.internal.functions;

import com.sun.org.apache.xpath.internal.res.XPATHMessages;

/* loaded from: classes10.dex */
public class FuncSubstring extends Function3Args {
    static final long serialVersionUID = -5996676095024715502L;

    @Override // com.sun.org.apache.xpath.internal.functions.Function3Args, com.sun.org.apache.xpath.internal.functions.Function2Args, com.sun.org.apache.xpath.internal.functions.FunctionOneArg, com.sun.org.apache.xpath.internal.functions.Function
    public void checkNumberArgs(int i) throws WrongNumberArgsException {
        if (i < 2) {
            reportWrongNumberArgs();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xpath.internal.objects.XObject execute(com.sun.org.apache.xpath.internal.XPathContext r9) throws javax.xml.transform.TransformerException {
        /*
            r8 = this;
            com.sun.org.apache.xpath.internal.Expression r0 = r8.m_arg0
            com.sun.org.apache.xpath.internal.objects.XObject r0 = r0.execute(r9)
            com.sun.org.apache.xml.internal.utils.XMLString r0 = r0.xstr()
            com.sun.org.apache.xpath.internal.Expression r1 = r8.m_arg1
            com.sun.org.apache.xpath.internal.objects.XObject r1 = r1.execute(r9)
            double r1 = r1.num()
            int r3 = r0.length()
            if (r3 > 0) goto L1d
            com.sun.org.apache.xpath.internal.objects.XString r8 = com.sun.org.apache.xpath.internal.objects.XString.EMPTYSTRING
            return r8
        L1d:
            boolean r4 = java.lang.Double.isNaN(r1)
            r5 = 0
            if (r4 == 0) goto L2b
            r1 = -4526534890170089472(0xc12e848000000000, double:-1000000.0)
        L29:
            r4 = r5
            goto L39
        L2b:
            long r1 = java.lang.Math.round(r1)
            double r1 = (double) r1
            r6 = 0
            int r4 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r4 <= 0) goto L29
            int r4 = (int) r1
            int r4 = r4 + (-1)
        L39:
            com.sun.org.apache.xpath.internal.Expression r8 = r8.m_arg2
            if (r8 == 0) goto L5b
            double r8 = r8.num(r9)
            long r8 = java.lang.Math.round(r8)
            double r8 = (double) r8
            double r8 = r8 + r1
            int r8 = (int) r8
            int r8 = r8 + (-1)
            if (r8 >= 0) goto L4d
            goto L52
        L4d:
            if (r8 <= r3) goto L51
            r5 = r3
            goto L52
        L51:
            r5 = r8
        L52:
            if (r4 <= r3) goto L55
            goto L56
        L55:
            r3 = r4
        L56:
            com.sun.org.apache.xml.internal.utils.XMLString r8 = r0.substring(r3, r5)
            goto L63
        L5b:
            if (r4 <= r3) goto L5e
            goto L5f
        L5e:
            r3 = r4
        L5f:
            com.sun.org.apache.xml.internal.utils.XMLString r8 = r0.substring(r3)
        L63:
            com.sun.org.apache.xpath.internal.objects.XString r8 = (com.sun.org.apache.xpath.internal.objects.XString) r8
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.functions.FuncSubstring.execute(com.sun.org.apache.xpath.internal.XPathContext):com.sun.org.apache.xpath.internal.objects.XObject");
    }

    @Override // com.sun.org.apache.xpath.internal.functions.Function3Args, com.sun.org.apache.xpath.internal.functions.Function2Args, com.sun.org.apache.xpath.internal.functions.FunctionOneArg, com.sun.org.apache.xpath.internal.functions.Function
    public void reportWrongNumberArgs() throws WrongNumberArgsException {
        throw new WrongNumberArgsException(XPATHMessages.createXPATHMessage("ER_TWO_OR_THREE", null));
    }
}
