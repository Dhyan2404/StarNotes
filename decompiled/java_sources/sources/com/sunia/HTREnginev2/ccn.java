package com.sunia.HTREnginev2;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* loaded from: classes4.dex */
public final class ccn extends C14565vv {
    @Override // com.sunia.HTREnginev2.C14565vv, com.sunia.HTREnginev2.fpf
    /* renamed from: a */
    public int mo53428a() {
        return 2;
    }

    @Override // com.sunia.HTREnginev2.C14565vv
    /* renamed from: d */
    public int mo53429d(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        }
        if (c >= 'a' && c <= 'z') {
            sb.append((char) ((c - 'a') + 14));
            return 1;
        }
        if (c >= 0 && c <= 31) {
            sb.append((char) 0);
            sb.append(c);
            return 2;
        }
        if (c >= '!' && c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - PublicSuffixDatabase.f103895g));
            return 2;
        }
        if (c >= ':' && c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - ':') + 15));
            return 2;
        }
        if (c >= '[' && c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - '[') + 22));
            return 2;
        }
        if (c == '`') {
            sb.append((char) 2);
            sb.append((char) (c - '`'));
            return 2;
        }
        if (c >= 'A' && c <= 'Z') {
            sb.append((char) 2);
            sb.append((char) ((c - 'A') + 1));
            return 2;
        }
        if (c >= '{' && c <= 127) {
            sb.append((char) 2);
            sb.append((char) ((c - '{') + 27));
            return 2;
        }
        if (c >= 128) {
            sb.append("\u0001\u001e");
            return mo53429d((char) (c - 128), sb) + 2;
        }
        HighLevelEncoder.m30584c(c);
        return -1;
    }
}
