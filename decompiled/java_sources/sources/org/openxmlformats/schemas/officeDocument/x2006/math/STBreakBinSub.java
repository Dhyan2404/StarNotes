package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes14.dex */
public interface STBreakBinSub extends XmlString {
    public static final SimpleTypeFactory<STBreakBinSub> Factory;
    public static final int INT_X = 1;
    public static final int INT_X_2 = 2;
    public static final int INT_X_3 = 3;

    /* renamed from: X */
    public static final Enum f115757X;
    public static final Enum X_2;
    public static final Enum X_3;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_X = 1;
        static final int INT_X_2 = 2;
        static final int INT_X_3 = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(MultiPartWriter.f115320h, 1), new Enum("-+", 2), new Enum("+-", 3)});

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
        SimpleTypeFactory<STBreakBinSub> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stbreakbinsub0d54type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115757X = Enum.forString(MultiPartWriter.f115320h);
        X_2 = Enum.forString("-+");
        X_3 = Enum.forString("+-");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
