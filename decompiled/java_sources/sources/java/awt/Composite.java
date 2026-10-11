package java.awt;

import java.awt.image.ColorModel;

/* loaded from: classes4.dex */
public interface Composite {
    CompositeContext createContext(ColorModel colorModel, ColorModel colorModel2, RenderingHints renderingHints);
}
