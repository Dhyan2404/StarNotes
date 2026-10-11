package org.openxmlformats.schemas.drawingml.x2006.main;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPresetMaterialType extends XmlToken {
    public static final Enum CLEAR;
    public static final Enum DK_EDGE;
    public static final Enum FLAT;
    public static final SimpleTypeFactory<STPresetMaterialType> Factory;
    public static final int INT_CLEAR = 13;
    public static final int INT_DK_EDGE = 11;
    public static final int INT_FLAT = 14;
    public static final int INT_LEGACY_MATTE = 1;
    public static final int INT_LEGACY_METAL = 3;
    public static final int INT_LEGACY_PLASTIC = 2;
    public static final int INT_LEGACY_WIREFRAME = 4;
    public static final int INT_MATTE = 5;
    public static final int INT_METAL = 7;
    public static final int INT_PLASTIC = 6;
    public static final int INT_POWDER = 10;
    public static final int INT_SOFTMETAL = 15;
    public static final int INT_SOFT_EDGE = 12;
    public static final int INT_TRANSLUCENT_POWDER = 9;
    public static final int INT_WARM_MATTE = 8;
    public static final Enum LEGACY_MATTE;
    public static final Enum LEGACY_METAL;
    public static final Enum LEGACY_PLASTIC;
    public static final Enum LEGACY_WIREFRAME;
    public static final Enum MATTE;
    public static final Enum METAL;
    public static final Enum PLASTIC;
    public static final Enum POWDER;
    public static final Enum SOFTMETAL;
    public static final Enum SOFT_EDGE;
    public static final Enum TRANSLUCENT_POWDER;
    public static final Enum WARM_MATTE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CLEAR = 13;
        static final int INT_DK_EDGE = 11;
        static final int INT_FLAT = 14;
        static final int INT_LEGACY_MATTE = 1;
        static final int INT_LEGACY_METAL = 3;
        static final int INT_LEGACY_PLASTIC = 2;
        static final int INT_LEGACY_WIREFRAME = 4;
        static final int INT_MATTE = 5;
        static final int INT_METAL = 7;
        static final int INT_PLASTIC = 6;
        static final int INT_POWDER = 10;
        static final int INT_SOFTMETAL = 15;
        static final int INT_SOFT_EDGE = 12;
        static final int INT_TRANSLUCENT_POWDER = 9;
        static final int INT_WARM_MATTE = 8;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("legacyMatte", 1), new Enum("legacyPlastic", 2), new Enum("legacyMetal", 3), new Enum("legacyWireframe", 4), new Enum("matte", 5), new Enum("plastic", 6), new Enum("metal", 7), new Enum("warmMatte", 8), new Enum("translucentPowder", 9), new Enum("powder", 10), new Enum("dkEdge", 11), new Enum("softEdge", 12), new Enum(Constants.CLEAR_ATTRIBUTES, 13), new Enum("flat", 14), new Enum("softmetal", 15)});

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
        SimpleTypeFactory<STPresetMaterialType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpresetmaterialtype87ebtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        LEGACY_MATTE = Enum.forString("legacyMatte");
        LEGACY_PLASTIC = Enum.forString("legacyPlastic");
        LEGACY_METAL = Enum.forString("legacyMetal");
        LEGACY_WIREFRAME = Enum.forString("legacyWireframe");
        MATTE = Enum.forString("matte");
        PLASTIC = Enum.forString("plastic");
        METAL = Enum.forString("metal");
        WARM_MATTE = Enum.forString("warmMatte");
        TRANSLUCENT_POWDER = Enum.forString("translucentPowder");
        POWDER = Enum.forString("powder");
        DK_EDGE = Enum.forString("dkEdge");
        SOFT_EDGE = Enum.forString("softEdge");
        CLEAR = Enum.forString(Constants.CLEAR_ATTRIBUTES);
        FLAT = Enum.forString("flat");
        SOFTMETAL = Enum.forString("softmetal");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
