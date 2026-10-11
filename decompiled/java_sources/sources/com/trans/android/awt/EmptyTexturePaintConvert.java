package com.trans.android.awt;

import com.trans.android.AndroidImage;
import java.awt.TexturePaint;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class EmptyTexturePaintConvert implements TexturePaintConvert {
    @Override // com.trans.android.awt.TexturePaintConvert
    public boolean accept(TexturePaint texturePaint) {
        return false;
    }

    @Override // com.trans.android.awt.TexturePaintConvert
    public AndroidImage getAndroidImage(TexturePaint texturePaint, Rectangle2D rectangle2D, AffineTransform affineTransform) {
        return null;
    }
}
