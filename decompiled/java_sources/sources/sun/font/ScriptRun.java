package sun.font;

import com.onyx.android.sdk.base.data.font.TTFFont;

/* loaded from: classes16.dex */
public final class ScriptRun {
    static final int DONE = -1;
    static final int LEAD_LIMIT = 56320;
    static final int LEAD_START = 55296;
    static final int LEAD_SURROGATE_SHIFT = 10;
    static final int SURROGATE_OFFSET = -56613888;
    static final int SURROGATE_START = 65536;
    static final int TAIL_LIMIT = 57344;
    static final int TAIL_START = 56320;
    private static final int pairedCharExtra;
    private static final int pairedCharPower;
    private static int[] pairedChars;
    private int parenSP;
    private int scriptCode;
    private int scriptLimit;
    private int scriptStart;
    private int[] stack;
    private char[] text;
    private int textLimit;
    private int textStart;

    static {
        int[] iArr = {40, 41, 60, 62, 91, 93, 123, 125, 171, 187, 8216, 8217, 8220, 8221, 8249, 8250, 12296, TTFFont.Platform.Windows.Language.ENGLISH_ZIMBABWE, 12298, 12299, 12300, 12301, 12302, 12303, 12304, 12305, 12308, 12309, 12310, 12311, 12312, 12313, 12314, 12315};
        pairedChars = iArr;
        int highBit = 1 << highBit(iArr.length);
        pairedCharPower = highBit;
        pairedCharExtra = pairedChars.length - highBit;
    }

    public ScriptRun() {
    }

    private static int getPairIndex(int i) {
        int i2 = pairedCharPower;
        int[] iArr = pairedChars;
        int i3 = pairedCharExtra;
        if (i < iArr[i3]) {
            i3 = 0;
        }
        while (i2 > 1) {
            i2 >>= 1;
            int i4 = i3 + i2;
            if (i >= pairedChars[i4]) {
                i3 = i4;
            }
        }
        if (pairedChars[i3] != i) {
            return -1;
        }
        return i3;
    }

    private static byte highBit(int i) {
        byte b;
        if (i <= 0) {
            return (byte) -32;
        }
        if (i >= 65536) {
            i >>= 16;
            b = (byte) 16;
        } else {
            b = 0;
        }
        if (i >= 256) {
            i >>= 8;
            b = (byte) (b + 8);
        }
        if (i >= 16) {
            i >>= 4;
            b = (byte) (b + 4);
        }
        if (i >= 4) {
            i >>= 2;
            b = (byte) (b + 2);
        }
        return i >= 2 ? (byte) (b + 1) : b;
    }

    private int nextCodePoint() {
        char c;
        int i = this.scriptLimit;
        int i2 = this.textLimit;
        if (i >= i2) {
            return -1;
        }
        char[] cArr = this.text;
        int i3 = i + 1;
        this.scriptLimit = i3;
        char c2 = cArr[i];
        if (c2 < 55296 || c2 >= 56320 || i3 >= i2 || (c = cArr[i3]) < 56320 || c >= 57344) {
            return c2;
        }
        this.scriptLimit = i3 + 1;
        return SURROGATE_OFFSET + (c2 << '\n') + c;
    }

    private void pushback(int i) {
        if (i >= 0) {
            if (i >= 65536) {
                this.scriptLimit -= 2;
            } else {
                this.scriptLimit--;
            }
        }
    }

    private static boolean sameScript(int i, int i2) {
        return i == i2 || i <= 1 || i2 <= 1;
    }

    public int getScriptCode() {
        return this.scriptCode;
    }

    public int getScriptLimit() {
        return this.scriptLimit;
    }

    public int getScriptStart() {
        return this.scriptStart;
    }

    public void init(char[] cArr, int i, int i2) {
        if (cArr == null || i < 0 || i2 < 0 || i2 > cArr.length - i) {
            throw new IllegalArgumentException();
        }
        this.text = cArr;
        this.textStart = i;
        this.textLimit = i2 + i;
        this.scriptStart = i;
        this.scriptLimit = i;
        this.scriptCode = -1;
        this.parenSP = 0;
    }

    public boolean next() {
        int i;
        int i2;
        int i3 = this.parenSP;
        int i4 = this.scriptLimit;
        if (i4 >= this.textLimit) {
            return false;
        }
        this.scriptCode = 0;
        this.scriptStart = i4;
        while (true) {
            int nextCodePoint = nextCodePoint();
            if (nextCodePoint != -1) {
                int script = ScriptRunData.getScript(nextCodePoint);
                int pairIndex = script == 0 ? getPairIndex(nextCodePoint) : -1;
                if (pairIndex >= 0) {
                    if ((pairIndex & 1) == 0) {
                        int[] iArr = this.stack;
                        if (iArr == null) {
                            this.stack = new int[32];
                        } else if (this.parenSP == iArr.length) {
                            int[] iArr2 = new int[iArr.length + 32];
                            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                            this.stack = iArr2;
                        }
                        int[] iArr3 = this.stack;
                        int i5 = this.parenSP;
                        int i6 = i5 + 1;
                        iArr3[i5] = pairIndex;
                        this.parenSP = i6 + 1;
                        iArr3[i6] = this.scriptCode;
                    } else if (this.parenSP > 0) {
                        int i7 = pairIndex & (-2);
                        do {
                            i2 = this.parenSP - 2;
                            this.parenSP = i2;
                            if (i2 < 0) {
                                break;
                            }
                        } while (this.stack[i2] != i7);
                        if (i2 >= 0) {
                            script = this.stack[i2 + 1];
                        } else {
                            this.parenSP = 0;
                        }
                        int i8 = this.parenSP;
                        if (i8 < i3) {
                            i3 = i8;
                        }
                    }
                }
                if (!sameScript(this.scriptCode, script)) {
                    pushback(nextCodePoint);
                    break;
                }
                if (this.scriptCode <= 1 && script > 1) {
                    this.scriptCode = script;
                    while (i3 < this.parenSP) {
                        this.stack[i3 + 1] = this.scriptCode;
                        i3 += 2;
                    }
                }
                if (pairIndex > 0 && (pairIndex & 1) != 0 && (i = this.parenSP) > 0) {
                    this.parenSP = i - 2;
                }
            } else {
                break;
            }
        }
        return true;
    }

    public ScriptRun(char[] cArr, int i, int i2) {
        init(cArr, i, i2);
    }
}
