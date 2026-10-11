package org.openxmlformats.schemas.officeDocument.x2006.sharedTypes;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STXAlign extends XmlString {
    public static final Enum CENTER;
    public static final SimpleTypeFactory<STXAlign> Factory;
    public static final Enum INSIDE;
    public static final int INT_CENTER = 2;
    public static final int INT_INSIDE = 4;
    public static final int INT_LEFT = 1;
    public static final int INT_OUTSIDE = 5;
    public static final int INT_RIGHT = 3;
    public static final Enum LEFT;
    public static final Enum OUTSIDE;
    public static final Enum RIGHT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CENTER = 2;
        static final int INT_INSIDE = 4;
        static final int INT_LEFT = 1;
        static final int INT_OUTSIDE = 5;
        static final int INT_RIGHT = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("left", 1), new Enum("center", 2), new Enum(gon.f71288n0, 3), new Enum("inside", 4), new Enum(gon.f71278e0, 5)});

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
        SimpleTypeFactory<STXAlign> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stxalign8127type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        LEFT = Enum.forString("left");
        CENTER = Enum.forString("center");
        RIGHT = Enum.forString(gon.f71288n0);
        INSIDE = Enum.forString("inside");
        OUTSIDE = Enum.forString(gon.f71278e0);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
