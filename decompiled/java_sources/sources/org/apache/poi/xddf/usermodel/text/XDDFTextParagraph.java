package org.apache.poi.xddf.usermodel.text;

import com.sunia.HTREnginev2.jho;
import com.sunia.HTREnginev2.pho;
import com.sunia.HTREnginev2.zgo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Spliterator;
import java.util.function.Function;
import java.util.function.Predicate;
import org.apache.commons.collections4.iterators.IteratorIterable;
import org.apache.commons.collections4.iterators.ReverseListIterator;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.xddf.usermodel.XDDFColor;
import org.apache.poi.xddf.usermodel.text.FontAlignment;
import org.apache.poi.xddf.usermodel.text.TextAlignment;
import org.apache.poi.xddf.usermodel.text.XDDFBulletSize;
import org.apache.poi.xddf.usermodel.text.XDDFBulletStyle;
import org.apache.poi.xddf.usermodel.text.XDDFFont;
import org.apache.poi.xddf.usermodel.text.XDDFTextParagraph;
import org.apache.xmlbeans.QNameSet;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRegularTextRun;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextField;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextLineBreak;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacing;
import org.openxmlformats.schemas.drawingml.x2006.main.STCoordinate32;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextAlignType;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextFontAlignType;

/* loaded from: classes13.dex */
public class XDDFTextParagraph implements Iterable<XDDFTextRun> {

    /* renamed from: _p */
    private final CTTextParagraph f111739_p;
    private XDDFTextBody _parent;
    private XDDFParagraphProperties _properties;
    private final ArrayList<XDDFTextRun> _runs;

    @Internal
    public XDDFTextParagraph(CTTextParagraph cTTextParagraph, XDDFTextBody xDDFTextBody) {
        this.f111739_p = cTTextParagraph;
        this._parent = xDDFTextBody;
        this._runs = new ArrayList<>(cTTextParagraph.sizeOfBrArray() + cTTextParagraph.sizeOfFldArray() + cTTextParagraph.sizeOfRArray());
        for (XmlObject xmlObject : cTTextParagraph.selectChildren(QNameSet.ALL)) {
            if (xmlObject instanceof CTTextLineBreak) {
                this._runs.add(new XDDFTextRun((CTTextLineBreak) xmlObject, this));
            } else if (xmlObject instanceof CTTextField) {
                this._runs.add(new XDDFTextRun((CTTextField) xmlObject, this));
            } else if (xmlObject instanceof CTRegularTextRun) {
                this._runs.add(new XDDFTextRun((CTRegularTextRun) xmlObject, this));
            }
        }
        addDefaultRunProperties();
        addAfterLastRunProperties();
    }

    public XDDFSpacing extractSpacing(CTTextSpacing cTTextSpacing) {
        if (cTTextSpacing.isSetSpcPct()) {
            return new XDDFSpacingPercent(cTTextSpacing, cTTextSpacing.getSpcPct(), Double.valueOf(1.0d - (this._parent.getBodyProperties().getAutoFit().getLineSpaceReduction() / 100000.0d)));
        }
        if (cTTextSpacing.isSetSpcPts()) {
            return new XDDFSpacingPoints(cTTextSpacing, cTTextSpacing.getSpcPts());
        }
        return null;
    }

    private XDDFParagraphProperties getOrCreateProperties() {
        if (!this.f111739_p.isSetPPr()) {
            this._properties = new XDDFParagraphProperties(this.f111739_p.addNewPPr());
        }
        return getProperties();
    }

    private XDDFParagraphProperties getProperties() {
        if (this._properties == null) {
            this._properties = new XDDFParagraphProperties(this.f111739_p.getPPr());
        }
        return this._properties;
    }

    public static /* synthetic */ boolean lambda$getBulletColor$0(CTTextParagraphProperties cTTextParagraphProperties) {
        return cTTextParagraphProperties.isSetBuClr() || cTTextParagraphProperties.isSetBuClrTx();
    }

    public static /* synthetic */ XDDFColor lambda$getBulletColor$1(CTTextParagraphProperties cTTextParagraphProperties) {
        return new XDDFParagraphBulletProperties(cTTextParagraphProperties).getBulletColor();
    }

    public static /* synthetic */ boolean lambda$getBulletFont$2(CTTextParagraphProperties cTTextParagraphProperties) {
        return cTTextParagraphProperties.isSetBuFont() || cTTextParagraphProperties.isSetBuFontTx();
    }

    public static /* synthetic */ XDDFFont lambda$getBulletFont$3(CTTextParagraphProperties cTTextParagraphProperties) {
        return new XDDFParagraphBulletProperties(cTTextParagraphProperties).getBulletFont();
    }

    public static /* synthetic */ boolean lambda$getBulletSize$4(CTTextParagraphProperties cTTextParagraphProperties) {
        return cTTextParagraphProperties.isSetBuSzPct() || cTTextParagraphProperties.isSetBuSzPts() || cTTextParagraphProperties.isSetBuSzTx();
    }

    public static /* synthetic */ XDDFBulletSize lambda$getBulletSize$5(CTTextParagraphProperties cTTextParagraphProperties) {
        return new XDDFParagraphBulletProperties(cTTextParagraphProperties).getBulletSize();
    }

    public static /* synthetic */ boolean lambda$getBulletStyle$6(CTTextParagraphProperties cTTextParagraphProperties) {
        return cTTextParagraphProperties.isSetBuAutoNum() || cTTextParagraphProperties.isSetBuBlip() || cTTextParagraphProperties.isSetBuChar() || cTTextParagraphProperties.isSetBuNone();
    }

    public static /* synthetic */ XDDFBulletStyle lambda$getBulletStyle$7(CTTextParagraphProperties cTTextParagraphProperties) {
        return new XDDFParagraphBulletProperties(cTTextParagraphProperties).getBulletStyle();
    }

    public XDDFRunProperties addAfterLastRunProperties() {
        if (!this.f111739_p.isSetEndParaRPr()) {
            this.f111739_p.addNewEndParaRPr();
        }
        return getAfterLastRunProperties();
    }

    public XDDFRunProperties addDefaultRunProperties() {
        return getOrCreateProperties().addDefaultRunProperties();
    }

    public XDDFTabStop addTabStop() {
        return getOrCreateProperties().addTabStop();
    }

    public XDDFTextRun appendField(String str, String str2, String str3) {
        CTTextField addNewFld = this.f111739_p.addNewFld();
        addNewFld.setId(str);
        addNewFld.setType(str2);
        addNewFld.setT(str3);
        addNewFld.addNewRPr().setLang(LocaleUtil.getUserLocale().toLanguageTag());
        XDDFTextRun xDDFTextRun = new XDDFTextRun(addNewFld, this);
        this._runs.add(xDDFTextRun);
        return xDDFTextRun;
    }

    public XDDFTextRun appendLineBreak() {
        CTTextLineBreak addNewBr = this.f111739_p.addNewBr();
        Iterator it2 = new IteratorIterable(new ReverseListIterator(this._runs)).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            CTTextCharacterProperties properties = ((XDDFTextRun) it2.next()).getProperties();
            if (properties != null) {
                addNewBr.setRPr((CTTextCharacterProperties) properties.copy());
                break;
            }
        }
        XDDFTextRun xDDFTextRun = new XDDFTextRun(addNewBr, this);
        this._runs.add(xDDFTextRun);
        return xDDFTextRun;
    }

    public XDDFTextRun appendRegularRun(String str) {
        CTRegularTextRun addNewR = this.f111739_p.addNewR();
        addNewR.setT(str);
        addNewR.addNewRPr().setLang(LocaleUtil.getUserLocale().toLanguageTag());
        XDDFTextRun xDDFTextRun = new XDDFTextRun(addNewR, this);
        this._runs.add(xDDFTextRun);
        return xDDFTextRun;
    }

    public int countTabStops() {
        if (this.f111739_p.isSetPPr()) {
            return getProperties().countTabStops();
        }
        return 0;
    }

    public <R> Optional<R> findDefinedParagraphProperty(Predicate<CTTextParagraphProperties> predicate, Function<CTTextParagraphProperties, R> function) {
        if (this.f111739_p.isSetPPr()) {
            return findDefinedParagraphProperty(predicate, function, this.f111739_p.getPPr().isSetLvl() ? this.f111739_p.getPPr().getLvl() + 1 : 0);
        }
        return this._parent.findDefinedParagraphProperty(predicate, function, 0);
    }

    public <R> Optional<R> findDefinedRunProperty(Predicate<CTTextCharacterProperties> predicate, Function<CTTextCharacterProperties, R> function) {
        if (this.f111739_p.isSetPPr()) {
            return findDefinedRunProperty(predicate, function, this.f111739_p.getPPr().isSetLvl() ? this.f111739_p.getPPr().getLvl() + 1 : 0);
        }
        return this._parent.findDefinedRunProperty(predicate, function, 0);
    }

    public XDDFRunProperties getAfterLastRunProperties() {
        if (this.f111739_p.isSetEndParaRPr()) {
            return new XDDFRunProperties(this.f111739_p.getEndParaRPr());
        }
        return null;
    }

    public XDDFColor getBulletColor() {
        return (XDDFColor) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.eio
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getBulletColor$0;
                lambda$getBulletColor$0 = XDDFTextParagraph.lambda$getBulletColor$0((CTTextParagraphProperties) obj);
                return lambda$getBulletColor$0;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.fio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFColor lambda$getBulletColor$1;
                lambda$getBulletColor$1 = XDDFTextParagraph.lambda$getBulletColor$1((CTTextParagraphProperties) obj);
                return lambda$getBulletColor$1;
            }
        }).orElse(null);
    }

    public XDDFFont getBulletFont() {
        return (XDDFFont) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.cio
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getBulletFont$2;
                lambda$getBulletFont$2 = XDDFTextParagraph.lambda$getBulletFont$2((CTTextParagraphProperties) obj);
                return lambda$getBulletFont$2;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.dio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFFont lambda$getBulletFont$3;
                lambda$getBulletFont$3 = XDDFTextParagraph.lambda$getBulletFont$3((CTTextParagraphProperties) obj);
                return lambda$getBulletFont$3;
            }
        }).orElse(null);
    }

    public XDDFParagraphBulletProperties getBulletProperties() {
        if (this.f111739_p.isSetPPr()) {
            return getProperties().getBulletProperties();
        }
        return null;
    }

    public XDDFBulletSize getBulletSize() {
        return (XDDFBulletSize) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.kho
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getBulletSize$4;
                lambda$getBulletSize$4 = XDDFTextParagraph.lambda$getBulletSize$4((CTTextParagraphProperties) obj);
                return lambda$getBulletSize$4;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.lho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFBulletSize lambda$getBulletSize$5;
                lambda$getBulletSize$5 = XDDFTextParagraph.lambda$getBulletSize$5((CTTextParagraphProperties) obj);
                return lambda$getBulletSize$5;
            }
        }).orElse(null);
    }

    public XDDFBulletStyle getBulletStyle() {
        return (XDDFBulletStyle) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.mho
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getBulletStyle$6;
                lambda$getBulletStyle$6 = XDDFTextParagraph.lambda$getBulletStyle$6((CTTextParagraphProperties) obj);
                return lambda$getBulletStyle$6;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.nho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFBulletStyle lambda$getBulletStyle$7;
                lambda$getBulletStyle$7 = XDDFTextParagraph.lambda$getBulletStyle$7((CTTextParagraphProperties) obj);
                return lambda$getBulletStyle$7;
            }
        }).orElse(null);
    }

    public XDDFRunProperties getDefaultRunProperties() {
        if (this.f111739_p.isSetPPr()) {
            return getProperties().getDefaultRunProperties();
        }
        return null;
    }

    public Double getDefaultTabSize() {
        return (Double) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.gho
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetDefTabSz();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.hho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextParagraphProperties) obj).xgetDefTabSz();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.iho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Long.valueOf(POIXMLUnits.parseLength((STCoordinate32) obj));
            }
        }).map(new jho()).orElse(null);
    }

    public FontAlignment getFontAlignment() {
        return (FontAlignment) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.aho
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetFontAlgn();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.bho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextParagraphProperties) obj).getFontAlgn();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.cho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return FontAlignment.valueOf((STTextFontAlignType.Enum) obj);
            }
        }).orElse(null);
    }

    public Double getIndentation() {
        return (Double) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.uho
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetIndent();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.vho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((CTTextParagraphProperties) obj).getIndent());
            }
        }).map(new zgo()).orElse(null);
    }

    public int getIndentationLevel() {
        if (this.f111739_p.isSetPPr()) {
            return getProperties().getLevel();
        }
        return 0;
    }

    public XDDFSpacing getLineSpacing() {
        return (XDDFSpacing) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.who
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetLnSpc();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.xho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextParagraphProperties) obj).getLnSpc();
            }
        }).map(new pho(this)).orElse(null);
    }

    public Double getMarginLeft() {
        return (Double) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.dho
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetMarL();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.fho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((CTTextParagraphProperties) obj).getMarL());
            }
        }).map(new zgo()).orElse(null);
    }

    public Double getMarginRight() {
        return (Double) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.xgo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetMarR();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ygo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((CTTextParagraphProperties) obj).getMarR());
            }
        }).map(new zgo()).orElse(null);
    }

    public XDDFParagraphBulletProperties getOrCreateBulletProperties() {
        return getOrCreateProperties().getBulletProperties();
    }

    public XDDFTextBody getParentBody() {
        return this._parent;
    }

    public XDDFSpacing getSpaceAfter() {
        return (XDDFSpacing) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.tgo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetSpcAft();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.eho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextParagraphProperties) obj).getSpcAft();
            }
        }).map(new pho(this)).orElse(null);
    }

    public XDDFSpacing getSpaceBefore() {
        return (XDDFSpacing) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.sho
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetSpcBef();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.tho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextParagraphProperties) obj).getSpcBef();
            }
        }).map(new pho(this)).orElse(null);
    }

    public XDDFTabStop getTabStop(int i) {
        if (this.f111739_p.isSetPPr()) {
            return getProperties().getTabStop(i);
        }
        return null;
    }

    public List<XDDFTabStop> getTabStops() {
        return this.f111739_p.isSetPPr() ? getProperties().getTabStops() : Collections.emptyList();
    }

    public String getText() {
        StringBuilder sb = new StringBuilder();
        Iterator<XDDFTextRun> it2 = this._runs.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().getText());
        }
        return sb.toString();
    }

    public TextAlignment getTextAlignment() {
        return (TextAlignment) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.oho
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetAlgn();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.qho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextParagraphProperties) obj).getAlgn();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.rho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return TextAlignment.valueOf((STTextAlignType.Enum) obj);
            }
        }).orElse(null);
    }

    public List<XDDFTextRun> getTextRuns() {
        return this._runs;
    }

    public boolean hasEastAsianLineBreak() {
        return ((Boolean) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.vgo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetEaLnBrk();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.wgo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextParagraphProperties) obj).getEaLnBrk());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean hasHangingPunctuation() {
        return ((Boolean) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.yho
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetHangingPunct();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.zho
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextParagraphProperties) obj).getHangingPunct());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean hasLatinLineBreak() {
        return ((Boolean) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.gio
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetLatinLnBrk();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ugo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextParagraphProperties) obj).getLatinLnBrk());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public XDDFTabStop insertTabStop(int i) {
        return getOrCreateProperties().insertTabStop(i);
    }

    public boolean isRightToLeft() {
        return ((Boolean) findDefinedParagraphProperty(new Predicate() { // from class: com.sunia.HTREnginev2.aio
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextParagraphProperties) obj).isSetRtl();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.bio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextParagraphProperties) obj).getRtl());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    @Override // java.lang.Iterable
    public Iterator<XDDFTextRun> iterator() {
        return this._runs.iterator();
    }

    public void removeTabStop(int i) {
        if (this.f111739_p.isSetPPr()) {
            getProperties().removeTabStop(i);
        }
    }

    public void setAfterLastRunProperties(XDDFRunProperties xDDFRunProperties) {
        if (xDDFRunProperties != null) {
            this.f111739_p.setEndParaRPr(xDDFRunProperties.getXmlObject());
        } else if (this.f111739_p.isSetEndParaRPr()) {
            this.f111739_p.unsetEndParaRPr();
        }
    }

    public void setBulletColor(XDDFColor xDDFColor) {
        if (xDDFColor != null || this.f111739_p.isSetPPr()) {
            getOrCreateBulletProperties().setBulletColor(xDDFColor);
        }
    }

    public void setBulletColorFollowText() {
        getOrCreateBulletProperties().setBulletColorFollowText();
    }

    public void setBulletFont(XDDFFont xDDFFont) {
        if (xDDFFont != null || this.f111739_p.isSetPPr()) {
            getOrCreateBulletProperties().setBulletFont(xDDFFont);
        }
    }

    public void setBulletFontFollowText() {
        getOrCreateBulletProperties().setBulletFontFollowText();
    }

    public void setBulletSize(XDDFBulletSize xDDFBulletSize) {
        if (xDDFBulletSize != null || this.f111739_p.isSetPPr()) {
            getOrCreateBulletProperties().setBulletSize(xDDFBulletSize);
        }
    }

    public void setBulletStyle(XDDFBulletStyle xDDFBulletStyle) {
        if (xDDFBulletStyle != null || this.f111739_p.isSetPPr()) {
            getOrCreateBulletProperties().setBulletStyle(xDDFBulletStyle);
        }
    }

    public void setDefaultRunProperties(XDDFRunProperties xDDFRunProperties) {
        if (xDDFRunProperties != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setDefaultRunProperties(xDDFRunProperties);
        }
    }

    public void setDefaultTabSize(Double d) {
        if (d != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setDefaultTabSize(d);
        }
    }

    public void setEastAsianLineBreak(Boolean bool) {
        if (bool != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setEastAsianLineBreak(bool);
        }
    }

    public void setFontAlignment(FontAlignment fontAlignment) {
        if (fontAlignment != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setFontAlignment(fontAlignment);
        }
    }

    public void setHangingPunctuation(Boolean bool) {
        if (bool != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setHangingPunctuation(bool);
        }
    }

    public void setIndentation(Double d) {
        if (d != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setIndentation(d);
        }
    }

    public void setIndentationLevel(Integer num) {
        if (this.f111739_p.isSetPPr()) {
            getProperties().setLevel(num);
        }
    }

    public void setLatinLineBreak(Boolean bool) {
        if (bool != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setLatinLineBreak(bool);
        }
    }

    public void setLineSpacing(XDDFSpacing xDDFSpacing) {
        if (xDDFSpacing != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setLineSpacing(xDDFSpacing);
        }
    }

    public void setMarginLeft(Double d) {
        if (d != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setMarginLeft(d);
        }
    }

    public void setMarginRight(Double d) {
        if (d != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setMarginRight(d);
        }
    }

    public void setRightToLeft(Boolean bool) {
        if (bool != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setRightToLeft(bool);
        }
    }

    public void setSpaceAfter(XDDFSpacing xDDFSpacing) {
        if (xDDFSpacing != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setSpaceAfter(xDDFSpacing);
        }
    }

    public void setSpaceBefore(XDDFSpacing xDDFSpacing) {
        if (xDDFSpacing != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setSpaceBefore(xDDFSpacing);
        }
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException
        */
    public void setText(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList<org.apache.poi.xddf.usermodel.text.XDDFTextRun> r0 = r3._runs
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L1f
            java.util.ArrayList<org.apache.poi.xddf.usermodel.text.XDDFTextRun> r0 = r3._runs
            int r1 = r0.size()
            int r1 = r1 + (-1)
            java.lang.Object r0 = r0.get(r1)
            org.apache.poi.xddf.usermodel.text.XDDFTextRun r0 = (org.apache.poi.xddf.usermodel.text.XDDFTextRun) r0
            org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties r0 = r0.getProperties()
            org.apache.xmlbeans.XmlObject r0 = r0.copy()
            goto L20
        L1f:
            r0 = 0
        L20:
            org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph r1 = r3.f111739_p
            int r1 = r1.sizeOfBrArray()
            int r1 = r1 + (-1)
        L28:
            if (r1 < 0) goto L32
            org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph r2 = r3.f111739_p
            r2.removeBr(r1)
            int r1 = r1 + (-1)
            goto L28
        L32:
            org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph r1 = r3.f111739_p
            int r1 = r1.sizeOfFldArray()
            int r1 = r1 + (-1)
        L3a:
            if (r1 < 0) goto L44
            org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph r2 = r3.f111739_p
            r2.removeFld(r1)
            int r1 = r1 + (-1)
            goto L3a
        L44:
            org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph r1 = r3.f111739_p
            int r1 = r1.sizeOfRArray()
            int r1 = r1 + (-1)
        L4c:
            if (r1 < 0) goto L56
            org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph r2 = r3.f111739_p
            r2.removeR(r1)
            int r1 = r1 + (-1)
            goto L4c
        L56:
            java.util.ArrayList<org.apache.poi.xddf.usermodel.text.XDDFTextRun> r1 = r3._runs
            r1.clear()
            org.apache.poi.xddf.usermodel.text.XDDFTextRun r3 = r3.appendRegularRun(r4)
            if (r0 == 0) goto L68
            org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties r3 = r3.getProperties()
            r3.set(r0)
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xddf.usermodel.text.XDDFTextParagraph.setText(java.lang.String):void");
    }

    public void setTextAlignment(TextAlignment textAlignment) {
        if (textAlignment != null || this.f111739_p.isSetPPr()) {
            getOrCreateProperties().setTextAlignment(textAlignment);
        }
    }

    @Override // java.lang.Iterable
    public Spliterator<XDDFTextRun> spliterator() {
        return this._runs.spliterator();
    }

    private <R> Optional<R> findDefinedParagraphProperty(Predicate<CTTextParagraphProperties> predicate, Function<CTTextParagraphProperties, R> function, int i) {
        CTTextParagraphProperties pPr = this.f111739_p.getPPr();
        if (pPr != null && predicate.test(pPr)) {
            return Optional.ofNullable(function.apply(pPr));
        }
        return this._parent.findDefinedParagraphProperty(predicate, function, i);
    }

    private <R> Optional<R> findDefinedRunProperty(Predicate<CTTextCharacterProperties> predicate, Function<CTTextCharacterProperties, R> function, int i) {
        CTTextCharacterProperties defRPr = this.f111739_p.getPPr().isSetDefRPr() ? this.f111739_p.getPPr().getDefRPr() : null;
        if (defRPr != null && predicate.test(defRPr)) {
            return Optional.ofNullable(function.apply(defRPr));
        }
        return this._parent.findDefinedRunProperty(predicate, function, i);
    }
}
