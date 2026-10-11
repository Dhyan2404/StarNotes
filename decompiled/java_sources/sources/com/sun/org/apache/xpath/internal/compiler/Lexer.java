package com.sun.org.apache.xpath.internal.compiler;

import com.sun.org.apache.xml.internal.utils.ObjectVector;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class Lexer {
    static final int TARGETEXTRA = 10000;
    private Compiler m_compiler;
    PrefixResolver m_namespaceContext;
    private int[] m_patternMap = new int[100];
    private int m_patternMapSize;
    XPathParser m_processor;

    public Lexer(Compiler compiler, PrefixResolver prefixResolver, XPathParser xPathParser) {
        this.m_compiler = compiler;
        this.m_namespaceContext = prefixResolver;
        this.m_processor = xPathParser;
    }

    private final void addToTokenQueue(String str) {
        this.m_compiler.getTokenQueue().addElement(str);
    }

    private int getTokenQueuePosFromMap(int i) {
        int i2 = this.m_patternMap[i];
        return i2 >= 10000 ? i2 - 10000 : i2;
    }

    private int mapNSTokens(String str, int i, int i2, int i3) throws TransformerException {
        String str2;
        String substring = (i < 0 || i2 < 0) ? "" : str.substring(i, i2);
        if (this.m_namespaceContext == null || substring.equals("*") || substring.equals("xmlns")) {
            str2 = substring;
        } else {
            try {
                str2 = substring.length() > 0 ? this.m_namespaceContext.getNamespaceForPrefix(substring) : this.m_namespaceContext.getNamespaceForPrefix(substring);
            } catch (ClassCastException unused) {
                str2 = this.m_namespaceContext.getNamespaceForPrefix(substring);
            }
        }
        if (str2 == null || str2.length() <= 0) {
            this.m_processor.errorForDOM3("ER_PREFIX_MUST_RESOLVE", new String[]{substring});
            return -1;
        }
        addToTokenQueue(str2);
        addToTokenQueue(":");
        String substring2 = str.substring(i2 + 1, i3);
        if (substring2.length() <= 0) {
            return -1;
        }
        addToTokenQueue(substring2);
        return -1;
    }

    private boolean mapPatternElemPos(int i, boolean z, boolean z2) {
        if (i != 0) {
            return z;
        }
        int i2 = this.m_patternMapSize;
        int[] iArr = this.m_patternMap;
        if (i2 >= iArr.length) {
            int length = iArr.length;
            int[] iArr2 = new int[i2 + 100];
            this.m_patternMap = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        if (!z) {
            this.m_patternMap[this.m_patternMapSize - 1] = r4[r5] - 10000;
        }
        this.m_patternMap[this.m_patternMapSize] = (this.m_compiler.getTokenQueueSize() - (z2 ? 1 : 0)) + 10000;
        this.m_patternMapSize++;
        return false;
    }

    private void recordTokenString(Vector vector) {
        int tokenQueuePosFromMap = getTokenQueuePosFromMap(this.m_patternMapSize - 1);
        int i = tokenQueuePosFromMap + 1;
        resetTokenMark(i);
        if (!this.m_processor.lookahead('(', 1)) {
            if (this.m_processor.tokenIs('@')) {
                resetTokenMark(i + 1);
                tokenQueuePosFromMap = i;
            }
            if (this.m_processor.lookahead(':', 1)) {
                tokenQueuePosFromMap += 2;
            }
            vector.addElement(this.m_compiler.getTokenQueue().elementAt(tokenQueuePosFromMap));
            return;
        }
        int keywordToken = getKeywordToken(this.m_processor.m_token);
        if (keywordToken == 35) {
            vector.addElement("/");
            return;
        }
        if (keywordToken == 36) {
            vector.addElement("*");
            return;
        }
        switch (keywordToken) {
            case 1030:
                vector.addElement(PsuedoNames.PSEUDONAME_COMMENT);
                return;
            case OpCodes.NODETYPE_TEXT /* 1031 */:
                vector.addElement(PsuedoNames.PSEUDONAME_TEXT);
                return;
            case OpCodes.NODETYPE_PI /* 1032 */:
                vector.addElement("*");
                return;
            case 1033:
                vector.addElement("*");
                return;
            default:
                vector.addElement("*");
                return;
        }
    }

    private final void resetTokenMark(int i) {
        int tokenQueueSize = this.m_compiler.getTokenQueueSize();
        XPathParser xPathParser = this.m_processor;
        if (i <= 0) {
            i = 0;
        } else if (i <= tokenQueueSize) {
            i--;
        }
        xPathParser.m_queueMark = i;
        if (i >= tokenQueueSize) {
            xPathParser.m_token = null;
            xPathParser.m_tokenChar = (char) 0;
            return;
        }
        ObjectVector tokenQueue = this.m_compiler.getTokenQueue();
        XPathParser xPathParser2 = this.m_processor;
        int i2 = xPathParser2.m_queueMark;
        xPathParser2.m_queueMark = i2 + 1;
        xPathParser.m_token = (String) tokenQueue.elementAt(i2);
        XPathParser xPathParser3 = this.m_processor;
        xPathParser3.m_tokenChar = xPathParser3.m_token.charAt(0);
    }

    public final int getKeywordToken(String str) {
        try {
            Integer num = (Integer) Keywords.getKeyWord(str);
            if (num != null) {
                return num.intValue();
            }
            return 0;
        } catch (ClassCastException | NullPointerException unused) {
            return 0;
        }
    }

    public void tokenize(String str) throws TransformerException {
        tokenize(str, null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0049. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x004c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x004f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:104:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0142  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void tokenize(java.lang.String r17, java.util.Vector r18) throws javax.xml.transform.TransformerException {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.compiler.Lexer.tokenize(java.lang.String, java.util.Vector):void");
    }
}
