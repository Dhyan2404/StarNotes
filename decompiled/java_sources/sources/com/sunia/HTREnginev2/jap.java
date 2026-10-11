package com.sunia.HTREnginev2;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.DialogInterface;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import com.google.android.gms.common.GoogleApiAvailability;

/* loaded from: classes5.dex */
public final class jap implements DialogInterface.OnClickListener {

    /* renamed from: e */
    public final /* synthetic */ Activity f74113e;

    /* renamed from: f */
    public final /* synthetic */ int f74114f;

    /* renamed from: g */
    public final /* synthetic */ ActivityResultLauncher f74115g;

    /* renamed from: h */
    public final /* synthetic */ GoogleApiAvailability f74116h;

    public jap(GoogleApiAvailability googleApiAvailability, Activity activity, int i, ActivityResultLauncher activityResultLauncher) {
        this.f74116h = googleApiAvailability;
        this.f74113e = activity;
        this.f74114f = i;
        this.f74115g = activityResultLauncher;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        PendingIntent errorResolutionPendingIntent = this.f74116h.getErrorResolutionPendingIntent(this.f74113e, this.f74114f, 0);
        if (errorResolutionPendingIntent == null) {
            return;
        }
        this.f74115g.launch(new IntentSenderRequest.Builder(errorResolutionPendingIntent.getIntentSender()).build());
    }
}
