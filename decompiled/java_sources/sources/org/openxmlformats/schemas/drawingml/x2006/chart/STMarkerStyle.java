package org.openxmlformats.schemas.drawingml.x2006.chart;

import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STMarkerStyle extends XmlString {
    public static final Enum AUTO;
    public static final Enum CIRCLE;
    public static final Enum DASH;
    public static final Enum DIAMOND;
    public static final Enum DOT;
    public static final SimpleTypeFactory<STMarkerStyle> Factory;
    public static final int INT_AUTO = 12;
    public static final int INT_CIRCLE = 1;
    public static final int INT_DASH = 2;
    public static final int INT_DIAMOND = 3;
    public static final int INT_DOT = 4;
    public static final int INT_NONE = 5;
    public static final int INT_PICTURE = 6;
    public static final int INT_PLUS = 7;
    public static final int INT_SQUARE = 8;
    public static final int INT_STAR = 9;
    public static final int INT_TRIANGLE = 10;
    public static final int INT_X = 11;
    public static final Enum NONE;
    public static final Enum PICTURE;
    public static final Enum PLUS;
    public static final Enum SQUARE;
    public static final Enum STAR;
    public static final Enum TRIANGLE;

    /* renamed from: X */
    public static final Enum f115672X;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AUTO = 12;
        static final int INT_CIRCLE = 1;
        static final int INT_DASH = 2;
        static final int INT_DIAMOND = 3;
        static final int INT_DOT = 4;
        static final int INT_NONE = 5;
        static final int INT_PICTURE = 6;
        static final int INT_PLUS = 7;
        static final int INT_SQUARE = 8;
        static final int INT_STAR = 9;
        static final int INT_TRIANGLE = 10;
        static final int INT_X = 11;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("circle", 1), new Enum("dash", 2), new Enum("diamond", 3), new Enum(gon.f71308x0, 4), new Enum("none", 5), new Enum(TemplateResourceConstant.TYPE_PICTURE, 6), new Enum("plus", 7), new Enum("square", 8), new Enum(UniversalShapeTypeConst.STAR, 9), new Enum("triangle", 10), new Enum("x", 11), new Enum("auto", 12)});

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
        SimpleTypeFactory<STMarkerStyle> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmarkerstyle177ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CIRCLE = Enum.forString("circle");
        DASH = Enum.forString("dash");
        DIAMOND = Enum.forString("diamond");
        DOT = Enum.forString(gon.f71308x0);
        NONE = Enum.forString("none");
        PICTURE = Enum.forString(TemplateResourceConstant.TYPE_PICTURE);
        PLUS = Enum.forString("plus");
        SQUARE = Enum.forString("square");
        STAR = Enum.forString(UniversalShapeTypeConst.STAR);
        TRIANGLE = Enum.forString("triangle");
        f115672X = Enum.forString("x");
        AUTO = Enum.forString("auto");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
