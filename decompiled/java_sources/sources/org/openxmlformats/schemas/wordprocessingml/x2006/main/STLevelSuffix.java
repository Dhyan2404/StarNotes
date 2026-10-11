package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STLevelSuffix extends XmlString {
    public static final SimpleTypeFactory<STLevelSuffix> Factory;
    public static final int INT_NOTHING = 3;
    public static final int INT_SPACE = 2;
    public static final int INT_TAB = 1;
    public static final Enum NOTHING;
    public static final Enum SPACE;
    public static final Enum TAB;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_NOTHING = 3;
        static final int INT_SPACE = 2;
        static final int INT_TAB = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("tab", 1), new Enum("space", 2), new Enum(NotificationDisplayHandler.STRATEGY_NOTHING, 3)});

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
        SimpleTypeFactory<STLevelSuffix> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stlevelsuffixe64dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        TAB = Enum.forString("tab");
        SPACE = Enum.forString("space");
        NOTHING = Enum.forString(NotificationDisplayHandler.STRATEGY_NOTHING);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
