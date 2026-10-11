package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STFFTextType extends XmlString {
    public static final Enum CALCULATED;
    public static final Enum CURRENT_DATE;
    public static final Enum CURRENT_TIME;
    public static final Enum DATE;
    public static final SimpleTypeFactory<STFFTextType> Factory;
    public static final int INT_CALCULATED = 6;
    public static final int INT_CURRENT_DATE = 5;
    public static final int INT_CURRENT_TIME = 4;
    public static final int INT_DATE = 3;
    public static final int INT_NUMBER = 2;
    public static final int INT_REGULAR = 1;
    public static final Enum NUMBER;
    public static final Enum REGULAR;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CALCULATED = 6;
        static final int INT_CURRENT_DATE = 5;
        static final int INT_CURRENT_TIME = 4;
        static final int INT_DATE = 3;
        static final int INT_NUMBER = 2;
        static final int INT_REGULAR = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("regular", 1), new Enum("number", 2), new Enum("date", 3), new Enum("currentTime", 4), new Enum("currentDate", 5), new Enum("calculated", 6)});

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
        SimpleTypeFactory<STFFTextType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfftexttype99b1type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        REGULAR = Enum.forString("regular");
        NUMBER = Enum.forString("number");
        DATE = Enum.forString("date");
        CURRENT_TIME = Enum.forString("currentTime");
        CURRENT_DATE = Enum.forString("currentDate");
        CALCULATED = Enum.forString("calculated");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
