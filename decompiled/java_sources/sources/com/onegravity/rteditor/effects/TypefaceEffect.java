package com.onegravity.rteditor.effects;

import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.fonts.RTTypeface;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.spans.TypefaceSpan;
import com.sunia.HTREnginev2.brd;

/* loaded from: classes7.dex */
public class TypefaceEffect extends brd<RTTypeface, TypefaceSpan> {
    @Override // com.sunia.HTREnginev2.brd, com.onegravity.rteditor.effects.Effect
    public /* bridge */ /* synthetic */ void applyToSelection(RTEditText rTEditText, Object obj) {
        super.applyToSelection(rTEditText, obj);
    }

    @Override // com.sunia.HTREnginev2.brd
    public RTSpan<RTTypeface> newSpan(RTTypeface rTTypeface) {
        if (rTTypeface == null) {
            return null;
        }
        return new TypefaceSpan(rTTypeface);
    }
}
