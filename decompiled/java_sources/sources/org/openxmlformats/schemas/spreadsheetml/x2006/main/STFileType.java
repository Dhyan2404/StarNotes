package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STFileType extends XmlString {
    public static final Enum DOS;
    public static final SimpleTypeFactory<STFileType> Factory;
    public static final int INT_DOS = 3;
    public static final int INT_LIN = 4;
    public static final int INT_MAC = 1;
    public static final int INT_OTHER = 5;
    public static final int INT_WIN = 2;
    public static final Enum LIN;
    public static final Enum MAC;
    public static final Enum OTHER;
    public static final Enum WIN;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DOS = 3;
        static final int INT_LIN = 4;
        static final int INT_MAC = 1;
        static final int INT_OTHER = 5;
        static final int INT_WIN = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(CloudStorageConstants.MAC_TAG, 1), new Enum("win", 2), new Enum("dos", 3), new Enum("lin", 4), new Enum(Constants.ATTRVAL_OTHER, 5)});

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
        SimpleTypeFactory<STFileType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfiletype9a2ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        MAC = Enum.forString(CloudStorageConstants.MAC_TAG);
        WIN = Enum.forString("win");
        DOS = Enum.forString("dos");
        LIN = Enum.forString("lin");
        OTHER = Enum.forString(Constants.ATTRVAL_OTHER);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
