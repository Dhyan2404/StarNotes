package org.openxmlformats.schemas.drawingml.x2006.chart;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STDispBlanksAs extends XmlString {
    public static final SimpleTypeFactory<STDispBlanksAs> Factory;
    public static final Enum GAP;
    public static final int INT_GAP = 2;
    public static final int INT_SPAN = 1;
    public static final int INT_ZERO = 3;
    public static final Enum SPAN;
    public static final Enum ZERO;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_GAP = 2;
        static final int INT_SPAN = 1;
        static final int INT_ZERO = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(gon.f71297s, 1), new Enum("gap", 2), new Enum("zero", 3)});

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
        SimpleTypeFactory<STDispBlanksAs> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdispblanksas3a59type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SPAN = Enum.forString(gon.f71297s);
        GAP = Enum.forString("gap");
        ZERO = Enum.forString("zero");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
