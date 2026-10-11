package com.onegravity.rteditor;

import com.onegravity.rteditor.effects.Effect;
import com.onegravity.rteditor.spans.RTSpan;

/* loaded from: classes7.dex */
public interface RTToolbarListener {
    void onCaptureImage();

    void onClearFormatting();

    void onCreateLink();

    <V, C extends RTSpan<V>> void onEffectSelected(Effect<V, C> effect, V v);

    void onPickImage();

    void onRedo();

    void onUndo();
}
