package org.apache.poi.hemf.record.emf;

import java.util.function.Supplier;
import org.apache.poi.hemf.record.emf.HemfComment;
import org.apache.poi.hemf.record.emf.HemfDraw;
import org.apache.poi.hemf.record.emf.HemfFill;
import org.apache.poi.hemf.record.emf.HemfHeader;
import org.apache.poi.hemf.record.emf.HemfMisc;
import org.apache.poi.hemf.record.emf.HemfPalette;
import org.apache.poi.hemf.record.emf.HemfText;
import org.apache.poi.hemf.record.emf.HemfWindowing;
import org.apache.poi.hemf.record.emf.UnimplementedHemfRecord;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public enum HemfRecordType {
    header(1, new Supplier() { // from class: com.sunia.HTREnginev2.evh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfHeader();
        }
    }),
    polyBezier(2, new Supplier() { // from class: com.sunia.HTREnginev2.jvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyBezier();
        }
    }),
    polygon(3, new Supplier() { // from class: com.sunia.HTREnginev2.tvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolygon();
        }
    }),
    polyline(4, new Supplier() { // from class: com.sunia.HTREnginev2.fwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyline();
        }
    }),
    polyBezierTo(5, new Supplier() { // from class: com.sunia.HTREnginev2.qwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyBezierTo();
        }
    }),
    polylineTo(6, new Supplier() { // from class: com.sunia.HTREnginev2.bxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolylineTo();
        }
    }),
    polyPolyline(7, new Supplier() { // from class: com.sunia.HTREnginev2.nxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyPolyline();
        }
    }),
    polyPolygon(8, new Supplier() { // from class: com.sunia.HTREnginev2.xxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyPolygon();
        }
    }),
    setWindowExtEx(9, new Supplier() { // from class: com.sunia.HTREnginev2.jyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfWindowing.EmfSetWindowExtEx();
        }
    }),
    setWindowOrgEx(10, new Supplier() { // from class: com.sunia.HTREnginev2.syh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfWindowing.EmfSetWindowOrgEx();
        }
    }),
    setViewportExtEx(11, new Supplier() { // from class: com.sunia.HTREnginev2.awh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfWindowing.EmfSetViewportExtEx();
        }
    }),
    setViewportOrgEx(12, new Supplier() { // from class: com.sunia.HTREnginev2.hxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfWindowing.EmfSetViewportOrgEx();
        }
    }),
    setBrushOrgEx(13, new Supplier() { // from class: com.sunia.HTREnginev2.sxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfSetBrushOrgEx();
        }
    }),
    eof(14, new Supplier() { // from class: com.sunia.HTREnginev2.dyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfEof();
        }
    }),
    setPixelV(15, new Supplier() { // from class: com.sunia.HTREnginev2.oyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfSetPixelV();
        }
    }),
    setMapperFlags(16, new Supplier() { // from class: com.sunia.HTREnginev2.tyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfSetMapperFlags();
        }
    }),
    setMapMode(17, new Supplier() { // from class: com.sunia.HTREnginev2.fvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfSetMapMode();
        }
    }),
    setBkMode(18, new Supplier() { // from class: com.sunia.HTREnginev2.gvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfSetBkMode();
        }
    }),
    setPolyfillMode(19, new Supplier() { // from class: com.sunia.HTREnginev2.hvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfSetPolyfillMode();
        }
    }),
    setRop2(20, new Supplier() { // from class: com.sunia.HTREnginev2.ivh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfSetRop2();
        }
    }),
    setStretchBltMode(21, new Supplier() { // from class: com.sunia.HTREnginev2.kvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfSetStretchBltMode();
        }
    }),
    setTextAlign(22, new Supplier() { // from class: com.sunia.HTREnginev2.lvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfText.EmfSetTextAlign();
        }
    }),
    setcoloradjustment(23, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    setTextColor(24, new Supplier() { // from class: com.sunia.HTREnginev2.mvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfText.EmfSetTextColor();
        }
    }),
    setBkColor(25, new Supplier() { // from class: com.sunia.HTREnginev2.nvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfSetBkColor();
        }
    }),
    setOffsetClipRgn(26, new Supplier() { // from class: com.sunia.HTREnginev2.ovh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfWindowing.EmfSetOffsetClipRgn();
        }
    }),
    setMoveToEx(27, new Supplier() { // from class: com.sunia.HTREnginev2.qvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfSetMoveToEx();
        }
    }),
    setmetargn(28, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    setExcludeClipRect(29, new Supplier() { // from class: com.sunia.HTREnginev2.rvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfWindowing.EmfSetExcludeClipRect();
        }
    }),
    setIntersectClipRect(30, new Supplier() { // from class: com.sunia.HTREnginev2.svh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfWindowing.EmfSetIntersectClipRect();
        }
    }),
    scaleViewportExtEx(31, new Supplier() { // from class: com.sunia.HTREnginev2.uvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfWindowing.EmfScaleViewportExtEx();
        }
    }),
    scaleWindowExtEx(32, new Supplier() { // from class: com.sunia.HTREnginev2.vvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfWindowing.EmfScaleWindowExtEx();
        }
    }),
    saveDc(33, new Supplier() { // from class: com.sunia.HTREnginev2.wvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfSaveDc();
        }
    }),
    restoreDc(34, new Supplier() { // from class: com.sunia.HTREnginev2.xvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfRestoreDc();
        }
    }),
    setWorldTransform(35, new Supplier() { // from class: com.sunia.HTREnginev2.yvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfSetWorldTransform();
        }
    }),
    modifyWorldTransform(36, new Supplier() { // from class: com.sunia.HTREnginev2.zvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfModifyWorldTransform();
        }
    }),
    selectObject(37, new Supplier() { // from class: com.sunia.HTREnginev2.bwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfSelectObject();
        }
    }),
    createPen(38, new Supplier() { // from class: com.sunia.HTREnginev2.cwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfCreatePen();
        }
    }),
    createBrushIndirect(39, new Supplier() { // from class: com.sunia.HTREnginev2.dwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfCreateBrushIndirect();
        }
    }),
    deleteobject(40, new Supplier() { // from class: com.sunia.HTREnginev2.ewh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfDeleteObject();
        }
    }),
    anglearc(41, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    ellipse(42, new Supplier() { // from class: com.sunia.HTREnginev2.gwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfEllipse();
        }
    }),
    rectangle(43, new Supplier() { // from class: com.sunia.HTREnginev2.hwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfRectangle();
        }
    }),
    roundRect(44, new Supplier() { // from class: com.sunia.HTREnginev2.iwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfRoundRect();
        }
    }),
    arc(45, new Supplier() { // from class: com.sunia.HTREnginev2.jwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfArc();
        }
    }),
    chord(46, new Supplier() { // from class: com.sunia.HTREnginev2.kwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfChord();
        }
    }),
    pie(47, new Supplier() { // from class: com.sunia.HTREnginev2.mwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPie();
        }
    }),
    selectPalette(48, new Supplier() { // from class: com.sunia.HTREnginev2.nwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPalette.EmfSelectPalette();
        }
    }),
    createPalette(49, new Supplier() { // from class: com.sunia.HTREnginev2.owh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPalette.EmfCreatePalette();
        }
    }),
    setPaletteEntries(50, new Supplier() { // from class: com.sunia.HTREnginev2.pwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPalette.EmfSetPaletteEntries();
        }
    }),
    resizePalette(51, new Supplier() { // from class: com.sunia.HTREnginev2.rwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPalette.EmfResizePalette();
        }
    }),
    realizePalette(52, new Supplier() { // from class: com.sunia.HTREnginev2.swh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPalette.EmfRealizePalette();
        }
    }),
    extFloodFill(53, new Supplier() { // from class: com.sunia.HTREnginev2.twh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfExtFloodFill();
        }
    }),
    lineTo(54, new Supplier() { // from class: com.sunia.HTREnginev2.uwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfLineTo();
        }
    }),
    arcTo(55, new Supplier() { // from class: com.sunia.HTREnginev2.vwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfArcTo();
        }
    }),
    polyDraw(56, new Supplier() { // from class: com.sunia.HTREnginev2.xwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyDraw();
        }
    }),
    setarcdirection(57, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    setMiterLimit(58, new Supplier() { // from class: com.sunia.HTREnginev2.ywh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfSetMiterLimit();
        }
    }),
    beginPath(59, new Supplier() { // from class: com.sunia.HTREnginev2.zwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfBeginPath();
        }
    }),
    endPath(60, new Supplier() { // from class: com.sunia.HTREnginev2.axh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfEndPath();
        }
    }),
    closeFigure(61, new Supplier() { // from class: com.sunia.HTREnginev2.cxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfCloseFigure();
        }
    }),
    fillPath(62, new Supplier() { // from class: com.sunia.HTREnginev2.dxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfFillPath();
        }
    }),
    strokeAndFillPath(63, new Supplier() { // from class: com.sunia.HTREnginev2.exh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfStrokeAndFillPath();
        }
    }),
    strokePath(64, new Supplier() { // from class: com.sunia.HTREnginev2.fxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfStrokePath();
        }
    }),
    flattenPath(65, new Supplier() { // from class: com.sunia.HTREnginev2.gxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfFlattenPath();
        }
    }),
    widenPath(66, new Supplier() { // from class: com.sunia.HTREnginev2.ixh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfWidenPath();
        }
    }),
    selectClipPath(67, new Supplier() { // from class: com.sunia.HTREnginev2.jxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfWindowing.EmfSelectClipPath();
        }
    }),
    abortPath(68, new Supplier() { // from class: com.sunia.HTREnginev2.kxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfAbortPath();
        }
    }),
    comment(70, new Supplier() { // from class: com.sunia.HTREnginev2.lxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfComment.EmfComment();
        }
    }),
    fillRgn(71, new Supplier() { // from class: com.sunia.HTREnginev2.mxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfFillRgn();
        }
    }),
    frameRgn(72, new Supplier() { // from class: com.sunia.HTREnginev2.oxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfFrameRgn();
        }
    }),
    invertRgn(73, new Supplier() { // from class: com.sunia.HTREnginev2.pxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfInvertRgn();
        }
    }),
    paintRgn(74, new Supplier() { // from class: com.sunia.HTREnginev2.qxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfPaintRgn();
        }
    }),
    extSelectClipRgn(75, new Supplier() { // from class: com.sunia.HTREnginev2.rxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfExtSelectClipRgn();
        }
    }),
    bitBlt(76, new Supplier() { // from class: com.sunia.HTREnginev2.txh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfBitBlt();
        }
    }),
    stretchBlt(77, new Supplier() { // from class: com.sunia.HTREnginev2.uxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfStretchBlt();
        }
    }),
    maskblt(78, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    plgblt(79, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    setDiBitsToDevice(80, new Supplier() { // from class: com.sunia.HTREnginev2.vxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfSetDiBitsToDevice();
        }
    }),
    stretchDiBits(81, new Supplier() { // from class: com.sunia.HTREnginev2.wxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfStretchDiBits();
        }
    }),
    extCreateFontIndirectW(82, new Supplier() { // from class: com.sunia.HTREnginev2.yxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfText.EmfExtCreateFontIndirectW();
        }
    }),
    extTextOutA(83, new Supplier() { // from class: com.sunia.HTREnginev2.zxh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfText.EmfExtTextOutA();
        }
    }),
    extTextOutW(84, new Supplier() { // from class: com.sunia.HTREnginev2.ayh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfText.EmfExtTextOutW();
        }
    }),
    polyBezier16(85, new Supplier() { // from class: com.sunia.HTREnginev2.byh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyBezier16();
        }
    }),
    polygon16(86, new Supplier() { // from class: com.sunia.HTREnginev2.cyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolygon16();
        }
    }),
    polyline16(87, new Supplier() { // from class: com.sunia.HTREnginev2.eyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyline16();
        }
    }),
    polyBezierTo16(88, new Supplier() { // from class: com.sunia.HTREnginev2.fyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyBezierTo16();
        }
    }),
    polylineTo16(89, new Supplier() { // from class: com.sunia.HTREnginev2.gyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolylineTo16();
        }
    }),
    polyPolyline16(90, new Supplier() { // from class: com.sunia.HTREnginev2.hyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyPolyline16();
        }
    }),
    polyPolygon16(91, new Supplier() { // from class: com.sunia.HTREnginev2.iyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyPolygon16();
        }
    }),
    polyDraw16(92, new Supplier() { // from class: com.sunia.HTREnginev2.kyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfDraw.EmfPolyDraw16();
        }
    }),
    createMonoBrush(93, new Supplier() { // from class: com.sunia.HTREnginev2.lyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfCreateMonoBrush();
        }
    }),
    createDibPatternBrushPt(94, new Supplier() { // from class: com.sunia.HTREnginev2.myh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfCreateDibPatternBrushPt();
        }
    }),
    extCreatePen(95, new Supplier() { // from class: com.sunia.HTREnginev2.nyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfMisc.EmfExtCreatePen();
        }
    }),
    polytextouta(96, new Supplier() { // from class: com.sunia.HTREnginev2.pyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfText.PolyTextOutA();
        }
    }),
    polytextoutw(97, new Supplier() { // from class: com.sunia.HTREnginev2.qyh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfText.PolyTextOutW();
        }
    }),
    seticmmode(98, new Supplier() { // from class: com.sunia.HTREnginev2.ryh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPalette.EmfSetIcmMode();
        }
    }),
    createcolorspace(99, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    setcolorspace(100, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    deletecolorspace(101, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    glsrecord(102, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    glsboundedrecord(103, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    pixelformat(104, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    drawescape(105, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    extescape(106, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    smalltextout(108, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    forceufimapping(109, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    namedescape(110, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    colorcorrectpalette(111, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    seticmprofilea(112, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    seticmprofilew(113, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    alphaBlend(114, new Supplier() { // from class: com.sunia.HTREnginev2.lwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfFill.EmfAlphaBlend();
        }
    }),
    setlayout(115, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    transparentblt(116, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    gradientfill(118, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    setlinkdufis(119, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    settextjustification(120, new Supplier() { // from class: com.sunia.HTREnginev2.wwh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfText.SetTextJustification();
        }
    }),
    colormatchtargetw(121, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    }),
    createcolorspacew(122, new Supplier() { // from class: com.sunia.HTREnginev2.pvh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfRecord();
        }
    });

    public final Supplier<? extends HemfRecord> constructor;

    /* renamed from: id */
    public final long f111342id;

    HemfRecordType(long j, Supplier supplier) {
        this.f111342id = j;
        this.constructor = supplier;
    }

    public static HemfRecordType getById(long j) {
        for (HemfRecordType hemfRecordType : values()) {
            if (hemfRecordType.f111342id == j) {
                return hemfRecordType;
            }
        }
        return null;
    }
}
