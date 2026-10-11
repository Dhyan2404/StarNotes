package org.openxmlformats.schemas.drawingml.x2006.diagram;

import com.thegrizzlylabs.sardineandroid.DavPrincipal;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STConstraintRelationship extends XmlToken {

    /* renamed from: CH */
    public static final Enum f115684CH;
    public static final Enum DES;
    public static final SimpleTypeFactory<STConstraintRelationship> Factory;
    public static final int INT_CH = 2;
    public static final int INT_DES = 3;
    public static final int INT_SELF = 1;
    public static final Enum SELF;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CH = 2;
        static final int INT_DES = 3;
        static final int INT_SELF = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(DavPrincipal.KEY_SELF, 1), new Enum("ch", 2), new Enum("des", 3)});

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
        SimpleTypeFactory<STConstraintRelationship> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stconstraintrelationshipa64ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SELF = Enum.forString(DavPrincipal.KEY_SELF);
        f115684CH = Enum.forString("ch");
        DES = Enum.forString("des");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
