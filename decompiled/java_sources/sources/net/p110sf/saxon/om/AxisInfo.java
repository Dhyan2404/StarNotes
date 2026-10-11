package net.p110sf.saxon.om;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.DavPrincipal;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.PrimitiveUType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public final class AxisInfo {
    public static final int ANCESTOR = 0;
    public static final int ANCESTOR_OR_SELF = 1;
    public static final int ATTRIBUTE = 2;
    public static final int CHILD = 3;
    public static final int DESCENDANT = 4;
    public static final int DESCENDANT_OR_SELF = 5;
    public static final int FOLLOWING = 6;
    public static final int FOLLOWING_SIBLING = 7;
    public static final int NAMESPACE = 8;
    public static final int PARENT = 9;
    public static final int PRECEDING = 10;
    public static final int PRECEDING_OR_ANCESTOR = 13;
    public static final int PRECEDING_SIBLING = 11;
    public static final int SELF = 12;

    /* renamed from: a */
    public static final int f100761a = 512;
    public static final String[] axisName;

    /* renamed from: b */
    public static final int f100762b = 2;

    /* renamed from: c */
    public static final int f100763c = 4;

    /* renamed from: d */
    public static final int f100764d = 8;

    /* renamed from: e */
    public static final int f100765e = 128;
    public static int[] excludeSelfAxis = null;

    /* renamed from: f */
    public static final int f100766f = 256;

    /* renamed from: g */
    public static final int f100767g = 8192;

    /* renamed from: h */
    public static final int[] f100768h;

    /* renamed from: i */
    public static final int[] f100769i;
    public static int[] inverseAxis;
    public static final boolean[] isForwards;
    public static final boolean[] isPeerAxis;
    public static final boolean[] isSubtreeAxis;

    /* renamed from: j */
    public static final IntHashMap<UType> f100770j;
    public static final short[] principalNodeType = {1, 1, 2, 1, 1, 1, 1, 1, 13, 1, 1, 1, 1, 1};
    public static final UType[] principalNodeUType;

    static {
        UType uType = UType.ELEMENT;
        UType uType2 = UType.ATTRIBUTE;
        UType uType3 = UType.NAMESPACE;
        principalNodeUType = new UType[]{uType, uType, uType2, uType, uType, uType, uType, uType, uType3, uType, uType, uType, uType, uType};
        isForwards = new boolean[]{false, false, true, true, true, true, true, true, true, true, false, false, true, false};
        isPeerAxis = new boolean[]{false, false, true, true, false, false, false, true, true, true, false, true, true, false};
        isSubtreeAxis = new boolean[]{false, false, true, true, true, true, false, false, true, false, false, false, true, false};
        axisName = new String[]{"ancestor", "ancestor-or-self", "attribute", "child", "descendant", "descendant-or-self", "following", "following-sibling", Constants.ATTRNAME_NAMESPACE, "parent", "preceding", "preceding-sibling", DavPrincipal.KEY_SELF, "preceding-or-ancestor"};
        f100768h = new int[]{512, 0, 9100, 8588, 8588, 0, 512, 8708, 9100, 512, 512, 8708, 0};
        f100769i = new int[]{514, 9102, 4, 394, 394, 9102, 394, 394, 8192, 514, 394, 394, 9102};
        inverseAxis = new int[]{4, 5, 9, 9, 0, 1, 10, 11, 9, 3, 6, 7, 12};
        excludeSelfAxis = new int[]{0, 0, 2, 3, 4, 4, 6, 7, 8, 9, 10, 11, 12};
        f100770j = new IntHashMap<>(50);
        PrimitiveUType primitiveUType = PrimitiveUType.DOCUMENT;
        UType uType4 = UType.VOID;
        m63374a(primitiveUType, 0, uType4);
        UType uType5 = UType.DOCUMENT;
        m63374a(primitiveUType, 1, uType5);
        m63374a(primitiveUType, 2, uType4);
        UType uType6 = UType.CHILD_NODE_KINDS;
        m63374a(primitiveUType, 3, uType6);
        m63374a(primitiveUType, 4, uType6);
        m63374a(primitiveUType, 5, uType5.union(uType6));
        m63374a(primitiveUType, 6, uType4);
        m63374a(primitiveUType, 7, uType4);
        m63374a(primitiveUType, 8, uType4);
        m63374a(primitiveUType, 9, uType4);
        m63374a(primitiveUType, 10, uType4);
        m63374a(primitiveUType, 11, uType4);
        m63374a(primitiveUType, 12, uType5);
        PrimitiveUType primitiveUType2 = PrimitiveUType.ELEMENT;
        UType uType7 = UType.PARENT_NODE_KINDS;
        m63374a(primitiveUType2, 0, uType7);
        m63374a(primitiveUType2, 1, uType7);
        m63374a(primitiveUType2, 2, uType2);
        m63374a(primitiveUType2, 3, uType6);
        m63374a(primitiveUType2, 4, uType6);
        m63374a(primitiveUType2, 5, uType6);
        m63374a(primitiveUType2, 6, uType6);
        m63374a(primitiveUType2, 7, uType6);
        m63374a(primitiveUType2, 8, uType3);
        m63374a(primitiveUType2, 9, uType7);
        m63374a(primitiveUType2, 10, uType6);
        m63374a(primitiveUType2, 11, uType6);
        m63374a(primitiveUType2, 12, uType);
        PrimitiveUType primitiveUType3 = PrimitiveUType.ATTRIBUTE;
        m63374a(primitiveUType3, 0, uType7);
        m63374a(primitiveUType3, 1, uType2.union(uType7));
        m63374a(primitiveUType3, 2, uType4);
        m63374a(primitiveUType3, 3, uType4);
        m63374a(primitiveUType3, 4, uType4);
        m63374a(primitiveUType3, 5, uType2);
        m63374a(primitiveUType3, 6, uType6);
        m63374a(primitiveUType3, 7, uType4);
        m63374a(primitiveUType3, 8, uType4);
        m63374a(primitiveUType3, 9, uType);
        m63374a(primitiveUType3, 10, uType6);
        m63374a(primitiveUType3, 11, uType4);
        m63374a(primitiveUType3, 12, uType2);
        PrimitiveUType primitiveUType4 = PrimitiveUType.TEXT;
        m63374a(primitiveUType4, 0, uType7);
        UType uType8 = UType.TEXT;
        m63374a(primitiveUType4, 1, uType8.union(uType7));
        m63374a(primitiveUType4, 2, uType4);
        m63374a(primitiveUType4, 3, uType4);
        m63374a(primitiveUType4, 4, uType4);
        m63374a(primitiveUType4, 5, uType8);
        m63374a(primitiveUType4, 6, uType6);
        m63374a(primitiveUType4, 7, uType6);
        m63374a(primitiveUType4, 8, uType4);
        m63374a(primitiveUType4, 9, uType7);
        m63374a(primitiveUType4, 10, uType6);
        m63374a(primitiveUType4, 11, uType6);
        m63374a(primitiveUType4, 12, uType8);
        PrimitiveUType primitiveUType5 = PrimitiveUType.PI;
        m63374a(primitiveUType5, 0, uType7);
        UType uType9 = UType.f102819PI;
        m63374a(primitiveUType5, 1, uType9.union(uType7));
        m63374a(primitiveUType5, 2, uType4);
        m63374a(primitiveUType5, 3, uType4);
        m63374a(primitiveUType5, 4, uType4);
        m63374a(primitiveUType5, 5, uType9);
        m63374a(primitiveUType5, 6, uType6);
        m63374a(primitiveUType5, 7, uType6);
        m63374a(primitiveUType5, 8, uType4);
        m63374a(primitiveUType5, 9, uType7);
        m63374a(primitiveUType5, 10, uType6);
        m63374a(primitiveUType5, 11, uType6);
        m63374a(primitiveUType5, 12, uType9);
        PrimitiveUType primitiveUType6 = PrimitiveUType.COMMENT;
        m63374a(primitiveUType6, 0, uType7);
        UType uType10 = UType.COMMENT;
        m63374a(primitiveUType6, 1, uType10.union(uType7));
        m63374a(primitiveUType6, 2, uType4);
        m63374a(primitiveUType6, 3, uType4);
        m63374a(primitiveUType6, 4, uType4);
        m63374a(primitiveUType6, 5, uType10);
        m63374a(primitiveUType6, 6, uType6);
        m63374a(primitiveUType6, 7, uType6);
        m63374a(primitiveUType6, 8, uType4);
        m63374a(primitiveUType6, 9, uType7);
        m63374a(primitiveUType6, 10, uType6);
        m63374a(primitiveUType6, 11, uType6);
        m63374a(primitiveUType6, 12, uType10);
        PrimitiveUType primitiveUType7 = PrimitiveUType.NAMESPACE;
        m63374a(primitiveUType7, 0, uType7);
        m63374a(primitiveUType7, 1, uType3.union(uType7));
        m63374a(primitiveUType7, 2, uType4);
        m63374a(primitiveUType7, 3, uType4);
        m63374a(primitiveUType7, 4, uType4);
        m63374a(primitiveUType7, 5, uType3);
        m63374a(primitiveUType7, 6, uType6);
        m63374a(primitiveUType7, 7, uType4);
        m63374a(primitiveUType7, 8, uType4);
        m63374a(primitiveUType7, 9, uType);
        m63374a(primitiveUType7, 10, uType6);
        m63374a(primitiveUType7, 11, uType4);
        m63374a(primitiveUType7, 12, uType3);
    }

    /* renamed from: a */
    public static void m63374a(PrimitiveUType primitiveUType, int i, UType uType) {
        f100770j.put(m63375b(primitiveUType, i), uType);
    }

    /* renamed from: b */
    public static int m63375b(PrimitiveUType primitiveUType, int i) {
        return (primitiveUType.getBit() << 16) | i;
    }

    public static boolean containsNodeKind(int i, int i2) {
        return i2 == 0 || (f100769i[i] & (1 << i2)) != 0;
    }

    public static int getAxisNumber(String str) throws XPathException {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1843537018:
                if (str.equals("following-sibling")) {
                    c = 0;
                    break;
                }
                break;
            case -1380318013:
                if (str.equals("preceding")) {
                    c = 1;
                    break;
                }
                break;
            case -1116304131:
                if (str.equals("descendant")) {
                    c = 2;
                    break;
                }
                break;
            case -995424086:
                if (str.equals("parent")) {
                    c = 3;
                    break;
                }
                break;
            case -973829677:
                if (str.equals("ancestor")) {
                    c = 4;
                    break;
                }
                break;
            case -747815898:
                if (str.equals("descendant-or-self")) {
                    c = 5;
                    break;
                }
                break;
            case 3526476:
                if (str.equals(DavPrincipal.KEY_SELF)) {
                    c = 6;
                    break;
                }
                break;
            case 13085340:
                if (str.equals("attribute")) {
                    c = 7;
                    break;
                }
                break;
            case 94631196:
                if (str.equals("child")) {
                    c = '\b';
                    break;
                }
                break;
            case 341613496:
                if (str.equals("preceding-sibling")) {
                    c = '\t';
                    break;
                }
                break;
            case 683014259:
                if (str.equals("preceding-or-ancestor")) {
                    c = '\n';
                    break;
                }
                break;
            case 765915793:
                if (str.equals("following")) {
                    c = 11;
                    break;
                }
                break;
            case 1252218203:
                if (str.equals(Constants.ATTRNAME_NAMESPACE)) {
                    c = '\f';
                    break;
                }
                break;
            case 1566835452:
                if (str.equals("ancestor-or-self")) {
                    c = '\r';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 7;
            case 1:
                return 10;
            case 2:
                return 4;
            case 3:
                return 9;
            case 4:
                return 0;
            case 5:
                return 5;
            case 6:
                return 12;
            case 7:
                return 2;
            case '\b':
                return 3;
            case '\t':
                return 11;
            case '\n':
                return 13;
            case 11:
                return 6;
            case '\f':
                return 8;
            case '\r':
                return 1;
            default:
                throw new XPathException("Unknown axis name: " + str);
        }
    }

    public static UType getTargetUType(UType uType, int i) {
        UType uType2 = UType.VOID;
        for (PrimitiveUType primitiveUType : uType.intersection(UType.ANY_NODE).decompose()) {
            UType uType3 = f100770j.get(m63375b(primitiveUType, i));
            if (uType3 == null) {
                throw new AssertionError("Unknown transitions for primitive type " + primitiveUType.toString() + "::" + i);
            }
            uType2 = uType2.union(uType3);
        }
        return uType2;
    }

    public static boolean isAlwaysEmpty(int i, int i2) {
        return (f100768h[i] & (1 << i2)) != 0;
    }
}
