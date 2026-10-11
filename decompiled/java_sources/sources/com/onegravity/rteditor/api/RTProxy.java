package com.onegravity.rteditor.api;

import android.app.DialogFragment;
import android.content.Intent;
import android.widget.Toast;

/* loaded from: classes7.dex */
public interface RTProxy {
    Toast makeText(int i, int i2);

    Toast makeText(CharSequence charSequence, int i);

    void openDialogFragment(String str, DialogFragment dialogFragment);

    void removeFragment(String str);

    void runOnUiThread(Runnable runnable);

    void startActivityForResult(Intent intent, int i);
}
