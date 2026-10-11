package com.twelvemonkeys.image;

import com.twelvemonkeys.lang.Validate;
import java.awt.Component;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import javax.swing.Icon;

/* loaded from: classes10.dex */
public class BufferedImageIcon implements Icon {

    /* renamed from: a */
    public final BufferedImage f93927a;

    /* renamed from: b */
    public int f93928b;

    /* renamed from: c */
    public int f93929c;

    /* renamed from: d */
    public final boolean f93930d;

    public BufferedImageIcon(BufferedImage bufferedImage) {
        this(bufferedImage, bufferedImage != null ? bufferedImage.getWidth() : 0, bufferedImage != null ? bufferedImage.getHeight() : 0);
    }

    @Override // javax.swing.Icon
    public int getIconHeight() {
        return this.f93929c;
    }

    @Override // javax.swing.Icon
    public int getIconWidth() {
        return this.f93928b;
    }

    @Override // javax.swing.Icon
    public void paintIcon(Component component, Graphics graphics, int i, int i2) {
        if (this.f93930d || !(graphics instanceof Graphics2D)) {
            graphics.drawImage(this.f93927a, i, i2, this.f93928b, this.f93929c, null);
            return;
        }
        Graphics2D graphics2D = (Graphics2D) graphics;
        AffineTransform translateInstance = AffineTransform.getTranslateInstance(i, i2);
        translateInstance.scale(this.f93928b / this.f93927a.getWidth(), this.f93929c / this.f93927a.getHeight());
        graphics2D.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
        graphics2D.drawImage(this.f93927a, translateInstance, null);
    }

    public BufferedImageIcon(BufferedImage bufferedImage, int i, int i2) {
        this(bufferedImage, i, i2, bufferedImage.getWidth() == i && bufferedImage.getHeight() == i2);
    }

    public BufferedImageIcon(BufferedImage bufferedImage, int i, int i2, boolean z) {
        this.f93927a = (BufferedImage) Validate.notNull(bufferedImage, "image");
        this.f93928b = ((Integer) Validate.isTrue(i > 0, Integer.valueOf(i), "width must be positive: %d")).intValue();
        this.f93929c = ((Integer) Validate.isTrue(i2 > 0, Integer.valueOf(i2), "height must be positive: %d")).intValue();
        this.f93930d = z;
    }
}
