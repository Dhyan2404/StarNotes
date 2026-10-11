package org.openxmlformats.schemas.presentationml.x2006.main;

import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLTimeNodePresetClassType extends XmlToken {
    public static final Enum EMPH;
    public static final Enum ENTR;
    public static final Enum EXIT;
    public static final SimpleTypeFactory<STTLTimeNodePresetClassType> Factory;
    public static final int INT_EMPH = 3;
    public static final int INT_ENTR = 1;
    public static final int INT_EXIT = 2;
    public static final int INT_MEDIACALL = 6;
    public static final int INT_PATH = 4;
    public static final int INT_VERB = 5;
    public static final Enum MEDIACALL;
    public static final Enum PATH;
    public static final Enum VERB;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_EMPH = 3;
        static final int INT_ENTR = 1;
        static final int INT_EXIT = 2;
        static final int INT_MEDIACALL = 6;
        static final int INT_PATH = 4;
        static final int INT_VERB = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("entr", 1), new Enum(NotificationDisplayHandler.STRATEGY_EXIT, 2), new Enum("emph", 3), new Enum("path", 4), new Enum("verb", 5), new Enum("mediacall", 6)});

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
        SimpleTypeFactory<STTLTimeNodePresetClassType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttltimenodepresetclasstypef353type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ENTR = Enum.forString("entr");
        EXIT = Enum.forString(NotificationDisplayHandler.STRATEGY_EXIT);
        EMPH = Enum.forString("emph");
        PATH = Enum.forString("path");
        VERB = Enum.forString("verb");
        MEDIACALL = Enum.forString("mediacall");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
