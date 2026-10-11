package org.apache.xerces.impl.xpath;

import com.bumptech.glide.load.engine.GlideException;
import com.onyx.android.sdk.base.data.Operators;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import com.sunia.HTREnginev2.gon;
import com.thegrizzlylabs.sardineandroid.DavPrincipal;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class XPath {

    /* renamed from: a */
    public static final boolean f112449a = false;

    /* renamed from: b */
    public static final boolean f112450b = false;

    /* renamed from: c */
    public static final boolean f112451c = false;
    protected final String fExpression;
    protected final LocationPath[] fLocationPaths;
    protected final SymbolTable fSymbolTable;

    /* loaded from: classes13.dex */
    public static class Axis implements Cloneable {
        public static final short ATTRIBUTE = 2;
        public static final short CHILD = 1;
        public static final short DESCENDANT = 4;
        public static final short SELF = 3;
        public final short type;

        public Axis(Axis axis) {
            this.type = axis.type;
        }

        public Object clone() {
            return new Axis(this);
        }

        public String toString() {
            short s = this.type;
            return s != 1 ? s != 2 ? s != 3 ? s != 4 ? "???" : "descendant" : DavPrincipal.KEY_SELF : "attribute" : "child";
        }

        public Axis(short s) {
            this.type = s;
        }
    }

    /* loaded from: classes13.dex */
    public static class LocationPath implements Cloneable {
        public final Step[] steps;

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

        public LocationPath(Step[] stepArr) {
            this.steps = stepArr;
        }
    }

    /* loaded from: classes13.dex */
    public static class NodeTest implements Cloneable {
        public static final short NAMESPACE = 4;
        public static final short NODE = 3;
        public static final short QNAME = 1;
        public static final short WILDCARD = 2;
        public final QName name;
        public final short type;

        public NodeTest(String str, String str2) {
            QName qName = new QName();
            this.name = qName;
            this.type = (short) 4;
            qName.setValues(str, null, null, str2);
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
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(this.name.prefix);
                    stringBuffer.append(':');
                    stringBuffer.append(this.name.localpart);
                    return stringBuffer.toString();
                }
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("{");
                stringBuffer2.append(this.name.uri);
                stringBuffer2.append('}');
                stringBuffer2.append(this.name.prefix);
                stringBuffer2.append(':');
                stringBuffer2.append(this.name.localpart);
                return stringBuffer2.toString();
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
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(this.name.prefix);
                stringBuffer3.append(":*");
                return stringBuffer3.toString();
            }
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("{");
            stringBuffer4.append(this.name.uri);
            stringBuffer4.append('}');
            stringBuffer4.append(this.name.prefix);
            stringBuffer4.append(":*");
            return stringBuffer4.toString();
        }

        public NodeTest(NodeTest nodeTest) {
            QName qName = new QName();
            this.name = qName;
            this.type = nodeTest.type;
            qName.setValues(nodeTest.name);
        }

        public NodeTest(QName qName) {
            QName qName2 = new QName();
            this.name = qName2;
            this.type = (short) 1;
            qName2.setValues(qName);
        }

        public NodeTest(short s) {
            this.name = new QName();
            this.type = s;
        }
    }

    /* loaded from: classes13.dex */
    public static class Step implements Cloneable {
        public final Axis axis;
        public final NodeTest nodeTest;

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
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("@");
                stringBuffer.append(this.nodeTest.toString());
                return stringBuffer.toString();
            }
            if (s == 1) {
                return this.nodeTest.toString();
            }
            if (s == 4) {
                return "//";
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("??? (");
            stringBuffer2.append((int) this.axis.type);
            stringBuffer2.append(')');
            return stringBuffer2.toString();
        }

        public Step(Step step) {
            this.axis = (Axis) step.axis.clone();
            this.nodeTest = (NodeTest) step.nodeTest.clone();
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.XPath$a */
    /* loaded from: classes13.dex */
    public static class C20030a {

        /* renamed from: A */
        public static final byte f112452A = 25;

        /* renamed from: B */
        public static final byte[] f112453B = {0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 4, 1, 5, 1, 1, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 1, 16, 17, 18, 1, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 1, 22, 1, 23, 1, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 1, 24, 1, 1, 1};

        /* renamed from: C */
        public static final String f112454C = Operators.AND.intern();

        /* renamed from: D */
        public static final String f112455D = Operators.OR.intern();

        /* renamed from: E */
        public static final String f112456E = "mod".intern();

        /* renamed from: F */
        public static final String f112457F = gon.f71293q.intern();

        /* renamed from: G */
        public static final String f112458G = "comment".intern();

        /* renamed from: H */
        public static final String f112459H = "text".intern();

        /* renamed from: I */
        public static final String f112460I = Constants.ELEMNAME_PI_STRING.intern();

        /* renamed from: J */
        public static final String f112461J = "node".intern();

        /* renamed from: K */
        public static final String f112462K = "ancestor".intern();

        /* renamed from: L */
        public static final String f112463L = "ancestor-or-self".intern();

        /* renamed from: M */
        public static final String f112464M = "attribute".intern();

        /* renamed from: N */
        public static final String f112465N = "child".intern();

        /* renamed from: O */
        public static final String f112466O = "descendant".intern();

        /* renamed from: P */
        public static final String f112467P = "descendant-or-self".intern();

        /* renamed from: Q */
        public static final String f112468Q = "following".intern();

        /* renamed from: R */
        public static final String f112469R = "following-sibling".intern();

        /* renamed from: S */
        public static final String f112470S = Constants.ATTRNAME_NAMESPACE.intern();

        /* renamed from: T */
        public static final String f112471T = "parent".intern();

        /* renamed from: U */
        public static final String f112472U = "preceding".intern();

        /* renamed from: V */
        public static final String f112473V = "preceding-sibling".intern();

        /* renamed from: W */
        public static final String f112474W = DavPrincipal.KEY_SELF.intern();

        /* renamed from: b */
        public static final byte f112475b = 0;

        /* renamed from: c */
        public static final byte f112476c = 1;

        /* renamed from: d */
        public static final byte f112477d = 2;

        /* renamed from: e */
        public static final byte f112478e = 3;

        /* renamed from: f */
        public static final byte f112479f = 4;

        /* renamed from: g */
        public static final byte f112480g = 5;

        /* renamed from: h */
        public static final byte f112481h = 6;

        /* renamed from: i */
        public static final byte f112482i = 7;

        /* renamed from: j */
        public static final byte f112483j = 8;

        /* renamed from: k */
        public static final byte f112484k = 9;

        /* renamed from: l */
        public static final byte f112485l = 10;

        /* renamed from: m */
        public static final byte f112486m = 11;

        /* renamed from: n */
        public static final byte f112487n = 12;

        /* renamed from: o */
        public static final byte f112488o = 13;

        /* renamed from: p */
        public static final byte f112489p = 14;

        /* renamed from: q */
        public static final byte f112490q = 15;

        /* renamed from: r */
        public static final byte f112491r = 16;

        /* renamed from: s */
        public static final byte f112492s = 17;

        /* renamed from: t */
        public static final byte f112493t = 18;

        /* renamed from: u */
        public static final byte f112494u = 19;

        /* renamed from: v */
        public static final byte f112495v = 20;

        /* renamed from: w */
        public static final byte f112496w = 21;

        /* renamed from: x */
        public static final byte f112497x = 22;

        /* renamed from: y */
        public static final byte f112498y = 23;

        /* renamed from: z */
        public static final byte f112499z = 24;

        /* renamed from: a */
        public SymbolTable f112500a;

        public C20030a(SymbolTable symbolTable) {
            this.f112500a = symbolTable;
        }

        /* renamed from: a */
        public void mo69988a(C20031b c20031b, int i) throws XPathException {
            c20031b.m69992a(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:301:0x0145, code lost:
        
            mo69988a(r22, 10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:353:0x002d, code lost:
        
            return true;
         */
        /* JADX WARN: Failed to find 'out' block for switch in B:16:0x003d. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:219:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:252:0x01bc  */
        /* JADX WARN: Removed duplicated region for block: B:259:0x01bb A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:307:0x00d2 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:331:0x01ca A[LOOP:5: B:213:0x00c3->B:331:0x01ca, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:332:0x00d0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:352:0x002d A[SYNTHETIC] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m69989b(org.apache.xerces.util.SymbolTable r21, org.apache.xerces.impl.xpath.XPath.C20031b r22, java.lang.String r23, int r24, int r25) throws org.apache.xerces.impl.xpath.XPathException {
            /*
                Method dump skipped, instructions count: 908
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.XPath.C20030a.m69989b(org.apache.xerces.util.SymbolTable, org.apache.xerces.impl.xpath.XPath$b, java.lang.String, int, int):boolean");
        }

        /* renamed from: c */
        public int m69990c(String str, int i, int i2) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                byte b = f112453B[charAt];
                if (b != 20 && b != 23) {
                    return i2;
                }
            } else if (!XMLChar.isNameStart(charAt)) {
                return i2;
            }
            while (true) {
                i2++;
                if (i2 >= i) {
                    break;
                }
                char charAt2 = str.charAt(i2);
                if (charAt2 < 128) {
                    byte b2 = f112453B[charAt2];
                    if (b2 != 20 && b2 != 14 && b2 != 12 && b2 != 11 && b2 != 23) {
                        break;
                    }
                } else if (!XMLChar.isName(charAt2)) {
                    break;
                }
            }
            return i2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
        
            if (r9 < r8) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
        
            r5 = r7.charAt(r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
        
            if (r5 < '0') goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
        
            if (r5 <= '9') goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
        
            r0 = (r0 * 10) + (r5 - '0');
            r9 = r9 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
        
            if (r9 != r8) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
        
            if (r0 != 0) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0042, code lost:
        
            throw new java.lang.RuntimeException("find a solution!");
         */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int m69991d(org.apache.xerces.impl.xpath.XPath.C20031b r6, java.lang.String r7, int r8, int r9) {
            /*
                r5 = this;
                char r5 = r7.charAt(r9)
                r0 = 0
                r1 = r0
            L6:
                r2 = 57
                r3 = 48
                if (r5 < r3) goto L1e
                if (r5 <= r2) goto Lf
                goto L1e
            Lf:
                int r1 = r1 * 10
                int r4 = r5 + (-48)
                int r1 = r1 + r4
                int r9 = r9 + 1
                if (r9 != r8) goto L19
                goto L1e
            L19:
                char r5 = r7.charAt(r9)
                goto L6
            L1e:
                r4 = 46
                if (r5 != r4) goto L43
                int r9 = r9 + 1
                if (r9 >= r8) goto L43
            L26:
                char r5 = r7.charAt(r9)
                if (r5 < r3) goto L38
                if (r5 <= r2) goto L2f
                goto L38
            L2f:
                int r0 = r0 * 10
                int r5 = r5 + (-48)
                int r0 = r0 + r5
                int r9 = r9 + 1
                if (r9 != r8) goto L26
            L38:
                if (r0 != 0) goto L3b
                goto L43
            L3b:
                java.lang.RuntimeException r5 = new java.lang.RuntimeException
                java.lang.String r6 = "find a solution!"
                r5.<init>(r6)
                throw r5
            L43:
                r6.m69992a(r1)
                r6.m69992a(r0)
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.XPath.C20030a.m69991d(org.apache.xerces.impl.xpath.XPath$b, java.lang.String, int, int):int");
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.XPath$b */
    /* loaded from: classes13.dex */
    public static final class C20031b {

        /* renamed from: A */
        public static final int f112501A = 19;

        /* renamed from: B */
        public static final int f112502B = 20;

        /* renamed from: C */
        public static final int f112503C = 21;

        /* renamed from: D */
        public static final int f112504D = 22;

        /* renamed from: E */
        public static final int f112505E = 23;

        /* renamed from: F */
        public static final int f112506F = 24;

        /* renamed from: G */
        public static final int f112507G = 25;

        /* renamed from: H */
        public static final int f112508H = 26;

        /* renamed from: I */
        public static final int f112509I = 27;

        /* renamed from: J */
        public static final int f112510J = 28;

        /* renamed from: K */
        public static final int f112511K = 29;

        /* renamed from: L */
        public static final int f112512L = 30;

        /* renamed from: M */
        public static final int f112513M = 31;

        /* renamed from: N */
        public static final int f112514N = 32;

        /* renamed from: O */
        public static final int f112515O = 33;

        /* renamed from: P */
        public static final int f112516P = 34;

        /* renamed from: Q */
        public static final int f112517Q = 35;

        /* renamed from: R */
        public static final int f112518R = 36;

        /* renamed from: S */
        public static final int f112519S = 37;

        /* renamed from: T */
        public static final int f112520T = 38;

        /* renamed from: U */
        public static final int f112521U = 39;

        /* renamed from: V */
        public static final int f112522V = 40;

        /* renamed from: W */
        public static final int f112523W = 41;

        /* renamed from: X */
        public static final int f112524X = 42;

        /* renamed from: Y */
        public static final int f112525Y = 43;

        /* renamed from: Z */
        public static final int f112526Z = 44;

        /* renamed from: a0 */
        public static final int f112527a0 = 45;

        /* renamed from: b0 */
        public static final int f112528b0 = 46;

        /* renamed from: c0 */
        public static final int f112529c0 = 47;

        /* renamed from: d0 */
        public static final int f112530d0 = 48;

        /* renamed from: e0 */
        public static final String[] f112531e0 = {"EXPRTOKEN_OPEN_PAREN", "EXPRTOKEN_CLOSE_PAREN", "EXPRTOKEN_OPEN_BRACKET", "EXPRTOKEN_CLOSE_BRACKET", "EXPRTOKEN_PERIOD", "EXPRTOKEN_DOUBLE_PERIOD", "EXPRTOKEN_ATSIGN", "EXPRTOKEN_COMMA", "EXPRTOKEN_DOUBLE_COLON", "EXPRTOKEN_NAMETEST_ANY", "EXPRTOKEN_NAMETEST_NAMESPACE", "EXPRTOKEN_NAMETEST_QNAME", "EXPRTOKEN_NODETYPE_COMMENT", "EXPRTOKEN_NODETYPE_TEXT", "EXPRTOKEN_NODETYPE_PI", "EXPRTOKEN_NODETYPE_NODE", "EXPRTOKEN_OPERATOR_AND", "EXPRTOKEN_OPERATOR_OR", "EXPRTOKEN_OPERATOR_MOD", "EXPRTOKEN_OPERATOR_DIV", "EXPRTOKEN_OPERATOR_MULT", "EXPRTOKEN_OPERATOR_SLASH", "EXPRTOKEN_OPERATOR_DOUBLE_SLASH", "EXPRTOKEN_OPERATOR_UNION", "EXPRTOKEN_OPERATOR_PLUS", "EXPRTOKEN_OPERATOR_MINUS", "EXPRTOKEN_OPERATOR_EQUAL", "EXPRTOKEN_OPERATOR_NOT_EQUAL", "EXPRTOKEN_OPERATOR_LESS", "EXPRTOKEN_OPERATOR_LESS_EQUAL", "EXPRTOKEN_OPERATOR_GREATER", "EXPRTOKEN_OPERATOR_GREATER_EQUAL", "EXPRTOKEN_FUNCTION_NAME", "EXPRTOKEN_AXISNAME_ANCESTOR", "EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF", "EXPRTOKEN_AXISNAME_ATTRIBUTE", "EXPRTOKEN_AXISNAME_CHILD", "EXPRTOKEN_AXISNAME_DESCENDANT", "EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF", "EXPRTOKEN_AXISNAME_FOLLOWING", "EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING", "EXPRTOKEN_AXISNAME_NAMESPACE", "EXPRTOKEN_AXISNAME_PARENT", "EXPRTOKEN_AXISNAME_PRECEDING", "EXPRTOKEN_AXISNAME_PRECEDING_SIBLING", "EXPRTOKEN_AXISNAME_SELF", "EXPRTOKEN_LITERAL", "EXPRTOKEN_NUMBER", "EXPRTOKEN_VARIABLE_REFERENCE"};

        /* renamed from: f0 */
        public static final int f112532f0 = 256;

        /* renamed from: g */
        public static final boolean f112533g = false;

        /* renamed from: h */
        public static final int f112534h = 0;

        /* renamed from: i */
        public static final int f112535i = 1;

        /* renamed from: j */
        public static final int f112536j = 2;

        /* renamed from: k */
        public static final int f112537k = 3;

        /* renamed from: l */
        public static final int f112538l = 4;

        /* renamed from: m */
        public static final int f112539m = 5;

        /* renamed from: n */
        public static final int f112540n = 6;

        /* renamed from: o */
        public static final int f112541o = 7;

        /* renamed from: p */
        public static final int f112542p = 8;

        /* renamed from: q */
        public static final int f112543q = 9;

        /* renamed from: r */
        public static final int f112544r = 10;

        /* renamed from: s */
        public static final int f112545s = 11;

        /* renamed from: t */
        public static final int f112546t = 12;

        /* renamed from: u */
        public static final int f112547u = 13;

        /* renamed from: v */
        public static final int f112548v = 14;

        /* renamed from: w */
        public static final int f112549w = 15;

        /* renamed from: x */
        public static final int f112550x = 16;

        /* renamed from: y */
        public static final int f112551y = 17;

        /* renamed from: z */
        public static final int f112552z = 18;

        /* renamed from: c */
        public SymbolTable f112555c;

        /* renamed from: f */
        public int f112558f;

        /* renamed from: a */
        public int[] f112553a = new int[256];

        /* renamed from: b */
        public int f112554b = 0;

        /* renamed from: d */
        public Hashtable f112556d = new Hashtable();

        /* renamed from: e */
        public Hashtable f112557e = new Hashtable();

        public C20031b(SymbolTable symbolTable) {
            this.f112555c = symbolTable;
            String[] strArr = {"ancestor", "ancestor-or-self", "attribute", "child", "descendant", "descendant-or-self", "following", "following-sibling", Constants.ATTRNAME_NAMESPACE, "parent", "preceding", "preceding-sibling", DavPrincipal.KEY_SELF};
            for (int i = 0; i < 13; i++) {
                this.f112556d.put(this.f112555c.addSymbol(strArr[i]), new Integer(i));
            }
            this.f112557e.put(new Integer(0), "EXPRTOKEN_OPEN_PAREN");
            this.f112557e.put(new Integer(1), "EXPRTOKEN_CLOSE_PAREN");
            this.f112557e.put(new Integer(2), "EXPRTOKEN_OPEN_BRACKET");
            this.f112557e.put(new Integer(3), "EXPRTOKEN_CLOSE_BRACKET");
            this.f112557e.put(new Integer(4), "EXPRTOKEN_PERIOD");
            this.f112557e.put(new Integer(5), "EXPRTOKEN_DOUBLE_PERIOD");
            this.f112557e.put(new Integer(6), "EXPRTOKEN_ATSIGN");
            this.f112557e.put(new Integer(7), "EXPRTOKEN_COMMA");
            this.f112557e.put(new Integer(8), "EXPRTOKEN_DOUBLE_COLON");
            this.f112557e.put(new Integer(9), "EXPRTOKEN_NAMETEST_ANY");
            this.f112557e.put(new Integer(10), "EXPRTOKEN_NAMETEST_NAMESPACE");
            this.f112557e.put(new Integer(11), "EXPRTOKEN_NAMETEST_QNAME");
            this.f112557e.put(new Integer(12), "EXPRTOKEN_NODETYPE_COMMENT");
            this.f112557e.put(new Integer(13), "EXPRTOKEN_NODETYPE_TEXT");
            this.f112557e.put(new Integer(14), "EXPRTOKEN_NODETYPE_PI");
            this.f112557e.put(new Integer(15), "EXPRTOKEN_NODETYPE_NODE");
            this.f112557e.put(new Integer(16), "EXPRTOKEN_OPERATOR_AND");
            this.f112557e.put(new Integer(17), "EXPRTOKEN_OPERATOR_OR");
            this.f112557e.put(new Integer(18), "EXPRTOKEN_OPERATOR_MOD");
            this.f112557e.put(new Integer(19), "EXPRTOKEN_OPERATOR_DIV");
            this.f112557e.put(new Integer(20), "EXPRTOKEN_OPERATOR_MULT");
            this.f112557e.put(new Integer(21), "EXPRTOKEN_OPERATOR_SLASH");
            this.f112557e.put(new Integer(22), "EXPRTOKEN_OPERATOR_DOUBLE_SLASH");
            this.f112557e.put(new Integer(23), "EXPRTOKEN_OPERATOR_UNION");
            this.f112557e.put(new Integer(24), "EXPRTOKEN_OPERATOR_PLUS");
            this.f112557e.put(new Integer(25), "EXPRTOKEN_OPERATOR_MINUS");
            this.f112557e.put(new Integer(26), "EXPRTOKEN_OPERATOR_EQUAL");
            this.f112557e.put(new Integer(27), "EXPRTOKEN_OPERATOR_NOT_EQUAL");
            this.f112557e.put(new Integer(28), "EXPRTOKEN_OPERATOR_LESS");
            this.f112557e.put(new Integer(29), "EXPRTOKEN_OPERATOR_LESS_EQUAL");
            this.f112557e.put(new Integer(30), "EXPRTOKEN_OPERATOR_GREATER");
            this.f112557e.put(new Integer(31), "EXPRTOKEN_OPERATOR_GREATER_EQUAL");
            this.f112557e.put(new Integer(32), "EXPRTOKEN_FUNCTION_NAME");
            this.f112557e.put(new Integer(33), "EXPRTOKEN_AXISNAME_ANCESTOR");
            this.f112557e.put(new Integer(34), "EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF");
            this.f112557e.put(new Integer(35), "EXPRTOKEN_AXISNAME_ATTRIBUTE");
            this.f112557e.put(new Integer(36), "EXPRTOKEN_AXISNAME_CHILD");
            this.f112557e.put(new Integer(37), "EXPRTOKEN_AXISNAME_DESCENDANT");
            this.f112557e.put(new Integer(38), "EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF");
            this.f112557e.put(new Integer(39), "EXPRTOKEN_AXISNAME_FOLLOWING");
            this.f112557e.put(new Integer(40), "EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING");
            this.f112557e.put(new Integer(41), "EXPRTOKEN_AXISNAME_NAMESPACE");
            this.f112557e.put(new Integer(42), "EXPRTOKEN_AXISNAME_PARENT");
            this.f112557e.put(new Integer(43), "EXPRTOKEN_AXISNAME_PRECEDING");
            this.f112557e.put(new Integer(44), "EXPRTOKEN_AXISNAME_PRECEDING_SIBLING");
            this.f112557e.put(new Integer(45), "EXPRTOKEN_AXISNAME_SELF");
            this.f112557e.put(new Integer(46), "EXPRTOKEN_LITERAL");
            this.f112557e.put(new Integer(47), "EXPRTOKEN_NUMBER");
            this.f112557e.put(new Integer(48), "EXPRTOKEN_VARIABLE_REFERENCE");
        }

        /* renamed from: a */
        public void m69992a(int i) {
            try {
                this.f112553a[this.f112554b] = i;
            } catch (ArrayIndexOutOfBoundsException unused) {
                int[] iArr = this.f112553a;
                int i2 = this.f112554b;
                int[] iArr2 = new int[i2 << 1];
                this.f112553a = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                this.f112553a[this.f112554b] = i;
            }
            this.f112554b++;
        }

        /* renamed from: b */
        public void m69993b(String str) {
            Integer num = (Integer) this.f112557e.get(str);
            if (num == null) {
                num = new Integer(this.f112557e.size());
                this.f112557e.put(num, str);
            }
            m69992a(num.intValue());
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0018. Please report as an issue. */
        /* renamed from: c */
        public void m69994c() {
            PrintStream printStream;
            String str;
            PrintStream printStream2;
            StringBuffer stringBuffer;
            int i;
            StringBuffer stringBuffer2;
            int i2;
            String stringBuffer3;
            int i3 = 0;
            while (i3 < this.f112554b) {
                switch (this.f112553a[i3]) {
                    case 0:
                        printStream = System.out;
                        str = "<OPEN_PAREN/>";
                        printStream.print(str);
                        break;
                    case 1:
                        printStream = System.out;
                        str = "<CLOSE_PAREN/>";
                        printStream.print(str);
                        break;
                    case 2:
                        printStream = System.out;
                        str = "<OPEN_BRACKET/>";
                        printStream.print(str);
                        break;
                    case 3:
                        printStream = System.out;
                        str = "<CLOSE_BRACKET/>";
                        printStream.print(str);
                        break;
                    case 4:
                        printStream = System.out;
                        str = "<PERIOD/>";
                        printStream.print(str);
                        break;
                    case 5:
                        printStream = System.out;
                        str = "<DOUBLE_PERIOD/>";
                        printStream.print(str);
                        break;
                    case 6:
                        printStream = System.out;
                        str = "<ATSIGN/>";
                        printStream.print(str);
                        break;
                    case 7:
                        printStream = System.out;
                        str = "<COMMA/>";
                        printStream.print(str);
                        break;
                    case 8:
                        printStream = System.out;
                        str = "<DOUBLE_COLON/>";
                        printStream.print(str);
                        break;
                    case 9:
                        printStream = System.out;
                        str = "<NAMETEST_ANY/>";
                        printStream.print(str);
                        break;
                    case 10:
                        System.out.print("<NAMETEST_NAMESPACE");
                        printStream2 = System.out;
                        stringBuffer = new StringBuffer();
                        stringBuffer.append(" prefix=\"");
                        i3++;
                        i = this.f112553a[i3];
                        stringBuffer.append(m69995d(i));
                        stringBuffer.append("\"");
                        stringBuffer3 = stringBuffer.toString();
                        printStream2.print(stringBuffer3);
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    case 11:
                        System.out.print("<NAMETEST_QNAME");
                        int i4 = i3 + 1;
                        if (this.f112553a[i4] != -1) {
                            PrintStream printStream3 = System.out;
                            StringBuffer stringBuffer4 = new StringBuffer();
                            stringBuffer4.append(" prefix=\"");
                            stringBuffer4.append(m69995d(this.f112553a[i4]));
                            stringBuffer4.append("\"");
                            printStream3.print(stringBuffer4.toString());
                        }
                        printStream2 = System.out;
                        stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(" localpart=\"");
                        i3 = i4 + 1;
                        i2 = this.f112553a[i3];
                        stringBuffer2.append(m69995d(i2));
                        stringBuffer2.append("\"");
                        stringBuffer3 = stringBuffer2.toString();
                        printStream2.print(stringBuffer3);
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    case 12:
                        printStream = System.out;
                        str = "<NODETYPE_COMMENT/>";
                        printStream.print(str);
                        break;
                    case 13:
                        printStream = System.out;
                        str = "<NODETYPE_TEXT/>";
                        printStream.print(str);
                        break;
                    case 14:
                        printStream = System.out;
                        str = "<NODETYPE_PI/>";
                        printStream.print(str);
                        break;
                    case 15:
                        printStream = System.out;
                        str = "<NODETYPE_NODE/>";
                        printStream.print(str);
                        break;
                    case 16:
                        printStream = System.out;
                        str = "<OPERATOR_AND/>";
                        printStream.print(str);
                        break;
                    case 17:
                        printStream = System.out;
                        str = "<OPERATOR_OR/>";
                        printStream.print(str);
                        break;
                    case 18:
                        printStream = System.out;
                        str = "<OPERATOR_MOD/>";
                        printStream.print(str);
                        break;
                    case 19:
                        printStream = System.out;
                        str = "<OPERATOR_DIV/>";
                        printStream.print(str);
                        break;
                    case 20:
                        printStream = System.out;
                        str = "<OPERATOR_MULT/>";
                        printStream.print(str);
                        break;
                    case 21:
                        System.out.print("<OPERATOR_SLASH/>");
                        if (i3 + 1 >= this.f112554b) {
                            break;
                        } else {
                            System.out.println();
                            printStream = System.out;
                            str = GlideException.C1935a.f14609h;
                            printStream.print(str);
                            break;
                        }
                    case 22:
                        printStream = System.out;
                        str = "<OPERATOR_DOUBLE_SLASH/>";
                        printStream.print(str);
                        break;
                    case 23:
                        printStream = System.out;
                        str = "<OPERATOR_UNION/>";
                        printStream.print(str);
                        break;
                    case 24:
                        printStream = System.out;
                        str = "<OPERATOR_PLUS/>";
                        printStream.print(str);
                        break;
                    case 25:
                        printStream = System.out;
                        str = "<OPERATOR_MINUS/>";
                        printStream.print(str);
                        break;
                    case 26:
                        printStream = System.out;
                        str = "<OPERATOR_EQUAL/>";
                        printStream.print(str);
                        break;
                    case 27:
                        printStream = System.out;
                        str = "<OPERATOR_NOT_EQUAL/>";
                        printStream.print(str);
                        break;
                    case 28:
                        printStream = System.out;
                        str = "<OPERATOR_LESS/>";
                        printStream.print(str);
                        break;
                    case 29:
                        printStream = System.out;
                        str = "<OPERATOR_LESS_EQUAL/>";
                        printStream.print(str);
                        break;
                    case 30:
                        printStream = System.out;
                        str = "<OPERATOR_GREATER/>";
                        printStream.print(str);
                        break;
                    case 31:
                        printStream = System.out;
                        str = "<OPERATOR_GREATER_EQUAL/>";
                        printStream.print(str);
                        break;
                    case 32:
                        System.out.print("<FUNCTION_NAME");
                        int i5 = i3 + 1;
                        if (this.f112553a[i5] != -1) {
                            PrintStream printStream4 = System.out;
                            StringBuffer stringBuffer5 = new StringBuffer();
                            stringBuffer5.append(" prefix=\"");
                            stringBuffer5.append(m69995d(this.f112553a[i5]));
                            stringBuffer5.append("\"");
                            printStream4.print(stringBuffer5.toString());
                        }
                        printStream2 = System.out;
                        stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(" localpart=\"");
                        i3 = i5 + 1;
                        i2 = this.f112553a[i3];
                        stringBuffer2.append(m69995d(i2));
                        stringBuffer2.append("\"");
                        stringBuffer3 = stringBuffer2.toString();
                        printStream2.print(stringBuffer3);
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    case 33:
                        printStream = System.out;
                        str = "<AXISNAME_ANCESTOR/>";
                        printStream.print(str);
                        break;
                    case 34:
                        printStream = System.out;
                        str = "<AXISNAME_ANCESTOR_OR_SELF/>";
                        printStream.print(str);
                        break;
                    case 35:
                        printStream = System.out;
                        str = "<AXISNAME_ATTRIBUTE/>";
                        printStream.print(str);
                        break;
                    case 36:
                        printStream = System.out;
                        str = "<AXISNAME_CHILD/>";
                        printStream.print(str);
                        break;
                    case 37:
                        printStream = System.out;
                        str = "<AXISNAME_DESCENDANT/>";
                        printStream.print(str);
                        break;
                    case 38:
                        printStream = System.out;
                        str = "<AXISNAME_DESCENDANT_OR_SELF/>";
                        printStream.print(str);
                        break;
                    case 39:
                        printStream = System.out;
                        str = "<AXISNAME_FOLLOWING/>";
                        printStream.print(str);
                        break;
                    case 40:
                        printStream = System.out;
                        str = "<AXISNAME_FOLLOWING_SIBLING/>";
                        printStream.print(str);
                        break;
                    case 41:
                        printStream = System.out;
                        str = "<AXISNAME_NAMESPACE/>";
                        printStream.print(str);
                        break;
                    case 42:
                        printStream = System.out;
                        str = "<AXISNAME_PARENT/>";
                        printStream.print(str);
                        break;
                    case 43:
                        printStream = System.out;
                        str = "<AXISNAME_PRECEDING/>";
                        printStream.print(str);
                        break;
                    case 44:
                        printStream = System.out;
                        str = "<AXISNAME_PRECEDING_SIBLING/>";
                        printStream.print(str);
                        break;
                    case 45:
                        printStream = System.out;
                        str = "<AXISNAME_SELF/>";
                        printStream.print(str);
                        break;
                    case 46:
                        System.out.print("<LITERAL");
                        printStream2 = System.out;
                        stringBuffer = new StringBuffer();
                        stringBuffer.append(" value=\"");
                        i3++;
                        i = this.f112553a[i3];
                        stringBuffer.append(m69995d(i));
                        stringBuffer.append("\"");
                        stringBuffer3 = stringBuffer.toString();
                        printStream2.print(stringBuffer3);
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    case 47:
                        System.out.print("<NUMBER");
                        PrintStream printStream5 = System.out;
                        StringBuffer stringBuffer6 = new StringBuffer();
                        stringBuffer6.append(" whole=\"");
                        int i6 = i3 + 1;
                        stringBuffer6.append(m69995d(this.f112553a[i6]));
                        stringBuffer6.append("\"");
                        printStream5.print(stringBuffer6.toString());
                        printStream2 = System.out;
                        stringBuffer = new StringBuffer();
                        stringBuffer.append(" part=\"");
                        i3 = i6 + 1;
                        i = this.f112553a[i3];
                        stringBuffer.append(m69995d(i));
                        stringBuffer.append("\"");
                        stringBuffer3 = stringBuffer.toString();
                        printStream2.print(stringBuffer3);
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    case 48:
                        System.out.print("<VARIABLE_REFERENCE");
                        int i7 = i3 + 1;
                        if (this.f112553a[i7] != -1) {
                            PrintStream printStream6 = System.out;
                            StringBuffer stringBuffer7 = new StringBuffer();
                            stringBuffer7.append(" prefix=\"");
                            stringBuffer7.append(m69995d(this.f112553a[i7]));
                            stringBuffer7.append("\"");
                            printStream6.print(stringBuffer7.toString());
                        }
                        printStream2 = System.out;
                        stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(" localpart=\"");
                        i3 = i7 + 1;
                        i2 = this.f112553a[i3];
                        stringBuffer2.append(m69995d(i2));
                        stringBuffer2.append("\"");
                        stringBuffer3 = stringBuffer2.toString();
                        printStream2.print(stringBuffer3);
                        System.out.print(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                        break;
                    default:
                        System.out.println("<???/>");
                        break;
                }
                i3++;
            }
            System.out.println();
        }

        /* renamed from: d */
        public String m69995d(int i) {
            return (String) this.f112557e.get(new Integer(i));
        }

        /* renamed from: e */
        public boolean m69996e() {
            return this.f112558f < this.f112554b;
        }

        /* renamed from: f */
        public int m69997f() throws XPathException {
            int i = this.f112558f;
            if (i == this.f112554b) {
                throw new XPathException("c-general-xpath");
            }
            int[] iArr = this.f112553a;
            this.f112558f = i + 1;
            return iArr[i];
        }

        /* renamed from: g */
        public String m69998g() throws XPathException {
            String m69995d = m69995d(m69997f());
            if (m69995d != null) {
                return m69995d;
            }
            throw new XPathException("c-general-xpath");
        }

        /* renamed from: h */
        public int m69999h() throws XPathException {
            int i = this.f112558f;
            if (i != this.f112554b) {
                return this.f112553a[i];
            }
            throw new XPathException("c-general-xpath");
        }

        /* renamed from: i */
        public void m70000i() {
            this.f112558f = 0;
        }
    }

    public XPath(String str, SymbolTable symbolTable, NamespaceContext namespaceContext) throws XPathException {
        this.fExpression = str;
        this.fSymbolTable = symbolTable;
        this.fLocationPaths = m69986c(namespaceContext);
    }

    /* renamed from: b */
    public static void m69984b(boolean z) throws XPathException {
        if (!z) {
            throw new XPathException("c-general-xpath");
        }
    }

    public static void main(String[] strArr) throws Exception {
        for (String str : strArr) {
            PrintStream printStream = System.out;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("# XPath expression: \"");
            stringBuffer.append(str);
            stringBuffer.append('\"');
            printStream.println(stringBuffer.toString());
            try {
                XPath xPath = new XPath(str, new SymbolTable(), null);
                PrintStream printStream2 = System.out;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("expanded xpath: \"");
                stringBuffer2.append(xPath.toString());
                stringBuffer2.append('\"');
                printStream2.println(stringBuffer2.toString());
            } catch (XPathException e) {
                PrintStream printStream3 = System.out;
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("error: ");
                stringBuffer3.append(e.getMessage());
                printStream3.println(stringBuffer3.toString());
            }
        }
    }

    /* renamed from: a */
    public final LocationPath m69985a(Vector vector) throws XPathException {
        int size = vector.size();
        m69984b(size != 0);
        Step[] stepArr = new Step[size];
        vector.copyInto(stepArr);
        vector.removeAllElements();
        return new LocationPath(stepArr);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0063. Please report as an issue. */
    /* renamed from: c */
    public final LocationPath[] m69986c(NamespaceContext namespaceContext) throws XPathException {
        Step step;
        C20031b c20031b = new C20031b(this.fSymbolTable);
        if (!new C20032a(this, this.fSymbolTable).m69989b(this.fSymbolTable, c20031b, this.fExpression, 0, this.fExpression.length())) {
            throw new XPathException("c-general-xpath");
        }
        Vector vector = new Vector();
        ArrayList arrayList = new ArrayList();
        while (true) {
            boolean z = true;
            while (c20031b.m69996e()) {
                int m69997f = c20031b.m69997f();
                if (m69997f != 4) {
                    if (m69997f == 6) {
                        m69984b(z);
                        step = new Step(new Axis((short) 2), m69987d(c20031b.m69997f(), c20031b, namespaceContext));
                    } else if (m69997f == 35) {
                        m69984b(z);
                        if (c20031b.m69997f() != 8) {
                            throw new XPathException("c-general-xpath");
                        }
                        step = new Step(new Axis((short) 2), m69987d(c20031b.m69997f(), c20031b, namespaceContext));
                    } else if (m69997f != 36) {
                        switch (m69997f) {
                            case 8:
                                throw new XPathException("c-general-xpath");
                            case 9:
                            case 10:
                            case 11:
                                m69984b(z);
                                step = new Step(new Axis((short) 1), m69987d(m69997f, c20031b, namespaceContext));
                                break;
                            default:
                                switch (m69997f) {
                                    case 21:
                                        m69984b(!z);
                                        break;
                                    case 22:
                                        throw new XPathException("c-general-xpath");
                                    case 23:
                                        m69984b(!z);
                                        arrayList.add(m69985a(vector));
                                        break;
                                    default:
                                        throw new InternalError();
                                }
                        }
                    } else {
                        m69984b(z);
                        if (c20031b.m69997f() != 8) {
                            throw new XPathException("c-general-xpath");
                        }
                        step = new Step(new Axis((short) 1), m69987d(c20031b.m69997f(), c20031b, namespaceContext));
                    }
                    vector.addElement(step);
                    z = false;
                } else {
                    m69984b(z);
                    if (vector.size() == 0) {
                        vector.addElement(new Step(new Axis((short) 3), new NodeTest((short) 3)));
                        if (c20031b.m69996e() && c20031b.m69999h() == 22) {
                            c20031b.m69997f();
                            vector.addElement(new Step(new Axis((short) 4), new NodeTest((short) 3)));
                        }
                    } else {
                        continue;
                    }
                    z = false;
                }
            }
            m69984b(!z);
            arrayList.add(m69985a(vector));
            return (LocationPath[]) arrayList.toArray(new LocationPath[arrayList.size()]);
        }
    }

    /* renamed from: d */
    public final NodeTest m69987d(int i, C20031b c20031b, NamespaceContext namespaceContext) throws XPathException {
        String str;
        switch (i) {
            case 9:
                return new NodeTest((short) 2);
            case 10:
            case 11:
                String m69998g = c20031b.m69998g();
                String uri = (namespaceContext == null || m69998g == XMLSymbols.EMPTY_STRING) ? null : namespaceContext.getURI(m69998g);
                String str2 = XMLSymbols.EMPTY_STRING;
                if (m69998g != str2 && namespaceContext != null && uri == null) {
                    throw new XPathException("c-general-xpath-ns");
                }
                if (i == 10) {
                    return new NodeTest(m69998g, uri);
                }
                String m69998g2 = c20031b.m69998g();
                if (m69998g != str2) {
                    SymbolTable symbolTable = this.fSymbolTable;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(m69998g);
                    stringBuffer.append(':');
                    stringBuffer.append(m69998g2);
                    str = symbolTable.addSymbol(stringBuffer.toString());
                } else {
                    str = m69998g2;
                }
                return new NodeTest(new QName(m69998g, m69998g2, str, uri));
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
                stringBuffer.append('|');
            }
            stringBuffer.append(this.fLocationPaths[i].toString());
        }
        return stringBuffer.toString();
    }
}
