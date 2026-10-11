package com.trans.android.batik;

import android.graphics.Shader;
import android.text.Layout;
import java.awt.Paint;
import java.text.AttributedCharacterIterator;

/* loaded from: classes10.dex */
class EmptyBatikService implements BatikService {
    @Override // com.trans.android.batik.BatikService
    public Layout.Alignment getAlignment(AttributedCharacterIterator.Attribute attribute, Object obj) {
        return Layout.Alignment.ALIGN_NORMAL;
    }

    @Override // com.trans.android.batik.BatikService
    public Shader getShader(Paint paint) {
        return null;
    }

    @Override // com.trans.android.batik.BatikService
    public boolean isBatikAlignmentAttribute(AttributedCharacterIterator.Attribute attribute) {
        return false;
    }

    @Override // com.trans.android.batik.BatikService
    public boolean isBatikAttribute(AttributedCharacterIterator.Attribute attribute) {
        return false;
    }

    @Override // com.trans.android.batik.BatikService
    public boolean isBatikPaint(Paint paint) {
        return false;
    }
}
