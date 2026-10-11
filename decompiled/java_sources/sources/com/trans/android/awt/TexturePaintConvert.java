package com.trans.android.awt;

import com.trans.android.AndroidImage;
import java.awt.TexturePaint;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;

/* loaded from: classes10.dex */
public interface TexturePaintConvert {
    boolean accept(TexturePaint texturePaint);

    AndroidImage getAndroidImage(TexturePaint texturePaint, Rectangle2D rectangle2D, AffineTransform affineTransform);
}
