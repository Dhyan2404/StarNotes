package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STViewType extends XmlToken {
    public static final SimpleTypeFactory<STViewType> Factory;
    public static final Enum HANDOUT_VIEW;
    public static final int INT_HANDOUT_VIEW = 4;
    public static final int INT_NOTES_MASTER_VIEW = 5;
    public static final int INT_NOTES_VIEW = 3;
    public static final int INT_OUTLINE_VIEW = 6;
    public static final int INT_SLD_MASTER_VIEW = 2;
    public static final int INT_SLD_SORTER_VIEW = 7;
    public static final int INT_SLD_THUMBNAIL_VIEW = 8;
    public static final int INT_SLD_VIEW = 1;
    public static final Enum NOTES_MASTER_VIEW;
    public static final Enum NOTES_VIEW;
    public static final Enum OUTLINE_VIEW;
    public static final Enum SLD_MASTER_VIEW;
    public static final Enum SLD_SORTER_VIEW;
    public static final Enum SLD_THUMBNAIL_VIEW;
    public static final Enum SLD_VIEW;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_HANDOUT_VIEW = 4;
        static final int INT_NOTES_MASTER_VIEW = 5;
        static final int INT_NOTES_VIEW = 3;
        static final int INT_OUTLINE_VIEW = 6;
        static final int INT_SLD_MASTER_VIEW = 2;
        static final int INT_SLD_SORTER_VIEW = 7;
        static final int INT_SLD_THUMBNAIL_VIEW = 8;
        static final int INT_SLD_VIEW = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("sldView", 1), new Enum("sldMasterView", 2), new Enum("notesView", 3), new Enum("handoutView", 4), new Enum("notesMasterView", 5), new Enum("outlineView", 6), new Enum("sldSorterView", 7), new Enum("sldThumbnailView", 8)});

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
        SimpleTypeFactory<STViewType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stviewtype8eb6type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SLD_VIEW = Enum.forString("sldView");
        SLD_MASTER_VIEW = Enum.forString("sldMasterView");
        NOTES_VIEW = Enum.forString("notesView");
        HANDOUT_VIEW = Enum.forString("handoutView");
        NOTES_MASTER_VIEW = Enum.forString("notesMasterView");
        OUTLINE_VIEW = Enum.forString("outlineView");
        SLD_SORTER_VIEW = Enum.forString("sldSorterView");
        SLD_THUMBNAIL_VIEW = Enum.forString("sldThumbnailView");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
