package com.onegravity.rteditor.media.choose;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import com.onegravity.rteditor.C7028R;
import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.media.MediaUtils;
import com.onegravity.rteditor.media.MonitoredActivity;
import com.onegravity.rteditor.media.choose.processor.MediaProcessor;
import com.onegravity.rteditor.utils.Constants;

/* loaded from: classes7.dex */
public abstract class MediaChooserManager implements MediaProcessor.MediaProcessorListener {

    /* renamed from: a */
    public transient MonitoredActivity f40401a;

    /* renamed from: b */
    public transient RTMediaFactory<RTImage, RTAudio, RTVideo> f40402b;

    /* renamed from: c */
    public transient Constants.MediaAction f40403c;

    /* renamed from: d */
    public transient MediaChooserListener f40404d;

    /* renamed from: e */
    public String f40405e;

    /* loaded from: classes7.dex */
    public interface MediaChooserListener {
        void onError(String str);
    }

    public MediaChooserManager(MonitoredActivity monitoredActivity, Constants.MediaAction mediaAction, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory, MediaChooserListener mediaChooserListener, Bundle bundle) {
        this.f40401a = monitoredActivity;
        this.f40402b = rTMediaFactory;
        this.f40403c = mediaAction;
        this.f40404d = mediaChooserListener;
        if (bundle != null) {
            this.f40405e = bundle.getString("mOriginalFile");
        }
    }

    /* renamed from: a */
    public abstract boolean mo31679a() throws IllegalArgumentException;

    /* renamed from: b */
    public String m31687b(Intent intent) {
        this.f40405e = null;
        if (intent != null && intent.getDataString() != null) {
            try {
                this.f40405e = MediaUtils.determineOriginalFile(this.f40401a.getApplicationContext(), intent.getData());
            } catch (IllegalArgumentException e) {
                onError(e.getMessage());
            }
        }
        return this.f40405e;
    }

    /* renamed from: c */
    public String m31688c() {
        return this.f40405e;
    }

    /* renamed from: d */
    public void m31689d(Bundle bundle) {
        bundle.putString("mOriginalFile", this.f40405e);
    }

    /* renamed from: e */
    public abstract void mo31680e(Constants.MediaAction mediaAction, Intent intent);

    /* renamed from: f */
    public void m31690f(String str) {
        this.f40405e = str;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: g */
    public void m31691g(Intent intent) {
        MonitoredActivity monitoredActivity = this.f40401a;
        if (monitoredActivity != null) {
            monitoredActivity.startActivityForResult(intent, this.f40403c.requestCode());
        }
    }

    /* renamed from: h */
    public void m31692h(MediaProcessor mediaProcessor) {
        this.f40401a.startBackgroundJob(C7028R.string.rte_processing_image, mediaProcessor);
    }

    @Override // com.onegravity.rteditor.media.choose.processor.MediaProcessor.MediaProcessorListener
    public void onError(String str) {
        MediaChooserListener mediaChooserListener = this.f40404d;
        if (mediaChooserListener != null) {
            mediaChooserListener.onError(str);
        }
    }
}
