package org.openxmlformats.schemas.presentationml.x2006.main;

import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLBehaviorAccumulateType extends XmlToken {
    public static final Enum ALWAYS;
    public static final SimpleTypeFactory<STTLBehaviorAccumulateType> Factory;
    public static final int INT_ALWAYS = 2;
    public static final int INT_NONE = 1;
    public static final Enum NONE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALWAYS = 2;
        static final int INT_NONE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum(NotificationDisplayHandler.STRATEGY_ALWAYS, 2)});

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
        SimpleTypeFactory<STTLBehaviorAccumulateType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlbehavioraccumulatetyped0aftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        ALWAYS = Enum.forString(NotificationDisplayHandler.STRATEGY_ALWAYS);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
