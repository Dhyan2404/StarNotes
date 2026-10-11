package org.mozilla.universalchardet;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.EscCharsetProber;
import org.mozilla.universalchardet.prober.Latin1Prober;
import org.mozilla.universalchardet.prober.MBCSGroupProber;
import org.mozilla.universalchardet.prober.SBCSGroupProber;

/* loaded from: classes13.dex */
public class UniversalDetector {
    public static final float MINIMUM_THRESHOLD = 0.2f;
    public static final float SHORTCUT_THRESHOLD = 0.95f;

    /* renamed from: a */
    public InputState f115500a;

    /* renamed from: b */
    public boolean f115501b;

    /* renamed from: c */
    public boolean f115502c;

    /* renamed from: d */
    public boolean f115503d;

    /* renamed from: e */
    public boolean f115504e;

    /* renamed from: f */
    public byte f115505f;

    /* renamed from: g */
    public String f115506g;

    /* renamed from: h */
    public CharsetProber[] f115507h;

    /* renamed from: i */
    public CharsetProber f115508i;

    /* renamed from: j */
    public CharsetListener f115509j;

    /* loaded from: classes13.dex */
    public enum InputState {
        PURE_ASCII,
        ESC_ASCII,
        HIGHBYTE
    }

    public UniversalDetector() {
        this(null);
    }

    /* renamed from: a */
    public static String m71695a(byte[] bArr, int i) {
        int i2 = i + 3;
        if (bArr.length <= i2) {
            return null;
        }
        int i3 = bArr[i] & 255;
        int i4 = bArr[i + 1] & 255;
        int i5 = bArr[i + 2] & 255;
        int i6 = bArr[i2] & 255;
        if (i3 == 0) {
            if (i4 == 0 && i5 == 254 && i6 == 255) {
                return Constants.CHARSET_UTF_32BE;
            }
            if (i4 == 0 && i5 == 255 && i6 == 254) {
                return Constants.CHARSET_X_ISO_10646_UCS_4_2143;
            }
            return null;
        }
        if (i3 == 239) {
            if (i4 == 187 && i5 == 191) {
                return Constants.CHARSET_UTF_8;
            }
            return null;
        }
        if (i3 == 254) {
            if (i4 == 255 && i5 == 0 && i6 == 0) {
                return Constants.CHARSET_X_ISO_10646_UCS_4_3412;
            }
            if (i4 == 255) {
                return Constants.CHARSET_UTF_16BE;
            }
            return null;
        }
        if (i3 != 255) {
            return null;
        }
        if (i4 == 254 && i5 == 0 && i6 == 0) {
            return Constants.CHARSET_UTF_32LE;
        }
        if (i4 == 254) {
            return Constants.CHARSET_UTF_16LE;
        }
        return null;
    }

    public static String detectCharset(File file) throws IOException {
        return detectCharset(file.toPath());
    }

    public static String detectCharsetFromBOM(byte[] bArr) {
        return m71695a(bArr, 0);
    }

    public void dataEnd() {
        CharsetProber[] charsetProberArr;
        if (this.f115503d) {
            String str = this.f115506g;
            if (str != null) {
                this.f115501b = true;
                CharsetListener charsetListener = this.f115509j;
                if (charsetListener != null) {
                    charsetListener.report(str);
                    return;
                }
                return;
            }
            InputState inputState = this.f115500a;
            if (inputState != InputState.HIGHBYTE) {
                if (inputState != InputState.ESC_ASCII && inputState == InputState.PURE_ASCII && this.f115504e) {
                    this.f115506g = Constants.CHARSET_US_ASCCI;
                    return;
                }
                return;
            }
            int i = 0;
            float f = 0.0f;
            int i2 = 0;
            while (true) {
                charsetProberArr = this.f115507h;
                if (i >= charsetProberArr.length) {
                    break;
                }
                float confidence = charsetProberArr[i].getConfidence();
                if (confidence > f) {
                    i2 = i;
                    f = confidence;
                }
                i++;
            }
            if (f > 0.2f) {
                String charSetName = charsetProberArr[i2].getCharSetName();
                this.f115506g = charSetName;
                CharsetListener charsetListener2 = this.f115509j;
                if (charsetListener2 != null) {
                    charsetListener2.report(charSetName);
                }
            }
        }
    }

    public String getDetectedCharset() {
        return this.f115506g;
    }

    public CharsetListener getListener() {
        return this.f115509j;
    }

    public void handleData(byte[] bArr) {
        handleData(bArr, 0, bArr.length);
    }

    public boolean isDone() {
        return this.f115501b;
    }

    public final void reset() {
        int i = 0;
        this.f115501b = false;
        this.f115502c = true;
        this.f115506g = null;
        this.f115503d = false;
        this.f115500a = InputState.PURE_ASCII;
        this.f115505f = (byte) 0;
        CharsetProber charsetProber = this.f115508i;
        if (charsetProber != null) {
            charsetProber.reset();
        }
        while (true) {
            CharsetProber[] charsetProberArr = this.f115507h;
            if (i >= charsetProberArr.length) {
                return;
            }
            CharsetProber charsetProber2 = charsetProberArr[i];
            if (charsetProber2 != null) {
                charsetProber2.reset();
            }
            i++;
        }
    }

    public void setListener(CharsetListener charsetListener) {
        this.f115509j = charsetListener;
    }

    public UniversalDetector(CharsetListener charsetListener) {
        this.f115504e = true;
        this.f115509j = charsetListener;
        this.f115508i = null;
        this.f115507h = new CharsetProber[3];
        reset();
    }

    public static String detectCharset(Path path) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(path, new OpenOption[0]));
        try {
            String detectCharset = detectCharset(bufferedInputStream);
            bufferedInputStream.close();
            return detectCharset;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void handleData(byte[] bArr, int i, int i2) {
        String m71695a;
        if (this.f115501b) {
            return;
        }
        if (i2 > 0) {
            this.f115503d = true;
        }
        int i3 = 0;
        if (this.f115502c) {
            this.f115502c = false;
            if (i2 > 3 && (m71695a = m71695a(bArr, i)) != null) {
                this.f115506g = m71695a;
                this.f115501b = true;
                return;
            }
        }
        int i4 = i + i2;
        for (int i5 = i; i5 < i4; i5++) {
            byte b = bArr[i5];
            int i6 = b & 255;
            if ((i6 & 128) != 0 && i6 != 160) {
                InputState inputState = this.f115500a;
                InputState inputState2 = InputState.HIGHBYTE;
                if (inputState != inputState2) {
                    this.f115500a = inputState2;
                    if (this.f115508i != null) {
                        this.f115508i = null;
                    }
                    CharsetProber[] charsetProberArr = this.f115507h;
                    if (charsetProberArr[0] == null) {
                        charsetProberArr[0] = new MBCSGroupProber();
                    }
                    CharsetProber[] charsetProberArr2 = this.f115507h;
                    if (charsetProberArr2[1] == null) {
                        charsetProberArr2[1] = new SBCSGroupProber();
                    }
                    CharsetProber[] charsetProberArr3 = this.f115507h;
                    if (charsetProberArr3[2] == null) {
                        charsetProberArr3[2] = new Latin1Prober();
                    }
                }
            } else {
                InputState inputState3 = this.f115500a;
                InputState inputState4 = InputState.PURE_ASCII;
                if (inputState3 == inputState4 && (i6 == 27 || (i6 == 123 && this.f115505f == 126))) {
                    this.f115500a = InputState.ESC_ASCII;
                }
                if (this.f115500a == inputState4 && this.f115504e) {
                    this.f115504e = (i6 >= 32 && i6 <= 126) || i6 == 10 || i6 == 13 || i6 == 9;
                }
                this.f115505f = b;
            }
        }
        InputState inputState5 = this.f115500a;
        if (inputState5 == InputState.ESC_ASCII) {
            if (this.f115508i == null) {
                this.f115508i = new EscCharsetProber();
            }
            if (this.f115508i.handleData(bArr, i, i2) == CharsetProber.ProbingState.FOUND_IT) {
                this.f115501b = true;
                this.f115506g = this.f115508i.getCharSetName();
                return;
            }
            return;
        }
        if (inputState5 != InputState.HIGHBYTE) {
            return;
        }
        while (true) {
            CharsetProber[] charsetProberArr4 = this.f115507h;
            if (i3 >= charsetProberArr4.length) {
                return;
            }
            if (charsetProberArr4[i3].handleData(bArr, i, i2) == CharsetProber.ProbingState.FOUND_IT) {
                this.f115501b = true;
                this.f115506g = this.f115507h[i3].getCharSetName();
                return;
            }
            i3++;
        }
    }

    public static String detectCharset(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        UniversalDetector universalDetector = new UniversalDetector(null);
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0 || universalDetector.isDone()) {
                break;
            }
            universalDetector.handleData(bArr, 0, read);
        }
        universalDetector.dataEnd();
        String detectedCharset = universalDetector.getDetectedCharset();
        universalDetector.reset();
        return detectedCharset;
    }
}
