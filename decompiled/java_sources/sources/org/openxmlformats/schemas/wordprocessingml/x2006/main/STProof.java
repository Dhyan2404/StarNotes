package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STProof extends XmlString {
    public static final Enum CLEAN;
    public static final Enum DIRTY;
    public static final SimpleTypeFactory<STProof> Factory;
    public static final int INT_CLEAN = 1;
    public static final int INT_DIRTY = 2;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CLEAN = 1;
        static final int INT_DIRTY = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("clean", 1), new Enum("dirty", 2)});

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
        SimpleTypeFactory<STProof> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stproof871etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CLEAN = Enum.forString("clean");
        DIRTY = Enum.forString("dirty");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
