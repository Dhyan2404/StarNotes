package com.sun.org.apache.xerces.internal.impl.xpath;

import com.bumptech.glide.load.engine.GlideException;
import com.google.firebase.installations.local.IidStore;
import com.onyx.android.sdk.base.data.Operators;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import com.sunia.HTREnginev2.gon;
import com.thegrizzlylabs.sardineandroid.DavPrincipal;
import java.io.PrintStream;
import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes10.dex */
public class XPath {
    private static final boolean DEBUG_ALL = false;
    private static final boolean DEBUG_ANY = false;
    private static final boolean DEBUG_XPATH_PARSE = false;
    protected String fExpression;
    protected LocationPath[] fLocationPaths;
    protected SymbolTable fSymbolTable;

    /* loaded from: classes10.dex */
    public static class Scanner {
        private static final byte CHARTYPE_ATSIGN = 19;
        private static final byte CHARTYPE_CLOSE_BRACKET = 22;
        private static final byte CHARTYPE_CLOSE_PAREN = 7;
        private static final byte CHARTYPE_COLON = 15;
        private static final byte CHARTYPE_COMMA = 10;
        private static final byte CHARTYPE_DIGIT = 14;
        private static final byte CHARTYPE_DOLLAR = 5;
        private static final byte CHARTYPE_EQUAL = 17;
        private static final byte CHARTYPE_EXCLAMATION = 3;
        private static final byte CHARTYPE_GREATER = 18;
        private static final byte CHARTYPE_INVALID = 0;
        private static final byte CHARTYPE_LESS = 16;
        private static final byte CHARTYPE_LETTER = 20;
        private static final byte CHARTYPE_MINUS = 11;
        private static final byte CHARTYPE_NONASCII = 25;
        private static final byte CHARTYPE_OPEN_BRACKET = 21;
        private static final byte CHARTYPE_OPEN_PAREN = 6;
        private static final byte CHARTYPE_OTHER = 1;
        private static final byte CHARTYPE_PERIOD = 12;
        private static final byte CHARTYPE_PLUS = 9;
        private static final byte CHARTYPE_QUOTE = 4;
        private static final byte CHARTYPE_SLASH = 13;
        private static final byte CHARTYPE_STAR = 8;
        private static final byte CHARTYPE_UNDERSCORE = 23;
        private static final byte CHARTYPE_UNION = 24;
        private static final byte CHARTYPE_WHITESPACE = 2;
        private SymbolTable fSymbolTable;
        private static final byte[] fASCIICharMap = {0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 4, 1, 5, 1, 1, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 1, 16, 17, 18, 1, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 1, 22, 1, 23, 1, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 1, 24, 1, 1, 1};
        private static final String fAndSymbol = Operators.AND.intern();
        private static final String fOrSymbol = Operators.OR.intern();
        private static final String fModSymbol = "mod".intern();
        private static final String fDivSymbol = gon.f71293q.intern();
        private static final String fCommentSymbol = "comment".intern();
        private static final String fTextSymbol = "text".intern();
        private static final String fPISymbol = Constants.ELEMNAME_PI_STRING.intern();
        private static final String fNodeSymbol = "node".intern();
        private static final String fAncestorSymbol = "ancestor".intern();
        private static final String fAncestorOrSelfSymbol = "ancestor-or-self".intern();
        private static final String fAttributeSymbol = "attribute".intern();
        private static final String fChildSymbol = "child".intern();
        private static final String fDescendantSymbol = "descendant".intern();
        private static final String fDescendantOrSelfSymbol = "descendant-or-self".intern();
        private static final String fFollowingSymbol = "following".intern();
        private static final String fFollowingSiblingSymbol = "following-sibling".intern();
        private static final String fNamespaceSymbol = Constants.ATTRNAME_NAMESPACE.intern();
        private static final String fParentSymbol = "parent".intern();
        private static final String fPrecedingSymbol = "preceding".intern();
        private static final String fPrecedingSiblingSymbol = "preceding-sibling".intern();
        private static final String fSelfSymbol = DavPrincipal.KEY_SELF.intern();

        public Scanner(SymbolTable symbolTable) {
            this.fSymbolTable = symbolTable;
        }

        private int scanNumber(Tokens tokens, String str, int i, int i2) {
            char charAt = str.charAt(i2);
            int i3 = 0;
            int i4 = 0;
            while (charAt >= '0' && charAt <= '9') {
                i4 = (i4 * 10) + (charAt - '0');
                i2++;
                if (i2 == i) {
                    break;
                }
                charAt = str.charAt(i2);
            }
            if (charAt == '.' && (i2 = i2 + 1) < i) {
                char charAt2 = str.charAt(i2);
                while (charAt2 >= '0' && charAt2 <= '9') {
                    i3 = (i3 * 10) + (charAt2 - '0');
                    i2++;
                    if (i2 == i) {
                        break;
                    }
                    charAt2 = str.charAt(i2);
                }
                if (i3 != 0) {
                    throw new RuntimeException("find a solution!");
                }
            }
            tokens.addToken(i4);
            tokens.addToken(i3);
            return i2;
        }

        public void addToken(Tokens tokens, int i) throws XPathException {
            tokens.addToken(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:205:0x0153, code lost:
        
            addToken(r22, 10);
            r22.addToken(r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:360:0x002c, code lost:
        
            return true;
         */
        /* JADX WARN: Failed to find 'out' block for switch in B:17:0x003c. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:128:0x0105  */
        /* JADX WARN: Removed duplicated region for block: B:211:0x00d3 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:234:0x01fb A[LOOP:3: B:122:0x00c5->B:234:0x01fb, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:235:0x00d1 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean scanExpr(com.sun.org.apache.xerces.internal.util.SymbolTable r21, com.sun.org.apache.xerces.internal.impl.xpath.XPath.Tokens r22, java.lang.String r23, int r24, int r25) throws com.sun.org.apache.xerces.internal.impl.xpath.XPathException {
            /*
                Method dump skipped, instructions count: 1020
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.xpath.XPath.Scanner.scanExpr(com.sun.org.apache.xerces.internal.util.SymbolTable, com.sun.org.apache.xerces.internal.impl.xpath.XPath$Tokens, java.lang.String, int, int):boolean");
        }

        public int scanNCName(String str, int i, int i2) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                byte b = fASCIICharMap[charAt];
                if (b != 20 && b != 23) {
                    return i2;
                }
            } else if (!XMLChar.isNameStart(charAt)) {
                return i2;
            }
            while (true) {
                i2++;
                if (i2 < i) {
                    char charAt2 = str.charAt(i2);
                    if (charAt2 < 128) {
                        byte b2 = fASCIICharMap[charAt2];
                        if (b2 != 20 && b2 != 14 && b2 != 12 && b2 != 11 && b2 != 23) {
                            break;
                        }
                    } else if (!XMLChar.isName(charAt2)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            return i2;
        }
    }

    public XPath(String str, SymbolTable symbolTable, NamespaceContext namespaceContext) throws XPathException {
        this.fExpression = str;
        this.fSymbolTable = symbolTable;
        parseExpression(namespaceContext);
    }

    private LocationPath buildLocationPath(Vector vector) throws XPathException {
        int size = vector.size();
        check(size != 0);
        Step[] stepArr = new Step[size];
        vector.copyInto(stepArr);
        vector.removeAllElements();
        return new LocationPath(stepArr);
    }

    private static void check(boolean z) throws XPathException {
        if (!z) {
            throw new XPathException("c-general-xpath");
        }
    }

    public static void main(String[] strArr) throws Exception {
        for (String str : strArr) {
            System.out.println("# XPath expression: \"" + str + '\"');
            try {
                System.out.println("expanded xpath: \"" + new XPath(str, new SymbolTable(), null).toString() + '\"');
            } catch (XPathException e) {
                System.out.println("error: " + e.getMessage());
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x0049. Please report as an issue. */
    private void parseExpression(NamespaceContext namespaceContext) throws XPathException {
        Tokens tokens = new Tokens(this.fSymbolTable);
        if (!new Scanner(this.fSymbolTable) { // from class: com.sun.org.apache.xerces.internal.impl.xpath.XPath.1
            @Override // com.sun.org.apache.xerces.internal.impl.xpath.XPath.Scanner
            public void addToken(Tokens tokens2, int i) throws XPathException {
                if (i != 6 && i != 35 && i != 11 && i != 21 && i != 4 && i != 9 && i != 10 && i != 22 && i != 23 && i != 36 && i != 8) {
                    throw new XPathException("c-general-xpath");
                }
                super.addToken(tokens2, i);
            }
        }.scanExpr(this.fSymbolTable, tokens, this.fExpression, 0, this.fExpression.length())) {
            throw new XPathException("c-general-xpath");
        }
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        boolean z = false;
        while (true) {
            boolean z2 = true;
            while (tokens.hasMore()) {
                int nextToken = tokens.nextToken();
                if (nextToken != 4) {
                    if (nextToken == 6) {
                        check(z2);
                        vector.addElement(new Step(new Axis((short) 2), parseNodeTest(tokens.nextToken(), tokens, namespaceContext)));
                    } else if (nextToken == 35) {
                        check(z2);
                        if (tokens.nextToken() == 8) {
                            vector.addElement(new Step(new Axis((short) 2), parseNodeTest(tokens.nextToken(), tokens, namespaceContext)));
                            z2 = false;
                            z = false;
                        } else {
                            z = true;
                        }
                    } else if (nextToken != 36) {
                        switch (nextToken) {
                            case 8:
                                check(z2);
                                check(z);
                                z = false;
                                break;
                            case 9:
                            case 10:
                            case 11:
                                check(z2);
                                vector.addElement(new Step(new Axis((short) 1), parseNodeTest(nextToken, tokens, namespaceContext)));
                                break;
                            default:
                                switch (nextToken) {
                                    case 21:
                                        check(!z2);
                                        break;
                                    case 22:
                                        throw new XPathException("c-general-xpath");
                                    case 23:
                                        check(!z2);
                                        vector2.addElement(buildLocationPath(vector));
                                        break;
                                    default:
                                        throw new XPathException("c-general-xpath");
                                }
                        }
                    } else {
                        check(z2);
                        z = true;
                    }
                    z2 = false;
                } else {
                    check(z2);
                    if (vector.size() == 0) {
                        vector.addElement(new Step(new Axis((short) 3), new NodeTest((short) 3)));
                        if (tokens.hasMore() && tokens.peekToken() == 22) {
                            tokens.nextToken();
                            vector.addElement(new Step(new Axis((short) 4), new NodeTest((short) 3)));
                        }
                    }
                    z2 = false;
                }
            }
            check(!z2);
            vector2.addElement(buildLocationPath(vector));
            LocationPath[] locationPathArr = new LocationPath[vector2.size()];
            this.fLocationPaths = locationPathArr;
            vector2.copyInto(locationPathArr);
            return;
        }
    }

    private NodeTest parseNodeTest(int i, Tokens tokens, NamespaceContext namespaceContext) throws XPathException {
        String str;
        switch (i) {
            case 9:
                return new NodeTest((short) 2);
            case 10:
            case 11:
                String nextTokenAsString = tokens.nextTokenAsString();
                String uri = (namespaceContext == null || nextTokenAsString == XMLSymbols.EMPTY_STRING) ? null : namespaceContext.getURI(nextTokenAsString);
                String str2 = XMLSymbols.EMPTY_STRING;
                if (nextTokenAsString != str2 && namespaceContext != null && uri == null) {
                    throw new XPathException("c-general-xpath-ns");
                }
                if (i == 10) {
                    return new NodeTest(nextTokenAsString, uri);
                }
                String nextTokenAsString2 = tokens.nextTokenAsString();
                if (nextTokenAsString != str2) {
                    str = this.fSymbolTable.addSymbol(nextTokenAsString + ':' + nextTokenAsString2);
                } else {
                    str = nextTokenAsString2;
                }
                return new NodeTest(new QName(nextTokenAsString, nextTokenAsString2, str, uri));
            default:
                throw new XPathException("c-general-xpath");
        }
    }

    public LocationPath getLocationPath() {
        return (LocationPath) this.fLocationPaths[0].clone();
    }

    public LocationPath[] getLocationPaths() {
        LocationPath[] locationPathArr = new LocationPath[this.fLocationPaths.length];
        int i = 0;
        while (true) {
            LocationPath[] locationPathArr2 = this.fLocationPaths;
            if (i >= locationPathArr2.length) {
                return locationPathArr;
            }
            locationPathArr[i] = (LocationPath) locationPathArr2[i].clone();
            i++;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.fLocationPaths.length; i++) {
            if (i > 0) {
                stringBuffer.append(IidStore.f35940g);
            }
            stringBuffer.append(this.fLocationPaths[i].toString());
        }
        return stringBuffer.toString();
    }

    /* loaded from: classes10.dex */
    public static class Axis implements Cloneable {
        public static final short ATTRIBUTE = 2;
        public static final short CHILD = 1;
        public static final short DESCENDANT = 4;
        public static final short SELF = 3;
        public short type;

        public Axis(short s) {
            this.type = s;
        }

        public Object clone() {
            return new Axis(this);
        }

        public String toString() {
            short s = this.type;
            return s != 1 ? s != 2 ? s != 3 ? s != 4 ? "???" : "descendant" : DavPrincipal.KEY_SELF : "attribute" : "child";
        }

        public Axis(Axis axis) {
            this.type = axis.type;
        }
    }

    /* loaded from: classes10.dex */
    public static class LocationPath implements Cloneable {
        public Step[] steps;

        public LocationPath(Step[] stepArr) {
            this.steps = stepArr;
        }

        public Object clone() {
            return new LocationPath(this);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            int i = 0;
            while (true) {
                Step[] stepArr = this.steps;
                if (i >= stepArr.length) {
                    return stringBuffer.toString();
                }
                if (i > 0 && stepArr[i - 1].axis.type != 4 && stepArr[i].axis.type != 4) {
                    stringBuffer.append('/');
                }
                stringBuffer.append(this.steps[i].toString());
                i++;
            }
        }

        public LocationPath(LocationPath locationPath) {
            this.steps = new Step[locationPath.steps.length];
            int i = 0;
            while (true) {
                Step[] stepArr = this.steps;
                if (i >= stepArr.length) {
                    return;
                }
                stepArr[i] = (Step) locationPath.steps[i].clone();
                i++;
            }
        }
    }

    /* loaded from: classes10.dex */
    public static class NodeTest implements Cloneable {
        public static final short NAMESPACE = 4;
        public static final short NODE = 3;
        public static final short QNAME = 1;
        public static final short WILDCARD = 2;
        public final QName name;
        public short type;

        public NodeTest(short s) {
            this.name = new QName();
            this.type = s;
        }

        public Object clone() {
            return new NodeTest(this);
        }

        public String toString() {
            short s = this.type;
            if (s == 1) {
                if (this.name.prefix.length() == 0) {
                    return this.name.localpart;
                }
                if (this.name.uri != null) {
                    return this.name.prefix + ':' + this.name.localpart;
                }
                return "{" + this.name.uri + '}' + this.name.prefix + ':' + this.name.localpart;
            }
            if (s == 2) {
                return "*";
            }
            if (s == 3) {
                return "node()";
            }
            if (s != 4) {
                return "???";
            }
            if (this.name.prefix.length() == 0) {
                return "???:*";
            }
            if (this.name.uri != null) {
                return this.name.prefix + ":*";
            }
            return "{" + this.name.uri + '}' + this.name.prefix + ":*";
        }

        public NodeTest(QName qName) {
            QName qName2 = new QName();
            this.name = qName2;
            this.type = (short) 1;
            qName2.setValues(qName);
        }

        public NodeTest(String str, String str2) {
            QName qName = new QName();
            this.name = qName;
            this.type = (short) 4;
            qName.setValues(str, null, null, str2);
        }

        public NodeTest(NodeTest nodeTest) {
            QName qName = new QName();
            this.name = qName;
            this.type = nodeTest.type;
            qName.setValues(nodeTest.name);
        }
    }

    /* loaded from: classes10.dex */
    public static class Step implements Cloneable {
        public Axis axis;
        public NodeTest nodeTest;

        public Step(Axis axis, NodeTest nodeTest) {
            this.axis = axis;
            this.nodeTest = nodeTest;
        }

        public Object clone() {
            return new Step(this);
        }

        public String toString() {
            short s = this.axis.type;
            if (s == 3) {
                return ".";
            }
            if (s == 2) {
                return "@" + this.nodeTest.toString();
            }
            if (s == 1) {
                return this.nodeTest.toString();
            }
            if (s == 4) {
                return "//";
            }
            return "??? (" + ((int) this.axis.type) + ')';
        }

        public Step(Step step) {
            this.axis = (Axis) step.axis.clone();
            this.nodeTest = (NodeTest) step.nodeTest.clone();
        }
    }

    /* loaded from: classes10.dex */
    public static final class Tokens {
        static final boolean DUMP_TOKENS = false;
        public static final int EXPRTOKEN_ATSIGN = 6;
        public static final int EXPRTOKEN_AXISNAME_ANCESTOR = 33;
        public static final int EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF = 34;
        public static final int EXPRTOKEN_AXISNAME_ATTRIBUTE = 35;
        public static final int EXPRTOKEN_AXISNAME_CHILD = 36;
        public static final int EXPRTOKEN_AXISNAME_DESCENDANT = 37;
        public static final int EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF = 38;
        public static final int EXPRTOKEN_AXISNAME_FOLLOWING = 39;
        public static final int EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING = 40;
        public static final int EXPRTOKEN_AXISNAME_NAMESPACE = 41;
        public static final int EXPRTOKEN_AXISNAME_PARENT = 42;
        public static final int EXPRTOKEN_AXISNAME_PRECEDING = 43;
        public static final int EXPRTOKEN_AXISNAME_PRECEDING_SIBLING = 44;
        public static final int EXPRTOKEN_AXISNAME_SELF = 45;
        public static final int EXPRTOKEN_CLOSE_BRACKET = 3;
        public static final int EXPRTOKEN_CLOSE_PAREN = 1;
        public static final int EXPRTOKEN_COMMA = 7;
        public static final int EXPRTOKEN_DOUBLE_COLON = 8;
        public static final int EXPRTOKEN_DOUBLE_PERIOD = 5;
        public static final int EXPRTOKEN_FUNCTION_NAME = 32;
        public static final int EXPRTOKEN_LITERAL = 46;
        public static final int EXPRTOKEN_NAMETEST_ANY = 9;
        public static final int EXPRTOKEN_NAMETEST_NAMESPACE = 10;
        public static final int EXPRTOKEN_NAMETEST_QNAME = 11;
        public static final int EXPRTOKEN_NODETYPE_COMMENT = 12;
        public static final int EXPRTOKEN_NODETYPE_NODE = 15;
        public static final int EXPRTOKEN_NODETYPE_PI = 14;
        public static final int EXPRTOKEN_NODETYPE_TEXT = 13;
        public static final int EXPRTOKEN_NUMBER = 47;
        public static final int EXPRTOKEN_OPEN_BRACKET = 2;
        public static final int EXPRTOKEN_OPEN_PAREN = 0;
        public static final int EXPRTOKEN_OPERATOR_AND = 16;
        public static final int EXPRTOKEN_OPERATOR_DIV = 19;
        public static final int EXPRTOKEN_OPERATOR_DOUBLE_SLASH = 22;
        public static final int EXPRTOKEN_OPERATOR_EQUAL = 26;
        public static final int EXPRTOKEN_OPERATOR_GREATER = 30;
        public static final int EXPRTOKEN_OPERATOR_GREATER_EQUAL = 31;
        public static final int EXPRTOKEN_OPERATOR_LESS = 28;
        public static final int EXPRTOKEN_OPERATOR_LESS_EQUAL = 29;
        public static final int EXPRTOKEN_OPERATOR_MINUS = 25;
        public static final int EXPRTOKEN_OPERATOR_MOD = 18;
        public static final int EXPRTOKEN_OPERATOR_MULT = 20;
        public static final int EXPRTOKEN_OPERATOR_NOT_EQUAL = 27;
        public static final int EXPRTOKEN_OPERATOR_OR = 17;
        public static final int EXPRTOKEN_OPERATOR_PLUS = 24;
        public static final int EXPRTOKEN_OPERATOR_SLASH = 21;
        public static final int EXPRTOKEN_OPERATOR_UNION = 23;
        public static final int EXPRTOKEN_PERIOD = 4;
        public static final int EXPRTOKEN_VARIABLE_REFERENCE = 48;
        private static final int INITIAL_TOKEN_COUNT = 256;
        private static final String[] fgTokenNames = {"EXPRTOKEN_OPEN_PAREN", "EXPRTOKEN_CLOSE_PAREN", "EXPRTOKEN_OPEN_BRACKET", "EXPRTOKEN_CLOSE_BRACKET", "EXPRTOKEN_PERIOD", "EXPRTOKEN_DOUBLE_PERIOD", "EXPRTOKEN_ATSIGN", "EXPRTOKEN_COMMA", "EXPRTOKEN_DOUBLE_COLON", "EXPRTOKEN_NAMETEST_ANY", "EXPRTOKEN_NAMETEST_NAMESPACE", "EXPRTOKEN_NAMETEST_QNAME", "EXPRTOKEN_NODETYPE_COMMENT", "EXPRTOKEN_NODETYPE_TEXT", "EXPRTOKEN_NODETYPE_PI", "EXPRTOKEN_NODETYPE_NODE", "EXPRTOKEN_OPERATOR_AND", "EXPRTOKEN_OPERATOR_OR", "EXPRTOKEN_OPERATOR_MOD", "EXPRTOKEN_OPERATOR_DIV", "EXPRTOKEN_OPERATOR_MULT", "EXPRTOKEN_OPERATOR_SLASH", "EXPRTOKEN_OPERATOR_DOUBLE_SLASH", "EXPRTOKEN_OPERATOR_UNION", "EXPRTOKEN_OPERATOR_PLUS", "EXPRTOKEN_OPERATOR_MINUS", "EXPRTOKEN_OPERATOR_EQUAL", "EXPRTOKEN_OPERATOR_NOT_EQUAL", "EXPRTOKEN_OPERATOR_LESS", "EXPRTOKEN_OPERATOR_LESS_EQUAL", "EXPRTOKEN_OPERATOR_GREATER", "EXPRTOKEN_OPERATOR_GREATER_EQUAL", "EXPRTOKEN_FUNCTION_NAME", "EXPRTOKEN_AXISNAME_ANCESTOR", "EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF", "EXPRTOKEN_AXISNAME_ATTRIBUTE", "EXPRTOKEN_AXISNAME_CHILD", "EXPRTOKEN_AXISNAME_DESCENDANT", "EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF", "EXPRTOKEN_AXISNAME_FOLLOWING", "EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING", "EXPRTOKEN_AXISNAME_NAMESPACE", "EXPRTOKEN_AXISNAME_PARENT", "EXPRTOKEN_AXISNAME_PRECEDING", "EXPRTOKEN_AXISNAME_PRECEDING_SIBLING", "EXPRTOKEN_AXISNAME_SELF", "EXPRTOKEN_LITERAL", "EXPRTOKEN_NUMBER", "EXPRTOKEN_VARIABLE_REFERENCE"};
        private int fCurrentTokenIndex;
        private SymbolTable fSymbolTable;
        private int[] fTokens = new int[256];
        private int fTokenCount = 0;
        private Hashtable fSymbolMapping = new Hashtable();
        private Hashtable fTokenNames = new Hashtable();

        public Tokens(SymbolTable symbolTable) {
            this.fSymbolTable = symbolTable;
            String[] strArr = {"ancestor", "ancestor-or-self", "attribute", "child", "descendant", "descendant-or-self", "following", "following-sibling", Constants.ATTRNAME_NAMESPACE, "parent", "preceding", "preceding-sibling", DavPrincipal.KEY_SELF};
            for (int i = 0; i < 13; i++) {
                this.fSymbolMapping.put(this.fSymbolTable.addSymbol(strArr[i]), new Integer(i));
            }
            this.fTokenNames.put(new Integer(0), "EXPRTOKEN_OPEN_PAREN");
            this.fTokenNames.put(new Integer(1), "EXPRTOKEN_CLOSE_PAREN");
            this.fTokenNames.put(new Integer(2), "EXPRTOKEN_OPEN_BRACKET");
            this.fTokenNames.put(new Integer(3), "EXPRTOKEN_CLOSE_BRACKET");
            this.fTokenNames.put(new Integer(4), "EXPRTOKEN_PERIOD");
            this.fTokenNames.put(new Integer(5), "EXPRTOKEN_DOUBLE_PERIOD");
            this.fTokenNames.put(new Integer(6), "EXPRTOKEN_ATSIGN");
            this.fTokenNames.put(new Integer(7), "EXPRTOKEN_COMMA");
            this.fTokenNames.put(new Integer(8), "EXPRTOKEN_DOUBLE_COLON");
            this.fTokenNames.put(new Integer(9), "EXPRTOKEN_NAMETEST_ANY");
            this.fTokenNames.put(new Integer(10), "EXPRTOKEN_NAMETEST_NAMESPACE");
            this.fTokenNames.put(new Integer(11), "EXPRTOKEN_NAMETEST_QNAME");
            this.fTokenNames.put(new Integer(12), "EXPRTOKEN_NODETYPE_COMMENT");
            this.fTokenNames.put(new Integer(13), "EXPRTOKEN_NODETYPE_TEXT");
            this.fTokenNames.put(new Integer(14), "EXPRTOKEN_NODETYPE_PI");
            this.fTokenNames.put(new Integer(15), "EXPRTOKEN_NODETYPE_NODE");
            this.fTokenNames.put(new Integer(16), "EXPRTOKEN_OPERATOR_AND");
            this.fTokenNames.put(new Integer(17), "EXPRTOKEN_OPERATOR_OR");
            this.fTokenNames.put(new Integer(18), "EXPRTOKEN_OPERATOR_MOD");
            this.fTokenNames.put(new Integer(19), "EXPRTOKEN_OPERATOR_DIV");
            this.fTokenNames.put(new Integer(20), "EXPRTOKEN_OPERATOR_MULT");
            this.fTokenNames.put(new Integer(21), "EXPRTOKEN_OPERATOR_SLASH");
            this.fTokenNames.put(new Integer(22), "EXPRTOKEN_OPERATOR_DOUBLE_SLASH");
            this.fTokenNames.put(new Integer(23), "EXPRTOKEN_OPERATOR_UNION");
            this.fTokenNames.put(new Integer(24), "EXPRTOKEN_OPERATOR_PLUS");
            this.fTokenNames.put(new Integer(25), "EXPRTOKEN_OPERATOR_MINUS");
            this.fTokenNames.put(new Integer(26), "EXPRTOKEN_OPERATOR_EQUAL");
            this.fTokenNames.put(new Integer(27), "EXPRTOKEN_OPERATOR_NOT_EQUAL");
            this.fTokenNames.put(new Integer(28), "EXPRTOKEN_OPERATOR_LESS");
            this.fTokenNames.put(new Integer(29), "EXPRTOKEN_OPERATOR_LESS_EQUAL");
            this.fTokenNames.put(new Integer(30), "EXPRTOKEN_OPERATOR_GREATER");
            this.fTokenNames.put(new Integer(31), "EXPRTOKEN_OPERATOR_GREATER_EQUAL");
            this.fTokenNames.put(new Integer(32), "EXPRTOKEN_FUNCTION_NAME");
            this.fTokenNames.put(new Integer(33), "EXPRTOKEN_AXISNAME_ANCESTOR");
            this.fTokenNames.put(new Integer(34), "EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF");
            this.fTokenNames.put(new Integer(35), "EXPRTOKEN_AXISNAME_ATTRIBUTE");
            this.fTokenNames.put(new Integer(36), "EXPRTOKEN_AXISNAME_CHILD");
            this.fTokenNames.put(new Integer(37), "EXPRTOKEN_AXISNAME_DESCENDANT");
            this.fTokenNames.put(new Integer(38), "EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF");
            this.fTokenNames.put(new Integer(39), "EXPRTOKEN_AXISNAME_FOLLOWING");
            this.fTokenNames.put(new Integer(40), "EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING");
            this.fTokenNames.put(new Integer(41), "EXPRTOKEN_AXISNAME_NAMESPACE");
            this.fTokenNames.put(new Integer(42), "EXPRTOKEN_AXISNAME_PARENT");
            this.fTokenNames.put(new Integer(43), "EXPRTOKEN_AXISNAME_PRECEDING");
            this.fTokenNames.put(new Integer(44), "EXPRTOKEN_AXISNAME_PRECEDING_SIBLING");
            this.fTokenNames.put(new Integer(45), "EXPRTOKEN_AXISNAME_SELF");
            this.fTokenNames.put(new Integer(46), "EXPRTOKEN_LITERAL");
            this.fTokenNames.put(new Integer(47), "EXPRTOKEN_NUMBER");
            this.fTokenNames.put(new Integer(48), "EXPRTOKEN_VARIABLE_REFERENCE");
        }

        public void addToken(String str) {
            Integer num = (Integer) this.fTokenNames.get(str);
            if (num == null) {
                num = new Integer(this.fTokenNames.size());
                this.fTokenNames.put(num, str);
            }
            addToken(num.intValue());
        }

        public void dumpTokens() {
            int i = 0;
            while (i < this.fTokenCount) {
                switch (this.fTokens[i]) {
                    case 0:
                        System.out.print("<OPEN_PAREN/>");
                        break;
                    case 1:
                        System.out.print("<CLOSE_PAREN/>");
                        break;
                    case 2:
                        System.out.print("<OPEN_BRACKET/>");
                        break;
                    case 3:
                        System.out.print("<CLOSE_BRACKET/>");
                        break;
                    case 4:
                        System.out.print("<PERIOD/>");
                        break;
                    case 5:
                        System.out.print("<DOUBLE_PERIOD/>");
                        break;
                    case 6:
                        System.out.print("<ATSIGN/>");
                        break;
                    case 7:
                        System.out.print("<COMMA/>");
                        break;
                    case 8:
                        System.out.print("<DOUBLE_COLON/>");
                        break;
                    case 9:
                        System.out.print("<NAMETEST_ANY/>");
                        break;
                    case 10:
                        System.out.print("<NAMETEST_NAMESPACE");
                        PrintStream printStream = System.out;
                        StringBuilder sb = new StringBuilder();
                        sb.append(" prefix=\"");
                        i++;
                        sb.append(getTokenString(this.fTokens[i]));
                        sb.append("\"");
                        printStream.print(sb.toString());
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    case 11:
                        System.out.print("<NAMETEST_QNAME");
                        int i2 = i + 1;
                        if (this.fTokens[i2] != -1) {
                            System.out.print(" prefix=\"" + getTokenString(this.fTokens[i2]) + "\"");
                        }
                        PrintStream printStream2 = System.out;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(" localpart=\"");
                        i = i2 + 1;
                        sb2.append(getTokenString(this.fTokens[i]));
                        sb2.append("\"");
                        printStream2.print(sb2.toString());
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    case 12:
                        System.out.print("<NODETYPE_COMMENT/>");
                        break;
                    case 13:
                        System.out.print("<NODETYPE_TEXT/>");
                        break;
                    case 14:
                        System.out.print("<NODETYPE_PI/>");
                        break;
                    case 15:
                        System.out.print("<NODETYPE_NODE/>");
                        break;
                    case 16:
                        System.out.print("<OPERATOR_AND/>");
                        break;
                    case 17:
                        System.out.print("<OPERATOR_OR/>");
                        break;
                    case 18:
                        System.out.print("<OPERATOR_MOD/>");
                        break;
                    case 19:
                        System.out.print("<OPERATOR_DIV/>");
                        break;
                    case 20:
                        System.out.print("<OPERATOR_MULT/>");
                        break;
                    case 21:
                        System.out.print("<OPERATOR_SLASH/>");
                        if (i + 1 >= this.fTokenCount) {
                            break;
                        } else {
                            System.out.println();
                            System.out.print(GlideException.C1935a.f14609h);
                            break;
                        }
                    case 22:
                        System.out.print("<OPERATOR_DOUBLE_SLASH/>");
                        break;
                    case 23:
                        System.out.print("<OPERATOR_UNION/>");
                        break;
                    case 24:
                        System.out.print("<OPERATOR_PLUS/>");
                        break;
                    case 25:
                        System.out.print("<OPERATOR_MINUS/>");
                        break;
                    case 26:
                        System.out.print("<OPERATOR_EQUAL/>");
                        break;
                    case 27:
                        System.out.print("<OPERATOR_NOT_EQUAL/>");
                        break;
                    case 28:
                        System.out.print("<OPERATOR_LESS/>");
                        break;
                    case 29:
                        System.out.print("<OPERATOR_LESS_EQUAL/>");
                        break;
                    case 30:
                        System.out.print("<OPERATOR_GREATER/>");
                        break;
                    case 31:
                        System.out.print("<OPERATOR_GREATER_EQUAL/>");
                        break;
                    case 32:
                        System.out.print("<FUNCTION_NAME");
                        int i3 = i + 1;
                        if (this.fTokens[i3] != -1) {
                            System.out.print(" prefix=\"" + getTokenString(this.fTokens[i3]) + "\"");
                        }
                        PrintStream printStream3 = System.out;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(" localpart=\"");
                        i = i3 + 1;
                        sb3.append(getTokenString(this.fTokens[i]));
                        sb3.append("\"");
                        printStream3.print(sb3.toString());
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    case 33:
                        System.out.print("<AXISNAME_ANCESTOR/>");
                        break;
                    case 34:
                        System.out.print("<AXISNAME_ANCESTOR_OR_SELF/>");
                        break;
                    case 35:
                        System.out.print("<AXISNAME_ATTRIBUTE/>");
                        break;
                    case 36:
                        System.out.print("<AXISNAME_CHILD/>");
                        break;
                    case 37:
                        System.out.print("<AXISNAME_DESCENDANT/>");
                        break;
                    case 38:
                        System.out.print("<AXISNAME_DESCENDANT_OR_SELF/>");
                        break;
                    case 39:
                        System.out.print("<AXISNAME_FOLLOWING/>");
                        break;
                    case 40:
                        System.out.print("<AXISNAME_FOLLOWING_SIBLING/>");
                        break;
                    case 41:
                        System.out.print("<AXISNAME_NAMESPACE/>");
                        break;
                    case 42:
                        System.out.print("<AXISNAME_PARENT/>");
                        break;
                    case 43:
                        System.out.print("<AXISNAME_PRECEDING/>");
                        break;
                    case 44:
                        System.out.print("<AXISNAME_PRECEDING_SIBLING/>");
                        break;
                    case 45:
                        System.out.print("<AXISNAME_SELF/>");
                        break;
                    case 46:
                        System.out.print("<LITERAL");
                        PrintStream printStream4 = System.out;
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(" value=\"");
                        i++;
                        sb4.append(getTokenString(this.fTokens[i]));
                        sb4.append("\"");
                        printStream4.print(sb4.toString());
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    case 47:
                        System.out.print("<NUMBER");
                        PrintStream printStream5 = System.out;
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append(" whole=\"");
                        int i4 = i + 1;
                        sb5.append(getTokenString(this.fTokens[i4]));
                        sb5.append("\"");
                        printStream5.print(sb5.toString());
                        PrintStream printStream6 = System.out;
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(" part=\"");
                        i = i4 + 1;
                        sb6.append(getTokenString(this.fTokens[i]));
                        sb6.append("\"");
                        printStream6.print(sb6.toString());
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    case 48:
                        System.out.print("<VARIABLE_REFERENCE");
                        int i5 = i + 1;
                        if (this.fTokens[i5] != -1) {
                            System.out.print(" prefix=\"" + getTokenString(this.fTokens[i5]) + "\"");
                        }
                        PrintStream printStream7 = System.out;
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(" localpart=\"");
                        i = i5 + 1;
                        sb7.append(getTokenString(this.fTokens[i]));
                        sb7.append("\"");
                        printStream7.print(sb7.toString());
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    default:
                        System.out.println("<???/>");
                        break;
                }
                i++;
            }
            System.out.println();
        }

        public String getTokenString(int i) {
            return (String) this.fTokenNames.get(new Integer(i));
        }

        public boolean hasMore() {
            return this.fCurrentTokenIndex < this.fTokenCount;
        }

        public int nextToken() throws XPathException {
            int i = this.fCurrentTokenIndex;
            if (i == this.fTokenCount) {
                throw new XPathException("c-general-xpath");
            }
            int[] iArr = this.fTokens;
            this.fCurrentTokenIndex = i + 1;
            return iArr[i];
        }

        public String nextTokenAsString() throws XPathException {
            String tokenString = getTokenString(nextToken());
            if (tokenString != null) {
                return tokenString;
            }
            throw new XPathException("c-general-xpath");
        }

        public int peekToken() throws XPathException {
            int i = this.fCurrentTokenIndex;
            if (i != this.fTokenCount) {
                return this.fTokens[i];
            }
            throw new XPathException("c-general-xpath");
        }

        public void rewind() {
            this.fCurrentTokenIndex = 0;
        }

        public void addToken(int i) {
            try {
                this.fTokens[this.fTokenCount] = i;
            } catch (ArrayIndexOutOfBoundsException unused) {
                int[] iArr = this.fTokens;
                int i2 = this.fTokenCount;
                int[] iArr2 = new int[i2 << 1];
                this.fTokens = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                this.fTokens[this.fTokenCount] = i;
            }
            this.fTokenCount++;
        }
    }
}
