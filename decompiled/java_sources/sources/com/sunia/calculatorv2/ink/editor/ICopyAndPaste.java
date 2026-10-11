package com.sunia.calculatorv2.ink.editor;

import android.content.ClipboardManager;
import com.sunia.HTREnginev2.C14021l;
import com.sunia.HTREnginev2.C14270q;
import com.sunia.calculatorv2.ink.model.IElement;
import java.util.List;

/* loaded from: classes10.dex */
public interface ICopyAndPaste {
    static boolean copy(List<? extends IElement> list, ClipboardManager clipboardManager) {
        return C14021l.copy(list, clipboardManager);
    }

    static boolean copy(ClipboardManager clipboardManager, IEditor iEditor) {
        return C14021l.m55357a(clipboardManager, (C14270q) iEditor);
    }
}
