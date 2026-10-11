package org.apache.poi.sl.draw;

import java.awt.Graphics2D;
import org.apache.poi.sl.usermodel.GraphicalFrame;

/* loaded from: classes12.dex */
public interface DrawGraphicalFrameChart {
    boolean canDraw(GraphicalFrame<?, ?> graphicalFrame);

    void draw(GraphicalFrame<?, ?> graphicalFrame, Graphics2D graphics2D);
}
