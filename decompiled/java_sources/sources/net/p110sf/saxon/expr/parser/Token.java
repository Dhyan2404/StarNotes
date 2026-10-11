package net.p110sf.saxon.expr.parser;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.google.android.material.motion.MotionUtils;
import com.google.firebase.installations.local.IidStore;
import com.onyx.android.sdk.base.data.Operators;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.HashMap;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public abstract class Token {
    public static final int AFTER = 118;
    public static final int AND = 10;
    public static final int AND_ALSO = 80;

    /* renamed from: AS */
    public static final int f99968AS = 71;
    public static final int ASSIGN = 58;

    /* renamed from: AT */
    public static final int f99969AT = 3;
    public static final int ATTRIBUTE_QNAME = 62;
    public static final int AXIS = 36;
    public static final int BANG = 40;
    public static final int BANG_BANG = 49;
    public static final int BEFORE = 119;

    /* renamed from: BY */
    public static final int f99970BY = 82;
    public static final int CASE = 67;
    public static final int CASTABLE_AS = 57;
    public static final int CAST_AS = 46;
    public static final int COLON = 76;
    public static final int COLONCOLON = 41;
    public static final int COLONSTAR = 42;
    public static final int COMMA = 7;
    public static final int CONCAT = 30;
    public static final int COPY = 219;
    public static final int COUNT = 220;
    public static final int DECLARE_ANNOTATED = 123;
    public static final int DECLARE_BASEURI = 93;
    public static final int DECLARE_BOUNDARY_SPACE = 94;
    public static final int DECLARE_CONSTRUCTION = 92;
    public static final int DECLARE_CONTEXT = 99;
    public static final int DECLARE_COPY_NAMESPACES = 108;
    public static final int DECLARE_DECIMAL_FORMAT = 95;
    public static final int DECLARE_DEFAULT = 91;
    public static final int DECLARE_FUNCTION = 100;
    public static final int DECLARE_NAMESPACE = 90;
    public static final int DECLARE_OPTION = 109;
    public static final int DECLARE_ORDERING = 107;
    public static final int DECLARE_REVALIDATION = 110;
    public static final int DECLARE_TYPE = 124;
    public static final int DECLARE_UPDATING = 122;
    public static final int DECLARE_VARIABLE = 98;
    public static final int DEFAULT = 212;
    public static final int DELETE_NODE = 112;
    public static final int DIV = 18;
    public static final int DOLLAR = 21;
    public static final int DOT = 205;
    public static final int DOTDOT = 206;
    public static final int ELEMENT_QNAME = 61;
    public static final int ELSE = 27;
    public static final int EOF = 0;
    public static final int EQUALS = 6;
    public static final int EVERY = 33;
    public static final int EXCEPT = 24;
    public static final int FAT_ARROW = 77;
    public static final int FEQ = 50;
    public static final int FGE = 54;
    public static final int FGT = 52;
    public static final int FIRST_INTO = 116;
    public static final int FLE = 55;
    public static final int FLT = 53;
    public static final int FNE = 51;
    public static final int FOLLOWS = 39;
    public static final int FOR = 211;
    public static final int FOR_MEMBER = 75;
    public static final int FOR_SLIDING = 74;
    public static final int FOR_TUMBLING = 73;
    public static final int FUNCTION = 35;

    /* renamed from: GE */
    public static final int f99971GE = 13;
    public static final int GROUP_BY = 72;

    /* renamed from: GT */
    public static final int f99972GT = 11;
    public static final int HASH = 44;
    public static final int IDIV = 56;

    /* renamed from: IF */
    public static final int f99973IF = 37;
    public static final int IMPLICIT_EOF = -1;
    public static final int IMPORT_MODULE = 97;
    public static final int IMPORT_SCHEMA = 96;

    /* renamed from: IN */
    public static final int f99974IN = 31;
    public static final int INSERT_NODE = 111;
    public static final int INSTANCE_OF = 45;
    public static final int INTERSECT = 23;
    public static final int INTO = 120;

    /* renamed from: IS */
    public static final int f99975IS = 20;
    public static final int KEYWORD_CURLY = 60;
    public static final int LAST_INTO = 117;
    public static final int LAST_OPERATOR = 150;
    public static final int LCURLY = 59;

    /* renamed from: LE */
    public static final int f99976LE = 14;
    public static final int LET = 216;
    public static final int LPAR = 5;
    public static final int LSQB = 4;

    /* renamed from: LT */
    public static final int f99977LT = 12;
    public static final int MINUS = 16;
    public static final int MOD = 19;
    public static final int MODIFY = 68;
    public static final int MODULE_NAMESPACE = 101;
    public static final int MULT = 17;
    public static final int NAME = 201;
    public static final int NAMED_FUNCTION_REF = 43;
    public static final int NAMESPACE_QNAME = 64;

    /* renamed from: NE */
    public static final int f99978NE = 22;
    public static final int NEGATE = 299;
    public static final int NODEKIND = 69;
    public static final int NUMBER = 209;

    /* renamed from: OR */
    public static final int f99979OR = 9;
    public static final int OR_ELSE = 81;
    public static final int OTHERWISE = 79;
    public static final int PERCENT = 106;
    public static final int PI_QNAME = 63;
    public static final int PLUS = 15;
    public static final int PRAGMA = 218;
    public static final int PRECEDES = 38;
    public static final int PREFIX = 208;
    public static final int QMARK = 213;
    public static final int QMARK_QMARK = 48;
    public static final int RCURLY = 215;
    public static final int RENAME_NODE = 115;
    public static final int REPLACE_NODE = 113;
    public static final int REPLACE_VALUE = 114;
    public static final int RETURN = 25;
    public static final int RPAR = 204;
    public static final int RSQB = 203;
    public static final int SATISFIES = 34;
    public static final int SEMICOLON = 149;
    public static final int SLASH = 2;
    public static final int SLASH_SLASH = 8;
    public static final int SOME = 32;
    public static final int STAR = 207;
    public static final int STRING_CONSTRUCTOR_INITIAL = 78;
    public static final int STRING_LITERAL = 202;
    public static final int STRING_LITERAL_BACKTICKED = 222;
    public static final int SUFFIX = 70;
    public static final int SWITCH = 66;
    public static final int TAG = 217;
    public static final int THEN = 26;
    public static final int THIN_ARROW = 83;

    /* renamed from: TO */
    public static final int f99980TO = 29;
    public static final int TREAT_AS = 47;
    public static final int TYPESWITCH = 65;
    public static final int UNION = 1;
    public static final int UNKNOWN = -1;
    public static final int VALIDATE = 102;
    public static final int VALIDATE_LAX = 104;
    public static final int VALIDATE_STRICT = 103;
    public static final int VALIDATE_TYPE = 105;
    public static final int WHERE = 28;
    public static final int WITH = 121;
    public static final int XQUERY_ENCODING = 89;
    public static final int XQUERY_VERSION = 88;
    public static HashMap<String, Integer> doubleKeywords;
    public static final String[] tokens;

    static {
        String[] strArr = new String[300];
        tokens = strArr;
        strArr[0] = "<eof>";
        strArr[1] = IidStore.f35940g;
        strArr[2] = "/";
        strArr[3] = "@";
        strArr[4] = IteratorUtils.f104923a;
        strArr[5] = MotionUtils.f31761c;
        strArr[6] = "=";
        strArr[7] = ",";
        strArr[8] = "//";
        strArr[9] = Operators.OR;
        strArr[10] = Operators.AND;
        strArr[11] = ">";
        strArr[12] = "<";
        strArr[13] = ">=";
        strArr[14] = "<=";
        strArr[15] = "+";
        strArr[16] = "-";
        strArr[17] = "*";
        strArr[18] = gon.f71293q;
        strArr[19] = "mod";
        strArr[20] = "is";
        strArr[21] = "$";
        strArr[22] = "!=";
        strArr[40] = "!";
        strArr[30] = "||";
        strArr[23] = "intersect";
        strArr[24] = "except";
        strArr[25] = "return";
        strArr[26] = "then";
        strArr[27] = "else";
        strArr[29] = "to";
        strArr[31] = "in";
        strArr[32] = "some";
        strArr[33] = "every";
        strArr[34] = "satisfies";
        strArr[35] = "<function>(";
        strArr[36] = "<axis>";
        strArr[37] = "if(";
        strArr[38] = "<<";
        strArr[39] = ">>";
        strArr[41] = "::";
        strArr[42] = ":*";
        strArr[44] = "#";
        strArr[45] = "instance of";
        strArr[46] = "cast as";
        strArr[47] = "treat as";
        strArr[48] = "??";
        strArr[49] = "!!";
        strArr[50] = "eq";
        strArr[51] = "ne";
        strArr[52] = WebvttCueParser.f27234n;
        strArr[54] = "ge";
        strArr[53] = WebvttCueParser.f27233m;
        strArr[55] = "le";
        strArr[56] = "idiv";
        strArr[57] = "castable as";
        strArr[58] = ":=";
        strArr[66] = "switch";
        strArr[65] = "typeswitch";
        strArr[67] = "case";
        strArr[212] = "default";
        strArr[118] = gon.f71277d0;
        strArr[119] = gon.f71276c0;
        strArr[120] = "into";
        strArr[121] = "with";
        strArr[68] = "modify";
        strArr[71] = "as";
        strArr[76] = ":";
        strArr[77] = "=>";
        strArr[83] = "->";
        strArr[80] = "andAlso";
        strArr[81] = "orElse";
        strArr[82] = "by";
        strArr[78] = "``[<string>`{";
        strArr[222] = "``[<string>]``";
        strArr[79] = Constants.ELEMNAME_OTHERWISE_STRING;
        strArr[201] = "<name>";
        strArr[202] = "<string-literal>";
        strArr[203] = IteratorUtils.f104924b;
        strArr[204] = MotionUtils.f31762d;
        strArr[205] = ".";
        strArr[206] = Constants.ATTRVAL_PARENT;
        strArr[207] = "*";
        strArr[208] = "<prefix:*>";
        strArr[209] = "<numeric-literal>";
        strArr[69] = "<node-type>()";
        strArr[211] = "for";
        strArr[70] = "<*:local-name>";
        strArr[213] = "?";
        strArr[59] = "{";
        strArr[60] = "<keyword> {";
        strArr[215] = "}";
        strArr[216] = "let";
        strArr[102] = "validate {";
        strArr[217] = "<element>";
        strArr[218] = "(# ... #)";
        strArr[149] = AndroidTreeView.f47214k;
        strArr[219] = "copy";
        strArr[299] = "-";
        strArr[106] = "%";
        doubleKeywords = new HashMap<>(30);
        m62845a("instance of", 45);
        m62845a("cast as", 46);
        m62845a("treat as", 47);
        m62845a("castable as", 57);
        m62845a("group by", 72);
        m62845a("for tumbling", 73);
        m62845a("for sliding", 74);
        m62845a("for member", 75);
        m62845a("xquery version", 88);
        m62845a("xquery encoding", 89);
        m62845a("declare namespace", 90);
        m62845a("declare default", 91);
        m62845a("declare construction", 92);
        m62845a("declare base-uri", 93);
        m62845a("declare boundary-space", 94);
        m62845a("declare decimal-format", 95);
        m62845a("declare ordering", 107);
        m62845a("declare copy-namespaces", 108);
        m62845a("declare option", 109);
        m62845a("declare revalidation", 110);
        m62845a("declare type", 124);
        m62845a("import schema", 96);
        m62845a("import module", 97);
        m62845a("declare variable", 98);
        m62845a("declare context", 99);
        m62845a("declare function", 100);
        m62845a("declare updating", 122);
        m62845a("module namespace", 101);
        m62845a("validate strict", 103);
        m62845a("validate lax", 104);
        m62845a("validate type", 105);
        m62845a("insert node", 111);
        m62845a("insert nodes", 111);
        m62845a("delete node", 112);
        m62845a("delete nodes", 112);
        m62845a("replace node", 113);
        m62845a("replace value", 114);
        m62845a("rename node", 115);
        m62845a("rename nodes", 115);
        m62845a("first into", 116);
        m62845a("last into", 117);
    }

    /* renamed from: a */
    public static void m62845a(String str, int i) {
        doubleKeywords.put(str, Integer.valueOf(i));
        tokens[i] = str;
    }

    public static int inverse(int i) {
        switch (i) {
            case 11:
                return 12;
            case 12:
                return 11;
            case 13:
                return 14;
            case 14:
                return 13;
            default:
                switch (i) {
                    case 52:
                        return 53;
                    case 53:
                        return 52;
                    case 54:
                        return 55;
                    case 55:
                        return 54;
                    default:
                        return i;
                }
        }
    }

    public static boolean isOrderedOperator(int i) {
        return (i == 50 || i == 51) ? false : true;
    }

    public static int negate(int i) {
        switch (i) {
            case 50:
                return 51;
            case 51:
                return 50;
            case 52:
                return 55;
            case 53:
                return 54;
            case 54:
                return 53;
            case 55:
                return 52;
            default:
                throw new IllegalArgumentException("Invalid operator for negate()");
        }
    }
}
