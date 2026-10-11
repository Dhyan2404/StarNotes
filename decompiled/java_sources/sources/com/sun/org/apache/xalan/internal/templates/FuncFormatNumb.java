package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xml.internal.utils.SAXSourceLocator;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.functions.Function3Args;
import com.sun.org.apache.xpath.internal.functions.WrongNumberArgsException;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class FuncFormatNumb extends Function3Args {
    static final long serialVersionUID = -8869935264870858636L;

    @Override // com.sun.org.apache.xpath.internal.functions.Function3Args, com.sun.org.apache.xpath.internal.functions.Function2Args, com.sun.org.apache.xpath.internal.functions.FunctionOneArg, com.sun.org.apache.xpath.internal.functions.Function
    public void checkNumberArgs(int i) throws WrongNumberArgsException {
        if (i > 3 || i < 2) {
            reportWrongNumberArgs();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0065 A[Catch: Exception -> 0x00a6, TryCatch #0 {Exception -> 0x00a6, blocks: (B:5:0x002f, B:7:0x0035, B:9:0x004c, B:10:0x0056, B:12:0x0065, B:14:0x0072, B:16:0x007f, B:17:0x009c), top: B:4:0x002f }] */
    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xpath.internal.objects.XObject execute(com.sun.org.apache.xpath.internal.XPathContext r9) throws javax.xml.transform.TransformerException {
        /*
            r8 = this;
            com.sun.org.apache.xml.internal.utils.PrefixResolver r0 = r9.getNamespaceContext()
            com.sun.org.apache.xalan.internal.templates.ElemTemplateElement r0 = (com.sun.org.apache.xalan.internal.templates.ElemTemplateElement) r0
            com.sun.org.apache.xalan.internal.templates.StylesheetRoot r1 = r0.getStylesheetRoot()
            com.sun.org.apache.xpath.internal.Expression r2 = r8.getArg0()
            com.sun.org.apache.xpath.internal.objects.XObject r2 = r2.execute(r9)
            double r2 = r2.num()
            com.sun.org.apache.xpath.internal.Expression r4 = r8.getArg1()
            com.sun.org.apache.xpath.internal.objects.XObject r4 = r4.execute(r9)
            java.lang.String r4 = r4.str()
            r5 = 164(0xa4, float:2.3E-43)
            int r5 = r4.indexOf(r5)
            if (r5 <= 0) goto L2f
            java.lang.String r5 = "ER_CURRENCY_SIGN_ILLEGAL"
            r1.error(r5)
        L2f:
            com.sun.org.apache.xpath.internal.Expression r5 = r8.getArg2()     // Catch: java.lang.Exception -> La6
            if (r5 == 0) goto L62
            com.sun.org.apache.xpath.internal.objects.XObject r5 = r5.execute(r9)     // Catch: java.lang.Exception -> La6
            java.lang.String r5 = r5.str()     // Catch: java.lang.Exception -> La6
            com.sun.org.apache.xml.internal.utils.QName r6 = new com.sun.org.apache.xml.internal.utils.QName     // Catch: java.lang.Exception -> La6
            com.sun.org.apache.xml.internal.utils.PrefixResolver r7 = r9.getNamespaceContext()     // Catch: java.lang.Exception -> La6
            r6.<init>(r5, r7)     // Catch: java.lang.Exception -> La6
            java.text.DecimalFormatSymbols r6 = r1.getDecimalFormatComposed(r6)     // Catch: java.lang.Exception -> La6
            if (r6 != 0) goto L56
            java.lang.String r6 = "WG_NO_DECIMALFORMAT_DECLARATION"
            java.lang.Object[] r5 = new java.lang.Object[]{r5}     // Catch: java.lang.Exception -> La6
            r8.warn(r9, r6, r5)     // Catch: java.lang.Exception -> La6
            goto L62
        L56:
            java.text.DecimalFormat r8 = new java.text.DecimalFormat     // Catch: java.lang.Exception -> La6
            r8.<init>()     // Catch: java.lang.Exception -> La6
            r8.setDecimalFormatSymbols(r6)     // Catch: java.lang.Exception -> La6
            r8.applyLocalizedPattern(r4)     // Catch: java.lang.Exception -> La6
            goto L63
        L62:
            r8 = 0
        L63:
            if (r8 != 0) goto L9c
            com.sun.org.apache.xml.internal.utils.QName r8 = new com.sun.org.apache.xml.internal.utils.QName     // Catch: java.lang.Exception -> La6
            java.lang.String r9 = ""
            r8.<init>(r9)     // Catch: java.lang.Exception -> La6
            java.text.DecimalFormatSymbols r8 = r1.getDecimalFormatComposed(r8)     // Catch: java.lang.Exception -> La6
            if (r8 == 0) goto L7f
            java.text.DecimalFormat r9 = new java.text.DecimalFormat     // Catch: java.lang.Exception -> La6
            r9.<init>()     // Catch: java.lang.Exception -> La6
            r9.setDecimalFormatSymbols(r8)     // Catch: java.lang.Exception -> La6
            r9.applyLocalizedPattern(r4)     // Catch: java.lang.Exception -> La6
        L7d:
            r8 = r9
            goto L9c
        L7f:
            java.text.DecimalFormatSymbols r8 = new java.text.DecimalFormatSymbols     // Catch: java.lang.Exception -> La6
            java.util.Locale r9 = java.util.Locale.US     // Catch: java.lang.Exception -> La6
            r8.<init>(r9)     // Catch: java.lang.Exception -> La6
            java.lang.String r9 = "Infinity"
            r8.setInfinity(r9)     // Catch: java.lang.Exception -> La6
            java.lang.String r9 = "NaN"
            r8.setNaN(r9)     // Catch: java.lang.Exception -> La6
            java.text.DecimalFormat r9 = new java.text.DecimalFormat     // Catch: java.lang.Exception -> La6
            r9.<init>()     // Catch: java.lang.Exception -> La6
            r9.setDecimalFormatSymbols(r8)     // Catch: java.lang.Exception -> La6
            r9.applyLocalizedPattern(r4)     // Catch: java.lang.Exception -> La6
            goto L7d
        L9c:
            com.sun.org.apache.xpath.internal.objects.XString r9 = new com.sun.org.apache.xpath.internal.objects.XString     // Catch: java.lang.Exception -> La6
            java.lang.String r8 = r8.format(r2)     // Catch: java.lang.Exception -> La6
            r9.<init>(r8)     // Catch: java.lang.Exception -> La6
            return r9
        La6:
            java.lang.String r8 = "ER_MALFORMED_FORMAT_STRING"
            java.lang.Object[] r9 = new java.lang.Object[]{r4}
            r0.error(r8, r9)
            com.sun.org.apache.xpath.internal.objects.XString r8 = com.sun.org.apache.xpath.internal.objects.XString.EMPTYSTRING
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.templates.FuncFormatNumb.execute(com.sun.org.apache.xpath.internal.XPathContext):com.sun.org.apache.xpath.internal.objects.XObject");
    }

    @Override // com.sun.org.apache.xpath.internal.functions.Function3Args, com.sun.org.apache.xpath.internal.functions.Function2Args, com.sun.org.apache.xpath.internal.functions.FunctionOneArg, com.sun.org.apache.xpath.internal.functions.Function
    public void reportWrongNumberArgs() throws WrongNumberArgsException {
        throw new WrongNumberArgsException(XSLMessages.createMessage("ER_TWO_OR_THREE", null));
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public void warn(XPathContext xPathContext, String str, Object[] objArr) throws TransformerException {
        xPathContext.getErrorListener().warning(new TransformerException(XSLMessages.createWarning(str, objArr), (SAXSourceLocator) xPathContext.getSAXLocator()));
    }
}
