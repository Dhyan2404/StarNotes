package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STUpdateLinks extends XmlString {
    public static final Enum ALWAYS;
    public static final SimpleTypeFactory<STUpdateLinks> Factory;
    public static final int INT_ALWAYS = 3;
    public static final int INT_NEVER = 2;
    public static final int INT_USER_SET = 1;
    public static final Enum NEVER;
    public static final Enum USER_SET;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALWAYS = 3;
        static final int INT_NEVER = 2;
        static final int INT_USER_SET = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("userSet", 1), new Enum(NotificationDisplayHandler.STRATEGY_NEVER, 2), new Enum(NotificationDisplayHandler.STRATEGY_ALWAYS, 3)});

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
        SimpleTypeFactory<STUpdateLinks> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stupdatelinksfb3ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        USER_SET = Enum.forString("userSet");
        NEVER = Enum.forString(NotificationDisplayHandler.STRATEGY_NEVER);
        ALWAYS = Enum.forString(NotificationDisplayHandler.STRATEGY_ALWAYS);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
