package org.openxmlformats.schemas.drawingml.x2006.diagram;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STVariableType extends XmlToken {
    public static final Enum ANIM_LVL;
    public static final Enum ANIM_ONE;
    public static final Enum BUL_ENABLED;
    public static final Enum CH_MAX;
    public static final Enum CH_PREF;
    public static final Enum DIR;
    public static final SimpleTypeFactory<STVariableType> Factory;
    public static final Enum HIER_BRANCH;
    public static final int INT_ANIM_LVL = 9;
    public static final int INT_ANIM_ONE = 8;
    public static final int INT_BUL_ENABLED = 5;
    public static final int INT_CH_MAX = 3;
    public static final int INT_CH_PREF = 4;
    public static final int INT_DIR = 6;
    public static final int INT_HIER_BRANCH = 7;
    public static final int INT_NONE = 1;
    public static final int INT_ORG_CHART = 2;
    public static final int INT_RESIZE_HANDLES = 10;
    public static final Enum NONE;
    public static final Enum ORG_CHART;
    public static final Enum RESIZE_HANDLES;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ANIM_LVL = 9;
        static final int INT_ANIM_ONE = 8;
        static final int INT_BUL_ENABLED = 5;
        static final int INT_CH_MAX = 3;
        static final int INT_CH_PREF = 4;
        static final int INT_DIR = 6;
        static final int INT_HIER_BRANCH = 7;
        static final int INT_NONE = 1;
        static final int INT_ORG_CHART = 2;
        static final int INT_RESIZE_HANDLES = 10;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("orgChart", 2), new Enum("chMax", 3), new Enum("chPref", 4), new Enum("bulEnabled", 5), new Enum(CouchFieldKey.KEY_DIR, 6), new Enum("hierBranch", 7), new Enum("animOne", 8), new Enum("animLvl", 9), new Enum("resizeHandles", 10)});

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
        SimpleTypeFactory<STVariableType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stvariabletypef00btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        ORG_CHART = Enum.forString("orgChart");
        CH_MAX = Enum.forString("chMax");
        CH_PREF = Enum.forString("chPref");
        BUL_ENABLED = Enum.forString("bulEnabled");
        DIR = Enum.forString(CouchFieldKey.KEY_DIR);
        HIER_BRANCH = Enum.forString("hierBranch");
        ANIM_ONE = Enum.forString("animOne");
        ANIM_LVL = Enum.forString("animLvl");
        RESIZE_HANDLES = Enum.forString("resizeHandles");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
