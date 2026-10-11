package com.sun.org.apache.xalan.internal.templates;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xalan.internal.transformer.CountersTable;
import com.sun.org.apache.xalan.internal.transformer.DecimalToRoman;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.NodeVector;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xml.internal.utils.StringBufferPool;
import com.sun.org.apache.xml.internal.utils.res.CharArrayWrapper;
import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import com.sun.org.apache.xpath.internal.NodeSetDTM;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.apache.commons.math3.dfp.Dfp;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemNumber extends ElemTemplateElement {
    private static final DecimalToRoman[] m_romanConvertTable = {new DecimalToRoman(1000, "M", 900, "CM"), new DecimalToRoman(500, SardineUtil.DEFAULT_NAMESPACE_PREFIX, 400, "CD"), new DecimalToRoman(100, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, 90, "XC"), new DecimalToRoman(50, "L", 40, "XL"), new DecimalToRoman(10, "X", 9, "IX"), new DecimalToRoman(5, "V", 4, "IV"), new DecimalToRoman(1, "I", 1, "I")};
    static final long serialVersionUID = 8118472298274407610L;
    private CharArrayWrapper m_alphaCountTable = null;
    private XPath m_countMatchPattern = null;
    private XPath m_fromMatchPattern = null;
    private int m_level = 1;
    private XPath m_valueExpr = null;
    private AVT m_format_avt = null;
    private AVT m_lang_avt = null;
    private AVT m_lettervalue_avt = null;
    private AVT m_groupingSeparator_avt = null;
    private AVT m_groupingSize_avt = null;

    /* loaded from: classes10.dex */
    public class MyPrefixResolver implements PrefixResolver {
        DTM dtm;
        int handle;
        boolean handleNullPrefix;

        public MyPrefixResolver(Node node, DTM dtm, int i, boolean z) {
            this.dtm = dtm;
            this.handle = i;
            this.handleNullPrefix = z;
        }

        @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
        public String getBaseIdentifier() {
            return ElemNumber.this.getBaseIdentifier();
        }

        @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
        public String getNamespaceForPrefix(String str) {
            return this.dtm.getNamespaceURI(this.handle);
        }

        @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
        public boolean handlesNullPrefixes() {
            return this.handleNullPrefix;
        }

        @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
        public String getNamespaceForPrefix(String str, Node node) {
            return getNamespaceForPrefix(str);
        }
    }

    /* loaded from: classes10.dex */
    public class NumberFormatStringTokenizer {
        private int currentPosition;
        private int maxPosition;
        private String str;

        public NumberFormatStringTokenizer(String str) {
            this.str = str;
            this.maxPosition = str.length();
        }

        public int countTokens() {
            int i = this.currentPosition;
            int i2 = 0;
            while (i < this.maxPosition) {
                int i3 = i;
                while (i3 < this.maxPosition && Character.isLetterOrDigit(this.str.charAt(i3))) {
                    i3++;
                }
                if (i == i3 && !Character.isLetterOrDigit(this.str.charAt(i3))) {
                    i3++;
                }
                i = i3;
                i2++;
            }
            return i2;
        }

        public boolean hasMoreTokens() {
            return this.currentPosition < this.maxPosition;
        }

        public boolean isLetterOrDigitAhead() {
            for (int i = this.currentPosition; i < this.maxPosition; i++) {
                if (Character.isLetterOrDigit(this.str.charAt(i))) {
                    return true;
                }
            }
            return false;
        }

        public boolean nextIsSep() {
            return !Character.isLetterOrDigit(this.str.charAt(this.currentPosition));
        }

        public String nextToken() {
            int i = this.currentPosition;
            if (i >= this.maxPosition) {
                throw new NoSuchElementException();
            }
            while (true) {
                int i2 = this.currentPosition;
                if (i2 >= this.maxPosition || !Character.isLetterOrDigit(this.str.charAt(i2))) {
                    break;
                }
                this.currentPosition++;
            }
            int i3 = this.currentPosition;
            if (i == i3 && !Character.isLetterOrDigit(this.str.charAt(i3))) {
                this.currentPosition++;
            }
            return this.str.substring(i, this.currentPosition);
        }

        public void reset() {
            this.currentPosition = 0;
        }
    }

    private int findPrecedingOrAncestorOrSelf(XPathContext xPathContext, XPath xPath, XPath xPath2, int i, ElemNumber elemNumber) throws TransformerException {
        DTM dtm = xPathContext.getDTM(i);
        while (-1 != i) {
            if (xPath != null && xPath.getMatchScore(xPathContext, i) != Double.NEGATIVE_INFINITY) {
                return -1;
            }
            if (xPath2 != null && xPath2.getMatchScore(xPathContext, i) != Double.NEGATIVE_INFINITY) {
                return i;
            }
            int previousSibling = dtm.getPreviousSibling(i);
            if (-1 == previousSibling) {
                i = dtm.getParent(i);
            } else {
                i = dtm.getLastChild(previousSibling);
                if (i == -1) {
                    i = previousSibling;
                }
            }
        }
        return i;
    }

    private void getFormattedNumber(TransformerImpl transformerImpl, int i, char c, int i2, long j, FastStringBuffer fastStringBuffer) throws TransformerException {
        AVT avt = this.m_lettervalue_avt;
        String evaluate = avt != null ? avt.evaluate(transformerImpl.getXPathContext(), i, this) : null;
        switch (c) {
            case 'A':
                if (this.m_alphaCountTable == null) {
                    this.m_alphaCountTable = (CharArrayWrapper) XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, getLocale(transformerImpl, i)).getObject(XResourceBundle.LANG_ALPHABET);
                }
                int2alphaCount(j, this.m_alphaCountTable, fastStringBuffer);
                return;
            case 'I':
                fastStringBuffer.append(long2roman(j, true));
                return;
            case 'a':
                if (this.m_alphaCountTable == null) {
                    this.m_alphaCountTable = (CharArrayWrapper) XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, getLocale(transformerImpl, i)).getObject(XResourceBundle.LANG_ALPHABET);
                }
                FastStringBuffer fastStringBuffer2 = StringBufferPool.get();
                try {
                    int2alphaCount(j, this.m_alphaCountTable, fastStringBuffer2);
                    fastStringBuffer.append(fastStringBuffer2.toString().toLowerCase(getLocale(transformerImpl, i)));
                    return;
                } finally {
                    StringBufferPool.free(fastStringBuffer2);
                }
            case 'i':
                fastStringBuffer.append(long2roman(j, true).toLowerCase(getLocale(transformerImpl, i)));
                return;
            case 945:
                XResourceBundle loadResourceBundle = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale("el", ""));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    int2alphaCount(j, (CharArrayWrapper) loadResourceBundle.getObject(XResourceBundle.LANG_ALPHABET), fastStringBuffer);
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle));
                    return;
                }
            case 1072:
                XResourceBundle loadResourceBundle2 = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale("cy", ""));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    int2alphaCount(j, (CharArrayWrapper) loadResourceBundle2.getObject(XResourceBundle.LANG_ALPHABET), fastStringBuffer);
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle2));
                    return;
                }
            case 1488:
                XResourceBundle loadResourceBundle3 = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale("he", ""));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    int2alphaCount(j, (CharArrayWrapper) loadResourceBundle3.getObject(XResourceBundle.LANG_ALPHABET), fastStringBuffer);
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle3));
                    return;
                }
            case 3665:
                XResourceBundle loadResourceBundle4 = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale("th", ""));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    int2alphaCount(j, (CharArrayWrapper) loadResourceBundle4.getObject(XResourceBundle.LANG_ALPHABET), fastStringBuffer);
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle4));
                    return;
                }
            case 4304:
                XResourceBundle loadResourceBundle5 = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale("ka", ""));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    int2alphaCount(j, (CharArrayWrapper) loadResourceBundle5.getObject(XResourceBundle.LANG_ALPHABET), fastStringBuffer);
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle5));
                    return;
                }
            case 12354:
                XResourceBundle loadResourceBundle6 = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale(OcrValues.LANG_JAPANESE, "JP", "HA"));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    fastStringBuffer.append(int2singlealphaCount(j, (CharArrayWrapper) loadResourceBundle6.getObject(XResourceBundle.LANG_ALPHABET)));
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle6));
                    return;
                }
            case 12356:
                XResourceBundle loadResourceBundle7 = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale(OcrValues.LANG_JAPANESE, "JP", "HI"));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    fastStringBuffer.append(int2singlealphaCount(j, (CharArrayWrapper) loadResourceBundle7.getObject(XResourceBundle.LANG_ALPHABET)));
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle7));
                    return;
                }
            case 12450:
                XResourceBundle loadResourceBundle8 = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale(OcrValues.LANG_JAPANESE, "JP", "A"));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    fastStringBuffer.append(int2singlealphaCount(j, (CharArrayWrapper) loadResourceBundle8.getObject(XResourceBundle.LANG_ALPHABET)));
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle8));
                    return;
                }
            case 12452:
                XResourceBundle loadResourceBundle9 = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale(OcrValues.LANG_JAPANESE, "JP", "I"));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    fastStringBuffer.append(int2singlealphaCount(j, (CharArrayWrapper) loadResourceBundle9.getObject(XResourceBundle.LANG_ALPHABET)));
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle9));
                    return;
                }
            case 19968:
                XResourceBundle loadResourceBundle10 = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale("zh", BaseTLSIdentity.CERT_ATTRIBUTE_COMMON_NAME));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    int2alphaCount(j, (CharArrayWrapper) loadResourceBundle10.getObject(XResourceBundle.LANG_ALPHABET), fastStringBuffer);
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle10));
                    return;
                }
            case 22777:
                XResourceBundle loadResourceBundle11 = XResourceBundle.loadResourceBundle(XResourceBundle.LANG_BUNDLE_NAME, new Locale("zh", "TW"));
                if (evaluate == null || !evaluate.equals(Constants.ATTRVAL_TRADITIONAL)) {
                    int2alphaCount(j, (CharArrayWrapper) loadResourceBundle11.getObject(XResourceBundle.LANG_ALPHABET), fastStringBuffer);
                    return;
                } else {
                    fastStringBuffer.append(tradAlphaCount(j, loadResourceBundle11));
                    return;
                }
            default:
                DecimalFormat numberFormatter = getNumberFormatter(transformerImpl, i);
                String valueOf = numberFormatter == null ? String.valueOf(0) : numberFormatter.format(0L);
                String valueOf2 = numberFormatter == null ? String.valueOf(j) : numberFormatter.format(j);
                int length = i2 - valueOf2.length();
                for (int i3 = 0; i3 < length; i3++) {
                    fastStringBuffer.append(valueOf);
                }
                fastStringBuffer.append(valueOf2);
                return;
        }
    }

    private DecimalFormat getNumberFormatter(TransformerImpl transformerImpl, int i) throws TransformerException {
        DecimalFormat decimalFormat;
        Locale locale = (Locale) getLocale(transformerImpl, i).clone();
        AVT avt = this.m_groupingSeparator_avt;
        DecimalFormat decimalFormat2 = null;
        String evaluate = avt != null ? avt.evaluate(transformerImpl.getXPathContext(), i, this) : null;
        if (evaluate != null && !this.m_groupingSeparator_avt.isSimple() && evaluate.length() != 1) {
            transformerImpl.getMsgMgr().warn(this, "WG_ILLEGAL_ATTRIBUTE_VALUE", new Object[]{"name", this.m_groupingSeparator_avt.getName()});
        }
        AVT avt2 = this.m_groupingSize_avt;
        String evaluate2 = avt2 != null ? avt2.evaluate(transformerImpl.getXPathContext(), i, this) : null;
        if (evaluate == null || evaluate2 == null || evaluate.length() <= 0) {
            return null;
        }
        try {
            decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(locale);
        } catch (NumberFormatException unused) {
        }
        try {
            decimalFormat.setGroupingSize(Integer.valueOf(evaluate2).intValue());
            DecimalFormatSymbols decimalFormatSymbols = decimalFormat.getDecimalFormatSymbols();
            decimalFormatSymbols.setGroupingSeparator(evaluate.charAt(0));
            decimalFormat.setDecimalFormatSymbols(decimalFormatSymbols);
            decimalFormat.setGroupingUsed(true);
            return decimalFormat;
        } catch (NumberFormatException unused2) {
            decimalFormat2 = decimalFormat;
            decimalFormat2.setGroupingUsed(false);
            return decimalFormat2;
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        error("ER_CANNOT_ADD", new Object[]{elemTemplateElement.getNodeName(), getNodeName()});
        return null;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void callChildVisitors(XSLTVisitor xSLTVisitor, boolean z) {
        if (z) {
            XPath xPath = this.m_countMatchPattern;
            if (xPath != null) {
                xPath.getExpression().callVisitors(this.m_countMatchPattern, xSLTVisitor);
            }
            XPath xPath2 = this.m_fromMatchPattern;
            if (xPath2 != null) {
                xPath2.getExpression().callVisitors(this.m_fromMatchPattern, xSLTVisitor);
            }
            XPath xPath3 = this.m_valueExpr;
            if (xPath3 != null) {
                xPath3.getExpression().callVisitors(this.m_valueExpr, xSLTVisitor);
            }
            AVT avt = this.m_format_avt;
            if (avt != null) {
                avt.callVisitors(xSLTVisitor);
            }
            AVT avt2 = this.m_groupingSeparator_avt;
            if (avt2 != null) {
                avt2.callVisitors(xSLTVisitor);
            }
            AVT avt3 = this.m_groupingSize_avt;
            if (avt3 != null) {
                avt3.callVisitors(xSLTVisitor);
            }
            AVT avt4 = this.m_lang_avt;
            if (avt4 != null) {
                avt4.callVisitors(xSLTVisitor);
            }
            AVT avt5 = this.m_lettervalue_avt;
            if (avt5 != null) {
                avt5.callVisitors(xSLTVisitor);
            }
        }
        super.callChildVisitors(xSLTVisitor, z);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        StylesheetRoot.ComposeState composeState = stylesheetRoot.getComposeState();
        Vector variableNames = composeState.getVariableNames();
        XPath xPath = this.m_countMatchPattern;
        if (xPath != null) {
            xPath.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        AVT avt = this.m_format_avt;
        if (avt != null) {
            avt.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        XPath xPath2 = this.m_fromMatchPattern;
        if (xPath2 != null) {
            xPath2.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        AVT avt2 = this.m_groupingSeparator_avt;
        if (avt2 != null) {
            avt2.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        AVT avt3 = this.m_groupingSize_avt;
        if (avt3 != null) {
            avt3.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        AVT avt4 = this.m_lang_avt;
        if (avt4 != null) {
            avt4.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        AVT avt5 = this.m_lettervalue_avt;
        if (avt5 != null) {
            avt5.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        XPath xPath3 = this.m_valueExpr;
        if (xPath3 != null) {
            xPath3.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        String countString = getCountString(transformerImpl, transformerImpl.getXPathContext().getCurrentNode());
        try {
            try {
                transformerImpl.getResultTreeHandler().characters(countString.toCharArray(), 0, countString.length());
            } catch (SAXException e) {
                throw new TransformerException(e);
            }
        } finally {
            if (transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireTraceEndEvent(this);
            }
        }
    }

    public int findAncestor(XPathContext xPathContext, XPath xPath, XPath xPath2, int i, ElemNumber elemNumber) throws TransformerException {
        DTM dtm = xPathContext.getDTM(i);
        while (-1 != i && ((xPath == null || xPath.getMatchScore(xPathContext, i) == Double.NEGATIVE_INFINITY) && (xPath2 == null || xPath2.getMatchScore(xPathContext, i) == Double.NEGATIVE_INFINITY))) {
            i = dtm.getParent(i);
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c6 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String formatNumberList(com.sun.org.apache.xalan.internal.transformer.TransformerImpl r23, long[] r24, int r25) throws javax.xml.transform.TransformerException {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.templates.ElemNumber.formatNumberList(com.sun.org.apache.xalan.internal.transformer.TransformerImpl, long[], int):java.lang.String");
    }

    public XPath getCount() {
        return this.m_countMatchPattern;
    }

    public XPath getCountMatchPattern(XPathContext xPathContext, int i) throws TransformerException {
        XPath xPath = this.m_countMatchPattern;
        DTM dtm = xPathContext.getDTM(i);
        if (xPath != null) {
            return xPath;
        }
        short nodeType = dtm.getNodeType(i);
        if (nodeType == 1) {
            return new XPath(dtm.getNodeName(i), this, dtm.getNamespaceURI(i) == null ? new MyPrefixResolver(dtm.getNode(i), dtm, i, false) : new MyPrefixResolver(dtm.getNode(i), dtm, i, true), 1, xPathContext.getErrorListener());
        }
        if (nodeType == 2) {
            return new XPath("@" + dtm.getNodeName(i), this, this, 1, xPathContext.getErrorListener());
        }
        if (nodeType == 3 || nodeType == 4) {
            return new XPath("text()", this, this, 1, xPathContext.getErrorListener());
        }
        if (nodeType != 7) {
            if (nodeType == 8) {
                return new XPath("comment()", this, this, 1, xPathContext.getErrorListener());
            }
            if (nodeType != 9) {
                return null;
            }
            return new XPath("/", this, this, 1, xPathContext.getErrorListener());
        }
        return new XPath("pi(" + dtm.getNodeName(i) + MotionUtils.f31762d, this, this, 1, xPathContext.getErrorListener());
    }

    public String getCountString(TransformerImpl transformerImpl, int i) throws TransformerException {
        long[] jArr;
        XPathContext xPathContext = transformerImpl.getXPathContext();
        CountersTable countersTable = transformerImpl.getCountersTable();
        XPath xPath = this.m_valueExpr;
        if (xPath != null) {
            double floor = Math.floor(xPath.execute(xPathContext, i, this).num() + 0.5d);
            if (Double.isNaN(floor)) {
                return "NaN";
            }
            if (floor < 0.0d && Double.isInfinite(floor)) {
                return Dfp.f108008h;
            }
            if (Double.isInfinite(floor)) {
                return "Infinity";
            }
            if (floor == 0.0d) {
                return "0";
            }
            jArr = new long[]{(long) floor};
        } else {
            int i2 = this.m_level;
            if (3 == i2) {
                jArr = new long[]{countersTable.countNode(xPathContext, this, i)};
            } else {
                int size = getMatchingAncestors(xPathContext, i, 1 == i2).size() - 1;
                if (size >= 0) {
                    long[] jArr2 = new long[size + 1];
                    for (int i3 = size; i3 >= 0; i3--) {
                        jArr2[size - i3] = countersTable.countNode(xPathContext, this, r2.elementAt(i3));
                    }
                    jArr = jArr2;
                } else {
                    jArr = null;
                }
            }
        }
        return jArr != null ? formatNumberList(transformerImpl, jArr, i) : "";
    }

    public AVT getFormat() {
        return this.m_format_avt;
    }

    public XPath getFrom() {
        return this.m_fromMatchPattern;
    }

    public AVT getGroupingSeparator() {
        return this.m_groupingSeparator_avt;
    }

    public AVT getGroupingSize() {
        return this.m_groupingSize_avt;
    }

    public AVT getLang() {
        return this.m_lang_avt;
    }

    public AVT getLetterValue() {
        return this.m_lettervalue_avt;
    }

    public int getLevel() {
        return this.m_level;
    }

    public Locale getLocale(TransformerImpl transformerImpl, int i) throws TransformerException {
        if (this.m_lang_avt == null) {
            return Locale.getDefault();
        }
        String evaluate = this.m_lang_avt.evaluate(transformerImpl.getXPathContext(), i, this);
        if (evaluate != null) {
            return new Locale(evaluate.toUpperCase(), "");
        }
        return null;
    }

    public NodeVector getMatchingAncestors(XPathContext xPathContext, int i, boolean z) throws TransformerException {
        XPath xPath;
        NodeSetDTM nodeSetDTM = new NodeSetDTM(xPathContext.getDTMManager());
        XPath countMatchPattern = getCountMatchPattern(xPathContext, i);
        DTM dtm = xPathContext.getDTM(i);
        while (-1 != i && ((xPath = this.m_fromMatchPattern) == null || xPath.getMatchScore(xPathContext, i) == Double.NEGATIVE_INFINITY || z)) {
            if (countMatchPattern == null) {
                System.out.println("Programmers error! countMatchPattern should never be null!");
            }
            if (countMatchPattern.getMatchScore(xPathContext, i) != Double.NEGATIVE_INFINITY) {
                nodeSetDTM.addElement(i);
                if (z) {
                    break;
                }
            }
            i = dtm.getParent(i);
        }
        return nodeSetDTM;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "number";
    }

    public int getPreviousNode(XPathContext xPathContext, int i) throws TransformerException {
        XPath countMatchPattern = getCountMatchPattern(xPathContext, i);
        DTM dtm = xPathContext.getDTM(i);
        if (3 != this.m_level) {
            while (-1 != i) {
                i = dtm.getPreviousSibling(i);
                if (-1 != i && (countMatchPattern == null || countMatchPattern.getMatchScore(xPathContext, i) != Double.NEGATIVE_INFINITY)) {
                    break;
                }
            }
        } else {
            XPath xPath = this.m_fromMatchPattern;
            while (-1 != i) {
                int previousSibling = dtm.getPreviousSibling(i);
                if (-1 == previousSibling) {
                    i = dtm.getParent(i);
                    if (-1 != i && ((xPath != null && xPath.getMatchScore(xPathContext, i) != Double.NEGATIVE_INFINITY) || dtm.getNodeType(i) == 9)) {
                        return -1;
                    }
                    if (-1 == i && (countMatchPattern == null || countMatchPattern.getMatchScore(xPathContext, i) != Double.NEGATIVE_INFINITY)) {
                        break;
                    }
                }
                while (true) {
                    i = previousSibling;
                    while (-1 != previousSibling) {
                        previousSibling = dtm.getLastChild(i);
                        if (-1 != previousSibling) {
                            break;
                        }
                    }
                }
                if (-1 == i) {
                }
            }
        }
        return i;
    }

    public int getTargetNode(XPathContext xPathContext, int i) throws TransformerException {
        XPath countMatchPattern = getCountMatchPattern(xPathContext, i);
        return 3 == this.m_level ? findPrecedingOrAncestorOrSelf(xPathContext, this.m_fromMatchPattern, countMatchPattern, i, this) : findAncestor(xPathContext, this.m_fromMatchPattern, countMatchPattern, i, this);
    }

    public XPath getValue() {
        return this.m_valueExpr;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 35;
    }

    public String getZeroString() {
        return "0";
    }

    public void int2alphaCount(long j, CharArrayWrapper charArrayWrapper, FastStringBuffer fastStringBuffer) {
        int i;
        int length = charArrayWrapper.getLength();
        char[] cArr = new char[length];
        int i2 = 0;
        while (true) {
            i = length - 1;
            if (i2 >= i) {
                break;
            }
            int i3 = i2 + 1;
            cArr[i3] = charArrayWrapper.getChar(i2);
            i2 = i3;
        }
        cArr[0] = charArrayWrapper.getChar(i2);
        char[] cArr2 = new char[100];
        int i4 = 1;
        long j2 = 0;
        int i5 = 99;
        long j3 = j;
        while (true) {
            j2 = (i4 == 0 || (j2 != 0 && i4 == i)) ? i : 0L;
            i4 = ((int) (j3 + j2)) % length;
            j3 /= length;
            if (i4 == 0 && j3 == 0) {
                break;
            }
            int i6 = i5 - 1;
            cArr2[i5] = cArr[i4];
            if (j3 <= 0) {
                i5 = i6;
                break;
            }
            i5 = i6;
        }
        fastStringBuffer.append(cArr2, i5 + 1, (100 - i5) - 1);
    }

    public String int2singlealphaCount(long j, CharArrayWrapper charArrayWrapper) {
        return j > ((long) charArrayWrapper.getLength()) ? getZeroString() : new Character(charArrayWrapper.getChar(((int) j) - 1)).toString();
    }

    public String long2roman(long j, boolean z) {
        if (j <= 0) {
            return getZeroString();
        }
        if (j > 3999) {
            return "#error";
        }
        String str = "";
        int i = 0;
        while (true) {
            DecimalToRoman[] decimalToRomanArr = m_romanConvertTable;
            DecimalToRoman decimalToRoman = decimalToRomanArr[i];
            if (j >= decimalToRoman.m_postValue) {
                str = str + decimalToRomanArr[i].m_postLetter;
                j -= decimalToRomanArr[i].m_postValue;
            } else {
                if (z && j >= decimalToRoman.m_preValue) {
                    str = str + decimalToRomanArr[i].m_preLetter;
                    j -= decimalToRomanArr[i].m_preValue;
                }
                i++;
                if (j <= 0) {
                    return str;
                }
            }
        }
    }

    public void setCount(XPath xPath) {
        this.m_countMatchPattern = xPath;
    }

    public void setFormat(AVT avt) {
        this.m_format_avt = avt;
    }

    public void setFrom(XPath xPath) {
        this.m_fromMatchPattern = xPath;
    }

    public void setGroupingSeparator(AVT avt) {
        this.m_groupingSeparator_avt = avt;
    }

    public void setGroupingSize(AVT avt) {
        this.m_groupingSize_avt = avt;
    }

    public void setLang(AVT avt) {
        this.m_lang_avt = avt;
    }

    public void setLetterValue(AVT avt) {
        this.m_lettervalue_avt = avt;
    }

    public void setLevel(int i) {
        this.m_level = i;
    }

    public void setValue(XPath xPath) {
        this.m_valueExpr = xPath;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0155 A[LOOP:1: B:16:0x0064->B:26:0x0155, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0161 A[EDGE_INSN: B:27:0x0161->B:28:0x0161 BREAK  A[LOOP:1: B:16:0x0064->B:26:0x0155], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String tradAlphaCount(long r22, com.sun.org.apache.xml.internal.utils.res.XResourceBundle r24) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.templates.ElemNumber.tradAlphaCount(long, com.sun.org.apache.xml.internal.utils.res.XResourceBundle):java.lang.String");
    }
}
