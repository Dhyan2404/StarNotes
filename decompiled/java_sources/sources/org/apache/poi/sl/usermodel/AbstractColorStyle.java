package org.apache.poi.sl.usermodel;

import java.util.Objects;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public abstract class AbstractColorStyle implements ColorStyle {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ColorStyle) {
            return Objects.equals(DrawPaint.applyColorTransform(this), DrawPaint.applyColorTransform((ColorStyle) obj));
        }
        return false;
    }

    public int hashCode() {
        return DrawPaint.applyColorTransform(this).hashCode();
    }
}
