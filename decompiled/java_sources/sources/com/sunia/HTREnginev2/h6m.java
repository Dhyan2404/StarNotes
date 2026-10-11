package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class h6m extends TagPayloadReader {

    /* renamed from: e */
    public static final String f71880e = "onMetaData";

    /* renamed from: f */
    public static final String f71881f = "duration";

    /* renamed from: g */
    public static final String f71882g = "keyframes";

    /* renamed from: h */
    public static final String f71883h = "filepositions";

    /* renamed from: i */
    public static final String f71884i = "times";

    /* renamed from: j */
    public static final int f71885j = 0;

    /* renamed from: k */
    public static final int f71886k = 1;

    /* renamed from: l */
    public static final int f71887l = 2;

    /* renamed from: m */
    public static final int f71888m = 3;

    /* renamed from: n */
    public static final int f71889n = 8;

    /* renamed from: o */
    public static final int f71890o = 9;

    /* renamed from: p */
    public static final int f71891p = 10;

    /* renamed from: q */
    public static final int f71892q = 11;

    /* renamed from: b */
    public long f71893b;

    /* renamed from: c */
    public long[] f71894c;

    /* renamed from: d */
    public long[] f71895d;

    public h6m() {
        super(new DummyTrackOutput());
        this.f71893b = C4649C.TIME_UNSET;
        this.f71894c = new long[0];
        this.f71895d = new long[0];
    }

    /* renamed from: h */
    public static Boolean m54422h(ParsableByteArray parsableByteArray) {
        return Boolean.valueOf(parsableByteArray.readUnsignedByte() == 1);
    }

    @Nullable
    /* renamed from: i */
    public static Object m54423i(ParsableByteArray parsableByteArray, int i) {
        if (i == 0) {
            return m54425k(parsableByteArray);
        }
        if (i == 1) {
            return m54422h(parsableByteArray);
        }
        if (i == 2) {
            return m54429o(parsableByteArray);
        }
        if (i == 3) {
            return m54427m(parsableByteArray);
        }
        if (i == 8) {
            return m54426l(parsableByteArray);
        }
        if (i == 10) {
            return m54428n(parsableByteArray);
        }
        if (i != 11) {
            return null;
        }
        return m54424j(parsableByteArray);
    }

    /* renamed from: j */
    public static Date m54424j(ParsableByteArray parsableByteArray) {
        Date date = new Date((long) m54425k(parsableByteArray).doubleValue());
        parsableByteArray.skipBytes(2);
        return date;
    }

    /* renamed from: k */
    public static Double m54425k(ParsableByteArray parsableByteArray) {
        return Double.valueOf(Double.longBitsToDouble(parsableByteArray.readLong()));
    }

    /* renamed from: l */
    public static HashMap<String, Object> m54426l(ParsableByteArray parsableByteArray) {
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        HashMap<String, Object> hashMap = new HashMap<>(readUnsignedIntToInt);
        for (int i = 0; i < readUnsignedIntToInt; i++) {
            String m54429o = m54429o(parsableByteArray);
            Object m54423i = m54423i(parsableByteArray, m54430p(parsableByteArray));
            if (m54423i != null) {
                hashMap.put(m54429o, m54423i);
            }
        }
        return hashMap;
    }

    /* renamed from: m */
    public static HashMap<String, Object> m54427m(ParsableByteArray parsableByteArray) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String m54429o = m54429o(parsableByteArray);
            int m54430p = m54430p(parsableByteArray);
            if (m54430p == 9) {
                return hashMap;
            }
            Object m54423i = m54423i(parsableByteArray, m54430p);
            if (m54423i != null) {
                hashMap.put(m54429o, m54423i);
            }
        }
    }

    /* renamed from: n */
    public static ArrayList<Object> m54428n(ParsableByteArray parsableByteArray) {
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        ArrayList<Object> arrayList = new ArrayList<>(readUnsignedIntToInt);
        for (int i = 0; i < readUnsignedIntToInt; i++) {
            Object m54423i = m54423i(parsableByteArray, m54430p(parsableByteArray));
            if (m54423i != null) {
                arrayList.add(m54423i);
            }
        }
        return arrayList;
    }

    /* renamed from: o */
    public static String m54429o(ParsableByteArray parsableByteArray) {
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(readUnsignedShort);
        return new String(parsableByteArray.getData(), position, readUnsignedShort);
    }

    /* renamed from: p */
    public static int m54430p(ParsableByteArray parsableByteArray) {
        return parsableByteArray.readUnsignedByte();
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: b */
    public boolean mo18855b(ParsableByteArray parsableByteArray) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: c */
    public boolean mo18856c(ParsableByteArray parsableByteArray, long j) {
        if (m54430p(parsableByteArray) != 2 || !f71880e.equals(m54429o(parsableByteArray)) || parsableByteArray.bytesLeft() == 0 || m54430p(parsableByteArray) != 8) {
            return false;
        }
        HashMap<String, Object> m54426l = m54426l(parsableByteArray);
        Object obj = m54426l.get("duration");
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            if (doubleValue > 0.0d) {
                this.f71893b = (long) (doubleValue * 1000000.0d);
            }
        }
        Object obj2 = m54426l.get(f71882g);
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get(f71883h);
            Object obj4 = map.get(f71884i);
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.f71894c = new long[size];
                this.f71895d = new long[size];
                for (int i = 0; i < size; i++) {
                    Object obj5 = list.get(i);
                    Object obj6 = list2.get(i);
                    if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                        this.f71894c = new long[0];
                        this.f71895d = new long[0];
                        break;
                    }
                    this.f71894c[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                    this.f71895d[i] = ((Double) obj5).longValue();
                }
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: d */
    public void mo18857d() {
    }

    /* renamed from: e */
    public long m54431e() {
        return this.f71893b;
    }

    /* renamed from: f */
    public long[] m54432f() {
        return this.f71895d;
    }

    /* renamed from: g */
    public long[] m54433g() {
        return this.f71894c;
    }
}
