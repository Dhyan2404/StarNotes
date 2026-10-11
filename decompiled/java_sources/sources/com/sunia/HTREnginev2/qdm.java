package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.base.Splitter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class qdm {

    /* renamed from: d */
    public static final int f81930d = 0;

    /* renamed from: e */
    public static final int f81931e = 1;

    /* renamed from: f */
    public static final int f81932f = 2;

    /* renamed from: g */
    public static final int f81933g = 3;

    /* renamed from: h */
    public static final int f81934h = 2192;

    /* renamed from: i */
    public static final int f81935i = 2816;

    /* renamed from: j */
    public static final int f81936j = 2817;

    /* renamed from: k */
    public static final int f81937k = 2819;

    /* renamed from: l */
    public static final int f81938l = 2820;

    /* renamed from: m */
    public static final String f81939m = "SefReader";

    /* renamed from: n */
    public static final int f81940n = 1397048916;

    /* renamed from: o */
    public static final int f81941o = 12;

    /* renamed from: p */
    public static final int f81942p = 8;

    /* renamed from: q */
    public static final int f81943q = 12;

    /* renamed from: r */
    public static final Splitter f81944r = Splitter.m25826on(':');

    /* renamed from: s */
    public static final Splitter f81945s = Splitter.m25826on('*');

    /* renamed from: a */
    public final List<C14298a> f81946a = new ArrayList();

    /* renamed from: b */
    public int f81947b = 0;

    /* renamed from: c */
    public int f81948c;

    /* renamed from: com.sunia.HTREnginev2.qdm$a */
    /* loaded from: classes5.dex */
    public static final class C14298a {

        /* renamed from: a */
        public final int f81949a;

        /* renamed from: b */
        public final long f81950b;

        /* renamed from: c */
        public final int f81951c;

        public C14298a(int i, long j, int i2) {
            this.f81949a = i;
            this.f81950b = j;
            this.f81951c = i2;
        }
    }

    /* renamed from: b */
    public static int m56680b(String str) throws ParserException {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1711564334:
                if (str.equals("SlowMotion_Data")) {
                    c = 0;
                    break;
                }
                break;
            case -1332107749:
                if (str.equals("Super_SlowMotion_Edit_Data")) {
                    c = 1;
                    break;
                }
                break;
            case -1251387154:
                if (str.equals("Super_SlowMotion_Data")) {
                    c = 2;
                    break;
                }
                break;
            case -830665521:
                if (str.equals("Super_SlowMotion_Deflickering_On")) {
                    c = 3;
                    break;
                }
                break;
            case 1760745220:
                if (str.equals("Super_SlowMotion_BGM")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return f81934h;
            case 1:
                return f81937k;
            case 2:
                return f81935i;
            case 3:
                return f81938l;
            case 4:
                return f81936j;
            default:
                throw ParserException.createForMalformedContainer("Invalid SEF name", null);
        }
    }

    /* renamed from: f */
    public static SlowMotionData m56681f(ParsableByteArray parsableByteArray, int i) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List<String> splitToList = f81945s.splitToList(parsableByteArray.readString(i));
        for (int i2 = 0; i2 < splitToList.size(); i2++) {
            List<String> splitToList2 = f81944r.splitToList(splitToList.get(i2));
            if (splitToList2.size() != 3) {
                throw ParserException.createForMalformedContainer(null, null);
            }
            try {
                arrayList.add(new SlowMotionData.Segment(Long.parseLong(splitToList2.get(0)), Long.parseLong(splitToList2.get(1)), 1 << (Integer.parseInt(splitToList2.get(2)) - 1)));
            } catch (NumberFormatException e) {
                throw ParserException.createForMalformedContainer(null, e);
            }
        }
        return new SlowMotionData(arrayList);
    }

    /* renamed from: a */
    public final void m56682a(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        extractorInput.readFully(parsableByteArray.getData(), 0, 8);
        this.f81948c = parsableByteArray.readLittleEndianInt() + 8;
        if (parsableByteArray.readInt() != 1397048916) {
            positionHolder.position = 0L;
        } else {
            positionHolder.position = extractorInput.getPosition() - (this.f81948c - 12);
            this.f81947b = 2;
        }
    }

    /* renamed from: c */
    public int m56683c(ExtractorInput extractorInput, PositionHolder positionHolder, List<Metadata.Entry> list) throws IOException {
        int i = this.f81947b;
        long j = 0;
        if (i == 0) {
            long length = extractorInput.getLength();
            if (length != -1 && length >= 8) {
                j = length - 8;
            }
            positionHolder.position = j;
            this.f81947b = 1;
        } else if (i == 1) {
            m56682a(extractorInput, positionHolder);
        } else if (i == 2) {
            m56684d(extractorInput, positionHolder);
        } else {
            if (i != 3) {
                throw new IllegalStateException();
            }
            m56685e(extractorInput, list);
            positionHolder.position = 0L;
        }
        return 1;
    }

    /* renamed from: d */
    public final void m56684d(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        long length = extractorInput.getLength();
        int i = (this.f81948c - 12) - 8;
        ParsableByteArray parsableByteArray = new ParsableByteArray(i);
        extractorInput.readFully(parsableByteArray.getData(), 0, i);
        for (int i2 = 0; i2 < i / 12; i2++) {
            parsableByteArray.skipBytes(2);
            short readLittleEndianShort = parsableByteArray.readLittleEndianShort();
            if (readLittleEndianShort == 2192 || readLittleEndianShort == 2816 || readLittleEndianShort == 2817 || readLittleEndianShort == 2819 || readLittleEndianShort == 2820) {
                this.f81946a.add(new C14298a(readLittleEndianShort, (length - this.f81948c) - parsableByteArray.readLittleEndianInt(), parsableByteArray.readLittleEndianInt()));
            } else {
                parsableByteArray.skipBytes(8);
            }
        }
        if (this.f81946a.isEmpty()) {
            positionHolder.position = 0L;
        } else {
            this.f81947b = 3;
            positionHolder.position = this.f81946a.get(0).f81950b;
        }
    }

    /* renamed from: e */
    public final void m56685e(ExtractorInput extractorInput, List<Metadata.Entry> list) throws IOException {
        long position = extractorInput.getPosition();
        int length = (int) ((extractorInput.getLength() - extractorInput.getPosition()) - this.f81948c);
        ParsableByteArray parsableByteArray = new ParsableByteArray(length);
        extractorInput.readFully(parsableByteArray.getData(), 0, length);
        for (int i = 0; i < this.f81946a.size(); i++) {
            C14298a c14298a = this.f81946a.get(i);
            parsableByteArray.setPosition((int) (c14298a.f81950b - position));
            parsableByteArray.skipBytes(4);
            int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
            int m56680b = m56680b(parsableByteArray.readString(readLittleEndianInt));
            int i2 = c14298a.f81951c - (readLittleEndianInt + 8);
            if (m56680b == 2192) {
                list.add(m56681f(parsableByteArray, i2));
            } else if (m56680b != 2816 && m56680b != 2817 && m56680b != 2819 && m56680b != 2820) {
                throw new IllegalStateException();
            }
        }
    }

    /* renamed from: g */
    public void m56686g() {
        this.f81946a.clear();
        this.f81947b = 0;
    }
}
