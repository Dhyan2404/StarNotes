package org.openxmlformats.schemas.presentationml.x2006.main;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLAnimateMotionBehaviorOrigin extends XmlToken {
    public static final SimpleTypeFactory<STTLAnimateMotionBehaviorOrigin> Factory;
    public static final int INT_LAYOUT = 2;
    public static final int INT_PARENT = 1;
    public static final Enum LAYOUT;
    public static final Enum PARENT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_LAYOUT = 2;
        static final int INT_PARENT = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("parent", 1), new Enum(gon.f71305w, 2)});

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
        SimpleTypeFactory<STTLAnimateMotionBehaviorOrigin> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlanimatemotionbehaviororigine248type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        PARENT = Enum.forString("parent");
        LAYOUT = Enum.forString(gon.f71305w);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
