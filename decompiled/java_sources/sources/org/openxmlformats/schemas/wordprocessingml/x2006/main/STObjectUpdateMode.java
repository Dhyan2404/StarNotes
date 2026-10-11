package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STObjectUpdateMode extends XmlString {
    public static final Enum ALWAYS;
    public static final SimpleTypeFactory<STObjectUpdateMode> Factory;
    public static final int INT_ALWAYS = 1;
    public static final int INT_ON_CALL = 2;
    public static final Enum ON_CALL;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALWAYS = 1;
        static final int INT_ON_CALL = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(NotificationDisplayHandler.STRATEGY_ALWAYS, 1), new Enum("onCall", 2)});

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
        SimpleTypeFactory<STObjectUpdateMode> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stobjectupdatemode3c0dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ALWAYS = Enum.forString(NotificationDisplayHandler.STRATEGY_ALWAYS);
        ON_CALL = Enum.forString("onCall");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
