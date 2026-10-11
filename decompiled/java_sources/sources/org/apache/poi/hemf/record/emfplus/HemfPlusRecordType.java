package org.apache.poi.hemf.record.emfplus;

import java.util.function.Supplier;
import org.apache.poi.hemf.record.emfplus.HemfPlusDraw;
import org.apache.poi.hemf.record.emfplus.HemfPlusHeader;
import org.apache.poi.hemf.record.emfplus.HemfPlusMisc;
import org.apache.poi.hemf.record.emfplus.HemfPlusObject;
import org.apache.poi.hemf.record.emfplus.UnimplementedHemfPlusRecord;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public enum HemfPlusRecordType {
    header(16385, new Supplier() { // from class: com.sunia.HTREnginev2.ith
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusHeader();
        }
    }),
    eof(16386, new Supplier() { // from class: com.sunia.HTREnginev2.huh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusEOF();
        }
    }),
    comment(16387, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    getDC(16388, new Supplier() { // from class: com.sunia.HTREnginev2.rth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusGetDC();
        }
    }),
    multiFormatStart(16389, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    multiFormatSection(16390, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    multiFormatEnd(16391, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    object(16392, new Supplier() { // from class: com.sunia.HTREnginev2.cuh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusObject.EmfPlusObject();
        }
    }),
    clear(16393, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    fillRects(16394, new Supplier() { // from class: com.sunia.HTREnginev2.duh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusDraw.EmfPlusFillRects();
        }
    }),
    drawRects(16395, new Supplier() { // from class: com.sunia.HTREnginev2.tth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusDraw.EmfPlusDrawRects();
        }
    }),
    fillPolygon(16396, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    drawLines(16397, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    fillEllipse(16398, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    drawEllipse(16399, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    fillPie(16400, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    drawPie(16401, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    drawArc(16402, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    fillRegion(16403, new Supplier() { // from class: com.sunia.HTREnginev2.fuh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusDraw.EmfPlusFillRegion();
        }
    }),
    fillPath(16404, new Supplier() { // from class: com.sunia.HTREnginev2.guh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusDraw.EmfPlusFillPath();
        }
    }),
    drawPath(16405, new Supplier() { // from class: com.sunia.HTREnginev2.iuh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusDraw.EmfPlusDrawPath();
        }
    }),
    fillClosedCurve(16406, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    drawClosedCurve(16407, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    drawCurve(16408, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    drawBeziers(16409, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    drawImage(16410, new Supplier() { // from class: com.sunia.HTREnginev2.juh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusDraw.EmfPlusDrawImage();
        }
    }),
    drawImagePoints(16411, new Supplier() { // from class: com.sunia.HTREnginev2.kuh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusDraw.EmfPlusDrawImagePoints();
        }
    }),
    drawString(16412, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    setRenderingOrigin(16413, new Supplier() { // from class: com.sunia.HTREnginev2.luh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetRenderingOrigin();
        }
    }),
    setAntiAliasMode(16414, new Supplier() { // from class: com.sunia.HTREnginev2.jth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetAntiAliasMode();
        }
    }),
    setTextRenderingHint(16415, new Supplier() { // from class: com.sunia.HTREnginev2.kth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetTextRenderingHint();
        }
    }),
    setTextContrast(16416, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    setInterpolationMode(16417, new Supplier() { // from class: com.sunia.HTREnginev2.lth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetInterpolationMode();
        }
    }),
    setPixelOffsetMode(16418, new Supplier() { // from class: com.sunia.HTREnginev2.mth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetPixelOffsetMode();
        }
    }),
    setCompositingMode(16419, new Supplier() { // from class: com.sunia.HTREnginev2.nth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetCompositingMode();
        }
    }),
    setCompositingQuality(16420, new Supplier() { // from class: com.sunia.HTREnginev2.oth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetCompositingQuality();
        }
    }),
    save(16421, new Supplier() { // from class: com.sunia.HTREnginev2.pth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSave();
        }
    }),
    restore(16422, new Supplier() { // from class: com.sunia.HTREnginev2.qth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusRestore();
        }
    }),
    beginContainer(16423, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    beginContainerNoParams(1064, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    endContainer(16425, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    setWorldTransform(16426, new Supplier() { // from class: com.sunia.HTREnginev2.sth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetWorldTransform();
        }
    }),
    resetWorldTransform(16427, new Supplier() { // from class: com.sunia.HTREnginev2.uth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusResetWorldTransform();
        }
    }),
    multiplyWorldTransform(16428, new Supplier() { // from class: com.sunia.HTREnginev2.vth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusMultiplyWorldTransform();
        }
    }),
    translateWorldTransform(16429, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    scaleWorldTransform(16430, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    rotateWorldTransform(16431, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    setPageTransform(16432, new Supplier() { // from class: com.sunia.HTREnginev2.wth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetPageTransform();
        }
    }),
    resetClip(16433, new Supplier() { // from class: com.sunia.HTREnginev2.xth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusResetClip();
        }
    }),
    setClipRect(16434, new Supplier() { // from class: com.sunia.HTREnginev2.yth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetClipRect();
        }
    }),
    setClipRegion(16435, new Supplier() { // from class: com.sunia.HTREnginev2.zth
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetClipRegion();
        }
    }),
    setClipPath(16436, new Supplier() { // from class: com.sunia.HTREnginev2.auh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusMisc.EmfPlusSetClipPath();
        }
    }),
    offsetClip(16437, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    drawDriverString(16438, new Supplier() { // from class: com.sunia.HTREnginev2.buh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new HemfPlusDraw.EmfPlusDrawDriverString();
        }
    }),
    strokeFillPath(16439, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    serializableObject(16440, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    setTSGraphics(16441, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    }),
    setTSClip(16442, new Supplier() { // from class: com.sunia.HTREnginev2.euh
        @Override // java.util.function.Supplier
        public final Object get() {
            return new UnimplementedHemfPlusRecord();
        }
    });

    public final Supplier<? extends HemfPlusRecord> constructor;

    /* renamed from: id */
    public final long f111367id;

    HemfPlusRecordType(long j, Supplier supplier) {
        this.f111367id = j;
        this.constructor = supplier;
    }

    public static HemfPlusRecordType getById(long j) {
        for (HemfPlusRecordType hemfPlusRecordType : values()) {
            if (hemfPlusRecordType.f111367id == j) {
                return hemfPlusRecordType;
            }
        }
        return null;
    }
}
