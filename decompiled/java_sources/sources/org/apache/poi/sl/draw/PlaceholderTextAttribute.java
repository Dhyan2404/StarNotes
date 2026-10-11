package org.apache.poi.sl.draw;

import java.text.AttributedCharacterIterator;

/* loaded from: classes12.dex */
public class PlaceholderTextAttribute extends AttributedCharacterIterator.Attribute {
    public static final PlaceholderTextAttribute instance = new PlaceholderTextAttribute("PlaceholderText");

    public PlaceholderTextAttribute(String str) {
        super(str);
    }
}
