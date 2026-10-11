package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import com.twelvemonkeys.imageio.plugins.jpeg.Frame;
import com.twelvemonkeys.imageio.plugins.jpeg.Scan;
import com.twelvemonkeys.lang.Validate;
import java.io.DataInput;
import java.io.IOException;

/* loaded from: classes10.dex */
public abstract class sdm {

    /* renamed from: a */
    public final int f84044a;

    public sdm(int i) {
        this.f84044a = ((Integer) Validate.isTrue((i >> 8) == 255, Integer.valueOf(i), "Unknown JPEG marker: 0x%04x")).intValue();
    }

    /* renamed from: a */
    public static sdm m57153a(int i, String str, int i2, DataInput dataInput) throws IOException {
        if (i == 65501) {
            return cml.m53477b(dataInput, i2);
        }
        if (i == 65534) {
            return d4e.m53578b(dataInput, i2);
        }
        switch (i) {
            case JPEG.SOF0 /* 65472 */:
            case JPEG.SOF1 /* 65473 */:
            case JPEG.SOF2 /* 65474 */:
            case JPEG.SOF3 /* 65475 */:
            case JPEG.SOF5 /* 65477 */:
            case JPEG.SOF6 /* 65478 */:
            case JPEG.SOF7 /* 65479 */:
                break;
            case JPEG.DHT /* 65476 */:
                return n0i.m55699d(dataInput, i2);
            default:
                switch (i) {
                    case JPEG.SOF9 /* 65481 */:
                    case JPEG.SOF10 /* 65482 */:
                    case JPEG.SOF11 /* 65483 */:
                        break;
                    default:
                        switch (i) {
                            case JPEG.SOF13 /* 65485 */:
                            case JPEG.SOF14 /* 65486 */:
                            case JPEG.SOF15 /* 65487 */:
                                break;
                            default:
                                switch (i) {
                                    case 65498:
                                        return Scan.m60555b(dataInput, i2);
                                    case JPEG.DQT /* 65499 */:
                                        return hal.m54440d(dataInput, i2);
                                    default:
                                        switch (i) {
                                            case 65504:
                                            case 65505:
                                            case JPEG.APP2 /* 65506 */:
                                            case 65507:
                                            case JPEG.APP4 /* 65508 */:
                                            case JPEG.APP5 /* 65509 */:
                                            case JPEG.APP6 /* 65510 */:
                                            case JPEG.APP7 /* 65511 */:
                                            case JPEG.APP8 /* 65512 */:
                                            case JPEG.APP9 /* 65513 */:
                                            case JPEG.APP10 /* 65514 */:
                                            case JPEG.APP11 /* 65515 */:
                                            case JPEG.APP12 /* 65516 */:
                                            case JPEG.APP13 /* 65517 */:
                                            case JPEG.APP14 /* 65518 */:
                                            case JPEG.APP15 /* 65519 */:
                                                return C13767gd.m54259c(i, str, dataInput, i2);
                                            default:
                                                return qtn.m56763b(i, i2, dataInput);
                                        }
                                }
                        }
                }
        }
        return Frame.m60501e(i, dataInput, i2);
    }
}
