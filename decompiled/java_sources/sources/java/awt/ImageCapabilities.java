package java.awt;

/* loaded from: classes4.dex */
public class ImageCapabilities implements Cloneable {
    private boolean accelerated;

    public ImageCapabilities(boolean z) {
        this.accelerated = z;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    public boolean isAccelerated() {
        return this.accelerated;
    }

    public boolean isTrueVolatile() {
        return false;
    }
}
