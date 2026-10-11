package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import com.sunia.HTREnginev2.C13467a2;
import com.sunia.HTREnginev2.C13510b2;
import com.sunia.HTREnginev2.C13600d2;
import com.sunia.HTREnginev2.C14343rb;
import com.sunia.HTREnginev2.C14631x1;
import com.sunia.HTREnginev2.C14685y1;
import com.sunia.HTREnginev2.C14739z1;
import com.sunia.HTREnginev2.uyg;

/* loaded from: classes4.dex */
public abstract class AbstractExpandedDecoder {

    /* renamed from: a */
    public final BitArray f38657a;

    /* renamed from: b */
    public final uyg f38658b;

    public AbstractExpandedDecoder(BitArray bitArray) {
        this.f38657a = bitArray;
        this.f38658b = new uyg(bitArray);
    }

    public static AbstractExpandedDecoder createDecoder(BitArray bitArray) {
        if (bitArray.get(1)) {
            return new C13600d2(bitArray);
        }
        if (!bitArray.get(2)) {
            return new C14343rb(bitArray);
        }
        int m57707g = uyg.m57707g(bitArray, 1, 4);
        if (m57707g == 4) {
            return new C14631x1(bitArray);
        }
        if (m57707g == 5) {
            return new C14685y1(bitArray);
        }
        int m57707g2 = uyg.m57707g(bitArray, 1, 5);
        if (m57707g2 == 12) {
            return new C14739z1(bitArray);
        }
        if (m57707g2 == 13) {
            return new C13467a2(bitArray);
        }
        switch (uyg.m57707g(bitArray, 1, 7)) {
            case 56:
                return new C13510b2(bitArray, "310", "11");
            case 57:
                return new C13510b2(bitArray, "320", "11");
            case 58:
                return new C13510b2(bitArray, "310", "13");
            case 59:
                return new C13510b2(bitArray, "320", "13");
            case 60:
                return new C13510b2(bitArray, "310", "15");
            case 61:
                return new C13510b2(bitArray, "320", "15");
            case 62:
                return new C13510b2(bitArray, "310", "17");
            case 63:
                return new C13510b2(bitArray, "320", "17");
            default:
                throw new IllegalStateException("unknown decoder: " + bitArray);
        }
    }

    public final uyg getGeneralDecoder() {
        return this.f38658b;
    }

    public final BitArray getInformation() {
        return this.f38657a;
    }

    public abstract String parseInformation() throws NotFoundException, FormatException;
}
