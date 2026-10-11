package com.onyx.galaxy.note.common.keyboard;

import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", "", "onKeyboardClose", "", "onKeyboardOpen", "keyboardHeight", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface KeyboardStateListener {
    void onKeyboardClose();

    void onKeyboardOpen(int keyboardHeight);
}
