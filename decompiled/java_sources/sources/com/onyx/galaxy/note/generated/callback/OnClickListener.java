package com.onyx.galaxy.note.generated.callback;

import android.view.View;

/* loaded from: classes9.dex */
public final class OnClickListener implements View.OnClickListener {

    /* renamed from: e */
    public final Listener f61228e;

    /* renamed from: f */
    public final int f61229f;

    /* loaded from: classes9.dex */
    public interface Listener {
        void _internalCallbackOnClick(int i, View view);
    }

    public OnClickListener(Listener listener, int i) {
        this.f61228e = listener;
        this.f61229f = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f61228e._internalCallbackOnClick(this.f61229f, view);
    }
}
