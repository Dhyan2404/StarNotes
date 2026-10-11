package org.apache.poi.text;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.Rectangle2D;
import java.util.List;
import org.apache.poi.sl.draw.DrawTextFragment2;

/* loaded from: classes13.dex */
public interface ITextHandler {
    public static final Key TEXT_HANDLER = new Key(1, "Handle text");

    /* loaded from: classes13.dex */
    public static class Key extends RenderingHints.Key {
        String description;

        public Key(int i, String str) {
            super(i);
            this.description = str;
        }

        @Override // java.awt.RenderingHints.Key
        public boolean isCompatibleValue(Object obj) {
            return true;
        }
    }

    void handleText(Graphics2D graphics2D, List<DrawTextFragment2> list);

    void setAnchor(Graphics2D graphics2D, Rectangle2D rectangle2D);
}
