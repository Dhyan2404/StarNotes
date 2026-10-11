package org.apache.poi.hslf.usermodel;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.ddf.EscherTextboxRecord;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.HSLFMetroShape;
import org.apache.poi.hslf.model.textproperties.TextPropCollection;
import org.apache.poi.hslf.record.EscherTextboxWrapper;
import org.apache.poi.hslf.record.OEPlaceholderAtom;
import org.apache.poi.hslf.record.PPDrawing;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.RoundTripHFPlaceholder12;
import org.apache.poi.hslf.record.StyleTextPropAtom;
import org.apache.poi.hslf.record.TextBytesAtom;
import org.apache.poi.hslf.record.TextCharsAtom;
import org.apache.poi.hslf.record.TextHeaderAtom;
import org.apache.poi.sl.draw.DrawFactory;
import org.apache.poi.sl.usermodel.Insets2D;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.sl.usermodel.TextRun;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.sl.usermodel.VerticalAlignment;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public abstract class HSLFTextShape extends HSLFSimpleShape implements TextShape<HSLFShape, HSLFTextParagraph> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFTextShape.class);
    public static final int WrapByPoints = 1;
    public static final int WrapNone = 2;
    public static final int WrapSquare = 0;
    public static final int WrapThrough = 4;
    public static final int WrapTopBottom = 3;
    private List<HSLFTextParagraph> _paragraphs;
    private EscherTextboxWrapper _txtbox;

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFTextShape$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194771 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder;

        static {
            int[] iArr = new int[TextShape.TextPlaceholder.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder = iArr;
            try {
                iArr[TextShape.TextPlaceholder.BODY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.TITLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.CENTER_BODY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.CENTER_TITLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.HALF_BODY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.QUARTER_BODY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.NOTES.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[TextShape.TextDirection.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection = iArr2;
            try {
                iArr2[TextShape.TextDirection.STACKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection[TextShape.TextDirection.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection[TextShape.TextDirection.VERTICAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection[TextShape.TextDirection.VERTICAL_270.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'TOP' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes12.dex */
    public static final class HSLFTextAnchor {
        private static final /* synthetic */ HSLFTextAnchor[] $VALUES;
        public static final HSLFTextAnchor BOTTOM;
        public static final HSLFTextAnchor BOTTOM_BASELINE;
        public static final HSLFTextAnchor BOTTOM_CENTER;
        public static final HSLFTextAnchor BOTTOM_CENTER_BASELINE;
        public static final HSLFTextAnchor MIDDLE;
        public static final HSLFTextAnchor MIDDLE_CENTER;
        public static final HSLFTextAnchor TOP;
        public static final HSLFTextAnchor TOP_BASELINE;
        public static final HSLFTextAnchor TOP_CENTER;
        public static final HSLFTextAnchor TOP_CENTER_BASELINE;
        public final Boolean baseline;
        public final boolean centered;
        public final int nativeId;
        public final VerticalAlignment vAlign;

        static {
            VerticalAlignment verticalAlignment = VerticalAlignment.TOP;
            Boolean bool = Boolean.FALSE;
            HSLFTextAnchor hSLFTextAnchor = new HSLFTextAnchor("TOP", 0, 0, verticalAlignment, false, bool);
            TOP = hSLFTextAnchor;
            VerticalAlignment verticalAlignment2 = VerticalAlignment.MIDDLE;
            HSLFTextAnchor hSLFTextAnchor2 = new HSLFTextAnchor("MIDDLE", 1, 1, verticalAlignment2, false, bool);
            MIDDLE = hSLFTextAnchor2;
            VerticalAlignment verticalAlignment3 = VerticalAlignment.BOTTOM;
            HSLFTextAnchor hSLFTextAnchor3 = new HSLFTextAnchor("BOTTOM", 2, 2, verticalAlignment3, false, bool);
            BOTTOM = hSLFTextAnchor3;
            HSLFTextAnchor hSLFTextAnchor4 = new HSLFTextAnchor("TOP_CENTER", 3, 3, verticalAlignment, true, bool);
            TOP_CENTER = hSLFTextAnchor4;
            HSLFTextAnchor hSLFTextAnchor5 = new HSLFTextAnchor("MIDDLE_CENTER", 4, 4, verticalAlignment2, true, bool);
            MIDDLE_CENTER = hSLFTextAnchor5;
            HSLFTextAnchor hSLFTextAnchor6 = new HSLFTextAnchor("BOTTOM_CENTER", 5, 5, verticalAlignment3, true, bool);
            BOTTOM_CENTER = hSLFTextAnchor6;
            Boolean bool2 = Boolean.TRUE;
            HSLFTextAnchor hSLFTextAnchor7 = new HSLFTextAnchor("TOP_BASELINE", 6, 6, verticalAlignment, false, bool2);
            TOP_BASELINE = hSLFTextAnchor7;
            HSLFTextAnchor hSLFTextAnchor8 = new HSLFTextAnchor("BOTTOM_BASELINE", 7, 7, verticalAlignment3, false, bool2);
            BOTTOM_BASELINE = hSLFTextAnchor8;
            HSLFTextAnchor hSLFTextAnchor9 = new HSLFTextAnchor("TOP_CENTER_BASELINE", 8, 8, verticalAlignment, true, bool2);
            TOP_CENTER_BASELINE = hSLFTextAnchor9;
            HSLFTextAnchor hSLFTextAnchor10 = new HSLFTextAnchor("BOTTOM_CENTER_BASELINE", 9, 9, verticalAlignment3, true, bool2);
            BOTTOM_CENTER_BASELINE = hSLFTextAnchor10;
            $VALUES = new HSLFTextAnchor[]{hSLFTextAnchor, hSLFTextAnchor2, hSLFTextAnchor3, hSLFTextAnchor4, hSLFTextAnchor5, hSLFTextAnchor6, hSLFTextAnchor7, hSLFTextAnchor8, hSLFTextAnchor9, hSLFTextAnchor10};
        }

        private HSLFTextAnchor(String str, int i, int i2, VerticalAlignment verticalAlignment, boolean z, Boolean bool) {
            this.nativeId = i2;
            this.vAlign = verticalAlignment;
            this.centered = z;
            this.baseline = bool;
        }

        public static HSLFTextAnchor fromNativeId(int i) {
            for (HSLFTextAnchor hSLFTextAnchor : values()) {
                if (hSLFTextAnchor.nativeId == i) {
                    return hSLFTextAnchor;
                }
            }
            return null;
        }

        public static HSLFTextAnchor valueOf(String str) {
            return (HSLFTextAnchor) Enum.valueOf(HSLFTextAnchor.class, str);
        }

        public static HSLFTextAnchor[] values() {
            return (HSLFTextAnchor[]) $VALUES.clone();
        }
    }

    public HSLFTextShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
        this._paragraphs = new ArrayList();
    }

    private void createEmptyParagraph() {
        TextPropCollection textPropCollection;
        TextPropCollection textPropCollection2;
        TextHeaderAtom textHeaderAtom = (TextHeaderAtom) this._txtbox.findFirstOfType(TextHeaderAtom._type);
        if (textHeaderAtom == null) {
            textHeaderAtom = new TextHeaderAtom();
            textHeaderAtom.setParentRecord(this._txtbox);
            this._txtbox.appendChildRecord(textHeaderAtom);
        }
        TextBytesAtom textBytesAtom = (TextBytesAtom) this._txtbox.findFirstOfType(TextBytesAtom._type);
        TextCharsAtom textCharsAtom = (TextCharsAtom) this._txtbox.findFirstOfType(TextCharsAtom._type);
        if (textBytesAtom == null && textCharsAtom == null) {
            textBytesAtom = new TextBytesAtom();
            textBytesAtom.setText(new byte[0]);
            this._txtbox.appendChildRecord(textBytesAtom);
        }
        String text = textBytesAtom != null ? textBytesAtom.getText() : textCharsAtom.getText();
        StyleTextPropAtom styleTextPropAtom = (StyleTextPropAtom) this._txtbox.findFirstOfType(StyleTextPropAtom._type);
        if (styleTextPropAtom == null) {
            int length = text.length() + 1;
            StyleTextPropAtom styleTextPropAtom2 = new StyleTextPropAtom(length);
            if (this._paragraphs.isEmpty()) {
                textPropCollection2 = styleTextPropAtom2.addParagraphTextPropCollection(length);
                textPropCollection = styleTextPropAtom2.addCharacterTextPropCollection(length);
            } else {
                TextPropCollection textPropCollection3 = null;
                TextPropCollection textPropCollection4 = null;
                for (HSLFTextParagraph hSLFTextParagraph : this._paragraphs) {
                    int i = 0;
                    for (HSLFTextRun hSLFTextRun : hSLFTextParagraph.getTextRuns()) {
                        i += hSLFTextRun.getLength();
                        TextPropCollection addCharacterTextPropCollection = styleTextPropAtom2.addCharacterTextPropCollection(hSLFTextRun.getLength());
                        hSLFTextRun.setCharacterStyle(addCharacterTextPropCollection);
                        textPropCollection4 = addCharacterTextPropCollection;
                    }
                    TextPropCollection addParagraphTextPropCollection = styleTextPropAtom2.addParagraphTextPropCollection(i);
                    hSLFTextParagraph.setParagraphStyle(addParagraphTextPropCollection);
                    textPropCollection3 = addParagraphTextPropCollection;
                }
                textPropCollection2 = textPropCollection3;
                textPropCollection = textPropCollection4;
            }
            this._txtbox.appendChildRecord(styleTextPropAtom2);
        } else {
            TextPropCollection textPropCollection5 = styleTextPropAtom.getParagraphStyles().get(0);
            textPropCollection = styleTextPropAtom.getCharacterStyles().get(0);
            textPropCollection2 = textPropCollection5;
        }
        if (this._paragraphs.isEmpty()) {
            HSLFTextParagraph hSLFTextParagraph2 = new HSLFTextParagraph(textHeaderAtom, textBytesAtom, textCharsAtom, this._paragraphs);
            hSLFTextParagraph2.setParagraphStyle(textPropCollection2);
            hSLFTextParagraph2.setParentShape(this);
            this._paragraphs.add(hSLFTextParagraph2);
            HSLFTextRun hSLFTextRun2 = new HSLFTextRun(hSLFTextParagraph2);
            hSLFTextRun2.setCharacterStyle(textPropCollection);
            hSLFTextRun2.setText(text);
            hSLFTextParagraph2.addTextRun(hSLFTextRun2);
        }
    }

    private double getInset(EscherPropertyTypes escherPropertyTypes, double d) {
        return Units.toPoints(((EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), escherPropertyTypes)) == null ? (int) (Units.toEMU(72.0d) * d) : r0.getPropertyValue());
    }

    private void setInset(EscherPropertyTypes escherPropertyTypes, double d) {
        setEscherProperty(escherPropertyTypes, Units.toEMU(d));
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public void afterInsert(HSLFSheet hSLFSheet) {
        super.afterInsert(hSLFSheet);
        storeText();
        EscherTextboxWrapper escherTextboxWrapper = getEscherTextboxWrapper();
        if (escherTextboxWrapper != null) {
            getSpContainer().addChildRecord(escherTextboxWrapper.getEscherRecord());
            hSLFSheet.getPPDrawing().addTextboxWrapper(escherTextboxWrapper);
            try {
                escherTextboxWrapper.writeOut(null);
                boolean equals = getAnchor().equals(new Rectangle2D.Double());
                boolean z = !"".equals(getText());
                if (equals && z) {
                    resizeToFitText();
                }
            } catch (IOException e) {
                throw new HSLFException(e);
            }
        }
        Iterator<HSLFTextParagraph> it2 = this._paragraphs.iterator();
        while (it2.hasNext()) {
            it2.next().setShapeId(getShapeId());
        }
        hSLFSheet.onAddTextShape(this);
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    public HSLFTextAnchor getAlignment() {
        HSLFTextAnchor fromNativeId;
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.TEXT__ANCHORTEXT);
        if (escherSimpleProperty == null) {
            int runType = getRunType();
            ?? sheet = getSheet();
            HSLFMasterSheet masterSheet = sheet != 0 ? sheet.getMasterSheet() : null;
            HSLFTextShape placeholderByTextType = masterSheet != null ? masterSheet.getPlaceholderByTextType(runType) : null;
            fromNativeId = (placeholderByTextType == null || runType == TextShape.TextPlaceholder.OTHER.nativeId) ? TextShape.TextPlaceholder.isTitle(runType) ? HSLFTextAnchor.MIDDLE : HSLFTextAnchor.TOP : placeholderByTextType.getAlignment();
        } else {
            fromNativeId = HSLFTextAnchor.fromNativeId(escherSimpleProperty.getPropertyValue());
        }
        return fromNativeId == null ? HSLFTextAnchor.TOP : fromNativeId;
    }

    public double getBottomInset() {
        return getInset(EscherPropertyTypes.TEXT__TEXTBOTTOM, 0.05d);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public Color getColor(EscherPropertyTypes escherPropertyTypes) {
        if (escherPropertyTypes == EscherPropertyTypes.LINESTYLE__COLOR) {
            return null;
        }
        return super.getColor(escherPropertyTypes);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    public EscherTextboxWrapper getEscherTextboxWrapper() {
        PPDrawing pPDrawing;
        EscherTextboxWrapper[] textboxWrappers;
        EscherTextboxWrapper escherTextboxWrapper = this._txtbox;
        if (escherTextboxWrapper != null) {
            return escherTextboxWrapper;
        }
        EscherTextboxRecord escherTextboxRecord = (EscherTextboxRecord) getEscherChild(EscherTextboxRecord.RECORD_ID);
        if (escherTextboxRecord == null) {
            return null;
        }
        ?? sheet = getSheet();
        if (sheet != 0 && (pPDrawing = sheet.getPPDrawing()) != null && (textboxWrappers = pPDrawing.getTextboxWrappers()) != null) {
            for (EscherTextboxWrapper escherTextboxWrapper2 : textboxWrappers) {
                if (escherTextboxRecord == escherTextboxWrapper2.getEscherRecord()) {
                    this._txtbox = escherTextboxWrapper2;
                    return escherTextboxWrapper2;
                }
            }
        }
        EscherTextboxWrapper escherTextboxWrapper3 = new EscherTextboxWrapper(escherTextboxRecord);
        this._txtbox = escherTextboxWrapper3;
        return escherTextboxWrapper3;
    }

    public RoundTripHFPlaceholder12 getHFPlaceholderAtom() {
        return (RoundTripHFPlaceholder12) getClientDataRecord(RecordTypes.RoundTripHFPlaceholder12.typeID);
    }

    public List<HSLFHyperlink> getHyperlinks() {
        return HSLFHyperlink.find(this);
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public Insets2D getInsets() {
        return new Insets2D(getTopInset(), getLeftInset(), getBottomInset(), getRightInset());
    }

    public double getLeftInset() {
        return getInset(EscherPropertyTypes.TEXT__TEXTLEFT, 0.1d);
    }

    public <S extends Shape<S, P>, P extends TextParagraph<S, P, ? extends TextRun>> Shape<S, P> getMetroShape() {
        return new HSLFMetroShape(this).getShape();
    }

    public OEPlaceholderAtom getPlaceholderAtom() {
        return (OEPlaceholderAtom) getClientDataRecord(RecordTypes.OEPlaceholderAtom.typeID);
    }

    public String getRawText() {
        return HSLFTextParagraph.getRawText(getTextParagraphs());
    }

    public double getRightInset() {
        return getInset(EscherPropertyTypes.TEXT__TEXTRIGHT, 0.1d);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    public int getRunType() {
        getEscherTextboxWrapper();
        EscherTextboxWrapper escherTextboxWrapper = this._txtbox;
        if (escherTextboxWrapper == null) {
            return -1;
        }
        List<HSLFTextParagraph> findTextParagraphs = HSLFTextParagraph.findTextParagraphs(escherTextboxWrapper, (HSLFSheet) getSheet());
        if (findTextParagraphs.isEmpty()) {
            return -1;
        }
        return findTextParagraphs.get(0).getRunType();
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public String getText() {
        return HSLFTextParagraph.toExternalString(getRawText(), getRunType());
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public TextShape.TextDirection getTextDirection() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.TEXT__TEXTFLOW);
        int propertyValue = escherSimpleProperty == null ? 0 : escherSimpleProperty.getPropertyValue();
        if (propertyValue != 1) {
            if (propertyValue == 2) {
                return TextShape.TextDirection.VERTICAL_270;
            }
            if (propertyValue != 3 && propertyValue != 5) {
                return TextShape.TextDirection.HORIZONTAL;
            }
        }
        return TextShape.TextDirection.VERTICAL;
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public double getTextHeight() {
        return getTextHeight(null);
    }

    public int getTextId() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.TEXT__TEXTID);
        if (escherSimpleProperty == null) {
            return 0;
        }
        return escherSimpleProperty.getPropertyValue();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.TextShape
    public List<HSLFTextParagraph> getTextParagraphs() {
        if (!this._paragraphs.isEmpty()) {
            return this._paragraphs;
        }
        EscherTextboxWrapper escherTextboxWrapper = getEscherTextboxWrapper();
        this._txtbox = escherTextboxWrapper;
        if (escherTextboxWrapper == null) {
            this._txtbox = new EscherTextboxWrapper();
            createEmptyParagraph();
        } else {
            List<HSLFTextParagraph> findTextParagraphs = HSLFTextParagraph.findTextParagraphs(escherTextboxWrapper, (HSLFSheet) getSheet());
            if (findTextParagraphs == null) {
                createEmptyParagraph();
            } else {
                this._paragraphs = findTextParagraphs;
            }
            if (this._paragraphs.isEmpty()) {
                LOG.atWarn().log("TextRecord didn't contained any text lines");
            }
        }
        Iterator<HSLFTextParagraph> it2 = this._paragraphs.iterator();
        while (it2.hasNext()) {
            it2.next().setParentShape(this);
        }
        return this._paragraphs;
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public TextShape.TextPlaceholder getTextPlaceholder() {
        return TextShape.TextPlaceholder.fromNativeId(getRunType());
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public Double getTextRotation() {
        if (((EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.TEXT__FONTROTATION)) == null) {
            return null;
        }
        return Double.valueOf(r4.getPropertyValue() * 90.0d);
    }

    public double getTopInset() {
        return getInset(EscherPropertyTypes.TEXT__TEXTTOP, 0.05d);
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public VerticalAlignment getVerticalAlignment() {
        return getAlignment().vAlign;
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public boolean getWordWrap() {
        return getWordWrapEx() != 2;
    }

    public int getWordWrapEx() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.TEXT__WRAPTEXT);
        if (escherSimpleProperty == null) {
            return 0;
        }
        return escherSimpleProperty.getPropertyValue();
    }

    public boolean isAlignToBaseline() {
        return getAlignment().baseline.booleanValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public boolean isHorizontalCentered() {
        return getAlignment().centered;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSimpleShape, org.apache.poi.hslf.usermodel.HSLFShape, org.apache.poi.sl.usermodel.SimpleShape
    public boolean isPlaceholder() {
        return (getPlaceholderAtom() == null && getHFPlaceholderAtom() == null) ? false : true;
    }

    @Override // java.lang.Iterable
    public Iterator<HSLFTextParagraph> iterator() {
        return this._paragraphs.iterator();
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public Rectangle2D resizeToFitText() {
        return resizeToFitText(null);
    }

    public void setAlignToBaseline(boolean z) {
        setAlignment(Boolean.valueOf(isHorizontalCentered()), getVerticalAlignment(), z);
    }

    public void setAlignment(Boolean bool, VerticalAlignment verticalAlignment, boolean z) {
        Boolean bool2;
        for (HSLFTextAnchor hSLFTextAnchor : HSLFTextAnchor.values()) {
            if (hSLFTextAnchor.centered == (bool != null && bool.booleanValue()) && hSLFTextAnchor.vAlign == verticalAlignment && ((bool2 = hSLFTextAnchor.baseline) == null || bool2.booleanValue() == z)) {
                setEscherProperty(EscherPropertyTypes.TEXT__ANCHORTEXT, hSLFTextAnchor.nativeId);
                return;
            }
        }
    }

    public void setBottomInset(double d) {
        setInset(EscherPropertyTypes.TEXT__TEXTBOTTOM, d);
    }

    public void setDefaultTextProperties(HSLFTextParagraph hSLFTextParagraph) {
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public void setHorizontalCentered(Boolean bool) {
        setAlignment(bool, getVerticalAlignment(), getAlignment().baseline.booleanValue());
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public void setInsets(Insets2D insets2D) {
        setTopInset(insets2D.top);
        setLeftInset(insets2D.left);
        setBottomInset(insets2D.bottom);
        setRightInset(insets2D.right);
    }

    public void setLeftInset(double d) {
        setInset(EscherPropertyTypes.TEXT__TEXTLEFT, d);
    }

    public void setRightInset(double d) {
        setInset(EscherPropertyTypes.TEXT__TEXTRIGHT, d);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    public void setRunType(int i) {
        getEscherTextboxWrapper();
        EscherTextboxWrapper escherTextboxWrapper = this._txtbox;
        if (escherTextboxWrapper == null) {
            return;
        }
        List<HSLFTextParagraph> findTextParagraphs = HSLFTextParagraph.findTextParagraphs(escherTextboxWrapper, (HSLFSheet) getSheet());
        if (findTextParagraphs.isEmpty()) {
            return;
        }
        findTextParagraphs.get(0).setRunType(i);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public void setSheet(HSLFSheet hSLFSheet) {
        super.setSheet(hSLFSheet);
        HSLFTextParagraph.supplySheet(getTextParagraphs(), hSLFSheet);
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public void setTextDirection(TextShape.TextDirection textDirection) {
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        int i = -1;
        if (textDirection != null) {
            int i2 = C194771.$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection[textDirection.ordinal()];
            if (i2 == 2) {
                i = 0;
            } else if (i2 == 3) {
                i = 1;
            } else if (i2 == 4) {
                i = 2;
            }
        }
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.TEXT__TEXTFLOW, i);
    }

    public void setTextId(int i) {
        setEscherProperty(EscherPropertyTypes.TEXT__TEXTID, i);
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public void setTextPlaceholder(TextShape.TextPlaceholder textPlaceholder) {
        int i;
        Placeholder placeholder = null;
        switch (C194771.$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[textPlaceholder.ordinal()]) {
            case 2:
                i = TextShape.TextPlaceholder.TITLE.nativeId;
                placeholder = Placeholder.TITLE;
                break;
            case 3:
                i = TextShape.TextPlaceholder.CENTER_BODY.nativeId;
                placeholder = Placeholder.BODY;
                break;
            case 4:
                i = TextShape.TextPlaceholder.CENTER_TITLE.nativeId;
                placeholder = Placeholder.TITLE;
                break;
            case 5:
                i = TextShape.TextPlaceholder.HALF_BODY.nativeId;
                placeholder = Placeholder.BODY;
                break;
            case 6:
                i = TextShape.TextPlaceholder.QUARTER_BODY.nativeId;
                placeholder = Placeholder.BODY;
                break;
            case 7:
                i = TextShape.TextPlaceholder.NOTES.nativeId;
                break;
            case 8:
                i = TextShape.TextPlaceholder.OTHER.nativeId;
                break;
            default:
                i = TextShape.TextPlaceholder.BODY.nativeId;
                placeholder = Placeholder.BODY;
                break;
        }
        setRunType(i);
        if (placeholder != null) {
            setPlaceholder(placeholder);
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public void setTextRotation(Double d) {
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        if (d == null) {
            escherOptRecord.removeEscherProperty(EscherPropertyTypes.TEXT__FONTROTATION);
        } else {
            setEscherProperty(EscherPropertyTypes.TEXT__FONTROTATION, (int) (Math.round(d.doubleValue() / 90.0d) % 4));
        }
    }

    public void setTopInset(double d) {
        setInset(EscherPropertyTypes.TEXT__TEXTTOP, d);
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public void setVerticalAlignment(VerticalAlignment verticalAlignment) {
        setAlignment(Boolean.valueOf(isHorizontalCentered()), verticalAlignment, getAlignment().baseline.booleanValue());
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public void setWordWrap(boolean z) {
        setWordWrapEx(z ? 0 : 2);
    }

    public void setWordWrapEx(int i) {
        setEscherProperty(EscherPropertyTypes.TEXT__WRAPTEXT, i);
    }

    @Override // java.lang.Iterable
    public Spliterator<HSLFTextParagraph> spliterator() {
        return this._paragraphs.spliterator();
    }

    public void storeText() {
        HSLFTextParagraph.storeText(getTextParagraphs());
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public HSLFTextRun appendText(String str, boolean z) {
        HSLFTextRun appendText = HSLFTextParagraph.appendText(getTextParagraphs(), str, z);
        setTextId(getRawText().hashCode());
        return appendText;
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public double getTextHeight(Graphics2D graphics2D) {
        return DrawFactory.getInstance(graphics2D).getDrawable((TextShape<?, ?>) this).getTextHeight(graphics2D);
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public Rectangle2D resizeToFitText(Graphics2D graphics2D) {
        Rectangle2D anchor = getAnchor();
        if (anchor.getWidth() == 0.0d) {
            LOG.atWarn().log("Width of shape wasn't set. Defaulting to 200px");
            anchor.setRect(anchor.getX(), anchor.getY(), 200.0d, anchor.getHeight());
            setAnchor(anchor);
        }
        double textHeight = getTextHeight(graphics2D) + 1.0d;
        Insets2D insets = getInsets();
        anchor.setRect(anchor.getX(), anchor.getY(), anchor.getWidth(), insets.bottom + textHeight + insets.top);
        setAnchor(anchor);
        return anchor;
    }

    @Override // org.apache.poi.sl.usermodel.TextShape
    public HSLFTextRun setText(String str) {
        HSLFTextRun text = HSLFTextParagraph.setText(getTextParagraphs(), str);
        setTextId(getRawText().hashCode());
        return text;
    }

    public HSLFTextShape(ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(null, shapeContainer);
        this._paragraphs = new ArrayList();
        createSpContainer(shapeContainer instanceof HSLFGroupShape);
    }

    public HSLFTextShape() {
        this(null);
    }
}
