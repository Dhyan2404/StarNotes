package org.openxmlformats.schemas.presentationml.x2006.main;

import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLTimeNodeRestartType extends XmlToken {
    public static final Enum ALWAYS;
    public static final SimpleTypeFactory<STTLTimeNodeRestartType> Factory;
    public static final int INT_ALWAYS = 1;
    public static final int INT_NEVER = 3;
    public static final int INT_WHEN_NOT_ACTIVE = 2;
    public static final Enum NEVER;
    public static final Enum WHEN_NOT_ACTIVE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALWAYS = 1;
        static final int INT_NEVER = 3;
        static final int INT_WHEN_NOT_ACTIVE = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(NotificationDisplayHandler.STRATEGY_ALWAYS, 1), new Enum("whenNotActive", 2), new Enum(NotificationDisplayHandler.STRATEGY_NEVER, 3)});

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
        SimpleTypeFactory<STTLTimeNodeRestartType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttltimenoderestarttype4e5dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ALWAYS = Enum.forString(NotificationDisplayHandler.STRATEGY_ALWAYS);
        WHEN_NOT_ACTIVE = Enum.forString("whenNotActive");
        NEVER = Enum.forString(NotificationDisplayHandler.STRATEGY_NEVER);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
