package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STPageOrientation extends XmlString {
    public static final SimpleTypeFactory<STPageOrientation> Factory;
    public static final int INT_LANDSCAPE = 2;
    public static final int INT_PORTRAIT = 1;
    public static final Enum LANDSCAPE;
    public static final Enum PORTRAIT;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_LANDSCAPE = 2;
        static final int INT_PORTRAIT = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("portrait", 1), new Enum("landscape", 2)});

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
        SimpleTypeFactory<STPageOrientation> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpageorientation8781type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        PORTRAIT = Enum.forString("portrait");
        LANDSCAPE = Enum.forString("landscape");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
