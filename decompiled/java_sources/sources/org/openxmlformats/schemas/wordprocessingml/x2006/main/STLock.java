package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STLock extends XmlString {
    public static final Enum CONTENT_LOCKED;
    public static final SimpleTypeFactory<STLock> Factory;
    public static final int INT_CONTENT_LOCKED = 2;
    public static final int INT_SDT_CONTENT_LOCKED = 4;
    public static final int INT_SDT_LOCKED = 1;
    public static final int INT_UNLOCKED = 3;
    public static final Enum SDT_CONTENT_LOCKED;
    public static final Enum SDT_LOCKED;
    public static final Enum UNLOCKED;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CONTENT_LOCKED = 2;
        static final int INT_SDT_CONTENT_LOCKED = 4;
        static final int INT_SDT_LOCKED = 1;
        static final int INT_UNLOCKED = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("sdtLocked", 1), new Enum("contentLocked", 2), new Enum("unlocked", 3), new Enum("sdtContentLocked", 4)});

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
        SimpleTypeFactory<STLock> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stlocke60dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SDT_LOCKED = Enum.forString("sdtLocked");
        CONTENT_LOCKED = Enum.forString("contentLocked");
        UNLOCKED = Enum.forString("unlocked");
        SDT_CONTENT_LOCKED = Enum.forString("sdtContentLocked");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
