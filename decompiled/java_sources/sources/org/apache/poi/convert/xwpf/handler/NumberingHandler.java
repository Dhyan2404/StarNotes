package org.apache.poi.convert.xwpf.handler;

import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.function.Function;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.convert.htmlgen.ConverterHandler;
import org.apache.poi.convert.xwpf.property.RunPropertyFetcher;
import org.apache.poi.convert.xwpf.property.RunPropertyListFetcher;
import org.apache.poi.style.ParagraphStyles;
import org.apache.poi.style.TextRunStyles;
import org.apache.poi.style.TextStyles;
import org.apache.poi.style.UnitValue;
import org.apache.poi.util.ChineseNumber;
import org.apache.poi.util.CollectionUtils;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.Roman;
import org.apache.poi.xwpf.usermodel.XWPFAbstractNum;
import org.apache.poi.xwpf.usermodel.XWPFNum;
import org.apache.poi.xwpf.usermodel.XWPFNumbering;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFStyle;
import org.apache.poi.xwpf.usermodel.XWPFStyles;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.TextNode;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAbstractNum;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLevelSuffix;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLvl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumLvl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrGeneral;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLevelSuffix;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STNumberFormat;

/* loaded from: classes12.dex */
class NumberingHandler implements ConverterHandler {
    private TreeMap<Integer, LevelEntry> levels;
    private final XWPFNumbering numbering;
    private final Map<Integer, Map<Integer, CTLvl>> allAbstractNumMap = new TreeMap();
    private final Map<Integer, Integer> numIdMap = new HashMap();
    private final Map<Integer, OverrideLevel> overrideMap = new TreeMap();
    private final Map<Integer, TreeMap<Integer, LevelEntry>> currentNumMap = new LinkedHashMap();
    private int currentAbstractNumId = -1;
    private int currentNumId = -1;

    /* loaded from: classes12.dex */
    public static class LevelEntry {
        private final int abstractNumId;
        private final CTLvl ctLvl;
        private final int ilvl;
        private int index;
        private final int numId;
        private int start;

        public LevelEntry(CTLvl cTLvl, int i, int i2, int i3, int i4) {
            this.ctLvl = cTLvl;
            this.numId = i;
            this.abstractNumId = i2;
            this.ilvl = i3;
            this.index = i4;
            CTDecimalNumber start = cTLvl.getStart();
            if (start == null || start.getVal() == null) {
                this.start = 1;
            } else {
                this.start = start.getVal().intValue();
            }
        }

        public static /* synthetic */ int access$208(LevelEntry levelEntry) {
            int i = levelEntry.index;
            levelEntry.index = i + 1;
            return i;
        }

        public CTLvl getCtLvl() {
            return this.ctLvl;
        }

        public String toString() {
            return "LevelEntry{numId=" + this.numId + ", abstractNumId=" + this.abstractNumId + ", ilvl=" + this.ilvl + ", start=" + this.start + ", index=" + this.index + ", ctLvl=" + this.ctLvl + '}';
        }
    }

    /* loaded from: classes12.dex */
    public static class OverrideLevel {
        private final int abstractNumId;
        private final Map<Integer, Integer> map = new TreeMap();
        private final int numId;

        public OverrideLevel(int i, int i2) {
            this.numId = i;
            this.abstractNumId = i2;
        }

        public void addLvlStartMap(int i, int i2) {
            this.map.put(Integer.valueOf(i), Integer.valueOf(i2));
        }

        public String toString() {
            return "OverrideLevel{numId=" + this.numId + ", abstractNumId=" + this.abstractNumId + ", map=" + this.map + '}';
        }
    }

    public NumberingHandler(XWPFNumbering xWPFNumbering) {
        this.numbering = xWPFNumbering;
        initNumbering();
    }

    private String addNumFormatSuffix(CTLvl cTLvl, String str) {
        STNumberFormat.Enum val;
        CTLevelSuffix suff = cTLvl.getSuff();
        if ((suff != null && suff.getVal() == STLevelSuffix.NOTHING) || (val = cTLvl.getNumFmt().getVal()) == STNumberFormat.JAPANESE_LEGAL || val == STNumberFormat.JAPANESE_COUNTING || val == STNumberFormat.JAPANESE_DIGITAL_TEN_THOUSAND || val == STNumberFormat.CHINESE_COUNTING || val == STNumberFormat.CHINESE_COUNTING_THOUSAND || val == STNumberFormat.CHINESE_LEGAL_SIMPLIFIED) {
            return str;
        }
        return str + " ";
    }

    private void addSuffix(CTLevelSuffix cTLevelSuffix, Element element) {
        if (cTLevelSuffix == null) {
            return;
        }
        STLevelSuffix.Enum val = cTLevelSuffix.getVal();
        if (val == STLevelSuffix.TAB) {
            element.appendChild(new TextNode(Constants.UNICODECHAR_TAB_SPACE));
        } else if (val == STLevelSuffix.SPACE) {
            element.appendChild(new TextNode(Constants.UNICODECHAR_NO_BREAK_SPACE));
        }
    }

    private CTNumPr getCTNumPr(XWPFStyles xWPFStyles, XWPFParagraph xWPFParagraph) {
        XWPFStyle style;
        CTPPrGeneral pPr;
        CTPPr pPr2 = xWPFParagraph.getCTP().getPPr();
        if (pPr2 == null) {
            return null;
        }
        CTNumPr numPr = pPr2.getNumPr();
        if (numPr != null) {
            return numPr;
        }
        String styleID = xWPFParagraph.getStyleID();
        if (styleID == null || (style = xWPFStyles.getStyle(styleID)) == null) {
            return null;
        }
        Iterator<XWPFStyle> it2 = xWPFStyles.getUsedStyleList(style).iterator();
        while (it2.hasNext() && ((pPr = it2.next().getCTStyle().getPPr()) == null || (numPr = pPr.getNumPr()) == null)) {
        }
        return numPr;
    }

    private String getLvString(LevelEntry levelEntry, int i) {
        int i2 = levelEntry.start;
        STNumberFormat.Enum val = levelEntry.ctLvl.getNumFmt().getVal();
        if (val == STNumberFormat.DECIMAL) {
            return String.valueOf(i2 + i);
        }
        if (val == STNumberFormat.LOWER_LETTER) {
            return String.valueOf((char) (((i2 + 97) + i) - 1));
        }
        if (val == STNumberFormat.UPPER_LETTER) {
            return String.valueOf((char) (((i2 + 65) + i) - 1));
        }
        if (val == STNumberFormat.LOWER_ROMAN) {
            return Roman.toRoman(i2 + i).toLowerCase();
        }
        if (val == STNumberFormat.UPPER_ROMAN) {
            return Roman.toRoman(i2 + i);
        }
        if (val == STNumberFormat.JAPANESE_LEGAL || val == STNumberFormat.JAPANESE_COUNTING || val == STNumberFormat.JAPANESE_DIGITAL_TEN_THOUSAND) {
            return ChineseNumber.toChinese(i2 + i);
        }
        if (val == STNumberFormat.CHINESE_COUNTING || val == STNumberFormat.CHINESE_COUNTING_THOUSAND) {
            return ChineseNumber.toChinese(i2 + i);
        }
        if (val == STNumberFormat.CHINESE_LEGAL_SIMPLIFIED) {
            return ChineseNumber.toChineseLegal(i2 + i);
        }
        if (val == STNumberFormat.IDEOGRAPH_TRADITIONAL) {
            return ChineseNumber.toTianGan(i2 + i);
        }
        if (val == STNumberFormat.IDEOGRAPH_ZODIAC) {
            return ChineseNumber.toDiZhi(i2 + i);
        }
        STNumberFormat.Enum r0 = STNumberFormat.DECIMAL_ENCLOSED_CIRCLE_CHINESE;
        return (val == r0 || val == STNumberFormat.DECIMAL_ENCLOSED_CIRCLE) ? String.valueOf((char) (((i2 + 9312) + i) - 1)) : val == STNumberFormat.IDEOGRAPH_ENCLOSED_CIRCLE ? String.format("(%s)", ChineseNumber.toChinese(i2 + i)) : val == r0 ? String.format("（%d）", Integer.valueOf(i2 + i)) : String.valueOf(i2 + i);
    }

    private Object[] getLvTextArgs(LevelEntry levelEntry, int i) {
        String[] strArr = new String[i];
        int i2 = i - 1;
        int i3 = levelEntry.ilvl;
        while (i3 >= 0 && i2 >= 0) {
            LevelEntry levelEntry2 = this.levels.get(Integer.valueOf(i3));
            if (levelEntry2 == null) {
                break;
            }
            strArr[i2] = getLvString(levelEntry2, levelEntry2.index);
            i3--;
            i2--;
        }
        if (i2 >= 0) {
            String lvString = getLvString(levelEntry, 0);
            for (int i4 = 0; i4 <= i2; i4++) {
                strArr[i4] = lvString;
            }
        }
        return strArr;
    }

    private int getLvlArgLen(String str) {
        int i = 0;
        for (char c : str.toCharArray()) {
            if (c == '%') {
                i++;
            }
        }
        return i;
    }

    private int getLvlStart(LevelEntry levelEntry) {
        Integer num;
        OverrideLevel overrideLevel = this.overrideMap.get(Integer.valueOf(levelEntry.numId));
        return (overrideLevel == null || (num = (Integer) overrideLevel.map.get(Integer.valueOf(levelEntry.ilvl))) == null) ? levelEntry.start : num.intValue();
    }

    private String getNumLvText(LevelEntry levelEntry) {
        String addNumFormatSuffix = addNumFormatSuffix(levelEntry.ctLvl, levelEntry.ctLvl.getLvlText().getVal().replaceAll("(%)([\\d]{1})", "$1s").replaceAll("([\\d]+)(%s)", "$1"));
        return String.format(addNumFormatSuffix, getLvTextArgs(levelEntry, getLvlArgLen(addNumFormatSuffix)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initNumbering() {
        CTDecimalNumber abstractNumId;
        BigInteger val;
        CTDecimalNumber startOverride;
        Map<Integer, CTLvl> map;
        if (this.numbering == null) {
            return;
        }
        TreeMap treeMap = new TreeMap();
        TreeMap treeMap2 = new TreeMap();
        Iterator<XWPFAbstractNum> it2 = this.numbering.getAbstractNums().iterator();
        while (it2.hasNext()) {
            CTAbstractNum cTAbstractNum = it2.next().getCTAbstractNum();
            BigInteger abstractNumId2 = cTAbstractNum.getAbstractNumId();
            if (cTAbstractNum.sizeOfLvlArray() > 0) {
                TreeMap treeMap3 = new TreeMap();
                this.allAbstractNumMap.put(Integer.valueOf(abstractNumId2.intValue()), treeMap3);
                for (CTLvl cTLvl : cTAbstractNum.getLvlList()) {
                    if (cTLvl.getIlvl() == null) {
                        treeMap3.put(0, cTLvl);
                    } else {
                        treeMap3.put(Integer.valueOf(cTLvl.getIlvl().intValue()), cTLvl);
                    }
                }
            } else if (cTAbstractNum.isSetNumStyleLink()) {
                treeMap.put(Integer.valueOf(abstractNumId2.intValue()), cTAbstractNum.getNumStyleLink().getVal());
            }
            if (cTAbstractNum.isSetStyleLink()) {
                treeMap2.put(cTAbstractNum.getStyleLink().getVal(), Integer.valueOf(abstractNumId2.intValue()));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            Integer num = (Integer) treeMap2.get(entry.getValue());
            if (num != null && (map = this.allAbstractNumMap.get(num)) != null) {
                this.allAbstractNumMap.put(entry.getKey(), map);
            }
        }
        Iterator<XWPFNum> it3 = this.numbering.getNums().iterator();
        while (it3.hasNext()) {
            CTNum cTNum = it3.next().getCTNum();
            if (cTNum != null && (abstractNumId = cTNum.getAbstractNumId()) != null && (val = abstractNumId.getVal()) != null) {
                int intValue = cTNum.getNumId().intValue();
                this.numIdMap.put(Integer.valueOf(intValue), Integer.valueOf(val.intValue()));
                if (cTNum.sizeOfLvlOverrideArray() > 0) {
                    OverrideLevel overrideLevel = new OverrideLevel(intValue, val.intValue());
                    this.overrideMap.put(Integer.valueOf(intValue), overrideLevel);
                    for (CTNumLvl cTNumLvl : cTNum.getLvlOverrideList()) {
                        BigInteger ilvl = cTNumLvl.getIlvl();
                        if (ilvl != null && cTNumLvl.isSetStartOverride() && (startOverride = cTNumLvl.getStartOverride()) != null) {
                            overrideLevel.addLvlStartMap(ilvl.intValue(), startOverride.getVal().intValue());
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TreeMap lambda$getParagraphCTLvl$0(Integer num) {
        return new TreeMap();
    }

    private void removeExceedLvl(TreeMap<Integer, LevelEntry> treeMap, int i) {
        if (treeMap.isEmpty()) {
            return;
        }
        Integer lastKey = treeMap.lastKey();
        if (lastKey.intValue() > i) {
            for (int intValue = lastKey.intValue(); intValue > i; intValue--) {
                treeMap.remove(Integer.valueOf(intValue));
            }
        }
    }

    private void setNumberingStyle(HtmlDocumentFacade htmlDocumentFacade, ParagraphStyles paragraphStyles, LevelEntry levelEntry, Element element) {
        addSuffix(levelEntry.ctLvl.getSuff(), element);
        UnitValue textIndent = paragraphStyles.getTextIndent();
        if (textIndent == null || textIndent.getValue() >= 0.0f) {
            return;
        }
        htmlDocumentFacade.addStyleClass(element, XResourceBundle.LANG_NUMBERING, "display:inline-block;text-indent:0;");
        float abs = Math.abs(textIndent.getNumberValue());
        StringBuilder sb = new StringBuilder();
        if (paragraphStyles.getMarginStyles().getLeftNumberValue() > abs) {
            sb.append("min-width:");
            sb.append(ExtUnits.getFormatValue(r7 - abs));
            sb.append("px;");
        } else {
            sb.append("min-width:");
            sb.append(abs);
            sb.append("px;");
        }
        htmlDocumentFacade.addStyleClass(element, XResourceBundle.LANG_NUMBERING, sb.toString());
    }

    private void updateOverrideLevel(int i) {
        OverrideLevel overrideLevel = this.overrideMap.get(Integer.valueOf(i));
        if (overrideLevel == null) {
            return;
        }
        for (Map.Entry<Integer, TreeMap<Integer, LevelEntry>> entry : this.currentNumMap.entrySet()) {
            if (entry.getKey().intValue() == overrideLevel.abstractNumId) {
                for (Map.Entry entry2 : overrideLevel.map.entrySet()) {
                    LevelEntry levelEntry = entry.getValue().get(entry2.getKey());
                    if (levelEntry != null) {
                        levelEntry.start = ((Integer) entry2.getValue()).intValue();
                        levelEntry.index = 0;
                    }
                }
            }
        }
    }

    public void clear() {
        this.allAbstractNumMap.clear();
        this.overrideMap.clear();
        this.currentNumMap.clear();
        this.numIdMap.clear();
    }

    public LevelEntry getParagraphCTLvl(XWPFStyles xWPFStyles, XWPFParagraph xWPFParagraph) {
        CTNumPr cTNumPr;
        CTDecimalNumber numId;
        BigInteger val;
        BigInteger val2;
        if (this.allAbstractNumMap.isEmpty() || (cTNumPr = getCTNumPr(xWPFStyles, xWPFParagraph)) == null || (numId = cTNumPr.getNumId()) == null || (val = numId.getVal()) == null) {
            return null;
        }
        int intValue = val.intValue();
        CTDecimalNumber ilvl = cTNumPr.getIlvl();
        int intValue2 = (ilvl == null || (val2 = ilvl.getVal()) == null) ? 0 : val2.intValue();
        Integer num = this.numIdMap.get(Integer.valueOf(intValue));
        if (num == null) {
            return null;
        }
        Map<Integer, CTLvl> map = this.allAbstractNumMap.get(num);
        if (CollectionUtils.isNullOrEmpty(map)) {
            return null;
        }
        CTLvl cTLvl = map.get(Integer.valueOf(intValue2));
        if (this.currentAbstractNumId != num.intValue()) {
            this.currentAbstractNumId = num.intValue();
            this.levels = this.currentNumMap.computeIfAbsent(num, new Function() { // from class: org.apache.poi.convert.xwpf.handler.a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    TreeMap lambda$getParagraphCTLvl$0;
                    lambda$getParagraphCTLvl$0 = NumberingHandler.lambda$getParagraphCTLvl$0((Integer) obj);
                    return lambda$getParagraphCTLvl$0;
                }
            });
        }
        removeExceedLvl(this.levels, intValue2);
        LevelEntry levelEntry = this.levels.get(Integer.valueOf(intValue2));
        if (levelEntry == null) {
            levelEntry = new LevelEntry(cTLvl, intValue, num.intValue(), intValue2, 0);
            this.levels.put(Integer.valueOf(intValue2), levelEntry);
        } else {
            LevelEntry.access$208(levelEntry);
        }
        if (this.currentNumId != intValue) {
            this.currentNumId = intValue;
            updateOverrideLevel(intValue);
        }
        return levelEntry;
    }

    public void handleNumbering(XWPFContext xWPFContext, ParagraphStyles paragraphStyles, LevelEntry levelEntry, Element element) {
        if (WordToHtmlUtils.isNull(levelEntry) || element.childNodeSize() <= 0) {
            return;
        }
        HtmlDocumentFacade documentFacade = xWPFContext.getDocumentFacade();
        String numLvText = getNumLvText(levelEntry);
        Element createSpan = documentFacade.createSpan();
        createSpan.text(numLvText);
        FontGroup fontGroupFirst = FontGroup.getFontGroupFirst(numLvText);
        CTRPr rPr = levelEntry.getCtLvl().getRPr();
        TextStyles textStyles = paragraphStyles.getTextStyles();
        if (WordToHtmlUtils.isNull(rPr)) {
            documentFacade.addStyleClass(createSpan, "s", textStyles.toStyle(fontGroupFirst));
        } else {
            RunPropertyListFetcher fetcher = textStyles.getFetcher();
            RunPropertyListFetcher runPropertyListFetcher = new RunPropertyListFetcher(fetcher.getTheme());
            runPropertyListFetcher.addFetcher(new RunPropertyFetcher(rPr));
            runPropertyListFetcher.addFetcher(fetcher.getList());
            documentFacade.addStyleClass(createSpan, "s", new TextRunStyles(paragraphStyles, runPropertyListFetcher, false).toStyle(fontGroupFirst));
        }
        WordToHtmlUtils.insertAfterAbsoluteImage(element, createSpan);
        setNumberingStyle(documentFacade, paragraphStyles, levelEntry, createSpan);
    }
}
