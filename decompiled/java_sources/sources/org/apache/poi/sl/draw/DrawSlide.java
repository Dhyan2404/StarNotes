package org.apache.poi.sl.draw;

import java.awt.Graphics2D;
import org.apache.poi.sl.draw.Drawable;
import org.apache.poi.sl.usermodel.Background;
import org.apache.poi.sl.usermodel.Slide;

/* loaded from: classes12.dex */
public class DrawSlide extends DrawSheet {
    public DrawSlide(Slide<?, ?> slide) {
        super(slide);
    }

    @Override // org.apache.poi.sl.draw.DrawSheet, org.apache.poi.sl.draw.Drawable
    public void draw(Graphics2D graphics2D) {
        Drawable.DrawableHint drawableHint = Drawable.CURRENT_SLIDE;
        graphics2D.setRenderingHint(drawableHint, this.sheet);
        Background<?, ?> background = this.sheet.getBackground();
        if (background != null) {
            DrawFactory.getInstance(graphics2D).getDrawable(background).draw(graphics2D);
        }
        super.draw(graphics2D);
        graphics2D.setRenderingHint(drawableHint, null);
    }
}
