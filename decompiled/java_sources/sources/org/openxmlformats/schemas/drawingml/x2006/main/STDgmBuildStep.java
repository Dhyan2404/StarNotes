package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STDgmBuildStep extends XmlToken {

    /* renamed from: BG */
    public static final Enum f115714BG;
    public static final SimpleTypeFactory<STDgmBuildStep> Factory;
    public static final int INT_BG = 2;
    public static final int INT_SP = 1;

    /* renamed from: SP */
    public static final Enum f115715SP;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BG = 2;
        static final int INT_SP = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("sp", 1), new Enum("bg", 2)});

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
        SimpleTypeFactory<STDgmBuildStep> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdgmbuildstepbb5btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115715SP = Enum.forString("sp");
        f115714BG = Enum.forString("bg");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
