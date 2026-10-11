package sun.java2d.pipe.p121hw;

/* loaded from: classes16.dex */
public class ContextCapabilities {
    public static final int CAPS_EMPTY = 0;
    public static final int CAPS_MULTITEXTURE = 16;
    public static final int CAPS_PS20 = 128;
    public static final int CAPS_PS30 = 256;
    public static final int CAPS_RT_PLAIN_ALPHA = 2;
    public static final int CAPS_RT_TEXTURE_ALPHA = 4;
    public static final int CAPS_RT_TEXTURE_OPAQUE = 8;
    public static final int CAPS_TEXNONPOW2 = 32;
    public static final int CAPS_TEXNONSQUARE = 64;
    protected static final int FIRST_PRIVATE_CAP = 65536;
    protected final String adapterId;
    protected final int caps;

    public ContextCapabilities(int i, String str) {
        this.caps = i;
        this.adapterId = str == null ? "unknown adapter" : str;
    }

    public String getAdapterId() {
        return this.adapterId;
    }

    public int getCaps() {
        return this.caps;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("ContextCapabilities: adapter=" + this.adapterId + ", caps=");
        int i = this.caps;
        if (i == 0) {
            stringBuffer.append("CAPS_EMPTY");
        } else {
            if ((i & 2) != 0) {
                stringBuffer.append("CAPS_RT_PLAIN_ALPHA|");
            }
            if ((this.caps & 4) != 0) {
                stringBuffer.append("CAPS_RT_TEXTURE_ALPHA|");
            }
            if ((this.caps & 8) != 0) {
                stringBuffer.append("CAPS_RT_TEXTURE_OPAQUE|");
            }
            if ((this.caps & 16) != 0) {
                stringBuffer.append("CAPS_MULTITEXTURE|");
            }
            if ((this.caps & 32) != 0) {
                stringBuffer.append("CAPS_TEXNONPOW2|");
            }
            if ((this.caps & 64) != 0) {
                stringBuffer.append("CAPS_TEXNONSQUARE|");
            }
            if ((this.caps & 128) != 0) {
                stringBuffer.append("CAPS_PS20|");
            }
            if ((this.caps & 256) != 0) {
                stringBuffer.append("CAPS_PS30|");
            }
        }
        return stringBuffer.toString();
    }
}
