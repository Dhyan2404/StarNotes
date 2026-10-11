package com.oplus.ocs.base.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import com.oplus.ocs.base.common.constant.CommonStatusCodes;
import com.oplus.ocs.base.utils.C13075e;

/* loaded from: classes9.dex */
public class ConnectionResult {
    private int mErrorCode;
    private PendingIntent mPendingIntent;

    public ConnectionResult(int i) {
        this(i, null);
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public String getErrorMessage() {
        return CommonStatusCodes.getStatusCodeString(this.mErrorCode);
    }

    public PendingIntent getResolution() {
        return this.mPendingIntent;
    }

    public boolean hasResolution() {
        return (this.mErrorCode == 0 || this.mPendingIntent == null) ? false : true;
    }

    public void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            activity.startIntentSenderForResult(this.mPendingIntent.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public String toString() {
        return C13075e.m52239a(this).m52241a("statusCode", CommonStatusCodes.getStatusCodeString(this.mErrorCode)).toString();
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this.mErrorCode = i;
        this.mPendingIntent = pendingIntent;
    }
}
