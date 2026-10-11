package org.openxmlformats.schemas.drawingml.x2006.diagram;

import com.onegravity.colorpicker.ColorPicker;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STResizeHandlesStr extends XmlToken {
    public static final Enum EXACT;
    public static final SimpleTypeFactory<STResizeHandlesStr> Factory;
    public static final int INT_EXACT = 1;
    public static final int INT_REL = 2;
    public static final Enum REL;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_EXACT = 1;
        static final int INT_REL = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(ColorPicker.f39840p, 1), new Enum("rel", 2)});

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
        SimpleTypeFactory<STResizeHandlesStr> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stresizehandlesstrc427type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        EXACT = Enum.forString(ColorPicker.f39840p);
        REL = Enum.forString("rel");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
