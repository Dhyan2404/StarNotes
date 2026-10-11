package java.awt;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;

/* loaded from: classes4.dex */
public class BufferCapabilities implements Cloneable {
    private ImageCapabilities backCaps;
    private FlipContents flipContents;
    private ImageCapabilities frontCaps;

    /* loaded from: classes4.dex */
    public static final class FlipContents extends AttributeValue {
        private static int I_UNDEFINED;
        private static final String[] NAMES = {OcrValues.ENGINE_UNDEFINED, NotificationCompat.WearableExtender.f5054t, "prior", "copied"};
        public static final FlipContents UNDEFINED = new FlipContents(0);
        private static int I_BACKGROUND = 1;
        public static final FlipContents BACKGROUND = new FlipContents(I_BACKGROUND);
        private static int I_PRIOR = 2;
        public static final FlipContents PRIOR = new FlipContents(I_PRIOR);
        private static int I_COPIED = 3;
        public static final FlipContents COPIED = new FlipContents(I_COPIED);

        private FlipContents(int i) {
            super(i, NAMES);
        }

        @Override // java.awt.AttributeValue
        public /* bridge */ /* synthetic */ int hashCode() {
            return super.hashCode();
        }

        @Override // java.awt.AttributeValue
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }
    }

    public BufferCapabilities(ImageCapabilities imageCapabilities, ImageCapabilities imageCapabilities2, FlipContents flipContents) {
        if (imageCapabilities == null || imageCapabilities2 == null) {
            throw new IllegalArgumentException("Image capabilities specified cannot be null");
        }
        this.frontCaps = imageCapabilities;
        this.backCaps = imageCapabilities2;
        this.flipContents = flipContents;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    public ImageCapabilities getBackBufferCapabilities() {
        return this.backCaps;
    }

    public FlipContents getFlipContents() {
        return this.flipContents;
    }

    public ImageCapabilities getFrontBufferCapabilities() {
        return this.frontCaps;
    }

    public boolean isFullScreenRequired() {
        return false;
    }

    public boolean isMultiBufferAvailable() {
        return false;
    }

    public boolean isPageFlipping() {
        return getFlipContents() != null;
    }
}
