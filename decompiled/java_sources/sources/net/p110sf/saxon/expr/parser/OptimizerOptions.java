package net.p110sf.saxon.expr.parser;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;

/* loaded from: classes11.dex */
public class OptimizerOptions {
    public static final int BYTE_CODE = 64;
    public static final int COMMON_SUBEXPRESSIONS = 128;
    public static final int CONSTANT_FOLDING = 32768;
    public static final int CREATE_KEYS = 32;
    public static final int EXTRACT_GLOBALS = 2;
    public static final int INDEX_VARIABLES = 16;
    public static final int INLINE_FUNCTIONS = 8;
    public static final int INLINE_VARIABLES = 4;
    public static final int JIT = 1024;
    public static final int LOOP_LIFTING = 1;
    public static final int MISCELLANEOUS = 256;
    public static final int REGEX_CACHE = 4096;
    public static final int RULE_SET = 2048;
    public static final int SWITCH = 512;
    public static final int TAIL_CALLS = 16384;
    public static final int VOID_EXPRESSIONS = 8192;

    /* renamed from: a */
    public final int f99940a;
    public static final OptimizerOptions FULL_HE_OPTIMIZATION = new OptimizerOptions("lvmt");
    public static final OptimizerOptions FULL_EE_OPTIMIZATION = new OptimizerOptions(-1);

    public OptimizerOptions(int i) {
        this.f99940a = i;
    }

    /* renamed from: a */
    public final int m62839a(char c) {
        switch (c) {
            case 'c':
                return 64;
            case 'd':
                return 8192;
            case 'e':
                return 4096;
            case 'f':
                return 8;
            case 'g':
                return 2;
            case 'h':
            case 'i':
            case 'o':
            case 'p':
            case 'q':
            case 'u':
            default:
                return 0;
            case 'j':
                return 1024;
            case 'k':
                return 32;
            case 'l':
                return 1;
            case 'm':
                return 256;
            case 'n':
                return 32768;
            case 'r':
                return 2048;
            case 's':
                return 128;
            case 't':
                return 16384;
            case 'v':
                return 4;
            case 'w':
                return 512;
            case 'x':
                return 16;
        }
    }

    public OptimizerOptions except(OptimizerOptions optimizerOptions) {
        return new OptimizerOptions(this.f99940a & (~optimizerOptions.f99940a));
    }

    public int getOptions() {
        return this.f99940a;
    }

    public OptimizerOptions intersect(OptimizerOptions optimizerOptions) {
        return new OptimizerOptions(this.f99940a & optimizerOptions.f99940a);
    }

    public boolean isSet(int i) {
        return (this.f99940a & i) != 0;
    }

    public String toString() {
        String str = "";
        if (isSet(64)) {
            str = "c";
        }
        if (isSet(8192)) {
            str = str + "d";
        }
        if (isSet(4096)) {
            str = str + "e";
        }
        if (isSet(8)) {
            str = str + C6997f.f39671c;
        }
        if (isSet(2)) {
            str = str + C6998g.f39679a;
        }
        if (isSet(1024)) {
            str = str + "j";
        }
        if (isSet(32)) {
            str = str + C4921e.f26537n;
        }
        if (isSet(1)) {
            str = str + "l";
        }
        if (isSet(256)) {
            str = str + "m";
        }
        if (isSet(32768)) {
            str = str + GoogleApiAvailabilityLight.f29016b;
        }
        if (isSet(2048)) {
            str = str + "r";
        }
        if (isSet(128)) {
            str = str + "s";
        }
        if (isSet(16384)) {
            str = str + "t";
        }
        if (isSet(4)) {
            str = str + "v";
        }
        if (isSet(512)) {
            str = str + "w";
        }
        if (!isSet(16)) {
            return str;
        }
        return str + "x";
    }

    public OptimizerOptions union(OptimizerOptions optimizerOptions) {
        return new OptimizerOptions(this.f99940a | optimizerOptions.f99940a);
    }

    public OptimizerOptions(String str) {
        int i;
        if (str.startsWith("-")) {
            i = -1;
            for (int i2 = 1; i2 < str.length(); i2++) {
                i &= ~m62839a(str.charAt(i2));
            }
        } else {
            i = 0;
            for (int i3 = 0; i3 < str.length(); i3++) {
                i |= m62839a(str.charAt(i3));
            }
        }
        this.f99940a = i;
    }
}
