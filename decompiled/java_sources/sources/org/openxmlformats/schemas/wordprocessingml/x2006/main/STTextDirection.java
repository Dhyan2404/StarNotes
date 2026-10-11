package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STTextDirection extends XmlString {
    public static final Enum BT_LR;
    public static final SimpleTypeFactory<STTextDirection> Factory;
    public static final int INT_BT_LR = 7;
    public static final int INT_LR = 3;
    public static final int INT_LR_TB = 8;
    public static final int INT_LR_TB_V = 9;
    public static final int INT_LR_V = 6;
    public static final int INT_RL = 2;
    public static final int INT_RL_V = 5;
    public static final int INT_TB = 1;
    public static final int INT_TB_LR_V = 10;
    public static final int INT_TB_RL = 11;
    public static final int INT_TB_RL_V = 12;
    public static final int INT_TB_V = 4;

    /* renamed from: LR */
    public static final Enum f115826LR;
    public static final Enum LR_TB;
    public static final Enum LR_TB_V;
    public static final Enum LR_V;

    /* renamed from: RL */
    public static final Enum f115827RL;
    public static final Enum RL_V;

    /* renamed from: TB */
    public static final Enum f115828TB;
    public static final Enum TB_LR_V;
    public static final Enum TB_RL;
    public static final Enum TB_RL_V;
    public static final Enum TB_V;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BT_LR = 7;
        static final int INT_LR = 3;
        static final int INT_LR_TB = 8;
        static final int INT_LR_TB_V = 9;
        static final int INT_LR_V = 6;
        static final int INT_RL = 2;
        static final int INT_RL_V = 5;
        static final int INT_TB = 1;
        static final int INT_TB_LR_V = 10;
        static final int INT_TB_RL = 11;
        static final int INT_TB_RL_V = 12;
        static final int INT_TB_V = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(gon.f71298s0, 1), new Enum("rl", 2), new Enum("lr", 3), new Enum("tbV", 4), new Enum("rlV", 5), new Enum("lrV", 6), new Enum("btLr", 7), new Enum("lrTb", 8), new Enum("lrTbV", 9), new Enum("tbLrV", 10), new Enum("tbRl", 11), new Enum("tbRlV", 12)});

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
        SimpleTypeFactory<STTextDirection> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttextdirectionf150type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115828TB = Enum.forString(gon.f71298s0);
        f115827RL = Enum.forString("rl");
        f115826LR = Enum.forString("lr");
        TB_V = Enum.forString("tbV");
        RL_V = Enum.forString("rlV");
        LR_V = Enum.forString("lrV");
        BT_LR = Enum.forString("btLr");
        LR_TB = Enum.forString("lrTb");
        LR_TB_V = Enum.forString("lrTbV");
        TB_LR_V = Enum.forString("tbLrV");
        TB_RL = Enum.forString("tbRl");
        TB_RL_V = Enum.forString("tbRlV");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
