package org.apache.poi.text;

import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.util.List;
import org.apache.poi.sl.draw.DrawTextFragment2;

/* loaded from: classes13.dex */
public class TextUtils {
    public static void handleText(Graphics2D graphics2D, List<DrawTextFragment2> list) {
        ITextHandler iTextHandler = (ITextHandler) graphics2D.getRenderingHint(ITextHandler.TEXT_HANDLER);
        if (iTextHandler != null) {
            iTextHandler.handleText(graphics2D, list);
        }
    }

    public static void setTextAnchor(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        ITextHandler iTextHandler = (ITextHandler) graphics2D.getRenderingHint(ITextHandler.TEXT_HANDLER);
        if (iTextHandler != null) {
            iTextHandler.setAnchor(graphics2D, rectangle2D);
        }
    }
}
