package org.apache.poi.hslf.usermodel;

import java.awt.Color;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.textproperties.BitMaskTextProp;
import org.apache.poi.hslf.model.textproperties.FontAlignmentProp;
import org.apache.poi.hslf.model.textproperties.HSLFTabStop;
import org.apache.poi.hslf.model.textproperties.HSLFTabStopPropCollection;
import org.apache.poi.hslf.model.textproperties.IndentProp;
import org.apache.poi.hslf.model.textproperties.ParagraphFlagsTextProp;
import org.apache.poi.hslf.model.textproperties.TextPFException9;
import org.apache.poi.hslf.model.textproperties.TextProp;
import org.apache.poi.hslf.model.textproperties.TextPropCollection;
import org.apache.poi.hslf.model.textproperties.WrapFlagsTextProp;
import org.apache.poi.hslf.record.EscherTextboxWrapper;
import org.apache.poi.hslf.record.InteractiveInfo;
import org.apache.poi.hslf.record.MasterTextPropAtom;
import org.apache.poi.hslf.record.OutlineTextRefAtom;
import org.apache.poi.hslf.record.PPDrawing;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordContainer;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.SlideListWithText;
import org.apache.poi.hslf.record.SlidePersistAtom;
import org.apache.poi.hslf.record.StyleTextProp9Atom;
import org.apache.poi.hslf.record.StyleTextPropAtom;
import org.apache.poi.hslf.record.TextBytesAtom;
import org.apache.poi.hslf.record.TextCharsAtom;
import org.apache.poi.hslf.record.TextHeaderAtom;
import org.apache.poi.hslf.record.TextRulerAtom;
import org.apache.poi.hslf.record.TextSpecInfoAtom;
import org.apache.poi.hslf.record.TxInteractiveInfoAtom;
import org.apache.poi.hslf.usermodel.HSLFTextParagraph;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.AutoNumberingScheme;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.TabStop;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.util.StringUtil;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class HSLFTextParagraph implements TextParagraph<HSLFShape, HSLFTextParagraph, HSLFTextRun> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFTextParagraph.class);
    private static final int MAX_NUMBER_OF_STYLES = 20000;
    private TextBytesAtom _byteAtom;
    private TextCharsAtom _charAtom;
    private boolean _dirty;
    private final TextHeaderAtom _headerAtom;
    private TextPropCollection _paragraphStyle;
    protected HSLFTextShape _parentShape;
    protected TextRulerAtom _ruler;
    protected final List<HSLFTextRun> _runs = new ArrayList();
    private HSLFSheet _sheet;
    private final List<HSLFTextParagraph> parentList;
    private int shapeId;
    private StyleTextProp9Atom styleTextProp9Atom;

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFTextParagraph$2 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194752 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$Placeholder;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign;

        static {
            int[] iArr = new int[Placeholder.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$Placeholder = iArr;
            try {
                iArr[Placeholder.DATETIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.SLIDE_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.FOOTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.HEADER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[TextParagraph.TextAlign.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign = iArr2;
            try {
                iArr2[TextParagraph.TextAlign.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign[TextParagraph.TextAlign.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign[TextParagraph.TextAlign.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign[TextParagraph.TextAlign.DIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign[TextParagraph.TextAlign.JUSTIFY.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign[TextParagraph.TextAlign.JUSTIFY_LOW.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign[TextParagraph.TextAlign.THAI_DIST.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public class HSLFTabStopDecorator implements TabStop {
        final HSLFTabStop tabStop;

        public HSLFTabStopDecorator(HSLFTabStop hSLFTabStop) {
            this.tabStop = hSLFTabStop;
        }

        @Override // org.apache.poi.sl.usermodel.TabStop
        public double getPositionInPoints() {
            return this.tabStop.getPositionInPoints();
        }

        @Override // org.apache.poi.sl.usermodel.TabStop
        public TabStop.TabStopType getType() {
            return this.tabStop.getType();
        }

        @Override // org.apache.poi.sl.usermodel.TabStop
        public void setPositionInPoints(double d) {
            this.tabStop.setPositionInPoints(d);
            HSLFTextParagraph.this.setDirty();
        }

        @Override // org.apache.poi.sl.usermodel.TabStop
        public void setType(TabStop.TabStopType tabStopType) {
            this.tabStop.setType(tabStopType);
            HSLFTextParagraph.this.setDirty();
        }
    }

    public HSLFTextParagraph(TextHeaderAtom textHeaderAtom, TextBytesAtom textBytesAtom, TextCharsAtom textCharsAtom, List<HSLFTextParagraph> list) {
        if (textHeaderAtom == null) {
            throw new IllegalArgumentException("TextHeaderAtom must be set.");
        }
        this._headerAtom = textHeaderAtom;
        this._byteAtom = textBytesAtom;
        this._charAtom = textCharsAtom;
        this.parentList = list;
        setParagraphStyle(new TextPropCollection(1, TextPropCollection.TextPropType.paragraph));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v7, types: [org.apache.poi.hslf.usermodel.HSLFTextShape] */
    public static HSLFTextRun appendText(List<HSLFTextParagraph> list, String str, boolean z) {
        String internalString = toInternalString(str);
        HSLFTextParagraph hSLFTextParagraph = list.get(list.size() - 1);
        HSLFTextRun hSLFTextRun = hSLFTextParagraph.getTextRuns().get(hSLFTextParagraph.getTextRuns().size() - 1);
        String[] split = internalString.split("(?<=\r)");
        int length = split.length;
        int i = 0;
        while (i < length) {
            String str2 = split[i];
            boolean z2 = hSLFTextRun.getLength() == 0;
            boolean z3 = z2 && hSLFTextParagraph.getTextRuns().size() == 1;
            if (z && !z3) {
                TextPropCollection paragraphStyle = hSLFTextParagraph.getParagraphStyle();
                HSLFTextParagraph hSLFTextParagraph2 = new HSLFTextParagraph(hSLFTextParagraph._headerAtom, hSLFTextParagraph._byteAtom, hSLFTextParagraph._charAtom, list);
                hSLFTextParagraph2.setParagraphStyle(paragraphStyle.copy());
                hSLFTextParagraph2.setParentShape(hSLFTextParagraph.getParentShape());
                hSLFTextParagraph2.setShapeId(hSLFTextParagraph.getShapeId());
                hSLFTextParagraph2.supplySheet(hSLFTextParagraph.getSheet());
                list.add(hSLFTextParagraph2);
                hSLFTextParagraph = hSLFTextParagraph2;
            }
            if (!z2) {
                TextPropCollection characterStyle = hSLFTextRun.getCharacterStyle();
                hSLFTextRun = new HSLFTextRun(hSLFTextParagraph);
                hSLFTextRun.setCharacterStyle(characterStyle.copy());
                hSLFTextParagraph.addTextRun(hSLFTextRun);
            }
            hSLFTextRun.setText(str2);
            i++;
            z = true;
        }
        storeText(list);
        return hSLFTextRun;
    }

    public static void applyCharacterStyles(List<HSLFTextParagraph> list, List<TextPropCollection> list2) {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < list2.size(); i3++) {
            TextPropCollection textPropCollection = list2.get(i3);
            int charactersCovered = textPropCollection.getCharactersCovered();
            if (charactersCovered > 20000) {
                throw new IllegalStateException("Cannot process more than 20000 styles, but had paragraph with " + charactersCovered);
            }
            int i4 = 0;
            while (i4 < charactersCovered) {
                HSLFTextParagraph hSLFTextParagraph = list.get(i);
                List<HSLFTextRun> textRuns = hSLFTextParagraph.getTextRuns();
                HSLFTextRun hSLFTextRun = textRuns.get(i2);
                int length = hSLFTextRun.getLength() + i4;
                if (length > charactersCovered) {
                    String rawText = hSLFTextRun.getRawText();
                    int i5 = charactersCovered - i4;
                    hSLFTextRun.setText(rawText.substring(0, i5));
                    HSLFTextRun hSLFTextRun2 = new HSLFTextRun(hSLFTextParagraph);
                    hSLFTextRun2.setText(rawText.substring(i5));
                    textRuns.add(i2 + 1, hSLFTextRun2);
                    length = i4 + i5;
                }
                hSLFTextRun.setCharacterStyle(textPropCollection);
                if (i == list.size() - 1 && i2 == textRuns.size() - 1) {
                    if (i3 < list2.size() - 1) {
                        HSLFTextRun hSLFTextRun3 = new HSLFTextRun(hSLFTextParagraph);
                        hSLFTextRun3.setText("");
                        textRuns.add(hSLFTextRun3);
                    } else {
                        hSLFTextRun.getCharacterStyle().updateTextSize(hSLFTextRun.getLength() + 1);
                    }
                    length++;
                }
                i4 = length;
                i2++;
                if (i2 == textRuns.size()) {
                    i++;
                    i2 = 0;
                }
            }
        }
    }

    public static void applyHyperlinks(List<HSLFTextParagraph> list) {
        for (HSLFHyperlink hSLFHyperlink : HSLFHyperlink.find(list)) {
            int i = 0;
            for (HSLFTextParagraph hSLFTextParagraph : list) {
                if (i > hSLFHyperlink.getEndIndex()) {
                    break;
                }
                List<HSLFTextRun> textRuns = hSLFTextParagraph.getTextRuns();
                for (int i2 = 0; i2 < textRuns.size(); i2++) {
                    HSLFTextRun hSLFTextRun = textRuns.get(i2);
                    int length = hSLFTextRun.getLength();
                    if (i < hSLFHyperlink.getEndIndex() && hSLFHyperlink.getStartIndex() < i + length) {
                        String rawText = hSLFTextRun.getRawText();
                        int startIndex = hSLFHyperlink.getStartIndex() - i;
                        if (startIndex > 0) {
                            HSLFTextRun hSLFTextRun2 = new HSLFTextRun(hSLFTextParagraph);
                            hSLFTextRun2.setCharacterStyle(hSLFTextRun.getCharacterStyle());
                            hSLFTextRun2.setText(rawText.substring(startIndex));
                            hSLFTextRun.setText(rawText.substring(0, startIndex));
                            textRuns.add(i2 + 1, hSLFTextRun2);
                            length = startIndex;
                        } else {
                            int min = Math.min(length, hSLFHyperlink.getEndIndex() - hSLFHyperlink.getStartIndex());
                            if (min < length) {
                                HSLFTextRun hSLFTextRun3 = new HSLFTextRun(hSLFTextParagraph);
                                hSLFTextRun3.setCharacterStyle(hSLFTextRun.getCharacterStyle());
                                hSLFTextRun3.setText(rawText.substring(0, min));
                                hSLFTextRun.setText(rawText.substring(min));
                                textRuns.add(i2, hSLFTextRun3);
                                hSLFTextRun = hSLFTextRun3;
                                length = min;
                            }
                            hSLFTextRun.setHyperlink(hSLFHyperlink);
                        }
                    }
                    i += length;
                }
            }
        }
    }

    public static void applyParagraphIndents(List<HSLFTextParagraph> list, List<IndentProp> list2) {
        int i = 0;
        for (IndentProp indentProp : list2) {
            int charactersCovered = indentProp.getCharactersCovered();
            int i2 = 0;
            while (i2 < charactersCovered) {
                if (i >= list.size() || i2 >= charactersCovered - 1) {
                    return;
                }
                HSLFTextParagraph hSLFTextParagraph = list.get(i);
                Iterator<HSLFTextRun> it2 = hSLFTextParagraph.getTextRuns().iterator();
                int i3 = 0;
                while (it2.hasNext()) {
                    i3 += it2.next().getLength();
                }
                hSLFTextParagraph.setIndentLevel(indentProp.getIndentLevel());
                i2 += i3 + 1;
                i++;
            }
        }
    }

    public static void applyParagraphStyles(List<HSLFTextParagraph> list, List<TextPropCollection> list2) {
        int i = 0;
        for (TextPropCollection textPropCollection : list2) {
            int charactersCovered = textPropCollection.getCharactersCovered();
            int i2 = 0;
            while (i2 < charactersCovered) {
                if (i >= list.size()) {
                    return;
                }
                HSLFTextParagraph hSLFTextParagraph = list.get(i);
                TextPropCollection copy = textPropCollection.copy();
                hSLFTextParagraph.setParagraphStyle(copy);
                Iterator<HSLFTextRun> it2 = hSLFTextParagraph.getTextRuns().iterator();
                int i3 = 0;
                while (it2.hasNext()) {
                    i3 += it2.next().getLength();
                }
                if (i == list.size() - 1) {
                    i3++;
                }
                copy.updateTextSize(i3);
                i2 += i3;
                i++;
            }
        }
    }

    private static StyleTextPropAtom findStyleAtomPresent(TextHeaderAtom textHeaderAtom, int i) {
        Record[] childRecords = textHeaderAtom.getParentRecord().getChildRecords();
        int length = childRecords.length;
        StyleTextPropAtom styleTextPropAtom = null;
        int i2 = 0;
        boolean z = false;
        while (true) {
            if (i2 >= length) {
                break;
            }
            Record record = childRecords[i2];
            long recordType = record.getRecordType();
            if (z && recordType == RecordTypes.TextHeaderAtom.typeID) {
                break;
            }
            z |= textHeaderAtom == record;
            if (z && recordType == RecordTypes.StyleTextPropAtom.typeID) {
                styleTextPropAtom = (StyleTextPropAtom) record;
            }
            i2++;
        }
        if (styleTextPropAtom == null) {
            LOG.atInfo().log("styles atom doesn't exist. Creating dummy record for later saving.");
            if (i < 0) {
                i = 1;
            }
            styleTextPropAtom = new StyleTextPropAtom(i);
        } else if (i >= 0) {
            styleTextPropAtom.setParentTextSize(i);
        }
        return styleTextPropAtom;
    }

    public static List<List<HSLFTextParagraph>> findTextParagraphs(PPDrawing pPDrawing, HSLFSheet hSLFSheet) {
        if (pPDrawing != null) {
            ArrayList arrayList = new ArrayList();
            for (EscherTextboxWrapper escherTextboxWrapper : pPDrawing.getTextboxWrappers()) {
                List<HSLFTextParagraph> findTextParagraphs = findTextParagraphs(escherTextboxWrapper, hSLFSheet);
                if (findTextParagraphs != null) {
                    arrayList.add(findTextParagraphs);
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("Did not receive a valid drawing for sheet " + hSLFSheet._getSheetNumber());
    }

    public static void fixLineEndings(List<HSLFTextParagraph> list) {
        HSLFTextRun hSLFTextRun = null;
        for (HSLFTextParagraph hSLFTextParagraph : list) {
            if (hSLFTextRun != null && !hSLFTextRun.getRawText().endsWith("\r")) {
                hSLFTextRun.setText(hSLFTextRun.getRawText() + "\r");
            }
            List<HSLFTextRun> textRuns = hSLFTextParagraph.getTextRuns();
            if (textRuns.isEmpty()) {
                throw new HSLFException("paragraph without textruns found");
            }
            hSLFTextRun = textRuns.get(textRuns.size() - 1);
        }
    }

    public static Color getColorFromColorIndexStruct(int i, HSLFSheet hSLFSheet) {
        Color color;
        int i2 = i >>> 24;
        if (i2 != 254) {
            switch (i2) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    if (hSLFSheet != null) {
                        color = new Color(hSLFSheet.getColorScheme().getColor(i2), true);
                        break;
                    } else {
                        return null;
                    }
                default:
                    return null;
            }
        } else {
            color = new Color(i, true);
        }
        return new Color(color.getBlue(), color.getGreen(), color.getRed());
    }

    private boolean getFlag(int i) {
        BitMaskTextProp bitMaskTextProp = (BitMaskTextProp) getPropVal(this._paragraphStyle, ParagraphFlagsTextProp.NAME);
        return bitMaskTextProp != null && bitMaskTextProp.getSubValue(i);
    }

    private String getMasterPropName(String str) {
        return "linespacing".equals(str) ? "spacebefore" : str;
    }

    private <T extends TextProp> T getMasterPropVal(TextPropCollection textPropCollection, String str) {
        HSLFMasterSheet masterSheet;
        boolean z = textPropCollection.getTextPropType() == TextPropCollection.TextPropType.character;
        String[] split = str.split(",");
        HSLFSheet sheet = getSheet();
        int runType = getRunType();
        if (sheet instanceof HSLFMasterSheet) {
            masterSheet = (HSLFMasterSheet) sheet;
        } else {
            masterSheet = sheet.getMasterSheet();
            if (masterSheet == null) {
                LOG.atWarn().log("MasterSheet is not available");
                return null;
            }
        }
        for (String str2 : split) {
            TextPropCollection propCollection = masterSheet.getPropCollection(runType, getIndentLevel(), getMasterPropName(str2), z);
            if (propCollection != null) {
                T t = (T) propCollection.findByName(str2);
                if (isValidProp(t)) {
                    return t;
                }
            }
        }
        return null;
    }

    private Double getPctOrPoints(String str) {
        TextProp propVal = getPropVal(this._paragraphStyle, str);
        if (propVal == null) {
            return null;
        }
        int value = propVal.getValue();
        return Double.valueOf(value < 0 ? Units.masterToPoints(value) : value);
    }

    public static String getRawText(List<HSLFTextParagraph> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<HSLFTextParagraph> it2 = list.iterator();
        while (it2.hasNext()) {
            Iterator<HSLFTextRun> it3 = it2.next().getTextRuns().iterator();
            while (it3.hasNext()) {
                sb.append(it3.next().getRawText());
            }
        }
        return sb.toString();
    }

    public static String getText(List<HSLFTextParagraph> list) {
        return toExternalString(getRawText(list), list.get(0).getRunType());
    }

    private static boolean isValidProp(TextProp textProp) {
        return (textProp == null || (textProp.getName().contains("font") && textProp.getValue() == -1)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ HSLFTabStopDecorator lambda$getTabStops$0(HSLFTabStop hSLFTabStop) {
        return new HSLFTabStopDecorator(hSLFTabStop);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setPropVal$2(Integer num, TextProp textProp) {
        textProp.setValue(num.intValue());
    }

    private static void refreshRecords(List<HSLFTextParagraph> list) {
        RecordContainer parentRecord = list.get(0)._headerAtom.getParentRecord();
        if (parentRecord instanceof EscherTextboxWrapper) {
            try {
                parentRecord.writeOut(null);
            } catch (IOException e) {
                throw new HSLFException("failed dummy write", e);
            }
        }
    }

    private void setFlag(int i, boolean z) {
        ((BitMaskTextProp) this._paragraphStyle.addWithName(ParagraphFlagsTextProp.NAME)).setSubValue(z, i);
        setDirty();
    }

    private void setPctOrPoints(String str, Double d) {
        Integer num;
        if (d != null) {
            num = Integer.valueOf(d.doubleValue() < 0.0d ? Units.pointsToMaster(d.doubleValue()) : d.intValue());
        } else {
            num = null;
        }
        setParagraphTextPropVal(str, num);
    }

    private void setPropValInner(TextPropCollection textPropCollection, String str, Consumer<? extends TextProp> consumer) {
        boolean z = textPropCollection.getTextPropType() == TextPropCollection.TextPropType.character;
        HSLFSheet hSLFSheet = this._sheet;
        if ((hSLFSheet instanceof HSLFMasterSheet) && (textPropCollection = ((HSLFMasterSheet) hSLFSheet).getPropCollection(getRunType(), getIndentLevel(), "*", z)) == null) {
            throw new HSLFException("Master text property collection can't be determined.");
        }
        if (consumer == null) {
            textPropCollection.removeByName(str);
        } else {
            consumer.accept(textPropCollection.addWithName(str));
        }
        setDirty();
    }

    public static HSLFTextRun setText(List<HSLFTextParagraph> list, String str) {
        Iterator<HSLFTextParagraph> it2 = list.iterator();
        HSLFTextParagraph next = it2.hasNext() ? it2.next() : null;
        while (it2.hasNext()) {
            it2.next();
            it2.remove();
        }
        Iterator<HSLFTextRun> it3 = next.getTextRuns().iterator();
        if (it3.hasNext()) {
            it3.next().setText("");
            while (it3.hasNext()) {
                it3.next();
                it3.remove();
            }
        } else {
            next.addTextRun(new HSLFTextRun(next));
        }
        return appendText(list, str, false);
    }

    public static void storeText(List<HSLFTextParagraph> list) {
        fixLineEndings(list);
        updateTextAtom(list);
        updateStyles(list);
        updateHyperlinks(list);
        refreshRecords(list);
        Iterator<HSLFTextParagraph> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next()._dirty = false;
        }
    }

    public static void supplySheet(List<HSLFTextParagraph> list, HSLFSheet hSLFSheet) {
        if (list == null) {
            return;
        }
        Iterator<HSLFTextParagraph> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().supplySheet(hSLFSheet);
        }
    }

    public static String toExternalString(String str, int i) {
        char c = '\n';
        String replace = str.replace('\r', '\n');
        if (i != -1 && i != TextShape.TextPlaceholder.TITLE.nativeId && i != TextShape.TextPlaceholder.CENTER_TITLE.nativeId) {
            c = ' ';
        }
        return replace.replace((char) 11, c);
    }

    public static String toInternalString(String str) {
        return str.replaceAll("\\r?\\n", "\r");
    }

    private static void updateHyperlinks(List<HSLFTextParagraph> list) {
        RecordContainer parentRecord = list.get(0)._headerAtom.getParentRecord();
        for (Record record : parentRecord.getChildRecords()) {
            if ((record instanceof InteractiveInfo) || (record instanceof TxInteractiveInfoAtom)) {
                parentRecord.removeChild(record);
            }
        }
        Iterator<HSLFTextParagraph> it2 = list.iterator();
        HSLFHyperlink hSLFHyperlink = null;
        while (it2.hasNext()) {
            Iterator<HSLFTextRun> it3 = it2.next().iterator();
            while (it3.hasNext()) {
                HSLFTextRun next = it3.next();
                HSLFHyperlink hyperlink = next.getHyperlink();
                if (hyperlink != null && hyperlink == hSLFHyperlink) {
                    hyperlink.setEndIndex(hyperlink.getEndIndex() + next.getLength());
                } else if (hSLFHyperlink != null) {
                    InteractiveInfo info = hSLFHyperlink.getInfo();
                    TxInteractiveInfoAtom textRunInfo = hSLFHyperlink.getTextRunInfo();
                    parentRecord.appendChildRecord(info);
                    parentRecord.appendChildRecord(textRunInfo);
                }
                hSLFHyperlink = hyperlink;
            }
        }
        if (hSLFHyperlink != null) {
            InteractiveInfo info2 = hSLFHyperlink.getInfo();
            TxInteractiveInfoAtom textRunInfo2 = hSLFHyperlink.getTextRunInfo();
            parentRecord.appendChildRecord(info2);
            parentRecord.appendChildRecord(textRunInfo2);
        }
    }

    private static void updateStyles(List<HSLFTextParagraph> list) {
        String internalString = toInternalString(getRawText(list));
        StyleTextPropAtom findStyleAtomPresent = findStyleAtomPresent(list.get(0)._headerAtom, internalString.length());
        findStyleAtomPresent.clearStyles();
        TextPropCollection textPropCollection = null;
        TextPropCollection textPropCollection2 = null;
        TextPropCollection textPropCollection3 = null;
        TextPropCollection textPropCollection4 = null;
        for (HSLFTextParagraph hSLFTextParagraph : list) {
            TextPropCollection paragraphStyle = hSLFTextParagraph.getParagraphStyle();
            paragraphStyle.updateTextSize(0);
            if (!paragraphStyle.equals(textPropCollection)) {
                textPropCollection = paragraphStyle.copy();
                textPropCollection.updateTextSize(0);
                findStyleAtomPresent.addParagraphTextPropCollection(textPropCollection);
            }
            for (HSLFTextRun hSLFTextRun : hSLFTextParagraph.getTextRuns()) {
                TextPropCollection characterStyle = hSLFTextRun.getCharacterStyle();
                characterStyle.updateTextSize(0);
                if (!characterStyle.equals(textPropCollection2)) {
                    textPropCollection2 = characterStyle.copy();
                    textPropCollection2.updateTextSize(0);
                    findStyleAtomPresent.addCharacterTextPropCollection(textPropCollection2);
                }
                int length = hSLFTextRun.getLength();
                paragraphStyle.updateTextSize(paragraphStyle.getCharactersCovered() + length);
                characterStyle.updateTextSize(length);
                textPropCollection.updateTextSize(textPropCollection.getCharactersCovered() + length);
                textPropCollection2.updateTextSize(textPropCollection2.getCharactersCovered() + length);
                textPropCollection4 = characterStyle;
            }
            textPropCollection3 = paragraphStyle;
        }
        if (textPropCollection == null || textPropCollection2 == null || textPropCollection3 == null || textPropCollection4 == null) {
            throw new HSLFException("Not all TextPropCollection could be determined.");
        }
        textPropCollection3.updateTextSize(textPropCollection3.getCharactersCovered() + 1);
        textPropCollection4.updateTextSize(textPropCollection4.getCharactersCovered() + 1);
        textPropCollection.updateTextSize(textPropCollection.getCharactersCovered() + 1);
        textPropCollection2.updateTextSize(textPropCollection2.getCharactersCovered() + 1);
        for (Record record : list.get(0).getRecords()) {
            if (record instanceof TextSpecInfoAtom) {
                ((TextSpecInfoAtom) record).setParentSize(internalString.length() + 1);
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [org.apache.poi.hslf.record.TextCharsAtom] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [org.apache.poi.hslf.record.TextCharsAtom] */
    /* JADX WARN: Type inference failed for: r5v7 */
    private static void updateTextAtom(List<HSLFTextParagraph> list) {
        TextBytesAtom textBytesAtom;
        TextCharsAtom textCharsAtom;
        TextBytesAtom textBytesAtom2;
        ?? textCharsAtom2;
        String internalString = toInternalString(getRawText(list));
        boolean hasMultibyte = StringUtil.hasMultibyte(internalString);
        TextHeaderAtom textHeaderAtom = list.get(0)._headerAtom;
        TextBytesAtom textBytesAtom3 = list.get(0)._byteAtom;
        ?? r5 = list.get(0)._charAtom;
        StyleTextPropAtom findStyleAtomPresent = findStyleAtomPresent(textHeaderAtom, internalString.length());
        if (hasMultibyte) {
            if (textBytesAtom3 != null || r5 == 0) {
                textCharsAtom2 = new TextCharsAtom();
                textBytesAtom = textBytesAtom3;
            } else {
                textBytesAtom = null;
                textCharsAtom2 = r5;
            }
            textCharsAtom2.setText(internalString);
            textCharsAtom = textCharsAtom2;
            textBytesAtom2 = textCharsAtom2;
        } else {
            if (r5 != 0 || textBytesAtom3 == null) {
                textBytesAtom3 = new TextBytesAtom();
                textBytesAtom = r5;
            } else {
                textBytesAtom = null;
            }
            byte[] bArr = new byte[internalString.length()];
            StringUtil.putCompressedUnicode(internalString, bArr, 0);
            textBytesAtom3.setText(bArr);
            textCharsAtom = r5;
            textBytesAtom2 = textBytesAtom3;
        }
        RecordContainer parentRecord = textHeaderAtom.getParentRecord();
        Record[] childRecords = parentRecord.getChildRecords();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < childRecords.length; i3++) {
            Record record = childRecords[i3];
            if (record != textHeaderAtom) {
                if (record == textBytesAtom || record == textBytesAtom2) {
                    i = i3;
                } else if (record == findStyleAtomPresent) {
                    i2 = i3;
                }
            }
        }
        if (i == -1) {
            parentRecord.addChildAfter(textBytesAtom2, textHeaderAtom);
        } else {
            childRecords[i] = textBytesAtom2;
        }
        if (i2 == -1) {
            parentRecord.addChildAfter(findStyleAtomPresent, textBytesAtom2);
        }
        for (HSLFTextParagraph hSLFTextParagraph : list) {
            if (textBytesAtom2 == textBytesAtom3) {
                hSLFTextParagraph._byteAtom = textBytesAtom3;
                hSLFTextParagraph._charAtom = null;
            } else {
                hSLFTextParagraph._byteAtom = null;
                hSLFTextParagraph._charAtom = textCharsAtom;
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void addTabStops(double d, TabStop.TabStopType tabStopType) {
        final HSLFTabStop hSLFTabStop = new HSLFTabStop(0, tabStopType);
        hSLFTabStop.setPositionInPoints(d);
        if (getSheet() instanceof HSLFSlideMaster) {
            setPropValInner(this._paragraphStyle, HSLFTabStopPropCollection.NAME, new Consumer() { // from class: com.sunia.HTREnginev2.b8h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((HSLFTabStopPropCollection) obj).addTabStop(HSLFTabStop.this);
                }
            });
            return;
        }
        RecordContainer parentRecord = this._headerAtom.getParentRecord();
        TextRulerAtom textRulerAtom = (TextRulerAtom) parentRecord.findFirstOfType(RecordTypes.TextRulerAtom.typeID);
        if (textRulerAtom == null) {
            textRulerAtom = TextRulerAtom.getParagraphInstance();
            parentRecord.appendChildRecord(textRulerAtom);
        }
        textRulerAtom.getTabStops().add(hSLFTabStop);
    }

    public void addTextRun(HSLFTextRun hSLFTextRun) {
        this._runs.add(hSLFTextRun);
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void clearTabStops() {
        if (getSheet() instanceof HSLFSlideMaster) {
            setPropValInner(this._paragraphStyle, HSLFTabStopPropCollection.NAME, null);
            return;
        }
        TextRulerAtom textRulerAtom = (TextRulerAtom) this._headerAtom.getParentRecord().findFirstOfType(RecordTypes.TextRulerAtom.typeID);
        if (textRulerAtom == null) {
            return;
        }
        textRulerAtom.getTabStops().clear();
    }

    public TextRulerAtom createTextRuler() {
        TextRulerAtom textRuler = getTextRuler();
        this._ruler = textRuler;
        if (textRuler == null) {
            this._ruler = TextRulerAtom.getParagraphInstance();
            Record record = this._byteAtom;
            if (record == null) {
                record = this._charAtom;
            }
            if (record == null) {
                record = this._headerAtom;
            }
            this._headerAtom.getParentRecord().addChildAfter(this._ruler, record);
        }
        return this._ruler;
    }

    public AutoNumberingScheme getAutoNumberingScheme() {
        StyleTextProp9Atom styleTextProp9Atom = this.styleTextProp9Atom;
        if (styleTextProp9Atom == null) {
            return null;
        }
        TextPFException9[] autoNumberTypes = styleTextProp9Atom.getAutoNumberTypes();
        int indentLevel = getIndentLevel();
        if (autoNumberTypes == null || indentLevel == -1 || indentLevel >= autoNumberTypes.length) {
            return null;
        }
        return autoNumberTypes[indentLevel].getAutoNumberScheme();
    }

    public Integer getAutoNumberingStartAt() {
        StyleTextProp9Atom styleTextProp9Atom = this.styleTextProp9Atom;
        if (styleTextProp9Atom == null) {
            return null;
        }
        TextPFException9[] autoNumberTypes = styleTextProp9Atom.getAutoNumberTypes();
        int indentLevel = getIndentLevel();
        if (autoNumberTypes == null || indentLevel >= autoNumberTypes.length) {
            return null;
        }
        return Integer.valueOf(autoNumberTypes[indentLevel].getAutoNumberStartNumber().intValue());
    }

    public Character getBulletChar() {
        TextProp propVal = getPropVal(this._paragraphStyle, "bullet.char");
        if (propVal == null) {
            return null;
        }
        return Character.valueOf((char) propVal.getValue());
    }

    public Color getBulletColor() {
        PaintStyle.SolidPaint fontColor;
        TextProp propVal = getPropVal(this._paragraphStyle, "bullet.color");
        boolean flag = getFlag(2);
        if (propVal != null && flag) {
            return getColorFromColorIndexStruct(propVal.getValue(), this._sheet);
        }
        if (this._runs.isEmpty() || (fontColor = this._runs.get(0).getFontColor()) == null) {
            return null;
        }
        return DrawPaint.applyColorTransform(fontColor.getSolidColor());
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public String getBulletFont() {
        TextProp propVal = getPropVal(this._paragraphStyle, "bullet.font");
        return (propVal == null || !getFlag(1)) ? getDefaultFontFamily() : getSheet().getSlideShow().getFont(propVal.getValue()).getTypeface();
    }

    public Double getBulletSize() {
        return getPctOrPoints("bullet.size");
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public TextParagraph.BulletStyle getBulletStyle() {
        if (isBullet() || getAutoNumberingScheme() != null) {
            return new TextParagraph.BulletStyle() { // from class: org.apache.poi.hslf.usermodel.HSLFTextParagraph.1
                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public AutoNumberingScheme getAutoNumberingScheme() {
                    return HSLFTextParagraph.this.getAutoNumberingScheme();
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public Integer getAutoNumberingStartAt() {
                    return HSLFTextParagraph.this.getAutoNumberingStartAt();
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public String getBulletCharacter() {
                    Character bulletChar = HSLFTextParagraph.this.getBulletChar();
                    if (bulletChar == null || bulletChar.charValue() == 0) {
                        return "";
                    }
                    return "" + bulletChar;
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public String getBulletFont() {
                    return HSLFTextParagraph.this.getBulletFont();
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public PaintStyle getBulletFontColor() {
                    return DrawPaint.createSolidPaint(HSLFTextParagraph.this.getBulletColor());
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public Double getBulletFontSize() {
                    return HSLFTextParagraph.this.getBulletSize();
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public void setBulletFontColor(Color color) {
                    setBulletFontColor(DrawPaint.createSolidPaint(color));
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public void setBulletFontColor(PaintStyle paintStyle) {
                    if (paintStyle instanceof PaintStyle.SolidPaint) {
                        HSLFTextParagraph.this.setBulletColor(DrawPaint.applyColorTransform(((PaintStyle.SolidPaint) paintStyle).getSolidColor()));
                        return;
                    }
                    throw new IllegalArgumentException("HSLF only supports SolidPaint");
                }
            };
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public String getDefaultFontFamily() {
        HSLFTextRun hSLFTextRun;
        FontInfo fontInfo = null;
        if (!this._runs.isEmpty() && (fontInfo = (hSLFTextRun = this._runs.get(0)).getFontInfo((FontGroup) null)) == null) {
            fontInfo = hSLFTextRun.getFontInfo(FontGroup.LATIN);
        }
        if (fontInfo == null) {
            fontInfo = HSLFFontInfoPredefined.ARIAL;
        }
        return fontInfo.getTypeface();
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getDefaultFontSize() {
        Double fontSize = !this._runs.isEmpty() ? this._runs.get(0).getFontSize() : null;
        return Double.valueOf(fontSize != null ? fontSize.doubleValue() : 12.0d);
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getDefaultTabSize() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public TextParagraph.FontAlign getFontAlign() {
        TextProp propVal = getPropVal(this._paragraphStyle, FontAlignmentProp.NAME);
        if (propVal == null) {
            return null;
        }
        int value = propVal.getValue();
        return value != 0 ? value != 1 ? value != 2 ? value != 3 ? TextParagraph.FontAlign.AUTO : TextParagraph.FontAlign.BOTTOM : TextParagraph.FontAlign.CENTER : TextParagraph.FontAlign.TOP : TextParagraph.FontAlign.BASELINE;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public boolean getHangingPunct() {
        TextProp propVal = getPropVal(this._paragraphStyle, WrapFlagsTextProp.NAME);
        return propVal == null || (propVal.getValue() & 4) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    @Override // org.apache.poi.sl.usermodel.TextParagraph
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Double getIndent() {
        /*
            r4 = this;
            org.apache.poi.hslf.record.TextRulerAtom r0 = r4._ruler
            r1 = 0
            if (r0 == 0) goto L17
            java.lang.Integer[] r0 = r0.getBulletOffsets()
            int r2 = r0.length
            int r3 = r4.getIndentLevel()
            if (r2 <= r3) goto L17
            int r2 = r4.getIndentLevel()
            r0 = r0[r2]
            goto L18
        L17:
            r0 = r1
        L18:
            if (r0 != 0) goto L2f
            org.apache.poi.hslf.model.textproperties.TextPropCollection r0 = r4._paragraphStyle
            java.lang.String r2 = "bullet.offset"
            org.apache.poi.hslf.model.textproperties.TextProp r4 = r4.getPropVal(r0, r2)
            if (r4 != 0) goto L26
            r0 = r1
            goto L2f
        L26:
            int r4 = r4.getValue()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r0 = r4
        L2f:
            if (r0 != 0) goto L32
            goto L3e
        L32:
            int r4 = r0.intValue()
            double r0 = org.apache.poi.util.Units.masterToPoints(r4)
            java.lang.Double r1 = java.lang.Double.valueOf(r0)
        L3e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hslf.usermodel.HSLFTextParagraph.getIndent():java.lang.Double");
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public int getIndentLevel() {
        TextPropCollection textPropCollection = this._paragraphStyle;
        if (textPropCollection == null) {
            return 0;
        }
        return textPropCollection.getIndentLevel();
    }

    public int getIndex() {
        TextHeaderAtom textHeaderAtom = this._headerAtom;
        if (textHeaderAtom != null) {
            return textHeaderAtom.getIndex();
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    @Override // org.apache.poi.sl.usermodel.TextParagraph
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Double getLeftMargin() {
        /*
            r4 = this;
            org.apache.poi.hslf.record.TextRulerAtom r0 = r4._ruler
            r1 = 0
            if (r0 == 0) goto L17
            java.lang.Integer[] r0 = r0.getTextOffsets()
            int r2 = r0.length
            int r3 = r4.getIndentLevel()
            if (r2 <= r3) goto L17
            int r2 = r4.getIndentLevel()
            r0 = r0[r2]
            goto L18
        L17:
            r0 = r1
        L18:
            if (r0 != 0) goto L2f
            org.apache.poi.hslf.model.textproperties.TextPropCollection r0 = r4._paragraphStyle
            java.lang.String r2 = "text.offset"
            org.apache.poi.hslf.model.textproperties.TextProp r4 = r4.getPropVal(r0, r2)
            if (r4 != 0) goto L26
            r0 = r1
            goto L2f
        L26:
            int r4 = r4.getValue()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r0 = r4
        L2f:
            if (r0 != 0) goto L32
            goto L3e
        L32:
            int r4 = r0.intValue()
            double r0 = org.apache.poi.util.Units.masterToPoints(r4)
            java.lang.Double r1 = java.lang.Double.valueOf(r0)
        L3e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hslf.usermodel.HSLFTextParagraph.getLeftMargin():java.lang.Double");
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getLineSpacing() {
        return getPctOrPoints("linespacing");
    }

    public TextPropCollection getParagraphStyle() {
        return this._paragraphStyle;
    }

    public <T extends TextProp> T getPropVal(TextPropCollection textPropCollection, String str) {
        for (String str2 : str.split(",")) {
            T t = (T) textPropCollection.findByName(str2);
            if (isValidProp(t)) {
                return t;
            }
        }
        return (T) getMasterPropVal(textPropCollection, str);
    }

    public Record[] getRecords() {
        return getRecords(this._headerAtom.getParentRecord().getChildRecords(), new int[]{0}, this._headerAtom);
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getRightMargin() {
        return null;
    }

    public int getRunType() {
        TextHeaderAtom textHeaderAtom = this._headerAtom;
        if (textHeaderAtom != null) {
            return textHeaderAtom.getTextType();
        }
        return -1;
    }

    public int getShapeId() {
        return this.shapeId;
    }

    public HSLFSheet getSheet() {
        return this._sheet;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getSpaceAfter() {
        return getPctOrPoints("spaceafter");
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getSpaceBefore() {
        return getPctOrPoints("spacebefore");
    }

    public int getStartIdxOfTextRun(HSLFTextRun hSLFTextRun) {
        Iterator<HSLFTextParagraph> it2 = this.parentList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Iterator<HSLFTextRun> it3 = it2.next().iterator();
            while (it3.hasNext()) {
                HSLFTextRun next = it3.next();
                if (next == hSLFTextRun) {
                    return i;
                }
                i += next.getLength();
            }
        }
        return -1;
    }

    public StyleTextProp9Atom getStyleTextProp9Atom() {
        return this.styleTextProp9Atom;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public List<? extends TabStop> getTabStops() {
        List<HSLFTabStop> tabStops;
        if (getSheet() instanceof HSLFSlideMaster) {
            HSLFTabStopPropCollection hSLFTabStopPropCollection = (HSLFTabStopPropCollection) getMasterPropVal(this._paragraphStyle, HSLFTabStopPropCollection.NAME);
            if (hSLFTabStopPropCollection == null) {
                return null;
            }
            tabStops = hSLFTabStopPropCollection.getTabStops();
        } else {
            TextRulerAtom textRulerAtom = (TextRulerAtom) this._headerAtom.getParentRecord().findFirstOfType(RecordTypes.TextRulerAtom.typeID);
            if (textRulerAtom == null) {
                return null;
            }
            tabStops = textRulerAtom.getTabStops();
        }
        return (List) tabStops.stream().map(new Function() { // from class: com.sunia.HTREnginev2.c8h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                HSLFTextParagraph.HSLFTabStopDecorator lambda$getTabStops$0;
                lambda$getTabStops$0 = HSLFTextParagraph.this.lambda$getTabStops$0((HSLFTabStop) obj);
                return lambda$getTabStops$0;
            }
        }).collect(Collectors.toList());
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public TextParagraph.TextAlign getTextAlign() {
        TextProp propVal = getPropVal(this._paragraphStyle, CellUtil.ALIGNMENT);
        if (propVal == null) {
            return null;
        }
        switch (propVal.getValue()) {
            case 1:
                return TextParagraph.TextAlign.CENTER;
            case 2:
                return TextParagraph.TextAlign.RIGHT;
            case 3:
                return TextParagraph.TextAlign.JUSTIFY;
            case 4:
                return TextParagraph.TextAlign.DIST;
            case 5:
                return TextParagraph.TextAlign.THAI_DIST;
            case 6:
                return TextParagraph.TextAlign.JUSTIFY_LOW;
            default:
                return TextParagraph.TextAlign.LEFT;
        }
    }

    public TextRulerAtom getTextRuler() {
        return this._ruler;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public List<HSLFTextRun> getTextRuns() {
        return this._runs;
    }

    public EscherTextboxWrapper getTextboxWrapper() {
        return (EscherTextboxWrapper) this._headerAtom.getParentRecord();
    }

    public boolean isBullet() {
        return getFlag(0);
    }

    public boolean isDirty() {
        return this._dirty;
    }

    public boolean isDrawingBased() {
        return getIndex() == -1;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public boolean isHeaderOrFooter() {
        Placeholder placeholder;
        TextShape<HSLFShape, HSLFTextParagraph> parentShape = getParentShape();
        if (parentShape == null || (placeholder = parentShape.getPlaceholder()) == null) {
            return false;
        }
        int i = C194752.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholder.ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    @Override // java.lang.Iterable
    public Iterator<HSLFTextRun> iterator() {
        return this._runs.iterator();
    }

    public void setBullet(boolean z) {
        setFlag(0, z);
    }

    public void setBulletChar(Character ch) {
        setParagraphTextPropVal("bullet.char", ch == null ? null : Integer.valueOf(ch.charValue()));
    }

    public void setBulletColor(Color color) {
        setParagraphTextPropVal("bullet.color", color == null ? null : Integer.valueOf(new Color(color.getBlue(), color.getGreen(), color.getRed(), 254).getRGB()));
        setFlag(2, color != null);
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public void setBulletFont(String str) {
        if (str == null) {
            setPropVal(this._paragraphStyle, "bullet.font", null);
            setFlag(1, false);
        } else {
            setParagraphTextPropVal("bullet.font", getSheet().getSlideShow().addFont(new HSLFFontInfo(str)).getIndex());
            setFlag(1, true);
        }
    }

    public void setBulletSize(Double d) {
        setPctOrPoints("bullet.size", d);
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setBulletStyle(Object... objArr) {
        if (objArr.length == 0) {
            setBullet(false);
            return;
        }
        setBullet(true);
        for (Object obj : objArr) {
            if (obj instanceof Number) {
                setBulletSize(Double.valueOf(((Number) obj).doubleValue()));
            } else if (obj instanceof Color) {
                setBulletColor((Color) obj);
            } else if (obj instanceof Character) {
                setBulletChar((Character) obj);
            } else if (obj instanceof String) {
                setBulletFont((String) obj);
            } else if (obj instanceof AutoNumberingScheme) {
                throw new HSLFException("setting bullet auto-numberin scheme for HSLF not supported ... yet");
            }
        }
    }

    public void setDirty() {
        this._dirty = true;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setIndent(Double d) {
        setParagraphTextPropVal("bullet.offset", d == null ? null : Integer.valueOf(Units.pointsToMaster(d.doubleValue())));
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setIndentLevel(int i) {
        TextPropCollection textPropCollection = this._paragraphStyle;
        if (textPropCollection != null) {
            textPropCollection.setIndentLevel((short) i);
        }
    }

    public void setIndex(int i) {
        TextHeaderAtom textHeaderAtom = this._headerAtom;
        if (textHeaderAtom != null) {
            textHeaderAtom.setIndex(i);
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setLeftMargin(Double d) {
        setParagraphTextPropVal("text.offset", d == null ? null : Integer.valueOf(Units.pointsToMaster(d.doubleValue())));
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setLineSpacing(Double d) {
        setPctOrPoints("linespacing", d);
    }

    public void setParagraphStyle(TextPropCollection textPropCollection) {
        this._paragraphStyle = textPropCollection;
    }

    public void setParagraphTextPropVal(String str, Integer num) {
        setPropVal(this._paragraphStyle, str, num);
        setDirty();
    }

    public void setParentShape(HSLFTextShape hSLFTextShape) {
        this._parentShape = hSLFTextShape;
    }

    public void setPropVal(TextPropCollection textPropCollection, String str, final Integer num) {
        setPropValInner(textPropCollection, str, num == null ? null : new Consumer() { // from class: com.sunia.HTREnginev2.d8h
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HSLFTextParagraph.lambda$setPropVal$2(num, (TextProp) obj);
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setRightMargin(Double d) {
    }

    public void setRunType(int i) {
        TextHeaderAtom textHeaderAtom = this._headerAtom;
        if (textHeaderAtom != null) {
            textHeaderAtom.setTextType(i);
        }
    }

    public void setShapeId(int i) {
        this.shapeId = i;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setSpaceAfter(Double d) {
        setPctOrPoints("spaceafter", d);
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setSpaceBefore(Double d) {
        setPctOrPoints("spacebefore", d);
    }

    public void setStyleTextProp9Atom(StyleTextProp9Atom styleTextProp9Atom) {
        this.styleTextProp9Atom = styleTextProp9Atom;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setTextAlign(TextParagraph.TextAlign textAlign) {
        Integer num;
        if (textAlign != null) {
            switch (C194752.$SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign[textAlign.ordinal()]) {
                case 2:
                    num = 1;
                    break;
                case 3:
                    num = 2;
                    break;
                case 4:
                    num = 4;
                    break;
                case 5:
                    num = 3;
                    break;
                case 6:
                    num = 6;
                    break;
                case 7:
                    num = 5;
                    break;
                default:
                    num = 0;
                    break;
            }
        } else {
            num = null;
        }
        setParagraphTextPropVal(CellUtil.ALIGNMENT, num);
    }

    @Override // java.lang.Iterable
    public Spliterator<HSLFTextRun> spliterator() {
        return this._runs.spliterator();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<HSLFTextRun> it2 = getTextRuns().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().getRawText());
        }
        return toExternalString(sb.toString(), getRunType());
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public TextShape<HSLFShape, HSLFTextParagraph> getParentShape() {
        return this._parentShape;
    }

    private static Record[] getRecords(Record[] recordArr, int[] iArr, TextHeaderAtom textHeaderAtom) {
        int i;
        int i2;
        if (recordArr != null) {
            while (true) {
                i = iArr[0];
                if (i >= recordArr.length) {
                    break;
                }
                Record record = recordArr[i];
                if ((record instanceof TextHeaderAtom) && (textHeaderAtom == null || record == textHeaderAtom)) {
                    break;
                }
                iArr[0] = i + 1;
            }
            if (i >= recordArr.length) {
                LOG.atInfo().log("header atom wasn't found - container might contain only an OutlineTextRefAtom");
                return new Record[0];
            }
            int i3 = 1;
            while (true) {
                i2 = iArr[0];
                if (i2 + i3 >= recordArr.length) {
                    break;
                }
                Record record2 = recordArr[i2 + i3];
                if ((record2 instanceof TextHeaderAtom) || (record2 instanceof SlidePersistAtom)) {
                    break;
                }
                i3++;
            }
            Record[] recordArr2 = (Record[]) Arrays.copyOfRange(recordArr, i2, i2 + i3, Record[].class);
            iArr[0] = iArr[0] + i3;
            return recordArr2;
        }
        throw new NullPointerException("records need to be set.");
    }

    private void supplySheet(HSLFSheet hSLFSheet) {
        this._sheet = hSLFSheet;
        Iterator<HSLFTextRun> it2 = this._runs.iterator();
        while (it2.hasNext()) {
            it2.next().updateSheet();
        }
    }

    public static List<HSLFTextParagraph> findTextParagraphs(EscherTextboxWrapper escherTextboxWrapper, HSLFSheet hSLFSheet) {
        List<List<HSLFTextParagraph>> findTextParagraphs;
        int size;
        RecordContainer.handleParentAwareRecords(escherTextboxWrapper);
        int shapeId = escherTextboxWrapper.getShapeId();
        OutlineTextRefAtom outlineTextRefAtom = (OutlineTextRefAtom) escherTextboxWrapper.findFirstOfType(RecordTypes.OutlineTextRefAtom.typeID);
        List<HSLFTextParagraph> list = null;
        if (outlineTextRefAtom == null) {
            if (hSLFSheet != null) {
                Iterator<List<HSLFTextParagraph>> it2 = hSLFSheet.getTextParagraphs().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    List<HSLFTextParagraph> next = it2.next();
                    if (!next.isEmpty() && next.get(0)._headerAtom.getParentRecord() == escherTextboxWrapper) {
                        list = next;
                        break;
                    }
                }
            }
            if (list == null && (size = (findTextParagraphs = findTextParagraphs(escherTextboxWrapper.getChildRecords())).size()) != 0) {
                if (size == 1) {
                    list = findTextParagraphs.get(0);
                } else {
                    throw new HSLFException("TextBox contains more than one list of paragraphs.");
                }
            }
        } else if (hSLFSheet != null) {
            List<List<HSLFTextParagraph>> textParagraphs = hSLFSheet.getTextParagraphs();
            int textIndex = outlineTextRefAtom.getTextIndex();
            for (List<HSLFTextParagraph> list2 : textParagraphs) {
                if (!list2.isEmpty()) {
                    int index = list2.get(0).getIndex();
                    if (index > textIndex) {
                        break;
                    }
                    if (index == textIndex) {
                        if (list == null) {
                            list = list2;
                        } else {
                            ArrayList arrayList = new ArrayList(list);
                            arrayList.addAll(list2);
                            list = arrayList;
                        }
                    }
                }
            }
            if (list == null || list.isEmpty()) {
                LOG.atWarn().log("text run not found for OutlineTextRefAtom.TextIndex={}", Unbox.box(textIndex));
            }
        } else {
            throw new HSLFException("Outline atom reference can't be solved without a sheet record");
        }
        if (list != null) {
            StyleTextProp9Atom styleTextProp9Atom = escherTextboxWrapper.getStyleTextProp9Atom();
            for (HSLFTextParagraph hSLFTextParagraph : list) {
                hSLFTextParagraph.setShapeId(shapeId);
                hSLFTextParagraph.setStyleTextProp9Atom(styleTextProp9Atom);
            }
        }
        return list;
    }

    public static List<List<HSLFTextParagraph>> findTextParagraphs(Record[] recordArr) {
        Record[] recordArr2 = recordArr;
        ArrayList arrayList = new ArrayList();
        int[] iArr = {0};
        int i = 0;
        for (int i2 = 0; iArr[i2] < recordArr2.length; i2 = 0) {
            TextHeaderAtom textHeaderAtom = null;
            Record[] records = getRecords(recordArr2, iArr, null);
            int length = records.length;
            int i3 = i2;
            TextBytesAtom textBytesAtom = null;
            TextCharsAtom textCharsAtom = null;
            TextRulerAtom textRulerAtom = null;
            MasterTextPropAtom masterTextPropAtom = null;
            while (i3 < length) {
                Record record = records[i3];
                long recordType = record.getRecordType();
                int[] iArr2 = iArr;
                if (RecordTypes.TextHeaderAtom.typeID == recordType) {
                    textHeaderAtom = (TextHeaderAtom) record;
                } else if (RecordTypes.TextBytesAtom.typeID == recordType) {
                    textBytesAtom = (TextBytesAtom) record;
                } else if (RecordTypes.TextCharsAtom.typeID == recordType) {
                    textCharsAtom = (TextCharsAtom) record;
                } else if (RecordTypes.TextRulerAtom.typeID == recordType) {
                    textRulerAtom = (TextRulerAtom) record;
                } else if (RecordTypes.MasterTextPropAtom.typeID == recordType) {
                    masterTextPropAtom = (MasterTextPropAtom) record;
                }
                i3++;
                iArr = iArr2;
            }
            int[] iArr3 = iArr;
            if (textHeaderAtom == null) {
                break;
            }
            if (textHeaderAtom.getParentRecord() instanceof SlideListWithText) {
                textHeaderAtom.setIndex(i);
            }
            if (textBytesAtom == null && textCharsAtom == null) {
                textBytesAtom = new TextBytesAtom();
                LOG.atInfo().log("bytes nor chars atom doesn't exist. Creating dummy record for later saving.");
            }
            String text = textCharsAtom != null ? textCharsAtom.getText() : textBytesAtom.getText();
            StyleTextPropAtom findStyleAtomPresent = findStyleAtomPresent(textHeaderAtom, text.length());
            ArrayList arrayList2 = new ArrayList();
            arrayList.add(arrayList2);
            for (String str : text.split("(?<=\r)")) {
                HSLFTextParagraph hSLFTextParagraph = new HSLFTextParagraph(textHeaderAtom, textBytesAtom, textCharsAtom, arrayList2);
                arrayList2.add(hSLFTextParagraph);
                hSLFTextParagraph._ruler = textRulerAtom;
                hSLFTextParagraph.getParagraphStyle().updateTextSize(str.length());
                HSLFTextRun hSLFTextRun = new HSLFTextRun(hSLFTextParagraph);
                hSLFTextParagraph.addTextRun(hSLFTextRun);
                hSLFTextRun.setText(str);
            }
            applyCharacterStyles(arrayList2, findStyleAtomPresent.getCharacterStyles());
            applyParagraphStyles(arrayList2, findStyleAtomPresent.getParagraphStyles());
            if (masterTextPropAtom != null) {
                applyParagraphIndents(arrayList2, masterTextPropAtom.getIndents());
            }
            i++;
            recordArr2 = recordArr;
            iArr = iArr3;
        }
        if (arrayList.isEmpty()) {
            LOG.atDebug().log("No text records found.");
        }
        return arrayList;
    }
}
