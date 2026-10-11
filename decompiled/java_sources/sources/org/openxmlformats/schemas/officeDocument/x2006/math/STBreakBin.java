package org.openxmlformats.schemas.officeDocument.x2006.math;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STBreakBin extends XmlString {
    public static final Enum AFTER;
    public static final Enum BEFORE;
    public static final SimpleTypeFactory<STBreakBin> Factory;
    public static final int INT_AFTER = 2;
    public static final int INT_BEFORE = 1;
    public static final int INT_REPEAT = 3;
    public static final Enum REPEAT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AFTER = 2;
        static final int INT_BEFORE = 1;
        static final int INT_REPEAT = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(gon.f71276c0, 1), new Enum(gon.f71277d0, 2), new Enum("repeat", 3)});

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
        SimpleTypeFactory<STBreakBin> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stbreakbinb69atype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BEFORE = Enum.forString(gon.f71276c0);
        AFTER = Enum.forString(gon.f71277d0);
        REPEAT = Enum.forString("repeat");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
