package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STLightRigType extends XmlToken {
    public static final Enum BALANCED;
    public static final Enum BRIGHT_ROOM;
    public static final Enum CHILLY;
    public static final Enum CONTRASTING;
    public static final Enum FLAT;
    public static final Enum FLOOD;
    public static final Enum FREEZING;
    public static final SimpleTypeFactory<STLightRigType> Factory;
    public static final Enum GLOW;
    public static final Enum HARSH;
    public static final int INT_BALANCED = 14;
    public static final int INT_BRIGHT_ROOM = 27;
    public static final int INT_CHILLY = 22;
    public static final int INT_CONTRASTING = 18;
    public static final int INT_FLAT = 24;
    public static final int INT_FLOOD = 17;
    public static final int INT_FREEZING = 23;
    public static final int INT_GLOW = 26;
    public static final int INT_HARSH = 16;
    public static final int INT_LEGACY_FLAT_1 = 1;
    public static final int INT_LEGACY_FLAT_2 = 2;
    public static final int INT_LEGACY_FLAT_3 = 3;
    public static final int INT_LEGACY_FLAT_4 = 4;
    public static final int INT_LEGACY_HARSH_1 = 9;
    public static final int INT_LEGACY_HARSH_2 = 10;
    public static final int INT_LEGACY_HARSH_3 = 11;
    public static final int INT_LEGACY_HARSH_4 = 12;
    public static final int INT_LEGACY_NORMAL_1 = 5;
    public static final int INT_LEGACY_NORMAL_2 = 6;
    public static final int INT_LEGACY_NORMAL_3 = 7;
    public static final int INT_LEGACY_NORMAL_4 = 8;
    public static final int INT_MORNING = 19;
    public static final int INT_SOFT = 15;
    public static final int INT_SUNRISE = 20;
    public static final int INT_SUNSET = 21;
    public static final int INT_THREE_PT = 13;
    public static final int INT_TWO_PT = 25;
    public static final Enum LEGACY_FLAT_1;
    public static final Enum LEGACY_FLAT_2;
    public static final Enum LEGACY_FLAT_3;
    public static final Enum LEGACY_FLAT_4;
    public static final Enum LEGACY_HARSH_1;
    public static final Enum LEGACY_HARSH_2;
    public static final Enum LEGACY_HARSH_3;
    public static final Enum LEGACY_HARSH_4;
    public static final Enum LEGACY_NORMAL_1;
    public static final Enum LEGACY_NORMAL_2;
    public static final Enum LEGACY_NORMAL_3;
    public static final Enum LEGACY_NORMAL_4;
    public static final Enum MORNING;
    public static final Enum SOFT;
    public static final Enum SUNRISE;
    public static final Enum SUNSET;
    public static final Enum THREE_PT;
    public static final Enum TWO_PT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BALANCED = 14;
        static final int INT_BRIGHT_ROOM = 27;
        static final int INT_CHILLY = 22;
        static final int INT_CONTRASTING = 18;
        static final int INT_FLAT = 24;
        static final int INT_FLOOD = 17;
        static final int INT_FREEZING = 23;
        static final int INT_GLOW = 26;
        static final int INT_HARSH = 16;
        static final int INT_LEGACY_FLAT_1 = 1;
        static final int INT_LEGACY_FLAT_2 = 2;
        static final int INT_LEGACY_FLAT_3 = 3;
        static final int INT_LEGACY_FLAT_4 = 4;
        static final int INT_LEGACY_HARSH_1 = 9;
        static final int INT_LEGACY_HARSH_2 = 10;
        static final int INT_LEGACY_HARSH_3 = 11;
        static final int INT_LEGACY_HARSH_4 = 12;
        static final int INT_LEGACY_NORMAL_1 = 5;
        static final int INT_LEGACY_NORMAL_2 = 6;
        static final int INT_LEGACY_NORMAL_3 = 7;
        static final int INT_LEGACY_NORMAL_4 = 8;
        static final int INT_MORNING = 19;
        static final int INT_SOFT = 15;
        static final int INT_SUNRISE = 20;
        static final int INT_SUNSET = 21;
        static final int INT_THREE_PT = 13;
        static final int INT_TWO_PT = 25;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("legacyFlat1", 1), new Enum("legacyFlat2", 2), new Enum("legacyFlat3", 3), new Enum("legacyFlat4", 4), new Enum("legacyNormal1", 5), new Enum("legacyNormal2", 6), new Enum("legacyNormal3", 7), new Enum("legacyNormal4", 8), new Enum("legacyHarsh1", 9), new Enum("legacyHarsh2", 10), new Enum("legacyHarsh3", 11), new Enum("legacyHarsh4", 12), new Enum("threePt", 13), new Enum("balanced", 14), new Enum("soft", 15), new Enum("harsh", 16), new Enum("flood", 17), new Enum("contrasting", 18), new Enum("morning", 19), new Enum("sunrise", 20), new Enum("sunset", 21), new Enum("chilly", 22), new Enum("freezing", 23), new Enum("flat", 24), new Enum("twoPt", 25), new Enum("glow", 26), new Enum("brightRoom", 27)});

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
        SimpleTypeFactory<STLightRigType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stlightrigtypec99ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        LEGACY_FLAT_1 = Enum.forString("legacyFlat1");
        LEGACY_FLAT_2 = Enum.forString("legacyFlat2");
        LEGACY_FLAT_3 = Enum.forString("legacyFlat3");
        LEGACY_FLAT_4 = Enum.forString("legacyFlat4");
        LEGACY_NORMAL_1 = Enum.forString("legacyNormal1");
        LEGACY_NORMAL_2 = Enum.forString("legacyNormal2");
        LEGACY_NORMAL_3 = Enum.forString("legacyNormal3");
        LEGACY_NORMAL_4 = Enum.forString("legacyNormal4");
        LEGACY_HARSH_1 = Enum.forString("legacyHarsh1");
        LEGACY_HARSH_2 = Enum.forString("legacyHarsh2");
        LEGACY_HARSH_3 = Enum.forString("legacyHarsh3");
        LEGACY_HARSH_4 = Enum.forString("legacyHarsh4");
        THREE_PT = Enum.forString("threePt");
        BALANCED = Enum.forString("balanced");
        SOFT = Enum.forString("soft");
        HARSH = Enum.forString("harsh");
        FLOOD = Enum.forString("flood");
        CONTRASTING = Enum.forString("contrasting");
        MORNING = Enum.forString("morning");
        SUNRISE = Enum.forString("sunrise");
        SUNSET = Enum.forString("sunset");
        CHILLY = Enum.forString("chilly");
        FREEZING = Enum.forString("freezing");
        FLAT = Enum.forString("flat");
        TWO_PT = Enum.forString("twoPt");
        GLOW = Enum.forString("glow");
        BRIGHT_ROOM = Enum.forString("brightRoom");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
