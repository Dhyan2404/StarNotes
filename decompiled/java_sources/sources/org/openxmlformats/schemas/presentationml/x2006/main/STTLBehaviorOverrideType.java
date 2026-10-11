package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLBehaviorOverrideType extends XmlToken {
    public static final Enum CHILD_STYLE;
    public static final SimpleTypeFactory<STTLBehaviorOverrideType> Factory;
    public static final int INT_CHILD_STYLE = 2;
    public static final int INT_NORMAL = 1;
    public static final Enum NORMAL;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CHILD_STYLE = 2;
        static final int INT_NORMAL = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("normal", 1), new Enum("childStyle", 2)});

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
        SimpleTypeFactory<STTLBehaviorOverrideType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlbehavioroverridetypea145type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NORMAL = Enum.forString("normal");
        CHILD_STYLE = Enum.forString("childStyle");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
