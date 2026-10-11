package org.apache.poi.hwmf.record;

import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import java.util.function.Supplier;
import net.p110sf.saxon.om.StandardNames;
import org.apache.poi.hwmf.record.HwmfDraw;
import org.apache.poi.hwmf.record.HwmfEscape;
import org.apache.poi.hwmf.record.HwmfFill;
import org.apache.poi.hwmf.record.HwmfMisc;
import org.apache.poi.hwmf.record.HwmfPalette;
import org.apache.poi.hwmf.record.HwmfText;
import org.apache.poi.hwmf.record.HwmfWindowing;

/* loaded from: classes12.dex */
public enum HwmfRecordType {
    eof(0, null),
    animatePalette(1078, new Supplier() { // from class: com.sunia.HTREnginev2.y6i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfPalette.WmfAnimatePalette();
        }
    }),
    arc(2071, new Supplier() { // from class: com.sunia.HTREnginev2.a7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfArc();
        }
    }),
    bitBlt(2338, new Supplier() { // from class: com.sunia.HTREnginev2.m7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfBitBlt();
        }
    }),
    chord(2096, new Supplier() { // from class: com.sunia.HTREnginev2.y7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfChord();
        }
    }),
    createBrushIndirect(764, new Supplier() { // from class: com.sunia.HTREnginev2.k8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfCreateBrushIndirect();
        }
    }),
    createFontIndirect(763, new Supplier() { // from class: com.sunia.HTREnginev2.w8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfText.WmfCreateFontIndirect();
        }
    }),
    createPalette(DataBinderMapperImpl.f53073M3, new Supplier() { // from class: com.sunia.HTREnginev2.h9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfPalette.WmfCreatePalette();
        }
    }),
    createPatternBrush(505, new Supplier() { // from class: com.sunia.HTREnginev2.i9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfCreatePatternBrush();
        }
    }),
    createPenIndirect(762, new Supplier() { // from class: com.sunia.HTREnginev2.j9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfCreatePenIndirect();
        }
    }),
    createRegion(1791, new Supplier() { // from class: com.sunia.HTREnginev2.k9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfCreateRegion();
        }
    }),
    deleteObject(496, new Supplier() { // from class: com.sunia.HTREnginev2.j7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfDeleteObject();
        }
    }),
    dibBitBlt(2368, new Supplier() { // from class: com.sunia.HTREnginev2.u7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfDibBitBlt();
        }
    }),
    dibCreatePatternBrush(322, new Supplier() { // from class: com.sunia.HTREnginev2.f8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfDibCreatePatternBrush();
        }
    }),
    dibStretchBlt(2881, new Supplier() { // from class: com.sunia.HTREnginev2.q8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfDibStretchBlt();
        }
    }),
    ellipse(1048, new Supplier() { // from class: com.sunia.HTREnginev2.b9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfEllipse();
        }
    }),
    escape(1574, new Supplier() { // from class: com.sunia.HTREnginev2.l9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfEscape();
        }
    }),
    excludeClipRect(1045, new Supplier() { // from class: com.sunia.HTREnginev2.m9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfExcludeClipRect();
        }
    }),
    extFloodFill(1352, new Supplier() { // from class: com.sunia.HTREnginev2.n9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfExtFloodFill();
        }
    }),
    extTextOut(2610, new Supplier() { // from class: com.sunia.HTREnginev2.o9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfText.WmfExtTextOut();
        }
    }),
    fillRegion(IPTC.TAG_SPECIAL_INSTRUCTIONS, new Supplier() { // from class: com.sunia.HTREnginev2.z6i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfFillRegion();
        }
    }),
    floodFill(1049, new Supplier() { // from class: com.sunia.HTREnginev2.b7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfFloodFill();
        }
    }),
    frameRegion(1065, new Supplier() { // from class: com.sunia.HTREnginev2.c7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfFrameRegion();
        }
    }),
    intersectClipRect(1046, new Supplier() { // from class: com.sunia.HTREnginev2.d7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfIntersectClipRect();
        }
    }),
    invertRegion(DataBinderMapperImpl.f53067L4, new Supplier() { // from class: com.sunia.HTREnginev2.e7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfInvertRegion();
        }
    }),
    lineTo(531, new Supplier() { // from class: com.sunia.HTREnginev2.f7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfLineTo();
        }
    }),
    moveTo(532, new Supplier() { // from class: com.sunia.HTREnginev2.g7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfMoveTo();
        }
    }),
    offsetClipRgn(StandardNames.XS_UNSIGNED_SHORT, new Supplier() { // from class: com.sunia.HTREnginev2.h7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfOffsetClipRgn();
        }
    }),
    offsetViewportOrg(529, new Supplier() { // from class: com.sunia.HTREnginev2.i7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfOffsetViewportOrg();
        }
    }),
    offsetWindowOrg(527, new Supplier() { // from class: com.sunia.HTREnginev2.k7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfOffsetWindowOrg();
        }
    }),
    paintRegion(299, new Supplier() { // from class: com.sunia.HTREnginev2.l7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfPaintRegion();
        }
    }),
    patBlt(1565, new Supplier() { // from class: com.sunia.HTREnginev2.n7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfPatBlt();
        }
    }),
    pie(2074, new Supplier() { // from class: com.sunia.HTREnginev2.o7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfPie();
        }
    }),
    polygon(804, new Supplier() { // from class: com.sunia.HTREnginev2.p7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfPolygon();
        }
    }),
    polyline(805, new Supplier() { // from class: com.sunia.HTREnginev2.q7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfPolyline();
        }
    }),
    polyPolygon(1336, new Supplier() { // from class: com.sunia.HTREnginev2.r7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfPolyPolygon();
        }
    }),
    realizePalette(53, new Supplier() { // from class: com.sunia.HTREnginev2.s7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfPalette.WmfRealizePalette();
        }
    }),
    rectangle(OnyxStatisticConstant.TRIGGER_FROM_HOME_LIST_ITEM_ADD_MANGE, new Supplier() { // from class: com.sunia.HTREnginev2.t7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfRectangle();
        }
    }),
    resizePalette(313, new Supplier() { // from class: com.sunia.HTREnginev2.v7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfPalette.WmfResizePalette();
        }
    }),
    restoreDc(DataBinderMapperImpl.f53046I4, new Supplier() { // from class: com.sunia.HTREnginev2.w7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfRestoreDc();
        }
    }),
    roundRect(1564, new Supplier() { // from class: com.sunia.HTREnginev2.x7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfRoundRect();
        }
    }),
    saveDc(30, new Supplier() { // from class: com.sunia.HTREnginev2.z7i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfSaveDc();
        }
    }),
    scaleViewportExt(1042, new Supplier() { // from class: com.sunia.HTREnginev2.a8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfScaleViewportExt();
        }
    }),
    scaleWindowExt(1040, new Supplier() { // from class: com.sunia.HTREnginev2.b8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfScaleWindowExt();
        }
    }),
    selectClipRegion(300, new Supplier() { // from class: com.sunia.HTREnginev2.c8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfSelectClipRegion();
        }
    }),
    selectObject(301, new Supplier() { // from class: com.sunia.HTREnginev2.d8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfSelectObject();
        }
    }),
    selectPalette(StandardNames.XS_ENTITIES, new Supplier() { // from class: com.sunia.HTREnginev2.e8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfPalette.WmfSelectPalette();
        }
    }),
    setBkColor(513, new Supplier() { // from class: com.sunia.HTREnginev2.g8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfSetBkColor();
        }
    }),
    setBkMode(258, new Supplier() { // from class: com.sunia.HTREnginev2.h8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfSetBkMode();
        }
    }),
    setDibToDev(3379, new Supplier() { // from class: com.sunia.HTREnginev2.i8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfSetDibToDev();
        }
    }),
    setLayout(DataBinderMapperImpl.f53277q5, new Supplier() { // from class: com.sunia.HTREnginev2.j8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfSetLayout();
        }
    }),
    setMapMode(259, new Supplier() { // from class: com.sunia.HTREnginev2.l8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfSetMapMode();
        }
    }),
    setMapperFlags(StandardNames.XS_IDREF, new Supplier() { // from class: com.sunia.HTREnginev2.m8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfSetMapperFlags();
        }
    }),
    setPalEntries(55, new Supplier() { // from class: com.sunia.HTREnginev2.n8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfPalette.WmfSetPaletteEntries();
        }
    }),
    setPixel(OnyxStatisticConstant.TRIGGER_FROM_HOME_LIST_ITEM_HEADER_CREATE, new Supplier() { // from class: com.sunia.HTREnginev2.o8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfDraw.WmfSetPixel();
        }
    }),
    setPolyFillMode(262, new Supplier() { // from class: com.sunia.HTREnginev2.p8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfSetPolyfillMode();
        }
    }),
    setRelabs(261, new Supplier() { // from class: com.sunia.HTREnginev2.r8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfSetRelabs();
        }
    }),
    setRop2(DataBinderMapperImpl.f53157Z3, new Supplier() { // from class: com.sunia.HTREnginev2.s8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfSetRop2();
        }
    }),
    setStretchBltMode(263, new Supplier() { // from class: com.sunia.HTREnginev2.t8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfMisc.WmfSetStretchBltMode();
        }
    }),
    setTextAlign(302, new Supplier() { // from class: com.sunia.HTREnginev2.u8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfText.WmfSetTextAlign();
        }
    }),
    setTextCharExtra(264, new Supplier() { // from class: com.sunia.HTREnginev2.v8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfText.WmfSetTextCharExtra();
        }
    }),
    setTextColor(521, new Supplier() { // from class: com.sunia.HTREnginev2.x8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfText.WmfSetTextColor();
        }
    }),
    setTextJustification(522, new Supplier() { // from class: com.sunia.HTREnginev2.y8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfText.WmfSetTextJustification();
        }
    }),
    setViewportExt(StandardNames.XS_G_MONTH, new Supplier() { // from class: com.sunia.HTREnginev2.z8i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfSetViewportExt();
        }
    }),
    setViewportOrg(StandardNames.XS_G_DAY, new Supplier() { // from class: com.sunia.HTREnginev2.a9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfSetViewportOrg();
        }
    }),
    setWindowExt(524, new Supplier() { // from class: com.sunia.HTREnginev2.c9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfSetWindowExt();
        }
    }),
    setWindowOrg(StandardNames.XS_G_YEAR, new Supplier() { // from class: com.sunia.HTREnginev2.d9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfWindowing.WmfSetWindowOrg();
        }
    }),
    stretchBlt(2851, new Supplier() { // from class: com.sunia.HTREnginev2.e9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfStretchBlt();
        }
    }),
    stretchDib(3907, new Supplier() { // from class: com.sunia.HTREnginev2.f9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfFill.WmfStretchDib();
        }
    }),
    textOut(1313, new Supplier() { // from class: com.sunia.HTREnginev2.g9i
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HwmfText.WmfTextOut();
        }
    });

    public final Supplier<? extends HwmfRecord> constructor;

    /* renamed from: id */
    public final int f111438id;

    HwmfRecordType(int i, Supplier supplier) {
        this.f111438id = i;
        this.constructor = supplier;
    }

    public static HwmfRecordType getById(int i) {
        for (HwmfRecordType hwmfRecordType : values()) {
            if (hwmfRecordType.f111438id == i) {
                return hwmfRecordType;
            }
        }
        return null;
    }
}
