package org.openxmlformats.schemas.officeDocument.x2006.math;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STJc extends XmlString {
    public static final Enum CENTER;
    public static final Enum CENTER_GROUP;
    public static final SimpleTypeFactory<STJc> Factory;
    public static final int INT_CENTER = 3;
    public static final int INT_CENTER_GROUP = 4;
    public static final int INT_LEFT = 1;
    public static final int INT_RIGHT = 2;
    public static final Enum LEFT;
    public static final Enum RIGHT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CENTER = 3;
        static final int INT_CENTER_GROUP = 4;
        static final int INT_LEFT = 1;
        static final int INT_RIGHT = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("left", 1), new Enum(gon.f71288n0, 2), new Enum("center", 3), new Enum("centerGroup", 4)});

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
        SimpleTypeFactory<STJc> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stjc5a89type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        LEFT = Enum.forString("left");
        RIGHT = Enum.forString(gon.f71288n0);
        CENTER = Enum.forString("center");
        CENTER_GROUP = Enum.forString("centerGroup");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
