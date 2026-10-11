package org.apache.poi.xslf.usermodel;

import com.sunia.HTREnginev2.kpo;
import com.sunia.HTREnginev2.soo;
import com.sunia.HTREnginev2.tpo;
import java.awt.Color;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.AutoNumberingScheme;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.TabStop;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;
import org.apache.poi.xslf.model.ParagraphPropertyFetcher;
import org.apache.poi.xslf.usermodel.XSLFTextParagraph;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRegularTextRun;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBodyProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextField;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextLineBreak;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextNormalAutofit;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacing;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextAlignType;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextAutonumberScheme;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextFontAlignType;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPlaceholder;

/* loaded from: classes13.dex */
public class XSLFTextParagraph implements TextParagraph<XSLFShape, XSLFTextParagraph, XSLFTextRun> {

    /* renamed from: _p */
    private final CTTextParagraph f111805_p;
    private final List<XSLFTextRun> _runs = new ArrayList();
    private final XSLFTextShape _shape;

    @FunctionalInterface
    /* loaded from: classes13.dex */
    public interface Procedure {
        void accept();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
    
        if ((r4 instanceof org.openxmlformats.schemas.drawingml.x2006.main.CTRegularTextRun) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
    
        if ((r4 instanceof org.openxmlformats.schemas.drawingml.x2006.main.CTTextField) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
    
        if ((r4 instanceof org.apache.xmlbeans.impl.values.XmlAnyTypeImpl) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
    
        if (org.apache.poi.common.MathUtils.isOMML(r4.toString()) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        r2._runs.add(new org.apache.poi.xslf.usermodel.XSLFMathRun(r4, r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
    
        r2._runs.add(newTextRun(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0016, code lost:
    
        if (r3.toFirstChild() != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
    
        r4 = r3.getObject();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001e, code lost:
    
        if ((r4 instanceof org.openxmlformats.schemas.drawingml.x2006.main.CTTextLineBreak) == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
    
        r2._runs.add(new org.apache.poi.xslf.usermodel.XSLFLineBreak((org.openxmlformats.schemas.drawingml.x2006.main.CTTextLineBreak) r4, r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x005c, code lost:
    
        if (r3.toNextSibling() != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public XSLFTextParagraph(org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph r3, org.apache.poi.xslf.usermodel.XSLFTextShape r4) {
        /*
            r2 = this;
            r2.<init>()
            r2.f111805_p = r3
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r2._runs = r0
            r2._shape = r4
            org.apache.xmlbeans.XmlCursor r3 = r3.newCursor()
            boolean r4 = r3.toFirstChild()     // Catch: java.lang.Throwable -> L62
            if (r4 == 0) goto L5e
        L18:
            org.apache.xmlbeans.XmlObject r4 = r3.getObject()     // Catch: java.lang.Throwable -> L62
            boolean r0 = r4 instanceof org.openxmlformats.schemas.drawingml.x2006.main.CTTextLineBreak     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto L2d
            java.util.List<org.apache.poi.xslf.usermodel.XSLFTextRun> r0 = r2._runs     // Catch: java.lang.Throwable -> L62
            org.apache.poi.xslf.usermodel.XSLFLineBreak r1 = new org.apache.poi.xslf.usermodel.XSLFLineBreak     // Catch: java.lang.Throwable -> L62
            org.openxmlformats.schemas.drawingml.x2006.main.CTTextLineBreak r4 = (org.openxmlformats.schemas.drawingml.x2006.main.CTTextLineBreak) r4     // Catch: java.lang.Throwable -> L62
            r1.<init>(r4, r2)     // Catch: java.lang.Throwable -> L62
            r0.add(r1)     // Catch: java.lang.Throwable -> L62
            goto L58
        L2d:
            boolean r0 = r4 instanceof org.openxmlformats.schemas.drawingml.x2006.main.CTRegularTextRun     // Catch: java.lang.Throwable -> L62
            if (r0 != 0) goto L4f
            boolean r0 = r4 instanceof org.openxmlformats.schemas.drawingml.x2006.main.CTTextField     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto L36
            goto L4f
        L36:
            boolean r0 = r4 instanceof org.apache.xmlbeans.impl.values.XmlAnyTypeImpl     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto L58
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L62
            boolean r0 = org.apache.poi.common.MathUtils.isOMML(r0)     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto L58
            java.util.List<org.apache.poi.xslf.usermodel.XSLFTextRun> r0 = r2._runs     // Catch: java.lang.Throwable -> L62
            org.apache.poi.xslf.usermodel.XSLFMathRun r1 = new org.apache.poi.xslf.usermodel.XSLFMathRun     // Catch: java.lang.Throwable -> L62
            r1.<init>(r4, r2)     // Catch: java.lang.Throwable -> L62
            r0.add(r1)     // Catch: java.lang.Throwable -> L62
            goto L58
        L4f:
            java.util.List<org.apache.poi.xslf.usermodel.XSLFTextRun> r0 = r2._runs     // Catch: java.lang.Throwable -> L62
            org.apache.poi.xslf.usermodel.XSLFTextRun r4 = r2.newTextRun(r4)     // Catch: java.lang.Throwable -> L62
            r0.add(r4)     // Catch: java.lang.Throwable -> L62
        L58:
            boolean r4 = r3.toNextSibling()     // Catch: java.lang.Throwable -> L62
            if (r4 != 0) goto L18
        L5e:
            r3.close()
            return
        L62:
            r2 = move-exception
            throw r2     // Catch: java.lang.Throwable -> L64
        L64:
            r4 = move-exception
            if (r3 == 0) goto L6f
            r3.close()     // Catch: java.lang.Throwable -> L6b
            goto L6f
        L6b:
            r3 = move-exception
            r2.addSuppressed(r3)
        L6f:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xslf.usermodel.XSLFTextParagraph.<init>(org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph, org.apache.poi.xslf.usermodel.XSLFTextShape):void");
    }

    private static boolean doubleNotEquals(Double d, Double d2) {
        return !Objects.equals(d, d2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fetchAutoNumberingScheme(CTTextParagraphProperties cTTextParagraphProperties, Consumer<AutoNumberingScheme> consumer) {
        AutoNumberingScheme forOoxmlID;
        if (!cTTextParagraphProperties.isSetBuAutoNum() || (forOoxmlID = AutoNumberingScheme.forOoxmlID(cTTextParagraphProperties.getBuAutoNum().getType().intValue())) == null) {
            return;
        }
        consumer.accept(forOoxmlID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    public void fetchBulletFontColor(CTTextParagraphProperties cTTextParagraphProperties, Consumer<Color> consumer) {
        ?? sheet = getParentShape().getSheet();
        XSLFTheme theme = sheet.getTheme();
        if (cTTextParagraphProperties.isSetBuClr()) {
            consumer.accept(new XSLFColor(cTTextParagraphProperties.getBuClr(), theme, null, sheet).getColor());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fetchBulletFontSize(CTTextParagraphProperties cTTextParagraphProperties, Consumer<Double> consumer) {
        if (cTTextParagraphProperties.isSetBuSzPct()) {
            consumer.accept(Double.valueOf(POIXMLUnits.parsePercent(cTTextParagraphProperties.getBuSzPct().xgetVal()) * 0.001d));
        }
        if (cTTextParagraphProperties.isSetBuSzPts()) {
            consumer.accept(Double.valueOf((-cTTextParagraphProperties.getBuSzPts().getVal()) * 0.01d));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fetchIsBullet(CTTextParagraphProperties cTTextParagraphProperties, Consumer<Boolean> consumer) {
        if (cTTextParagraphProperties.isSetBuNone()) {
            consumer.accept(Boolean.FALSE);
        } else if (cTTextParagraphProperties.isSetBuFont() || cTTextParagraphProperties.isSetBuChar() || cTTextParagraphProperties.isSetBuAutoNum()) {
            consumer.accept(Boolean.TRUE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.xslf.usermodel.XSLFShape, org.apache.poi.xslf.usermodel.XSLFTextShape] */
    private <T> T fetchParagraphProperty(ParagraphPropertyFetcher.ParaPropFetcher<T> paraPropFetcher) {
        return (T) new ParagraphPropertyFetcher(this, paraPropFetcher).fetchProperty(getParentShape());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fetchSpacing(Function<CTTextParagraphProperties, Supplier<CTTextSpacing>> function, CTTextParagraphProperties cTTextParagraphProperties, Consumer<Double> consumer) {
        CTTextSpacing cTTextSpacing = function.apply(cTTextParagraphProperties).get();
        if (cTTextSpacing != null) {
            if (cTTextSpacing.isSetSpcPct()) {
                consumer.accept(Double.valueOf(POIXMLUnits.parsePercent(cTTextSpacing.getSpcPct().xgetVal()) * 0.001d));
            } else if (cTTextSpacing.isSetSpcPts()) {
                consumer.accept(Double.valueOf((-cTTextSpacing.getSpcPts().getVal()) * 0.01d));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fetchTabStop(int i, CTTextParagraphProperties cTTextParagraphProperties, Consumer<Double> consumer) {
        if (cTTextParagraphProperties.isSetTabLst()) {
            CTTextTabStopList tabLst = cTTextParagraphProperties.getTabLst();
            if (i < tabLst.sizeOfTabArray()) {
                consumer.accept(Double.valueOf(Units.toPoints(POIXMLUnits.parseLength(tabLst.getTabArray(i).xgetPos()))));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fetchTabStops(CTTextParagraphProperties cTTextParagraphProperties, Consumer<List<XSLFTabStop>> consumer) {
        if (cTTextParagraphProperties.isSetTabLst()) {
            ArrayList arrayList = new ArrayList();
            for (CTTextTabStop cTTextTabStop : cTTextParagraphProperties.getTabLst().getTabArray()) {
                arrayList.add(new XSLFTabStop(cTTextTabStop));
            }
            consumer.accept(arrayList);
        }
    }

    private Double getSpacing(final Function<CTTextParagraphProperties, Supplier<CTTextSpacing>> function) {
        return (Double) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.bpo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.fetchSpacing(function, cTTextParagraphProperties, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getAutoNumberingStartAt$4(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
        if (cTTextParagraphProperties.isSetBuAutoNum() && cTTextParagraphProperties.getBuAutoNum().isSetStartAt()) {
            consumer.accept(Integer.valueOf(cTTextParagraphProperties.getBuAutoNum().getStartAt()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getBulletCharacter$3(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
        if (cTTextParagraphProperties.isSetBuChar()) {
            consumer.accept(cTTextParagraphProperties.getBuChar().getChar());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getBulletFont$2(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
        if (cTTextParagraphProperties.isSetBuFont()) {
            consumer.accept(cTTextParagraphProperties.getBuFont().getTypeface());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getDefaultTabSize$8(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
        if (cTTextParagraphProperties.isSetDefTabSz()) {
            consumer.accept(Double.valueOf(Units.toPoints(POIXMLUnits.parseLength(cTTextParagraphProperties.xgetDefTabSz()))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getFontAlign$1(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
        if (cTTextParagraphProperties.isSetFontAlgn()) {
            consumer.accept(TextParagraph.FontAlign.values()[cTTextParagraphProperties.getFontAlgn().intValue() - 1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getHangingPunct$23(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
        if (cTTextParagraphProperties.isSetHangingPunct()) {
            consumer.accept(Boolean.valueOf(cTTextParagraphProperties.getHangingPunct()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getIndent$5(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
        if (cTTextParagraphProperties.isSetIndent()) {
            consumer.accept(Double.valueOf(Units.toPoints(cTTextParagraphProperties.getIndent())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getLeftMargin$6(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
        if (cTTextParagraphProperties.isSetMarL()) {
            consumer.accept(Double.valueOf(Units.toPoints(cTTextParagraphProperties.getMarL())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Supplier lambda$getLineSpacing$13(CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new soo(cTTextParagraphProperties);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getRightMargin$7(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
        if (cTTextParagraphProperties.isSetMarR()) {
            consumer.accept(Double.valueOf(Units.toPoints(cTTextParagraphProperties.getMarR())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Supplier lambda$getSpaceAfter$21(CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new tpo(cTTextParagraphProperties);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Supplier lambda$getSpaceBefore$17(CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new kpo(cTTextParagraphProperties);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getTextAlign$0(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
        if (cTTextParagraphProperties.isSetAlgn()) {
            consumer.accept(TextParagraph.TextAlign.values()[cTTextParagraphProperties.getAlgn().intValue() - 1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Supplier lambda$setLineSpacing$10(CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new soo(cTTextParagraphProperties);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Supplier lambda$setLineSpacing$11(final CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new Supplier() { // from class: com.sunia.HTREnginev2.woo
            @Override // java.util.function.Supplier
            public final Object get() {
                return CTTextParagraphProperties.this.addNewLnSpc();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Procedure lambda$setLineSpacing$12(final CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new Procedure() { // from class: org.apache.poi.xslf.usermodel.c
            @Override // org.apache.poi.xslf.usermodel.XSLFTextParagraph.Procedure
            public final void accept() {
                CTTextParagraphProperties.this.unsetLnSpc();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Supplier lambda$setSpaceAfter$18(CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new tpo(cTTextParagraphProperties);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Supplier lambda$setSpaceAfter$19(final CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new Supplier() { // from class: com.sunia.HTREnginev2.jpo
            @Override // java.util.function.Supplier
            public final Object get() {
                return CTTextParagraphProperties.this.addNewSpcAft();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Procedure lambda$setSpaceAfter$20(final CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new Procedure() { // from class: org.apache.poi.xslf.usermodel.a
            @Override // org.apache.poi.xslf.usermodel.XSLFTextParagraph.Procedure
            public final void accept() {
                CTTextParagraphProperties.this.unsetSpcAft();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Supplier lambda$setSpaceBefore$14(CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new kpo(cTTextParagraphProperties);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Supplier lambda$setSpaceBefore$15(final CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new Supplier() { // from class: com.sunia.HTREnginev2.npo
            @Override // java.util.function.Supplier
            public final Object get() {
                return CTTextParagraphProperties.this.addNewSpcBef();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Procedure lambda$setSpaceBefore$16(final CTTextParagraphProperties cTTextParagraphProperties) {
        cTTextParagraphProperties.getClass();
        return new Procedure() { // from class: org.apache.poi.xslf.usermodel.b
            @Override // org.apache.poi.xslf.usermodel.XSLFTextParagraph.Procedure
            public final void accept() {
                CTTextParagraphProperties.this.unsetSpcBef();
            }
        };
    }

    private void setSpacing(Double d, Function<CTTextParagraphProperties, Supplier<CTTextSpacing>> function, Function<CTTextParagraphProperties, Supplier<CTTextSpacing>> function2, Function<CTTextParagraphProperties, Procedure> function3) {
        CTTextParagraphProperties pPr = (d == null || this.f111805_p.isSetPPr()) ? this.f111805_p.getPPr() : this.f111805_p.addNewPPr();
        if (pPr == null) {
            return;
        }
        CTTextSpacing cTTextSpacing = function.apply(pPr).get();
        if (d == null) {
            if (cTTextSpacing != null) {
                function3.apply(pPr).accept();
                return;
            }
            return;
        }
        if (cTTextSpacing == null) {
            cTTextSpacing = function2.apply(pPr).get();
        }
        if (d.doubleValue() >= 0.0d) {
            if (cTTextSpacing.isSetSpcPts()) {
                cTTextSpacing.unsetSpcPts();
            }
            (cTTextSpacing.isSetSpcPct() ? cTTextSpacing.getSpcPct() : cTTextSpacing.addNewSpcPct()).setVal(Integer.valueOf((int) (d.doubleValue() * 1000.0d)));
        } else {
            if (cTTextSpacing.isSetSpcPct()) {
                cTTextSpacing.unsetSpcPct();
            }
            (cTTextSpacing.isSetSpcPts() ? cTTextSpacing.getSpcPts() : cTTextSpacing.addNewSpcPts()).setVal((int) ((-d.doubleValue()) * 100.0d));
        }
    }

    public XSLFTextRun addLineBreak() {
        XSLFLineBreak xSLFLineBreak = new XSLFLineBreak(this.f111805_p.addNewBr(), this);
        CTTextCharacterProperties rPr = xSLFLineBreak.getRPr(true);
        if (!this._runs.isEmpty()) {
            List<XSLFTextRun> list = this._runs;
            rPr.set(list.get(list.size() - 1).getRPr(true));
            if (rPr.isSetHlinkClick()) {
                rPr.unsetHlinkClick();
            }
            if (rPr.isSetHlinkMouseOver()) {
                rPr.unsetHlinkMouseOver();
            }
        }
        this._runs.add(xSLFLineBreak);
        return xSLFLineBreak;
    }

    public XSLFTextRun addNewTextRun() {
        CTRegularTextRun addNewR = this.f111805_p.addNewR();
        addNewR.addNewRPr().setLang("en-US");
        XSLFTextRun newTextRun = newTextRun(addNewR);
        this._runs.add(newTextRun);
        return newTextRun;
    }

    public void addTabStop(double d) {
        boolean isSetPPr = this.f111805_p.isSetPPr();
        CTTextParagraph cTTextParagraph = this.f111805_p;
        CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
        (pPr.isSetTabLst() ? pPr.getTabLst() : pPr.addNewTabLst()).addNewTab().setPos(Integer.valueOf(Units.toEMU(d)));
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void addTabStops(double d, TabStop.TabStopType tabStopType) {
        CTTextParagraphProperties pPr;
        if (getParentShape().getSheet() instanceof XSLFSlideMaster) {
            pPr = getDefaultMasterStyle();
        } else {
            CTTextParagraph xmlObject = getXmlObject();
            pPr = xmlObject.isSetPPr() ? xmlObject.getPPr() : xmlObject.addNewPPr();
        }
        if (pPr == null) {
            return;
        }
        XSLFTabStop xSLFTabStop = new XSLFTabStop((pPr.isSetTabLst() ? pPr.getTabLst() : pPr.addNewTabLst()).addNewTab());
        xSLFTabStop.setPositionInPoints(d);
        xSLFTabStop.setType(tabStopType);
    }

    public void clearButKeepProperties() {
        CTTextParagraph xmlObject = getXmlObject();
        for (int sizeOfBrArray = xmlObject.sizeOfBrArray(); sizeOfBrArray > 0; sizeOfBrArray--) {
            xmlObject.removeBr(sizeOfBrArray - 1);
        }
        for (int sizeOfFldArray = xmlObject.sizeOfFldArray(); sizeOfFldArray > 0; sizeOfFldArray--) {
            xmlObject.removeFld(sizeOfFldArray - 1);
        }
        if (this._runs.isEmpty()) {
            return;
        }
        int size = this._runs.size();
        CTTextCharacterProperties rPr = this._runs.get(size - 1).getRPr(false);
        if (rPr != null) {
            if (xmlObject.isSetEndParaRPr()) {
                xmlObject.unsetEndParaRPr();
            }
            xmlObject.addNewEndParaRPr().set(rPr);
        }
        while (size > 0) {
            xmlObject.removeR(size - 1);
            size--;
        }
        this._runs.clear();
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void clearTabStops() {
        CTTextParagraphProperties defaultMasterStyle = getParentShape().getSheet() instanceof XSLFSlideMaster ? getDefaultMasterStyle() : getXmlObject().getPPr();
        if (defaultMasterStyle == null || !defaultMasterStyle.isSetTabLst()) {
            return;
        }
        defaultMasterStyle.unsetTabLst();
    }

    public void copy(XSLFTextParagraph xSLFTextParagraph) {
        if (xSLFTextParagraph == this) {
            return;
        }
        CTTextParagraph xmlObject = getXmlObject();
        xSLFTextParagraph.getXmlObject();
        if (xmlObject.isSetPPr()) {
            xmlObject.unsetPPr();
        }
        if (xmlObject.isSetEndParaRPr()) {
            xmlObject.unsetEndParaRPr();
        }
        this._runs.clear();
        for (int sizeOfBrArray = xmlObject.sizeOfBrArray(); sizeOfBrArray > 0; sizeOfBrArray--) {
            xmlObject.removeBr(sizeOfBrArray - 1);
        }
        for (int sizeOfRArray = xmlObject.sizeOfRArray(); sizeOfRArray > 0; sizeOfRArray--) {
            xmlObject.removeR(sizeOfRArray - 1);
        }
        for (int sizeOfFldArray = xmlObject.sizeOfFldArray(); sizeOfFldArray > 0; sizeOfFldArray--) {
            xmlObject.removeFld(sizeOfFldArray - 1);
        }
        for (XSLFTextRun xSLFTextRun : xSLFTextParagraph.getTextRuns()) {
            XmlObject copy = xSLFTextRun.getXmlObject().copy();
            XSLFTextRun addNewTextRun = addNewTextRun();
            addNewTextRun.getXmlObject().set(copy);
            addNewTextRun.copy(xSLFTextRun);
        }
        TextParagraph.TextAlign textAlign = xSLFTextParagraph.getTextAlign();
        if (textAlign != getTextAlign()) {
            setTextAlign(textAlign);
        }
        boolean isBullet = xSLFTextParagraph.isBullet();
        if (isBullet != isBullet()) {
            setBullet(isBullet);
            if (isBullet) {
                String bulletFont = xSLFTextParagraph.getBulletFont();
                if (bulletFont != null && !bulletFont.equals(getBulletFont())) {
                    setBulletFont(bulletFont);
                }
                String bulletCharacter = xSLFTextParagraph.getBulletCharacter();
                if (bulletCharacter != null && !bulletCharacter.equals(getBulletCharacter())) {
                    setBulletCharacter(bulletCharacter);
                }
                PaintStyle bulletFontColor = xSLFTextParagraph.getBulletFontColor();
                if (bulletFontColor != null && !bulletFontColor.equals(getBulletFontColor())) {
                    setBulletFontColor(bulletFontColor);
                }
                Double bulletFontSize = xSLFTextParagraph.getBulletFontSize();
                if (doubleNotEquals(bulletFontSize, getBulletFontSize())) {
                    setBulletFontSize(bulletFontSize.doubleValue());
                }
            }
        }
        Double leftMargin = xSLFTextParagraph.getLeftMargin();
        if (doubleNotEquals(leftMargin, getLeftMargin())) {
            setLeftMargin(leftMargin);
        }
        Double indent = xSLFTextParagraph.getIndent();
        if (doubleNotEquals(indent, getIndent())) {
            setIndent(indent);
        }
        Double spaceAfter = xSLFTextParagraph.getSpaceAfter();
        if (doubleNotEquals(spaceAfter, getSpaceAfter())) {
            setSpaceAfter(spaceAfter);
        }
        Double spaceBefore = xSLFTextParagraph.getSpaceBefore();
        if (doubleNotEquals(spaceBefore, getSpaceBefore())) {
            setSpaceBefore(spaceBefore);
        }
        Double lineSpacing = xSLFTextParagraph.getLineSpacing();
        if (doubleNotEquals(lineSpacing, getLineSpacing())) {
            setLineSpacing(lineSpacing);
        }
    }

    public AutoNumberingScheme getAutoNumberingScheme() {
        return (AutoNumberingScheme) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.ipo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.fetchAutoNumberingScheme(cTTextParagraphProperties, consumer);
            }
        });
    }

    public Integer getAutoNumberingStartAt() {
        return (Integer) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.mpo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.lambda$getAutoNumberingStartAt$4(cTTextParagraphProperties, consumer);
            }
        });
    }

    public String getBulletCharacter() {
        return (String) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.upo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.lambda$getBulletCharacter$3(cTTextParagraphProperties, consumer);
            }
        });
    }

    public String getBulletFont() {
        return (String) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.hpo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.lambda$getBulletFont$2(cTTextParagraphProperties, consumer);
            }
        });
    }

    public PaintStyle getBulletFontColor() {
        Color color = (Color) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.lpo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.this.fetchBulletFontColor(cTTextParagraphProperties, consumer);
            }
        });
        if (color == null) {
            return null;
        }
        return DrawPaint.createSolidPaint(color);
    }

    public Double getBulletFontSize() {
        return (Double) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.ppo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.fetchBulletFontSize(cTTextParagraphProperties, consumer);
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public TextParagraph.BulletStyle getBulletStyle() {
        if (isBullet()) {
            return new TextParagraph.BulletStyle() { // from class: org.apache.poi.xslf.usermodel.XSLFTextParagraph.1
                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public AutoNumberingScheme getAutoNumberingScheme() {
                    return XSLFTextParagraph.this.getAutoNumberingScheme();
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public Integer getAutoNumberingStartAt() {
                    return XSLFTextParagraph.this.getAutoNumberingStartAt();
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public String getBulletCharacter() {
                    return XSLFTextParagraph.this.getBulletCharacter();
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public String getBulletFont() {
                    return XSLFTextParagraph.this.getBulletFont();
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public PaintStyle getBulletFontColor() {
                    return XSLFTextParagraph.this.getBulletFontColor();
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public Double getBulletFontSize() {
                    return XSLFTextParagraph.this.getBulletFontSize();
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public void setBulletFontColor(Color color) {
                    setBulletFontColor(DrawPaint.createSolidPaint(color));
                }

                @Override // org.apache.poi.sl.usermodel.TextParagraph.BulletStyle
                public void setBulletFontColor(PaintStyle paintStyle) {
                    XSLFTextParagraph.this.setBulletFontColor(paintStyle);
                }
            };
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public String getDefaultFontFamily() {
        String fontFamily = this._runs.isEmpty() ? null : this._runs.get(0).getFontFamily();
        return fontFamily == null ? HSSFFont.FONT_ARIAL : fontFamily;
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getDefaultFontSize() {
        CTTextParagraphProperties defaultMasterStyle;
        CTTextCharacterProperties endParaRPr = this.f111805_p.getEndParaRPr();
        if ((endParaRPr == null || !endParaRPr.isSetSz()) && (defaultMasterStyle = getDefaultMasterStyle()) != null) {
            endParaRPr = defaultMasterStyle.getDefRPr();
        }
        return Double.valueOf((endParaRPr == null || !endParaRPr.isSetSz()) ? 12.0d : endParaRPr.getSz() / 100.0d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v3, types: [org.apache.poi.sl.usermodel.Sheet, org.apache.poi.xslf.usermodel.XSLFSheet] */
    @org.apache.poi.util.Internal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties getDefaultMasterStyle() {
        /*
            r7 = this;
            java.lang.String r0 = "http://schemas.openxmlformats.org/presentationml/2006/main"
            org.apache.poi.xslf.usermodel.XSLFTextShape r1 = r7._shape
            org.apache.poi.xslf.usermodel.XSLFPlaceholderDetails r1 = r1.getPlaceholderDetails()
            r2 = 0
            org.openxmlformats.schemas.presentationml.x2006.main.CTPlaceholder r1 = r1.getCTPlaceholder(r2)
            r2 = -1
            if (r1 != 0) goto L12
            r1 = r2
            goto L1a
        L12:
            org.openxmlformats.schemas.presentationml.x2006.main.STPlaceholderType$Enum r1 = r1.getType()
            int r1 = r1.intValue()
        L1a:
            if (r1 == r2) goto L31
            r2 = 1
            if (r1 == r2) goto L2e
            r2 = 3
            if (r1 == r2) goto L2e
            r2 = 5
            if (r1 == r2) goto L31
            r2 = 6
            if (r1 == r2) goto L31
            r2 = 7
            if (r1 == r2) goto L31
            java.lang.String r1 = "bodyStyle"
            goto L33
        L2e:
            java.lang.String r1 = "titleStyle"
            goto L33
        L31:
            java.lang.String r1 = "otherStyle"
        L33:
            int r2 = r7.getIndentLevel()
            org.apache.poi.xslf.usermodel.XSLFTextShape r7 = r7._shape
            org.apache.poi.xslf.usermodel.XSLFSheet r7 = r7.getSheet()
        L3d:
            if (r7 == 0) goto Lb3
            org.apache.xmlbeans.XmlObject r3 = r7.getXmlObject()
            org.apache.xmlbeans.XmlCursor r3 = r3.newCursor()
            r3.push()     // Catch: java.lang.Throwable -> La5
            java.lang.String r4 = "txStyles"
            boolean r4 = r3.toChild(r0, r4)     // Catch: java.lang.Throwable -> La5
            if (r4 == 0) goto L58
            boolean r4 = r3.toChild(r0, r1)     // Catch: java.lang.Throwable -> La5
            if (r4 != 0) goto L66
        L58:
            boolean r4 = r3.pop()     // Catch: java.lang.Throwable -> La5
            if (r4 == 0) goto L9b
            java.lang.String r4 = "notesStyle"
            boolean r4 = r3.toChild(r0, r4)     // Catch: java.lang.Throwable -> La5
            if (r4 == 0) goto L9b
        L66:
            if (r2 < 0) goto L9b
            r3.push()     // Catch: java.lang.Throwable -> La5
            java.lang.String r4 = "http://schemas.openxmlformats.org/drawingml/2006/main"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La5
            r5.<init>()     // Catch: java.lang.Throwable -> La5
            java.lang.String r6 = "lvl"
            r5.append(r6)     // Catch: java.lang.Throwable -> La5
            int r6 = r2 + 1
            r5.append(r6)     // Catch: java.lang.Throwable -> La5
            java.lang.String r6 = "pPr"
            r5.append(r6)     // Catch: java.lang.Throwable -> La5
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> La5
            boolean r4 = r3.toChild(r4, r5)     // Catch: java.lang.Throwable -> La5
            if (r4 == 0) goto L95
            org.apache.xmlbeans.XmlObject r7 = r3.getObject()     // Catch: java.lang.Throwable -> La5
            org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties r7 = (org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties) r7     // Catch: java.lang.Throwable -> La5
            r3.close()
            return r7
        L95:
            r3.pop()     // Catch: java.lang.Throwable -> La5
            int r2 = r2 + (-1)
            goto L66
        L9b:
            r3.close()
            org.apache.poi.sl.usermodel.MasterSheet r7 = r7.getMasterSheet()
            org.apache.poi.xslf.usermodel.XSLFSheet r7 = (org.apache.poi.xslf.usermodel.XSLFSheet) r7
            goto L3d
        La5:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> La7
        La7:
            r0 = move-exception
            if (r3 == 0) goto Lb2
            r3.close()     // Catch: java.lang.Throwable -> Lae
            goto Lb2
        Lae:
            r1 = move-exception
            r7.addSuppressed(r1)
        Lb2:
            throw r0
        Lb3:
            r7 = 0
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xslf.usermodel.XSLFTextParagraph.getDefaultMasterStyle():org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties");
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getDefaultTabSize() {
        return (Double) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.xoo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.lambda$getDefaultTabSize$8(cTTextParagraphProperties, consumer);
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public TextParagraph.FontAlign getFontAlign() {
        return (TextParagraph.FontAlign) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.roo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.lambda$getFontAlign$1(cTTextParagraphProperties, consumer);
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public boolean getHangingPunct() {
        Boolean bool = (Boolean) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.qpo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.lambda$getHangingPunct$23(cTTextParagraphProperties, consumer);
            }
        });
        return bool != null && bool.booleanValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getIndent() {
        return (Double) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.apo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.lambda$getIndent$5(cTTextParagraphProperties, consumer);
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public int getIndentLevel() {
        CTTextParagraphProperties pPr = this.f111805_p.getPPr();
        if (pPr == null || !pPr.isSetLvl()) {
            return 0;
        }
        return pPr.getLvl();
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getLeftMargin() {
        return (Double) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.zoo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.lambda$getLeftMargin$6(cTTextParagraphProperties, consumer);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [org.apache.poi.xslf.usermodel.XSLFTextShape] */
    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getLineSpacing() {
        CTTextBodyProperties textBodyPr;
        CTTextNormalAutofit normAutofit;
        Double spacing = getSpacing(new Function() { // from class: com.sunia.HTREnginev2.cpo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Supplier lambda$getLineSpacing$13;
                lambda$getLineSpacing$13 = XSLFTextParagraph.lambda$getLineSpacing$13((CTTextParagraphProperties) obj);
                return lambda$getLineSpacing$13;
            }
        });
        if ((spacing != null && spacing.doubleValue() <= 0.0d) || (textBodyPr = getParentShape().getTextBodyPr()) == null || (normAutofit = textBodyPr.getNormAutofit()) == null || !normAutofit.isSetLnSpcReduction()) {
            return spacing;
        }
        double parsePercent = 1.0d - (POIXMLUnits.parsePercent(normAutofit.xgetLnSpcReduction()) / 100000.0d);
        return Double.valueOf(spacing == null ? parsePercent * 100.0d : parsePercent * spacing.doubleValue());
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getRightMargin() {
        return (Double) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.opo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.lambda$getRightMargin$7(cTTextParagraphProperties, consumer);
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getSpaceAfter() {
        return getSpacing(new Function() { // from class: com.sunia.HTREnginev2.spo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Supplier lambda$getSpaceAfter$21;
                lambda$getSpaceAfter$21 = XSLFTextParagraph.lambda$getSpaceAfter$21((CTTextParagraphProperties) obj);
                return lambda$getSpaceAfter$21;
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public Double getSpaceBefore() {
        return getSpacing(new Function() { // from class: com.sunia.HTREnginev2.rpo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Supplier lambda$getSpaceBefore$17;
                lambda$getSpaceBefore$17 = XSLFTextParagraph.lambda$getSpaceBefore$17((CTTextParagraphProperties) obj);
                return lambda$getSpaceBefore$17;
            }
        });
    }

    public double getTabStop(final int i) {
        Double d = (Double) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.dpo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.fetchTabStop(i, cTTextParagraphProperties, consumer);
            }
        });
        if (d == null) {
            return 0.0d;
        }
        return d.doubleValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public List<XSLFTabStop> getTabStops() {
        return (List) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.poo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.fetchTabStops(cTTextParagraphProperties, consumer);
            }
        });
    }

    public String getText() {
        StringBuilder sb = new StringBuilder();
        Iterator<XSLFTextRun> it2 = this._runs.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().getRawText());
        }
        return sb.toString();
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public TextParagraph.TextAlign getTextAlign() {
        return (TextParagraph.TextAlign) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.yoo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.lambda$getTextAlign$0(cTTextParagraphProperties, consumer);
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public List<XSLFTextRun> getTextRuns() {
        return Collections.unmodifiableList(this._runs);
    }

    @Internal
    public CTTextParagraph getXmlObject() {
        return this.f111805_p;
    }

    public boolean isBullet() {
        Boolean bool = (Boolean) fetchParagraphProperty(new ParagraphPropertyFetcher.ParaPropFetcher() { // from class: com.sunia.HTREnginev2.vpo
            @Override // org.apache.poi.xslf.model.ParagraphPropertyFetcher.ParaPropFetcher
            public final void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer consumer) {
                XSLFTextParagraph.fetchIsBullet(cTTextParagraphProperties, consumer);
            }
        });
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public boolean isHeaderOrFooter() {
        CTPlaceholder cTPlaceholder = this._shape.getPlaceholderDetails().getCTPlaceholder(false);
        int intValue = cTPlaceholder == null ? -1 : cTPlaceholder.getType().intValue();
        return intValue == 5 || intValue == 6 || intValue == 7 || intValue == 8;
    }

    @Override // java.lang.Iterable
    public Iterator<XSLFTextRun> iterator() {
        return getTextRuns().iterator();
    }

    public XSLFTextRun newTextRun(XmlObject xmlObject) {
        return new XSLFTextRun(xmlObject, this);
    }

    public boolean removeTextRun(XSLFTextRun xSLFTextRun) {
        if (this._runs.remove(xSLFTextRun)) {
            XmlObject xmlObject = xSLFTextRun.getXmlObject();
            if (xmlObject instanceof CTRegularTextRun) {
                for (int i = 0; i < getXmlObject().sizeOfRArray(); i++) {
                    if (getXmlObject().getRArray(i).equals(xmlObject)) {
                        getXmlObject().removeR(i);
                        return true;
                    }
                }
            } else if (xmlObject instanceof CTTextField) {
                for (int i2 = 0; i2 < getXmlObject().sizeOfFldArray(); i2++) {
                    if (getXmlObject().getFldArray(i2).equals(xmlObject)) {
                        getXmlObject().removeFld(i2);
                        return true;
                    }
                }
            } else if (xmlObject instanceof CTTextLineBreak) {
                for (int i3 = 0; i3 < getXmlObject().sizeOfBrArray(); i3++) {
                    if (getXmlObject().getBrArray(i3).equals(xmlObject)) {
                        getXmlObject().removeBr(i3);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void setBullet(boolean z) {
        if (isBullet() == z) {
            return;
        }
        boolean isSetPPr = this.f111805_p.isSetPPr();
        CTTextParagraph cTTextParagraph = this.f111805_p;
        CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
        if (z) {
            pPr.addNewBuFont().setTypeface(HSSFFont.FONT_ARIAL);
            pPr.addNewBuChar().setChar("•");
            return;
        }
        if (pPr.isSetBuFont()) {
            pPr.unsetBuFont();
        }
        if (pPr.isSetBuChar()) {
            pPr.unsetBuChar();
        }
        if (pPr.isSetBuAutoNum()) {
            pPr.unsetBuAutoNum();
        }
        if (pPr.isSetBuBlip()) {
            pPr.unsetBuBlip();
        }
        if (pPr.isSetBuClr()) {
            pPr.unsetBuClr();
        }
        if (pPr.isSetBuClrTx()) {
            pPr.unsetBuClrTx();
        }
        if (pPr.isSetBuFont()) {
            pPr.unsetBuFont();
        }
        if (pPr.isSetBuFontTx()) {
            pPr.unsetBuFontTx();
        }
        if (pPr.isSetBuSzPct()) {
            pPr.unsetBuSzPct();
        }
        if (pPr.isSetBuSzPts()) {
            pPr.unsetBuSzPts();
        }
        if (pPr.isSetBuSzTx()) {
            pPr.unsetBuSzTx();
        }
        pPr.addNewBuNone();
    }

    public void setBulletAutoNumber(AutoNumberingScheme autoNumberingScheme, int i) {
        if (i < 1) {
            throw new IllegalArgumentException("Start Number must be greater or equal that 1");
        }
        boolean isSetPPr = this.f111805_p.isSetPPr();
        CTTextParagraph cTTextParagraph = this.f111805_p;
        CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
        CTTextAutonumberBullet buAutoNum = pPr.isSetBuAutoNum() ? pPr.getBuAutoNum() : pPr.addNewBuAutoNum();
        buAutoNum.setType(STTextAutonumberScheme.Enum.forInt(autoNumberingScheme.ooxmlId));
        buAutoNum.setStartAt(i);
    }

    public void setBulletCharacter(String str) {
        boolean isSetPPr = this.f111805_p.isSetPPr();
        CTTextParagraph cTTextParagraph = this.f111805_p;
        CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
        (pPr.isSetBuChar() ? pPr.getBuChar() : pPr.addNewBuChar()).setChar(str);
    }

    public void setBulletFont(String str) {
        boolean isSetPPr = this.f111805_p.isSetPPr();
        CTTextParagraph cTTextParagraph = this.f111805_p;
        CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
        (pPr.isSetBuFont() ? pPr.getBuFont() : pPr.addNewBuFont()).setTypeface(str);
    }

    public void setBulletFontColor(Color color) {
        setBulletFontColor(DrawPaint.createSolidPaint(color));
    }

    public void setBulletFontSize(double d) {
        boolean isSetPPr = this.f111805_p.isSetPPr();
        CTTextParagraph cTTextParagraph = this.f111805_p;
        CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
        if (d >= 0.0d) {
            (pPr.isSetBuSzPct() ? pPr.getBuSzPct() : pPr.addNewBuSzPct()).setVal(Integer.toString((int) (d * 1000.0d)));
            if (pPr.isSetBuSzPts()) {
                pPr.unsetBuSzPts();
                return;
            }
            return;
        }
        (pPr.isSetBuSzPts() ? pPr.getBuSzPts() : pPr.addNewBuSzPts()).setVal((int) ((-d) * 100.0d));
        if (pPr.isSetBuSzPct()) {
            pPr.unsetBuSzPct();
        }
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
                setBulletFontSize(((Number) obj).doubleValue());
            } else if (obj instanceof Color) {
                setBulletFontColor((Color) obj);
            } else if (obj instanceof Character) {
                setBulletCharacter(obj.toString());
            } else if (obj instanceof String) {
                setBulletFont((String) obj);
            } else if (obj instanceof AutoNumberingScheme) {
                setBulletAutoNumber((AutoNumberingScheme) obj, 0);
            }
        }
    }

    public void setFontAlign(TextParagraph.FontAlign fontAlign) {
        boolean isSetPPr = this.f111805_p.isSetPPr();
        CTTextParagraph cTTextParagraph = this.f111805_p;
        CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
        if (fontAlign != null) {
            pPr.setFontAlgn(STTextFontAlignType.Enum.forInt(fontAlign.ordinal() + 1));
        } else if (pPr.isSetFontAlgn()) {
            pPr.unsetFontAlgn();
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setIndent(Double d) {
        if (d != null || this.f111805_p.isSetPPr()) {
            boolean isSetPPr = this.f111805_p.isSetPPr();
            CTTextParagraph cTTextParagraph = this.f111805_p;
            CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
            if (d != null) {
                pPr.setIndent(Units.toEMU(d.doubleValue()));
            } else if (pPr.isSetIndent()) {
                pPr.unsetIndent();
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setIndentLevel(int i) {
        boolean isSetPPr = this.f111805_p.isSetPPr();
        CTTextParagraph cTTextParagraph = this.f111805_p;
        (isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr()).setLvl(i);
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setLeftMargin(Double d) {
        if (d != null || this.f111805_p.isSetPPr()) {
            boolean isSetPPr = this.f111805_p.isSetPPr();
            CTTextParagraph cTTextParagraph = this.f111805_p;
            CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
            if (d != null) {
                pPr.setMarL(Units.toEMU(d.doubleValue()));
            } else if (pPr.isSetMarL()) {
                pPr.unsetMarL();
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setLineSpacing(Double d) {
        setSpacing(d, new Function() { // from class: com.sunia.HTREnginev2.wpo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Supplier lambda$setLineSpacing$10;
                lambda$setLineSpacing$10 = XSLFTextParagraph.lambda$setLineSpacing$10((CTTextParagraphProperties) obj);
                return lambda$setLineSpacing$10;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.xpo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Supplier lambda$setLineSpacing$11;
                lambda$setLineSpacing$11 = XSLFTextParagraph.lambda$setLineSpacing$11((CTTextParagraphProperties) obj);
                return lambda$setLineSpacing$11;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.qoo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XSLFTextParagraph.Procedure lambda$setLineSpacing$12;
                lambda$setLineSpacing$12 = XSLFTextParagraph.lambda$setLineSpacing$12((CTTextParagraphProperties) obj);
                return lambda$setLineSpacing$12;
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setRightMargin(Double d) {
        if (d != null || this.f111805_p.isSetPPr()) {
            boolean isSetPPr = this.f111805_p.isSetPPr();
            CTTextParagraph cTTextParagraph = this.f111805_p;
            CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
            if (d != null) {
                pPr.setMarR(Units.toEMU(d.doubleValue()));
            } else if (pPr.isSetMarR()) {
                pPr.unsetMarR();
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setSpaceAfter(Double d) {
        setSpacing(d, new Function() { // from class: com.sunia.HTREnginev2.epo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Supplier lambda$setSpaceAfter$18;
                lambda$setSpaceAfter$18 = XSLFTextParagraph.lambda$setSpaceAfter$18((CTTextParagraphProperties) obj);
                return lambda$setSpaceAfter$18;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.fpo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Supplier lambda$setSpaceAfter$19;
                lambda$setSpaceAfter$19 = XSLFTextParagraph.lambda$setSpaceAfter$19((CTTextParagraphProperties) obj);
                return lambda$setSpaceAfter$19;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.gpo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XSLFTextParagraph.Procedure lambda$setSpaceAfter$20;
                lambda$setSpaceAfter$20 = XSLFTextParagraph.lambda$setSpaceAfter$20((CTTextParagraphProperties) obj);
                return lambda$setSpaceAfter$20;
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setSpaceBefore(Double d) {
        setSpacing(d, new Function() { // from class: com.sunia.HTREnginev2.too
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Supplier lambda$setSpaceBefore$14;
                lambda$setSpaceBefore$14 = XSLFTextParagraph.lambda$setSpaceBefore$14((CTTextParagraphProperties) obj);
                return lambda$setSpaceBefore$14;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.uoo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Supplier lambda$setSpaceBefore$15;
                lambda$setSpaceBefore$15 = XSLFTextParagraph.lambda$setSpaceBefore$15((CTTextParagraphProperties) obj);
                return lambda$setSpaceBefore$15;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.voo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XSLFTextParagraph.Procedure lambda$setSpaceBefore$16;
                lambda$setSpaceBefore$16 = XSLFTextParagraph.lambda$setSpaceBefore$16((CTTextParagraphProperties) obj);
                return lambda$setSpaceBefore$16;
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public void setTextAlign(TextParagraph.TextAlign textAlign) {
        boolean isSetPPr = this.f111805_p.isSetPPr();
        CTTextParagraph cTTextParagraph = this.f111805_p;
        CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
        if (textAlign != null) {
            pPr.setAlgn(STTextAlignType.Enum.forInt(textAlign.ordinal() + 1));
        } else if (pPr.isSetAlgn()) {
            pPr.unsetAlgn();
        }
    }

    public String toString() {
        return IteratorUtils.f104923a + getClass() + IteratorUtils.f104924b + getText();
    }

    @Override // org.apache.poi.sl.usermodel.TextParagraph
    public TextShape<XSLFShape, XSLFTextParagraph> getParentShape() {
        return this._shape;
    }

    public XSLFTextRun newTextRun(CTTextLineBreak cTTextLineBreak) {
        return new XSLFLineBreak(cTTextLineBreak, this);
    }

    public void setBulletFontColor(PaintStyle paintStyle) {
        if (paintStyle instanceof PaintStyle.SolidPaint) {
            Color applyColorTransform = DrawPaint.applyColorTransform(((PaintStyle.SolidPaint) paintStyle).getSolidColor());
            boolean isSetPPr = this.f111805_p.isSetPPr();
            CTTextParagraph cTTextParagraph = this.f111805_p;
            CTTextParagraphProperties pPr = isSetPPr ? cTTextParagraph.getPPr() : cTTextParagraph.addNewPPr();
            CTColor buClr = pPr.isSetBuClr() ? pPr.getBuClr() : pPr.addNewBuClr();
            (buClr.isSetSrgbClr() ? buClr.getSrgbClr() : buClr.addNewSrgbClr()).setVal(new byte[]{(byte) applyColorTransform.getRed(), (byte) applyColorTransform.getGreen(), (byte) applyColorTransform.getBlue()});
            return;
        }
        throw new IllegalArgumentException("Currently XSLF only supports SolidPaint");
    }
}
