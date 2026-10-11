package java.awt;

/* loaded from: classes4.dex */
public final class DisplayMode {
    public static final int BIT_DEPTH_MULTI = -1;
    public static final int REFRESH_RATE_UNKNOWN = 0;
    private int bitDepth;
    private int refreshRate;
    private Dimension size;

    public DisplayMode(int i, int i2, int i3, int i4) {
        this.size = new Dimension(i, i2);
        this.bitDepth = i3;
        this.refreshRate = i4;
    }

    public boolean equals(DisplayMode displayMode) {
        return displayMode != null && getHeight() == displayMode.getHeight() && getWidth() == displayMode.getWidth() && getBitDepth() == displayMode.getBitDepth() && getRefreshRate() == displayMode.getRefreshRate();
    }

    public int getBitDepth() {
        return this.bitDepth;
    }

    public int getHeight() {
        return this.size.height;
    }

    public int getRefreshRate() {
        return this.refreshRate;
    }

    public int getWidth() {
        return this.size.width;
    }

    public int hashCode() {
        return getWidth() + getHeight() + (getBitDepth() * 7) + (getRefreshRate() * 13);
    }

    public String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append(getWidth());
        sb.append("x");
        sb.append(getHeight());
        sb.append("x");
        if (getBitDepth() > 0) {
            str = getBitDepth() + "bpp";
        } else {
            str = "[Multi depth]";
        }
        sb.append(str);
        sb.append("@");
        if (getRefreshRate() > 0) {
            str2 = getRefreshRate() + "Hz";
        } else {
            str2 = "[Unknown refresh rate]";
        }
        sb.append(str2);
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof DisplayMode) {
            return equals((DisplayMode) obj);
        }
        return false;
    }
}
