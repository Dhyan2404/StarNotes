package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLCommandType extends XmlToken {
    public static final Enum CALL;
    public static final Enum EVT;
    public static final SimpleTypeFactory<STTLCommandType> Factory;
    public static final int INT_CALL = 2;
    public static final int INT_EVT = 1;
    public static final int INT_VERB = 3;
    public static final Enum VERB;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CALL = 2;
        static final int INT_EVT = 1;
        static final int INT_VERB = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("evt", 1), new Enum("call", 2), new Enum("verb", 3)});

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
        SimpleTypeFactory<STTLCommandType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlcommandtype6752type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        EVT = Enum.forString("evt");
        CALL = Enum.forString("call");
        VERB = Enum.forString("verb");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
