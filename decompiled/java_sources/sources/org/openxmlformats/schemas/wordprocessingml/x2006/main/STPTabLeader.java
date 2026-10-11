package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STPTabLeader extends XmlString {
    public static final Enum DOT;
    public static final SimpleTypeFactory<STPTabLeader> Factory;
    public static final Enum HYPHEN;
    public static final int INT_DOT = 2;
    public static final int INT_HYPHEN = 3;
    public static final int INT_MIDDLE_DOT = 5;
    public static final int INT_NONE = 1;
    public static final int INT_UNDERSCORE = 4;
    public static final Enum MIDDLE_DOT;
    public static final Enum NONE;
    public static final Enum UNDERSCORE;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DOT = 2;
        static final int INT_HYPHEN = 3;
        static final int INT_MIDDLE_DOT = 5;
        static final int INT_NONE = 1;
        static final int INT_UNDERSCORE = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum(gon.f71308x0, 2), new Enum("hyphen", 3), new Enum("underscore", 4), new Enum("middleDot", 5)});

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
        SimpleTypeFactory<STPTabLeader> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stptableaderbb6atype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        DOT = Enum.forString(gon.f71308x0);
        HYPHEN = Enum.forString("hyphen");
        UNDERSCORE = Enum.forString("underscore");
        MIDDLE_DOT = Enum.forString("middleDot");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
