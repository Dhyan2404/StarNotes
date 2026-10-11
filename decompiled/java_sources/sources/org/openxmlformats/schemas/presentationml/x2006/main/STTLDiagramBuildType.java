package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLDiagramBuildType extends XmlToken {
    public static final Enum ALL_AT_ONCE;
    public static final Enum BREADTH_BY_LVL;
    public static final Enum BREADTH_BY_NODE;
    public static final Enum CCW;
    public static final Enum CCW_IN;
    public static final Enum CCW_OUT;
    public static final Enum CUST;

    /* renamed from: CW */
    public static final Enum f115777CW;
    public static final Enum CW_IN;
    public static final Enum CW_OUT;
    public static final Enum DEPTH_BY_BRANCH;
    public static final Enum DEPTH_BY_NODE;
    public static final Enum DOWN;
    public static final SimpleTypeFactory<STTLDiagramBuildType> Factory;
    public static final int INT_ALL_AT_ONCE = 16;
    public static final int INT_BREADTH_BY_LVL = 5;
    public static final int INT_BREADTH_BY_NODE = 4;
    public static final int INT_CCW = 9;
    public static final int INT_CCW_IN = 10;
    public static final int INT_CCW_OUT = 11;
    public static final int INT_CUST = 17;
    public static final int INT_CW = 6;
    public static final int INT_CW_IN = 7;
    public static final int INT_CW_OUT = 8;
    public static final int INT_DEPTH_BY_BRANCH = 3;
    public static final int INT_DEPTH_BY_NODE = 2;
    public static final int INT_DOWN = 15;
    public static final int INT_IN_BY_RING = 12;
    public static final int INT_OUT_BY_RING = 13;
    public static final int INT_UP = 14;
    public static final int INT_WHOLE = 1;
    public static final Enum IN_BY_RING;
    public static final Enum OUT_BY_RING;

    /* renamed from: UP */
    public static final Enum f115778UP;
    public static final Enum WHOLE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL_AT_ONCE = 16;
        static final int INT_BREADTH_BY_LVL = 5;
        static final int INT_BREADTH_BY_NODE = 4;
        static final int INT_CCW = 9;
        static final int INT_CCW_IN = 10;
        static final int INT_CCW_OUT = 11;
        static final int INT_CUST = 17;
        static final int INT_CW = 6;
        static final int INT_CW_IN = 7;
        static final int INT_CW_OUT = 8;
        static final int INT_DEPTH_BY_BRANCH = 3;
        static final int INT_DEPTH_BY_NODE = 2;
        static final int INT_DOWN = 15;
        static final int INT_IN_BY_RING = 12;
        static final int INT_OUT_BY_RING = 13;
        static final int INT_UP = 14;
        static final int INT_WHOLE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("whole", 1), new Enum("depthByNode", 2), new Enum("depthByBranch", 3), new Enum("breadthByNode", 4), new Enum("breadthByLvl", 5), new Enum("cw", 6), new Enum("cwIn", 7), new Enum("cwOut", 8), new Enum("ccw", 9), new Enum("ccwIn", 10), new Enum("ccwOut", 11), new Enum("inByRing", 12), new Enum("outByRing", 13), new Enum("up", 14), new Enum("down", 15), new Enum("allAtOnce", 16), new Enum("cust", 17)});

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
        SimpleTypeFactory<STTLDiagramBuildType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttldiagrambuildtypeb208type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        WHOLE = Enum.forString("whole");
        DEPTH_BY_NODE = Enum.forString("depthByNode");
        DEPTH_BY_BRANCH = Enum.forString("depthByBranch");
        BREADTH_BY_NODE = Enum.forString("breadthByNode");
        BREADTH_BY_LVL = Enum.forString("breadthByLvl");
        f115777CW = Enum.forString("cw");
        CW_IN = Enum.forString("cwIn");
        CW_OUT = Enum.forString("cwOut");
        CCW = Enum.forString("ccw");
        CCW_IN = Enum.forString("ccwIn");
        CCW_OUT = Enum.forString("ccwOut");
        IN_BY_RING = Enum.forString("inByRing");
        OUT_BY_RING = Enum.forString("outByRing");
        f115778UP = Enum.forString("up");
        DOWN = Enum.forString("down");
        ALL_AT_ONCE = Enum.forString("allAtOnce");
        CUST = Enum.forString("cust");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
