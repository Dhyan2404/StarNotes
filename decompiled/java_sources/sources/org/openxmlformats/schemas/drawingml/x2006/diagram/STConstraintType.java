package org.openxmlformats.schemas.drawingml.x2006.diagram;

import com.miui.penengine.p015e.C6999h;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STConstraintType extends XmlToken {
    public static final Enum ALIGN_OFF;

    /* renamed from: B */
    public static final Enum f115685B;
    public static final Enum BEG_MARG;
    public static final Enum BEG_PAD;
    public static final Enum BEND_DIST;
    public static final Enum B_MARG;
    public static final Enum B_OFF;
    public static final Enum CONN_DIST;
    public static final Enum CTR_X;
    public static final Enum CTR_X_OFF;
    public static final Enum CTR_Y;
    public static final Enum CTR_Y_OFF;
    public static final Enum DIAM;
    public static final Enum END_MARG;
    public static final Enum END_PAD;
    public static final SimpleTypeFactory<STConstraintType> Factory;

    /* renamed from: H */
    public static final Enum f115686H;
    public static final Enum H_AR_H;
    public static final Enum H_OFF;
    public static final int INT_ALIGN_OFF = 2;
    public static final int INT_B = 6;
    public static final int INT_BEG_MARG = 3;
    public static final int INT_BEG_PAD = 5;
    public static final int INT_BEND_DIST = 4;
    public static final int INT_B_MARG = 7;
    public static final int INT_B_OFF = 8;
    public static final int INT_CONN_DIST = 13;
    public static final int INT_CTR_X = 9;
    public static final int INT_CTR_X_OFF = 10;
    public static final int INT_CTR_Y = 11;
    public static final int INT_CTR_Y_OFF = 12;
    public static final int INT_DIAM = 14;
    public static final int INT_END_MARG = 15;
    public static final int INT_END_PAD = 16;
    public static final int INT_H = 17;
    public static final int INT_H_AR_H = 18;
    public static final int INT_H_OFF = 19;
    public static final int INT_L = 20;
    public static final int INT_L_MARG = 21;
    public static final int INT_L_OFF = 22;
    public static final int INT_NONE = 1;
    public static final int INT_PRIM_FONT_SZ = 26;
    public static final int INT_PYRA_ACCT_RATIO = 27;
    public static final int INT_R = 23;
    public static final int INT_R_MARG = 24;
    public static final int INT_R_OFF = 25;
    public static final int INT_SEC_FONT_SZ = 28;
    public static final int INT_SEC_SIB_SP = 30;
    public static final int INT_SIB_SP = 29;
    public static final int INT_SP = 31;
    public static final int INT_STEM_THICK = 32;
    public static final int INT_T = 33;
    public static final int INT_T_MARG = 34;
    public static final int INT_T_OFF = 35;
    public static final int INT_USER_A = 36;
    public static final int INT_USER_B = 37;
    public static final int INT_USER_C = 38;
    public static final int INT_USER_D = 39;
    public static final int INT_USER_E = 40;
    public static final int INT_USER_F = 41;
    public static final int INT_USER_G = 42;
    public static final int INT_USER_H = 43;
    public static final int INT_USER_I = 44;
    public static final int INT_USER_J = 45;
    public static final int INT_USER_K = 46;
    public static final int INT_USER_L = 47;
    public static final int INT_USER_M = 48;
    public static final int INT_USER_N = 49;
    public static final int INT_USER_O = 50;
    public static final int INT_USER_P = 51;
    public static final int INT_USER_Q = 52;
    public static final int INT_USER_R = 53;
    public static final int INT_USER_S = 54;
    public static final int INT_USER_T = 55;
    public static final int INT_USER_U = 56;
    public static final int INT_USER_V = 57;
    public static final int INT_USER_W = 58;
    public static final int INT_USER_X = 59;
    public static final int INT_USER_Y = 60;
    public static final int INT_USER_Z = 61;
    public static final int INT_W = 62;
    public static final int INT_W_AR_H = 63;
    public static final int INT_W_OFF = 64;

    /* renamed from: L */
    public static final Enum f115687L;
    public static final Enum L_MARG;
    public static final Enum L_OFF;
    public static final Enum NONE;
    public static final Enum PRIM_FONT_SZ;
    public static final Enum PYRA_ACCT_RATIO;

    /* renamed from: R */
    public static final Enum f115688R;
    public static final Enum R_MARG;
    public static final Enum R_OFF;
    public static final Enum SEC_FONT_SZ;
    public static final Enum SEC_SIB_SP;
    public static final Enum SIB_SP;

    /* renamed from: SP */
    public static final Enum f115689SP;
    public static final Enum STEM_THICK;

    /* renamed from: T */
    public static final Enum f115690T;
    public static final Enum T_MARG;
    public static final Enum T_OFF;
    public static final Enum USER_A;
    public static final Enum USER_B;
    public static final Enum USER_C;
    public static final Enum USER_D;
    public static final Enum USER_E;
    public static final Enum USER_F;
    public static final Enum USER_G;
    public static final Enum USER_H;
    public static final Enum USER_I;
    public static final Enum USER_J;
    public static final Enum USER_K;
    public static final Enum USER_L;
    public static final Enum USER_M;
    public static final Enum USER_N;
    public static final Enum USER_O;
    public static final Enum USER_P;
    public static final Enum USER_Q;
    public static final Enum USER_R;
    public static final Enum USER_S;
    public static final Enum USER_T;
    public static final Enum USER_U;
    public static final Enum USER_V;
    public static final Enum USER_W;
    public static final Enum USER_X;
    public static final Enum USER_Y;
    public static final Enum USER_Z;

    /* renamed from: W */
    public static final Enum f115691W;
    public static final Enum W_AR_H;
    public static final Enum W_OFF;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALIGN_OFF = 2;
        static final int INT_B = 6;
        static final int INT_BEG_MARG = 3;
        static final int INT_BEG_PAD = 5;
        static final int INT_BEND_DIST = 4;
        static final int INT_B_MARG = 7;
        static final int INT_B_OFF = 8;
        static final int INT_CONN_DIST = 13;
        static final int INT_CTR_X = 9;
        static final int INT_CTR_X_OFF = 10;
        static final int INT_CTR_Y = 11;
        static final int INT_CTR_Y_OFF = 12;
        static final int INT_DIAM = 14;
        static final int INT_END_MARG = 15;
        static final int INT_END_PAD = 16;
        static final int INT_H = 17;
        static final int INT_H_AR_H = 18;
        static final int INT_H_OFF = 19;
        static final int INT_L = 20;
        static final int INT_L_MARG = 21;
        static final int INT_L_OFF = 22;
        static final int INT_NONE = 1;
        static final int INT_PRIM_FONT_SZ = 26;
        static final int INT_PYRA_ACCT_RATIO = 27;
        static final int INT_R = 23;
        static final int INT_R_MARG = 24;
        static final int INT_R_OFF = 25;
        static final int INT_SEC_FONT_SZ = 28;
        static final int INT_SEC_SIB_SP = 30;
        static final int INT_SIB_SP = 29;
        static final int INT_SP = 31;
        static final int INT_STEM_THICK = 32;
        static final int INT_T = 33;
        static final int INT_T_MARG = 34;
        static final int INT_T_OFF = 35;
        static final int INT_USER_A = 36;
        static final int INT_USER_B = 37;
        static final int INT_USER_C = 38;
        static final int INT_USER_D = 39;
        static final int INT_USER_E = 40;
        static final int INT_USER_F = 41;
        static final int INT_USER_G = 42;
        static final int INT_USER_H = 43;
        static final int INT_USER_I = 44;
        static final int INT_USER_J = 45;
        static final int INT_USER_K = 46;
        static final int INT_USER_L = 47;
        static final int INT_USER_M = 48;
        static final int INT_USER_N = 49;
        static final int INT_USER_O = 50;
        static final int INT_USER_P = 51;
        static final int INT_USER_Q = 52;
        static final int INT_USER_R = 53;
        static final int INT_USER_S = 54;
        static final int INT_USER_T = 55;
        static final int INT_USER_U = 56;
        static final int INT_USER_V = 57;
        static final int INT_USER_W = 58;
        static final int INT_USER_X = 59;
        static final int INT_USER_Y = 60;
        static final int INT_USER_Z = 61;
        static final int INT_W = 62;
        static final int INT_W_AR_H = 63;
        static final int INT_W_OFF = 64;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("alignOff", 2), new Enum("begMarg", 3), new Enum("bendDist", 4), new Enum("begPad", 5), new Enum("b", 6), new Enum("bMarg", 7), new Enum("bOff", 8), new Enum("ctrX", 9), new Enum("ctrXOff", 10), new Enum("ctrY", 11), new Enum("ctrYOff", 12), new Enum("connDist", 13), new Enum("diam", 14), new Enum("endMarg", 15), new Enum("endPad", 16), new Enum(C6999h.f39688c, 17), new Enum("hArH", 18), new Enum("hOff", 19), new Enum("l", 20), new Enum("lMarg", 21), new Enum("lOff", 22), new Enum("r", 23), new Enum("rMarg", 24), new Enum("rOff", 25), new Enum("primFontSz", 26), new Enum("pyraAcctRatio", 27), new Enum("secFontSz", 28), new Enum("sibSp", 29), new Enum("secSibSp", 30), new Enum("sp", 31), new Enum("stemThick", 32), new Enum("t", 33), new Enum("tMarg", 34), new Enum("tOff", 35), new Enum("userA", 36), new Enum("userB", 37), new Enum("userC", 38), new Enum("userD", 39), new Enum("userE", 40), new Enum("userF", 41), new Enum("userG", 42), new Enum("userH", 43), new Enum("userI", 44), new Enum("userJ", 45), new Enum("userK", 46), new Enum("userL", 47), new Enum("userM", 48), new Enum("userN", 49), new Enum("userO", 50), new Enum("userP", 51), new Enum("userQ", 52), new Enum("userR", 53), new Enum("userS", 54), new Enum("userT", 55), new Enum("userU", 56), new Enum("userV", 57), new Enum("userW", 58), new Enum("userX", 59), new Enum("userY", 60), new Enum("userZ", 61), new Enum("w", 62), new Enum("wArH", 63), new Enum("wOff", 64)});

        private Enum(String str, int i) {
            super(str, i);
        }

        public static Enum forInt(int i) {
            return (Enum) table.forInt(i);
        }

        public static Enum forString(String str) {
            return (Enum) table.forString(str);
        }

        private Object readResolve() {
            return forInt(intValue());
        }
    }

    static {
        SimpleTypeFactory<STConstraintType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stconstrainttype098atype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        ALIGN_OFF = Enum.forString("alignOff");
        BEG_MARG = Enum.forString("begMarg");
        BEND_DIST = Enum.forString("bendDist");
        BEG_PAD = Enum.forString("begPad");
        f115685B = Enum.forString("b");
        B_MARG = Enum.forString("bMarg");
        B_OFF = Enum.forString("bOff");
        CTR_X = Enum.forString("ctrX");
        CTR_X_OFF = Enum.forString("ctrXOff");
        CTR_Y = Enum.forString("ctrY");
        CTR_Y_OFF = Enum.forString("ctrYOff");
        CONN_DIST = Enum.forString("connDist");
        DIAM = Enum.forString("diam");
        END_MARG = Enum.forString("endMarg");
        END_PAD = Enum.forString("endPad");
        f115686H = Enum.forString(C6999h.f39688c);
        H_AR_H = Enum.forString("hArH");
        H_OFF = Enum.forString("hOff");
        f115687L = Enum.forString("l");
        L_MARG = Enum.forString("lMarg");
        L_OFF = Enum.forString("lOff");
        f115688R = Enum.forString("r");
        R_MARG = Enum.forString("rMarg");
        R_OFF = Enum.forString("rOff");
        PRIM_FONT_SZ = Enum.forString("primFontSz");
        PYRA_ACCT_RATIO = Enum.forString("pyraAcctRatio");
        SEC_FONT_SZ = Enum.forString("secFontSz");
        SIB_SP = Enum.forString("sibSp");
        SEC_SIB_SP = Enum.forString("secSibSp");
        f115689SP = Enum.forString("sp");
        STEM_THICK = Enum.forString("stemThick");
        f115690T = Enum.forString("t");
        T_MARG = Enum.forString("tMarg");
        T_OFF = Enum.forString("tOff");
        USER_A = Enum.forString("userA");
        USER_B = Enum.forString("userB");
        USER_C = Enum.forString("userC");
        USER_D = Enum.forString("userD");
        USER_E = Enum.forString("userE");
        USER_F = Enum.forString("userF");
        USER_G = Enum.forString("userG");
        USER_H = Enum.forString("userH");
        USER_I = Enum.forString("userI");
        USER_J = Enum.forString("userJ");
        USER_K = Enum.forString("userK");
        USER_L = Enum.forString("userL");
        USER_M = Enum.forString("userM");
        USER_N = Enum.forString("userN");
        USER_O = Enum.forString("userO");
        USER_P = Enum.forString("userP");
        USER_Q = Enum.forString("userQ");
        USER_R = Enum.forString("userR");
        USER_S = Enum.forString("userS");
        USER_T = Enum.forString("userT");
        USER_U = Enum.forString("userU");
        USER_V = Enum.forString("userV");
        USER_W = Enum.forString("userW");
        USER_X = Enum.forString("userX");
        USER_Y = Enum.forString("userY");
        USER_Z = Enum.forString("userZ");
        f115691W = Enum.forString("w");
        W_AR_H = Enum.forString("wArH");
        W_OFF = Enum.forString("wOff");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
