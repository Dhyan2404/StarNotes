package com.onyx.android.sdk.theme.utils;

import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes8.dex */
public final class InputConnectionImpl extends InputConnectionWrapper {
    public InputConnectionImpl(InputConnection inputConnection, boolean z) {
        super(inputConnection, z);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean setSelection(int i, int i2) {
        if (i < 0 || i2 < 0) {
            return true;
        }
        return super.setSelection(i, i2);
    }
}
