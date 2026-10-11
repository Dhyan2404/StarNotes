package org.apache.poi.sl.draw;

import java.awt.Graphics2D;
import java.util.Iterator;
import java.util.ServiceLoader;
import org.apache.poi.sl.usermodel.GraphicalFrame;
import org.apache.poi.sl.usermodel.PictureShape;

/* loaded from: classes12.dex */
public class DrawGraphicalFrame extends DrawShape {
    public DrawGraphicalFrame(GraphicalFrame<?, ?> graphicalFrame) {
        super(graphicalFrame);
    }

    private void drawChart(GraphicalFrame<?, ?> graphicalFrame, Graphics2D graphics2D) {
        Iterator it2 = ServiceLoader.load(DrawGraphicalFrameChart.class, DrawGraphicalFrameChart.class.getClassLoader()).iterator();
        while (it2.hasNext()) {
            DrawGraphicalFrameChart drawGraphicalFrameChart = (DrawGraphicalFrameChart) it2.next();
            if (drawGraphicalFrameChart.canDraw(graphicalFrame)) {
                drawGraphicalFrameChart.draw(graphicalFrame, graphics2D);
                return;
            }
        }
    }

    @Override // org.apache.poi.sl.draw.DrawShape, org.apache.poi.sl.draw.Drawable
    public void draw(Graphics2D graphics2D) {
        if (disableDraw(graphics2D)) {
            return;
        }
        drawChart((GraphicalFrame) getShape(), graphics2D);
        PictureShape<?, ?> fallbackPicture = ((GraphicalFrame) getShape()).getFallbackPicture();
        if (fallbackPicture == null) {
            return;
        }
        DrawFactory.getInstance(graphics2D).getDrawable(fallbackPicture).draw(graphics2D);
    }
}
