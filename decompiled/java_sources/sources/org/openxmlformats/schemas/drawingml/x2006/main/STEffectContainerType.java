package org.openxmlformats.schemas.drawingml.x2006.main;

import androidx.core.provider.DocumentsContractCompat;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STEffectContainerType extends XmlToken {
    public static final SimpleTypeFactory<STEffectContainerType> Factory;
    public static final int INT_SIB = 1;
    public static final int INT_TREE = 2;
    public static final Enum SIB;
    public static final Enum TREE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_SIB = 1;
        static final int INT_TREE = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("sib", 1), new Enum(DocumentsContractCompat.f5557a, 2)});

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
        SimpleTypeFactory<STEffectContainerType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "steffectcontainertyped26btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SIB = Enum.forString("sib");
        TREE = Enum.forString(DocumentsContractCompat.f5557a);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
