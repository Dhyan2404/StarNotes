package com.trans.android.batik;

import android.graphics.Shader;
import android.text.Layout;
import java.awt.Paint;
import java.text.AttributedCharacterIterator;

/* loaded from: classes10.dex */
public interface BatikService {
    Layout.Alignment getAlignment(AttributedCharacterIterator.Attribute attribute, Object obj);

    Shader getShader(Paint paint);

    boolean isBatikAlignmentAttribute(AttributedCharacterIterator.Attribute attribute);

    boolean isBatikAttribute(AttributedCharacterIterator.Attribute attribute);

    boolean isBatikPaint(Paint paint);
}
