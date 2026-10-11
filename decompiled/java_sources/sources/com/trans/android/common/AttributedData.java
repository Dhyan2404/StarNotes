package com.trans.android.common;

import com.onyx.common.util.StringUtils;
import com.trans.android.font.FontManager;
import java.awt.Font;
import java.awt.font.TextAttribute;
import java.backport.function.Predicate;
import java.text.AttributedCharacterIterator;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.font.CompositeFont;
import sun.font.Font2D;

/* loaded from: classes10.dex */
public class AttributedData {
    private Map<AttributedCharacterIterator.Attribute, Object> attributes;
    private int beginIndex;
    private int endIndex;

    public AttributedData(int i, int i2, Map<AttributedCharacterIterator.Attribute, Object> map) {
        this.beginIndex = i;
        this.endIndex = i2;
        if (map == null) {
            this.attributes = Collections.emptyMap();
        } else {
            this.attributes = new HashMap(map);
        }
    }

    public void addAttribute(AttributedCharacterIterator.Attribute attribute, Object obj) {
        this.attributes.put(attribute, obj);
    }

    public void addTo(List<AttributedData> list, String str) {
        int i;
        if (this.attributes.isEmpty()) {
            list.add(this);
            return;
        }
        Font font = (Font) this.attributes.get(TextAttribute.FONT);
        if (font == null) {
            String str2 = (String) this.attributes.get(TextAttribute.FAMILY);
            if (StringUtils.isNotBlank(str2)) {
                font = new Font(str2, 0, 12);
            }
        }
        if (font != null) {
            Font2D font2D = FontManager.getFont2D(font);
            if (font2D instanceof CompositeFont) {
                int i2 = this.beginIndex;
                int i3 = i2;
                int i4 = -1;
                while (true) {
                    i = this.endIndex;
                    if (i2 >= i) {
                        break;
                    }
                    int charToGlyph = font2D.charToGlyph(str.codePointAt(i2)) >>> 24;
                    if (i4 != -1) {
                        if (i4 != charToGlyph) {
                            list.add(new AttributedData(i3, i2, this.attributes));
                            i3 = i2;
                        } else {
                            i2++;
                        }
                    }
                    i4 = charToGlyph;
                    i2++;
                }
                if (i3 == this.beginIndex) {
                    list.add(this);
                    return;
                } else {
                    list.add(new AttributedData(i3, i, this.attributes));
                    return;
                }
            }
        }
        list.add(this);
    }

    public Map<AttributedCharacterIterator.Attribute, Object> getAttributes() {
        return this.attributes;
    }

    public int getBeginIndex() {
        return this.beginIndex;
    }

    public int getEndIndex() {
        return this.endIndex;
    }

    public Object getValue(AttributedCharacterIterator.Attribute attribute) {
        return this.attributes.get(attribute);
    }

    public void incrementEnd() {
        this.endIndex++;
    }

    public void removeIf(Predicate<AttributedCharacterIterator.Attribute> predicate) {
        Iterator<Map.Entry<AttributedCharacterIterator.Attribute, Object>> it2 = this.attributes.entrySet().iterator();
        while (it2.hasNext()) {
            if (predicate.test(it2.next().getKey())) {
                it2.remove();
            }
        }
    }

    public String toString() {
        return "AttributedData{" + this.beginIndex + "-" + this.endIndex + ", " + this.attributes + '}';
    }
}
