package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLOleChartBuildType extends XmlToken {
    public static final Enum ALL_AT_ONCE;
    public static final Enum CATEGORY;
    public static final Enum CATEGORY_EL;
    public static final SimpleTypeFactory<STTLOleChartBuildType> Factory;
    public static final int INT_ALL_AT_ONCE = 1;
    public static final int INT_CATEGORY = 3;
    public static final int INT_CATEGORY_EL = 5;
    public static final int INT_SERIES = 2;
    public static final int INT_SERIES_EL = 4;
    public static final Enum SERIES;
    public static final Enum SERIES_EL;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL_AT_ONCE = 1;
        static final int INT_CATEGORY = 3;
        static final int INT_CATEGORY_EL = 5;
        static final int INT_SERIES = 2;
        static final int INT_SERIES_EL = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("allAtOnce", 1), new Enum("series", 2), new Enum("category", 3), new Enum("seriesEl", 4), new Enum("categoryEl", 5)});

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
        SimpleTypeFactory<STTLOleChartBuildType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlolechartbuildtype0dc5type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ALL_AT_ONCE = Enum.forString("allAtOnce");
        SERIES = Enum.forString("series");
        CATEGORY = Enum.forString("category");
        SERIES_EL = Enum.forString("seriesEl");
        CATEGORY_EL = Enum.forString("categoryEl");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
