package com.sun.org.apache.xpath.internal.compiler;

import com.google.android.material.motion.MotionUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.base.data.Operators;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xml.internal.utils.ObjectVector;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xpath.internal.XPathProcessorException;
import com.sun.org.apache.xpath.internal.domapi.XPathStylesheetDOM3Exception;
import com.sun.org.apache.xpath.internal.objects.XNumber;
import com.sun.org.apache.xpath.internal.objects.XString;
import com.sun.org.apache.xpath.internal.res.XPATHErrorResources;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import com.sunia.HTREnginev2.gon;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes10.dex */
public class XPathParser {
    public static final String CONTINUE_AFTER_FATAL_ERROR = "CONTINUE_AFTER_FATAL_ERROR";
    protected static final int FILTER_MATCH_FAILED = 0;
    protected static final int FILTER_MATCH_PREDICATES = 2;
    protected static final int FILTER_MATCH_PRIMARY = 1;
    private ErrorListener m_errorListener;
    private FunctionTable m_functionTable;
    PrefixResolver m_namespaceContext;
    private OpMap m_ops;
    SourceLocator m_sourceLocator;
    transient String m_token;
    transient char m_tokenChar = 0;
    int m_queueMark = 0;

    public XPathParser(ErrorListener errorListener, SourceLocator sourceLocator) {
        this.m_errorListener = errorListener;
        this.m_sourceLocator = sourceLocator;
    }

    private void assertion(boolean z, String str) {
        if (!z) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_INCORRECT_PROGRAMMER_ASSERTION", new Object[]{str}));
        }
    }

    private final void consumeExpected(String str) throws TransformerException {
        if (tokenIs(str)) {
            nextToken();
        } else {
            error("ER_EXPECTED_BUT_FOUND", new Object[]{str, this.m_token});
            throw new XPathProcessorException(CONTINUE_AFTER_FATAL_ERROR);
        }
    }

    private final String getTokenRelative(int i) {
        int i2 = this.m_queueMark + i;
        if (i2 <= 0 || i2 >= this.m_ops.getTokenQueueSize()) {
            return null;
        }
        return (String) this.m_ops.m_tokenQueue.elementAt(i2);
    }

    private final boolean lookbehind(char c, int i) {
        int i2 = this.m_queueMark - (i + 1);
        if (i2 < 0) {
            return false;
        }
        String str = (String) this.m_ops.m_tokenQueue.elementAt(i2);
        if (str.length() != 1) {
            return false;
        }
        char charAt = str.charAt(0);
        return charAt != '|' && charAt == c;
    }

    private final boolean lookbehindHasToken(int i) {
        int i2 = this.m_queueMark;
        if (i2 - i <= 0) {
            return false;
        }
        String str = (String) this.m_ops.m_tokenQueue.elementAt(i2 - (i - 1));
        return (str == null ? '|' : str.charAt(0)) != '|';
    }

    private final void nextToken() {
        if (this.m_queueMark >= this.m_ops.getTokenQueueSize()) {
            this.m_token = null;
            this.m_tokenChar = (char) 0;
            return;
        }
        ObjectVector objectVector = this.m_ops.m_tokenQueue;
        int i = this.m_queueMark;
        this.m_queueMark = i + 1;
        String str = (String) objectVector.elementAt(i);
        this.m_token = str;
        this.m_tokenChar = str.charAt(0);
    }

    private final void prevToken() {
        int i = this.m_queueMark;
        if (i <= 0) {
            this.m_token = null;
            this.m_tokenChar = (char) 0;
            return;
        }
        int i2 = i - 1;
        this.m_queueMark = i2;
        String str = (String) this.m_ops.m_tokenQueue.elementAt(i2);
        this.m_token = str;
        this.m_tokenChar = str.charAt(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x00a0 A[LOOP:0: B:6:0x0098->B:8:0x00a0, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean AbbreviatedNodeTestStep(boolean r10) throws javax.xml.transform.TransformerException {
        /*
            r9 = this;
            com.sun.org.apache.xpath.internal.compiler.OpMap r0 = r9.m_ops
            r1 = 1
            int r0 = r0.getOp(r1)
            r2 = 64
            boolean r2 = r9.tokenIs(r2)
            r3 = 52
            r4 = 51
            r5 = 47
            r6 = 2
            r7 = -1
            if (r2 == 0) goto L1f
            r9.appendOp(r6, r4)
            r9.nextToken()
        L1d:
            r10 = r7
            goto L7d
        L1f:
            java.lang.String r2 = "::"
            boolean r2 = r9.lookahead(r2, r1)
            r8 = 53
            if (r2 == 0) goto L5d
            java.lang.String r10 = "attribute"
            boolean r10 = r9.tokenIs(r10)
            if (r10 == 0) goto L36
            r9.appendOp(r6, r4)
            r10 = r7
            goto L56
        L36:
            java.lang.String r10 = "child"
            boolean r10 = r9.tokenIs(r10)
            if (r10 == 0) goto L49
            com.sun.org.apache.xpath.internal.compiler.OpMap r10 = r9.m_ops
            int r10 = r10.getOp(r1)
            r9.appendOp(r6, r8)
            r4 = r8
            goto L56
        L49:
            java.lang.String r10 = r9.m_token
            java.lang.Object[] r10 = new java.lang.Object[]{r10}
            java.lang.String r2 = "ER_AXES_NOT_ALLOWED"
            r9.error(r2, r10)
            r10 = r7
            r4 = r10
        L56:
            r9.nextToken()
            r9.nextToken()
            goto L7d
        L5d:
            boolean r2 = r9.tokenIs(r5)
            if (r2 == 0) goto L73
            if (r10 != 0) goto L6b
            java.lang.String r10 = "ER_EXPECTED_STEP_PATTERN"
            r2 = 0
            r9.error(r10, r2)
        L6b:
            r9.appendOp(r6, r3)
            r9.nextToken()
            r4 = r3
            goto L1d
        L73:
            com.sun.org.apache.xpath.internal.compiler.OpMap r10 = r9.m_ops
            int r10 = r10.getOp(r1)
            r9.appendOp(r6, r8)
            r4 = r8
        L7d:
            com.sun.org.apache.xpath.internal.compiler.OpMap r2 = r9.m_ops
            int r6 = r2.getOp(r1)
            int r6 = r6 + r1
            r2.setOp(r1, r6)
            r9.NodeTest(r4)
            com.sun.org.apache.xpath.internal.compiler.OpMap r2 = r9.m_ops
            int r4 = r0 + 1
            int r6 = r4 + 1
            int r8 = r2.getOp(r1)
            int r8 = r8 - r0
            r2.setOp(r6, r8)
        L98:
            r2 = 91
            boolean r2 = r9.tokenIs(r2)
            if (r2 == 0) goto La4
            r9.Predicate()
            goto L98
        La4:
            if (r10 <= r7) goto Lbc
            boolean r2 = r9.tokenIs(r5)
            if (r2 == 0) goto Lbc
            boolean r2 = r9.lookahead(r5, r1)
            if (r2 == 0) goto Lbc
            com.sun.org.apache.xpath.internal.compiler.OpMap r2 = r9.m_ops
            r2.setOp(r10, r3)
            r9.nextToken()
            r10 = r1
            goto Lbd
        Lbc:
            r10 = 0
        Lbd:
            com.sun.org.apache.xpath.internal.compiler.OpMap r9 = r9.m_ops
            int r1 = r9.getOp(r1)
            int r1 = r1 - r0
            r9.setOp(r4, r1)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.compiler.XPathParser.AbbreviatedNodeTestStep(boolean):boolean");
    }

    public int AdditiveExpr(int i) throws TransformerException {
        int AdditiveExpr;
        int op = this.m_ops.getOp(1);
        if (-1 == i) {
            i = op;
        }
        MultiplicativeExpr(-1);
        if (this.m_token == null) {
            return i;
        }
        if (tokenIs(PhoneNumberUtil.f36455s)) {
            nextToken();
            insertOp(i, 2, 10);
            int op2 = this.m_ops.getOp(1) - i;
            AdditiveExpr = AdditiveExpr(i);
            OpMap opMap = this.m_ops;
            opMap.setOp(AdditiveExpr + 1, opMap.getOp(AdditiveExpr + op2 + 1) + op2);
        } else {
            if (!tokenIs('-')) {
                return i;
            }
            nextToken();
            insertOp(i, 2, 11);
            int op3 = this.m_ops.getOp(1) - i;
            AdditiveExpr = AdditiveExpr(i);
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(AdditiveExpr + 1, opMap2.getOp(AdditiveExpr + op3 + 1) + op3);
        }
        return AdditiveExpr + 2;
    }

    public void AndExpr() throws TransformerException {
        int op = this.m_ops.getOp(1);
        EqualityExpr(-1);
        if (this.m_token == null || !tokenIs(Operators.AND)) {
            return;
        }
        nextToken();
        insertOp(op, 2, 3);
        AndExpr();
        OpMap opMap = this.m_ops;
        opMap.setOp(op + 1, opMap.getOp(1) - op);
    }

    public void Argument() throws TransformerException {
        int op = this.m_ops.getOp(1);
        appendOp(2, 26);
        Expr();
        OpMap opMap = this.m_ops;
        opMap.setOp(op + 1, opMap.getOp(1) - op);
    }

    public int AxisName() throws TransformerException {
        Object axisName = Keywords.getAxisName(this.m_token);
        if (axisName == null) {
            error("ER_ILLEGAL_AXIS_NAME", new Object[]{this.m_token});
        }
        int intValue = ((Integer) axisName).intValue();
        appendOp(2, intValue);
        return intValue;
    }

    public void Basis() throws TransformerException {
        int i;
        int op = this.m_ops.getOp(1);
        if (lookahead("::", 1)) {
            i = AxisName();
            nextToken();
            nextToken();
        } else if (tokenIs('@')) {
            i = 39;
            appendOp(2, 39);
            nextToken();
        } else {
            i = 40;
            appendOp(2, 40);
        }
        OpMap opMap = this.m_ops;
        opMap.setOp(1, opMap.getOp(1) + 1);
        NodeTest(i);
        OpMap opMap2 = this.m_ops;
        opMap2.setOp(op + 1 + 1, opMap2.getOp(1) - op);
    }

    public void BooleanExpr() throws TransformerException {
        int op = this.m_ops.getOp(1);
        appendOp(2, 18);
        Expr();
        int op2 = this.m_ops.getOp(1) - op;
        if (op2 == 2) {
            error("ER_BOOLEAN_ARG_NO_LONGER_OPTIONAL", null);
        }
        this.m_ops.setOp(op + 1, op2);
    }

    public int EqualityExpr(int i) throws TransformerException {
        int EqualityExpr;
        int op = this.m_ops.getOp(1);
        if (-1 == i) {
            i = op;
        }
        RelationalExpr(-1);
        if (this.m_token == null) {
            return i;
        }
        if (tokenIs(PublicSuffixDatabase.f103895g) && lookahead('=', 1)) {
            nextToken();
            nextToken();
            insertOp(i, 2, 4);
            int op2 = this.m_ops.getOp(1) - i;
            EqualityExpr = EqualityExpr(i);
            OpMap opMap = this.m_ops;
            opMap.setOp(EqualityExpr + 1, opMap.getOp(EqualityExpr + op2 + 1) + op2);
        } else {
            if (!tokenIs('=')) {
                return i;
            }
            nextToken();
            insertOp(i, 2, 5);
            int op3 = this.m_ops.getOp(1) - i;
            EqualityExpr = EqualityExpr(i);
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(EqualityExpr + 1, opMap2.getOp(EqualityExpr + op3 + 1) + op3);
        }
        return EqualityExpr + 2;
    }

    public void Expr() throws TransformerException {
        OrExpr();
    }

    public int FilterExpr() throws TransformerException {
        int op = this.m_ops.getOp(1);
        if (!PrimaryExpr()) {
            return 0;
        }
        if (!tokenIs('[')) {
            return 1;
        }
        insertOp(op, 2, 28);
        while (tokenIs('[')) {
            Predicate();
        }
        return 2;
    }

    public boolean FunctionCall() throws TransformerException {
        int op = this.m_ops.getOp(1);
        if (!lookahead(':', 1)) {
            int functionToken = getFunctionToken(this.m_token);
            if (-1 == functionToken) {
                error("ER_COULDNOT_FIND_FUNCTION", new Object[]{this.m_token});
            }
            switch (functionToken) {
                case 1030:
                case OpCodes.NODETYPE_TEXT /* 1031 */:
                case OpCodes.NODETYPE_PI /* 1032 */:
                case 1033:
                    return false;
                default:
                    appendOp(3, 25);
                    this.m_ops.setOp(op + 1 + 1, functionToken);
                    nextToken();
                    break;
            }
        } else {
            appendOp(4, 24);
            int i = op + 1;
            this.m_ops.setOp(i + 1, this.m_queueMark - 1);
            nextToken();
            consumeExpected(':');
            this.m_ops.setOp(i + 2, this.m_queueMark - 1);
            nextToken();
        }
        consumeExpected('(');
        while (!tokenIs(')') && this.m_token != null) {
            if (tokenIs(',')) {
                error("ER_FOUND_COMMA_BUT_NO_PRECEDING_ARG", null);
            }
            Argument();
            if (!tokenIs(')')) {
                consumeExpected(',');
                if (tokenIs(')')) {
                    error("ER_FOUND_COMMA_BUT_NO_FOLLOWING_ARG", null);
                }
            }
        }
        consumeExpected(')');
        OpMap opMap = this.m_ops;
        opMap.setOp(opMap.getOp(1), -1);
        OpMap opMap2 = this.m_ops;
        opMap2.setOp(1, opMap2.getOp(1) + 1);
        OpMap opMap3 = this.m_ops;
        opMap3.setOp(op + 1, opMap3.getOp(1) - op);
        return true;
    }

    public void IdKeyPattern() throws TransformerException {
        FunctionCall();
    }

    public void Literal() throws TransformerException {
        int length = this.m_token.length() - 1;
        char c = this.m_tokenChar;
        char charAt = this.m_token.charAt(length);
        if ((c != '\"' || charAt != '\"') && (c != '\'' || charAt != '\'')) {
            error("ER_PATTERN_LITERAL_NEEDS_BE_QUOTED", new Object[]{this.m_token});
            return;
        }
        int i = this.m_queueMark - 1;
        this.m_ops.m_tokenQueue.setElementAt(null, i);
        this.m_ops.m_tokenQueue.setElementAt(new XString(this.m_token.substring(1, length)), i);
        OpMap opMap = this.m_ops;
        opMap.setOp(opMap.getOp(1), i);
        OpMap opMap2 = this.m_ops;
        opMap2.setOp(1, opMap2.getOp(1) + 1);
        nextToken();
    }

    public void LocationPath() throws TransformerException {
        int op = this.m_ops.getOp(1);
        appendOp(2, 28);
        boolean z = tokenIs('/');
        if (z) {
            appendOp(4, 50);
            OpMap opMap = this.m_ops;
            opMap.setOp(opMap.getOp(1) - 2, 4);
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(opMap2.getOp(1) - 1, 35);
            nextToken();
        } else if (this.m_token == null) {
            error(XPATHErrorResources.ER_EXPECTED_LOC_PATH_AT_END_EXPR, null);
        }
        if (this.m_token != null && !RelativeLocationPath() && !z) {
            error("ER_EXPECTED_LOC_PATH", new Object[]{this.m_token});
        }
        OpMap opMap3 = this.m_ops;
        opMap3.setOp(opMap3.getOp(1), -1);
        OpMap opMap4 = this.m_ops;
        opMap4.setOp(1, opMap4.getOp(1) + 1);
        OpMap opMap5 = this.m_ops;
        opMap5.setOp(op + 1, opMap5.getOp(1) - op);
    }

    public void LocationPathPattern() throws TransformerException {
        char c;
        int op = this.m_ops.getOp(1);
        appendOp(2, 31);
        if (lookahead('(', 1) && (tokenIs("id") || tokenIs("key"))) {
            IdKeyPattern();
            if (tokenIs('/')) {
                nextToken();
                if (tokenIs('/')) {
                    appendOp(4, 52);
                    nextToken();
                } else {
                    appendOp(4, 53);
                }
                OpMap opMap = this.m_ops;
                opMap.setOp(opMap.getOp(1) - 2, 4);
                OpMap opMap2 = this.m_ops;
                opMap2.setOp(opMap2.getOp(1) - 1, OpCodes.NODETYPE_FUNCTEST);
                c = 2;
            } else {
                c = 0;
            }
        } else {
            if (tokenIs('/')) {
                if (lookahead('/', 1)) {
                    appendOp(4, 52);
                    nextToken();
                    c = 2;
                } else {
                    appendOp(4, 50);
                    c = 1;
                }
                OpMap opMap3 = this.m_ops;
                opMap3.setOp(opMap3.getOp(1) - 2, 4);
                OpMap opMap4 = this.m_ops;
                opMap4.setOp(opMap4.getOp(1) - 1, 35);
                nextToken();
            }
            c = 2;
        }
        if (c != 0) {
            if (!tokenIs('|') && this.m_token != null) {
                RelativePathPattern();
            } else if (c == 2) {
                error("ER_EXPECTED_REL_PATH_PATTERN", null);
            }
        }
        OpMap opMap5 = this.m_ops;
        opMap5.setOp(opMap5.getOp(1), -1);
        OpMap opMap6 = this.m_ops;
        opMap6.setOp(1, opMap6.getOp(1) + 1);
        OpMap opMap7 = this.m_ops;
        opMap7.setOp(op + 1, opMap7.getOp(1) - op);
    }

    public int MultiplicativeExpr(int i) throws TransformerException {
        int MultiplicativeExpr;
        int op = this.m_ops.getOp(1);
        if (-1 == i) {
            i = op;
        }
        UnaryExpr();
        if (this.m_token == null) {
            return i;
        }
        if (tokenIs('*')) {
            nextToken();
            insertOp(i, 2, 12);
            int op2 = this.m_ops.getOp(1) - i;
            MultiplicativeExpr = MultiplicativeExpr(i);
            OpMap opMap = this.m_ops;
            opMap.setOp(MultiplicativeExpr + 1, opMap.getOp(MultiplicativeExpr + op2 + 1) + op2);
        } else if (tokenIs(gon.f71293q)) {
            nextToken();
            insertOp(i, 2, 13);
            int op3 = this.m_ops.getOp(1) - i;
            MultiplicativeExpr = MultiplicativeExpr(i);
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(MultiplicativeExpr + 1, opMap2.getOp(MultiplicativeExpr + op3 + 1) + op3);
        } else if (tokenIs("mod")) {
            nextToken();
            insertOp(i, 2, 14);
            int op4 = this.m_ops.getOp(1) - i;
            MultiplicativeExpr = MultiplicativeExpr(i);
            OpMap opMap3 = this.m_ops;
            opMap3.setOp(MultiplicativeExpr + 1, opMap3.getOp(MultiplicativeExpr + op4 + 1) + op4);
        } else {
            if (!tokenIs("quo")) {
                return i;
            }
            nextToken();
            insertOp(i, 2, 15);
            int op5 = this.m_ops.getOp(1) - i;
            MultiplicativeExpr = MultiplicativeExpr(i);
            OpMap opMap4 = this.m_ops;
            opMap4.setOp(MultiplicativeExpr + 1, opMap4.getOp(MultiplicativeExpr + op5 + 1) + op5);
        }
        return MultiplicativeExpr + 2;
    }

    public void NCName() {
        OpMap opMap = this.m_ops;
        opMap.setOp(opMap.getOp(1), this.m_queueMark - 1);
        OpMap opMap2 = this.m_ops;
        opMap2.setOp(1, opMap2.getOp(1) + 1);
        nextToken();
    }

    public void NodeTest(int i) throws TransformerException {
        if (lookahead('(', 1)) {
            Object nodeType = Keywords.getNodeType(this.m_token);
            if (nodeType == null) {
                error("ER_UNKNOWN_NODETYPE", new Object[]{this.m_token});
                return;
            }
            nextToken();
            int intValue = ((Integer) nodeType).intValue();
            OpMap opMap = this.m_ops;
            opMap.setOp(opMap.getOp(1), intValue);
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(1, opMap2.getOp(1) + 1);
            consumeExpected('(');
            if (1032 == intValue && !tokenIs(')')) {
                Literal();
            }
            consumeExpected(')');
            return;
        }
        OpMap opMap3 = this.m_ops;
        opMap3.setOp(opMap3.getOp(1), 34);
        OpMap opMap4 = this.m_ops;
        opMap4.setOp(1, opMap4.getOp(1) + 1);
        if (lookahead(':', 1)) {
            if (tokenIs('*')) {
                OpMap opMap5 = this.m_ops;
                opMap5.setOp(opMap5.getOp(1), -3);
            } else {
                OpMap opMap6 = this.m_ops;
                opMap6.setOp(opMap6.getOp(1), this.m_queueMark - 1);
                if (!Character.isLetter(this.m_tokenChar) && !tokenIs(NameUtil.USCORE)) {
                    error("ER_EXPECTED_NODE_TEST", null);
                }
            }
            nextToken();
            consumeExpected(':');
        } else {
            OpMap opMap7 = this.m_ops;
            opMap7.setOp(opMap7.getOp(1), -2);
        }
        OpMap opMap8 = this.m_ops;
        opMap8.setOp(1, opMap8.getOp(1) + 1);
        if (tokenIs('*')) {
            OpMap opMap9 = this.m_ops;
            opMap9.setOp(opMap9.getOp(1), -3);
        } else {
            OpMap opMap10 = this.m_ops;
            opMap10.setOp(opMap10.getOp(1), this.m_queueMark - 1);
            if (!Character.isLetter(this.m_tokenChar) && !tokenIs(NameUtil.USCORE)) {
                error("ER_EXPECTED_NODE_TEST", null);
            }
        }
        OpMap opMap11 = this.m_ops;
        opMap11.setOp(1, opMap11.getOp(1) + 1);
        nextToken();
    }

    public void Number() throws TransformerException {
        double d;
        String str = this.m_token;
        if (str != null) {
            try {
            } catch (NumberFormatException unused) {
                error("ER_COULDNOT_BE_FORMATTED_TO_NUMBER", new Object[]{this.m_token});
                d = 0.0d;
            }
            if (str.indexOf(101) > -1 || this.m_token.indexOf(69) > -1) {
                throw new NumberFormatException();
            }
            d = Double.valueOf(this.m_token).doubleValue();
            this.m_ops.m_tokenQueue.setElementAt(new XNumber(d), this.m_queueMark - 1);
            OpMap opMap = this.m_ops;
            opMap.setOp(opMap.getOp(1), this.m_queueMark - 1);
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(1, opMap2.getOp(1) + 1);
            nextToken();
        }
    }

    public void NumberExpr() throws TransformerException {
        int op = this.m_ops.getOp(1);
        appendOp(2, 19);
        Expr();
        OpMap opMap = this.m_ops;
        opMap.setOp(op + 1, opMap.getOp(1) - op);
    }

    public void OrExpr() throws TransformerException {
        int op = this.m_ops.getOp(1);
        AndExpr();
        if (this.m_token == null || !tokenIs(Operators.OR)) {
            return;
        }
        nextToken();
        insertOp(op, 2, 2);
        OrExpr();
        OpMap opMap = this.m_ops;
        opMap.setOp(op + 1, opMap.getOp(1) - op);
    }

    public void PathExpr() throws TransformerException {
        int op = this.m_ops.getOp(1);
        int FilterExpr = FilterExpr();
        if (FilterExpr == 0) {
            LocationPath();
            return;
        }
        boolean z = FilterExpr == 2;
        if (tokenIs('/')) {
            nextToken();
            if (!z) {
                insertOp(op, 2, 28);
                z = true;
            }
            if (!RelativeLocationPath()) {
                error("ER_EXPECTED_REL_LOC_PATH", null);
            }
        }
        if (z) {
            OpMap opMap = this.m_ops;
            opMap.setOp(opMap.getOp(1), -1);
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(1, opMap2.getOp(1) + 1);
            OpMap opMap3 = this.m_ops;
            opMap3.setOp(op + 1, opMap3.getOp(1) - op);
        }
    }

    public void Pattern() throws TransformerException {
        while (true) {
            LocationPathPattern();
            if (!tokenIs('|')) {
                return;
            } else {
                nextToken();
            }
        }
    }

    public void Predicate() throws TransformerException {
        if (tokenIs('[')) {
            nextToken();
            PredicateExpr();
            consumeExpected(']');
        }
    }

    public void PredicateExpr() throws TransformerException {
        int op = this.m_ops.getOp(1);
        appendOp(2, 29);
        Expr();
        OpMap opMap = this.m_ops;
        opMap.setOp(opMap.getOp(1), -1);
        OpMap opMap2 = this.m_ops;
        opMap2.setOp(1, opMap2.getOp(1) + 1);
        OpMap opMap3 = this.m_ops;
        opMap3.setOp(op + 1, opMap3.getOp(1) - op);
    }

    public boolean PrimaryExpr() throws TransformerException {
        int op = this.m_ops.getOp(1);
        char c = this.m_tokenChar;
        if (c == '\'' || c == '\"') {
            appendOp(2, 21);
            Literal();
            OpMap opMap = this.m_ops;
            opMap.setOp(op + 1, opMap.getOp(1) - op);
            return true;
        }
        if (c == '$') {
            nextToken();
            appendOp(2, 22);
            QName();
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(op + 1, opMap2.getOp(1) - op);
            return true;
        }
        if (c == '(') {
            nextToken();
            appendOp(2, 23);
            Expr();
            consumeExpected(')');
            OpMap opMap3 = this.m_ops;
            opMap3.setOp(op + 1, opMap3.getOp(1) - op);
            return true;
        }
        String str = this.m_token;
        if (str == null || !(('.' == c && str.length() > 1 && Character.isDigit(this.m_token.charAt(1))) || Character.isDigit(this.m_tokenChar))) {
            if (lookahead('(', 1) || (lookahead(':', 1) && lookahead('(', 3))) {
                return FunctionCall();
            }
            return false;
        }
        appendOp(2, 27);
        Number();
        OpMap opMap4 = this.m_ops;
        opMap4.setOp(op + 1, opMap4.getOp(1) - op);
        return true;
    }

    public void QName() throws TransformerException {
        if (lookahead(':', 1)) {
            OpMap opMap = this.m_ops;
            opMap.setOp(opMap.getOp(1), this.m_queueMark - 1);
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(1, opMap2.getOp(1) + 1);
            nextToken();
            consumeExpected(':');
        } else {
            OpMap opMap3 = this.m_ops;
            opMap3.setOp(opMap3.getOp(1), -2);
            OpMap opMap4 = this.m_ops;
            opMap4.setOp(1, opMap4.getOp(1) + 1);
        }
        OpMap opMap5 = this.m_ops;
        opMap5.setOp(opMap5.getOp(1), this.m_queueMark - 1);
        OpMap opMap6 = this.m_ops;
        opMap6.setOp(1, opMap6.getOp(1) + 1);
        nextToken();
    }

    public int RelationalExpr(int i) throws TransformerException {
        int RelationalExpr;
        int op = this.m_ops.getOp(1);
        if (-1 == i) {
            i = op;
        }
        AdditiveExpr(-1);
        if (this.m_token == null) {
            return i;
        }
        if (tokenIs('<')) {
            nextToken();
            if (tokenIs('=')) {
                nextToken();
                insertOp(i, 2, 6);
            } else {
                insertOp(i, 2, 7);
            }
            int op2 = this.m_ops.getOp(1) - i;
            RelationalExpr = RelationalExpr(i);
            OpMap opMap = this.m_ops;
            opMap.setOp(RelationalExpr + 1, opMap.getOp(RelationalExpr + op2 + 1) + op2);
        } else {
            if (!tokenIs('>')) {
                return i;
            }
            nextToken();
            if (tokenIs('=')) {
                nextToken();
                insertOp(i, 2, 8);
            } else {
                insertOp(i, 2, 9);
            }
            int op3 = this.m_ops.getOp(1) - i;
            RelationalExpr = RelationalExpr(i);
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(RelationalExpr + 1, opMap2.getOp(RelationalExpr + op3 + 1) + op3);
        }
        return RelationalExpr + 2;
    }

    public boolean RelativeLocationPath() throws TransformerException {
        if (!Step()) {
            return false;
        }
        while (tokenIs('/')) {
            nextToken();
            if (!Step()) {
                error("ER_EXPECTED_LOC_STEP", null);
            }
        }
        return true;
    }

    public void RelativePathPattern() throws TransformerException {
        boolean StepPattern = StepPattern(false);
        while (tokenIs('/')) {
            nextToken();
            StepPattern = StepPattern(!StepPattern);
        }
    }

    public boolean Step() throws TransformerException {
        String str;
        int op = this.m_ops.getOp(1);
        boolean z = tokenIs('/');
        if (z) {
            nextToken();
            appendOp(2, 42);
            OpMap opMap = this.m_ops;
            opMap.setOp(1, opMap.getOp(1) + 1);
            OpMap opMap2 = this.m_ops;
            opMap2.setOp(opMap2.getOp(1), 1033);
            OpMap opMap3 = this.m_ops;
            opMap3.setOp(1, opMap3.getOp(1) + 1);
            OpMap opMap4 = this.m_ops;
            int i = op + 1;
            opMap4.setOp(i + 1, opMap4.getOp(1) - op);
            OpMap opMap5 = this.m_ops;
            opMap5.setOp(i, opMap5.getOp(1) - op);
            op = this.m_ops.getOp(1);
        }
        if (tokenIs(".")) {
            nextToken();
            if (tokenIs('[')) {
                error("ER_PREDICATE_ILLEGAL_SYNTAX", null);
            }
            appendOp(4, 48);
            OpMap opMap6 = this.m_ops;
            opMap6.setOp(opMap6.getOp(1) - 2, 4);
            OpMap opMap7 = this.m_ops;
            opMap7.setOp(opMap7.getOp(1) - 1, 1033);
        } else if (tokenIs(Constants.ATTRVAL_PARENT)) {
            nextToken();
            appendOp(4, 45);
            OpMap opMap8 = this.m_ops;
            opMap8.setOp(opMap8.getOp(1) - 2, 4);
            OpMap opMap9 = this.m_ops;
            opMap9.setOp(opMap9.getOp(1) - 1, 1033);
        } else {
            if (!tokenIs('*') && !tokenIs('@') && !tokenIs(NameUtil.USCORE) && ((str = this.m_token) == null || !Character.isLetter(str.charAt(0)))) {
                if (z) {
                    error("ER_EXPECTED_LOC_STEP", null);
                }
                return false;
            }
            Basis();
            while (tokenIs('[')) {
                Predicate();
            }
            OpMap opMap10 = this.m_ops;
            opMap10.setOp(op + 1, opMap10.getOp(1) - op);
        }
        return true;
    }

    public boolean StepPattern(boolean z) throws TransformerException {
        return AbbreviatedNodeTestStep(z);
    }

    public void StringExpr() throws TransformerException {
        int op = this.m_ops.getOp(1);
        appendOp(2, 17);
        Expr();
        OpMap opMap = this.m_ops;
        opMap.setOp(op + 1, opMap.getOp(1) - op);
    }

    public void UnaryExpr() throws TransformerException {
        boolean z;
        int op = this.m_ops.getOp(1);
        if (this.m_tokenChar == '-') {
            nextToken();
            appendOp(2, 16);
            z = true;
        } else {
            z = false;
        }
        UnionExpr();
        if (z) {
            OpMap opMap = this.m_ops;
            opMap.setOp(op + 1, opMap.getOp(1) - op);
        }
    }

    public void UnionExpr() throws TransformerException {
        int op = this.m_ops.getOp(1);
        boolean z = false;
        while (true) {
            PathExpr();
            if (!tokenIs('|')) {
                OpMap opMap = this.m_ops;
                opMap.setOp(op + 1, opMap.getOp(1) - op);
                return;
            } else {
                if (!z) {
                    insertOp(op, 2, 20);
                    z = true;
                }
                nextToken();
            }
        }
    }

    public void appendOp(int i, int i2) {
        int op = this.m_ops.getOp(1);
        this.m_ops.setOp(op, i2);
        this.m_ops.setOp(op + 1, i);
        this.m_ops.setOp(1, op + i);
    }

    public String dumpRemainingTokenQueue() {
        int i = this.m_queueMark;
        if (i >= this.m_ops.getTokenQueueSize()) {
            return "";
        }
        String str = "\n Remaining tokens: (";
        while (i < this.m_ops.getTokenQueueSize()) {
            int i2 = i + 1;
            str = str + " '" + ((String) this.m_ops.m_tokenQueue.elementAt(i)) + CloudStorageConstants.SINGLE_QUOTES;
            i = i2;
        }
        return str + MotionUtils.f31762d;
    }

    public void error(String str, Object[] objArr) throws TransformerException {
        String createXPATHMessage = XPATHMessages.createXPATHMessage(str, objArr);
        ErrorListener errorListener = getErrorListener();
        TransformerException transformerException = new TransformerException(createXPATHMessage, this.m_sourceLocator);
        if (errorListener == null) {
            throw transformerException;
        }
        errorListener.fatalError(transformerException);
    }

    public void errorForDOM3(String str, Object[] objArr) throws TransformerException {
        String createXPATHMessage = XPATHMessages.createXPATHMessage(str, objArr);
        ErrorListener errorListener = getErrorListener();
        XPathStylesheetDOM3Exception xPathStylesheetDOM3Exception = new XPathStylesheetDOM3Exception(createXPATHMessage, this.m_sourceLocator);
        if (errorListener == null) {
            throw xPathStylesheetDOM3Exception;
        }
        errorListener.fatalError(xPathStylesheetDOM3Exception);
    }

    public ErrorListener getErrorListener() {
        return this.m_errorListener;
    }

    public final int getFunctionToken(String str) {
        try {
            Object lookupNodeTest = Keywords.lookupNodeTest(str);
            if (lookupNodeTest == null) {
                lookupNodeTest = this.m_functionTable.getFunctionID(str);
            }
            return ((Integer) lookupNodeTest).intValue();
        } catch (ClassCastException | NullPointerException unused) {
            return -1;
        }
    }

    public void initMatchPattern(Compiler compiler, String str, PrefixResolver prefixResolver) throws TransformerException {
        this.m_ops = compiler;
        this.m_namespaceContext = prefixResolver;
        this.m_functionTable = compiler.getFunctionTable();
        new Lexer(compiler, prefixResolver, this).tokenize(str);
        this.m_ops.setOp(0, 30);
        this.m_ops.setOp(1, 2);
        nextToken();
        Pattern();
        if (this.m_token != null) {
            String str2 = "";
            while (this.m_token != null) {
                str2 = str2 + CloudStorageConstants.SINGLE_QUOTES + this.m_token + CloudStorageConstants.SINGLE_QUOTES;
                nextToken();
                if (this.m_token != null) {
                    str2 = str2 + ", ";
                }
            }
            error("ER_EXTRA_ILLEGAL_TOKENS", new Object[]{str2});
        }
        OpMap opMap = this.m_ops;
        opMap.setOp(opMap.getOp(1), -1);
        OpMap opMap2 = this.m_ops;
        opMap2.setOp(1, opMap2.getOp(1) + 1);
        this.m_ops.shrink();
    }

    public void initXPath(Compiler compiler, String str, PrefixResolver prefixResolver) throws TransformerException {
        this.m_ops = compiler;
        this.m_namespaceContext = prefixResolver;
        this.m_functionTable = compiler.getFunctionTable();
        new Lexer(compiler, prefixResolver, this).tokenize(str);
        this.m_ops.setOp(0, 1);
        this.m_ops.setOp(1, 2);
        try {
            nextToken();
            Expr();
            if (this.m_token != null) {
                String str2 = "";
                while (this.m_token != null) {
                    str2 = str2 + CloudStorageConstants.SINGLE_QUOTES + this.m_token + CloudStorageConstants.SINGLE_QUOTES;
                    nextToken();
                    if (this.m_token != null) {
                        str2 = str2 + ", ";
                    }
                }
                error("ER_EXTRA_ILLEGAL_TOKENS", new Object[]{str2});
            }
        } catch (XPathProcessorException e) {
            if (!CONTINUE_AFTER_FATAL_ERROR.equals(e.getMessage())) {
                throw e;
            }
            initXPath(compiler, "/..", prefixResolver);
        }
        compiler.shrink();
    }

    public void insertOp(int i, int i2, int i3) {
        int op = this.m_ops.getOp(1);
        for (int i4 = op - 1; i4 >= i; i4--) {
            OpMap opMap = this.m_ops;
            opMap.setOp(i4 + i2, opMap.getOp(i4));
        }
        this.m_ops.setOp(i, i3);
        this.m_ops.setOp(1, op + i2);
    }

    public final boolean lookahead(char c, int i) {
        int i2 = this.m_queueMark + i;
        if (i2 > this.m_ops.getTokenQueueSize() || i2 <= 0 || this.m_ops.getTokenQueueSize() == 0) {
            return false;
        }
        String str = (String) this.m_ops.m_tokenQueue.elementAt(i2 - 1);
        return str.length() == 1 && str.charAt(0) == c;
    }

    public void setErrorHandler(ErrorListener errorListener) {
        this.m_errorListener = errorListener;
    }

    public final boolean tokenIs(String str) {
        String str2 = this.m_token;
        return str2 != null ? str2.equals(str) : str == null;
    }

    public void warn(String str, Object[] objArr) throws TransformerException {
        String createXPATHWarning = XPATHMessages.createXPATHWarning(str, objArr);
        ErrorListener errorListener = getErrorListener();
        if (errorListener != null) {
            errorListener.warning(new TransformerException(createXPATHWarning, this.m_sourceLocator));
        } else {
            System.err.println(createXPATHWarning);
        }
    }

    public final boolean tokenIs(char c) {
        return this.m_token != null && this.m_tokenChar == c;
    }

    private final void consumeExpected(char c) throws TransformerException {
        if (tokenIs(c)) {
            nextToken();
        } else {
            error("ER_EXPECTED_BUT_FOUND", new Object[]{String.valueOf(c), this.m_token});
            throw new XPathProcessorException(CONTINUE_AFTER_FATAL_ERROR);
        }
    }

    private final boolean lookahead(String str, int i) {
        if (this.m_queueMark + i <= this.m_ops.getTokenQueueSize()) {
            String str2 = (String) this.m_ops.m_tokenQueue.elementAt(this.m_queueMark + (i - 1));
            if (str2 != null) {
                return str2.equals(str);
            }
            if (str != null) {
                return false;
            }
        } else if (str != null) {
            return false;
        }
        return true;
    }
}
