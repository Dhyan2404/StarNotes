package com.onyx.android.sdk.matisse.internal.utils;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;

/* loaded from: classes7.dex */
public class SingleMediaScanner implements MediaScannerConnection.MediaScannerConnectionClient {

    /* renamed from: a */
    public MediaScannerConnection f42838a;

    /* renamed from: b */
    public String f42839b;

    /* renamed from: c */
    public ScanListener f42840c;

    /* loaded from: classes7.dex */
    public interface ScanListener {
        void onScanFinish();
    }

    public SingleMediaScanner(Context context, String str, ScanListener scanListener) {
        this.f42839b = str;
        this.f42840c = scanListener;
        MediaScannerConnection mediaScannerConnection = new MediaScannerConnection(context, this);
        this.f42838a = mediaScannerConnection;
        mediaScannerConnection.connect();
    }

    @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
    public void onMediaScannerConnected() {
        this.f42838a.scanFile(this.f42839b, null);
    }

    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
    public void onScanCompleted(String str, Uri uri) {
        this.f42838a.disconnect();
        ScanListener scanListener = this.f42840c;
        if (scanListener != null) {
            scanListener.onScanFinish();
        }
    }
}
