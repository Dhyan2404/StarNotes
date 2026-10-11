package org.openxmlformats.schemas.drawingml.x2006.diagram;

import com.thegrizzlylabs.sardineandroid.DavPrincipal;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAxisType extends XmlToken {
    public static final Enum ANCST;
    public static final Enum ANCST_OR_SELF;

    /* renamed from: CH */
    public static final Enum f115677CH;
    public static final Enum DES;
    public static final Enum DES_OR_SELF;
    public static final Enum FOLLOW;
    public static final Enum FOLLOW_SIB;
    public static final SimpleTypeFactory<STAxisType> Factory;
    public static final int INT_ANCST = 6;
    public static final int INT_ANCST_OR_SELF = 7;
    public static final int INT_CH = 2;
    public static final int INT_DES = 3;
    public static final int INT_DES_OR_SELF = 4;
    public static final int INT_FOLLOW = 10;
    public static final int INT_FOLLOW_SIB = 8;
    public static final int INT_NONE = 13;
    public static final int INT_PAR = 5;
    public static final int INT_PRECED = 11;
    public static final int INT_PRECED_SIB = 9;
    public static final int INT_ROOT = 12;
    public static final int INT_SELF = 1;
    public static final Enum NONE;
    public static final Enum PAR;
    public static final Enum PRECED;
    public static final Enum PRECED_SIB;
    public static final Enum ROOT;
    public static final Enum SELF;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ANCST = 6;
        static final int INT_ANCST_OR_SELF = 7;
        static final int INT_CH = 2;
        static final int INT_DES = 3;
        static final int INT_DES_OR_SELF = 4;
        static final int INT_FOLLOW = 10;
        static final int INT_FOLLOW_SIB = 8;
        static final int INT_NONE = 13;
        static final int INT_PAR = 5;
        static final int INT_PRECED = 11;
        static final int INT_PRECED_SIB = 9;
        static final int INT_ROOT = 12;
        static final int INT_SELF = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(DavPrincipal.KEY_SELF, 1), new Enum("ch", 2), new Enum("des", 3), new Enum("desOrSelf", 4), new Enum("par", 5), new Enum("ancst", 6), new Enum("ancstOrSelf", 7), new Enum("followSib", 8), new Enum("precedSib", 9), new Enum("follow", 10), new Enum("preced", 11), new Enum("root", 12), new Enum("none", 13)});

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
        SimpleTypeFactory<STAxisType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "staxistypeca86type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SELF = Enum.forString(DavPrincipal.KEY_SELF);
        f115677CH = Enum.forString("ch");
        DES = Enum.forString("des");
        DES_OR_SELF = Enum.forString("desOrSelf");
        PAR = Enum.forString("par");
        ANCST = Enum.forString("ancst");
        ANCST_OR_SELF = Enum.forString("ancstOrSelf");
        FOLLOW_SIB = Enum.forString("followSib");
        PRECED_SIB = Enum.forString("precedSib");
        FOLLOW = Enum.forString("follow");
        PRECED = Enum.forString("preced");
        ROOT = Enum.forString("root");
        NONE = Enum.forString("none");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
