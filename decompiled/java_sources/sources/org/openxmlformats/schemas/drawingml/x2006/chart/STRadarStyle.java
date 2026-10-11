package org.openxmlformats.schemas.drawingml.x2006.chart;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STRadarStyle extends XmlString {
    public static final Enum FILLED;
    public static final SimpleTypeFactory<STRadarStyle> Factory;
    public static final int INT_FILLED = 3;
    public static final int INT_MARKER = 2;
    public static final int INT_STANDARD = 1;
    public static final Enum MARKER;
    public static final Enum STANDARD;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_FILLED = 3;
        static final int INT_MARKER = 2;
        static final int INT_STANDARD = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("standard", 1), new Enum("marker", 2), new Enum(gon.f71247A0, 3)});

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
        SimpleTypeFactory<STRadarStyle> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stradarstyle3dc1type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        STANDARD = Enum.forString("standard");
        MARKER = Enum.forString("marker");
        FILLED = Enum.forString(gon.f71247A0);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
