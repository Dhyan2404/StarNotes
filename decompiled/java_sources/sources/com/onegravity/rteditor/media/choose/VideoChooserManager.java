package com.onegravity.rteditor.media.choose;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.Log;
import android.widget.Toast;
import com.onegravity.rteditor.C7028R;
import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.media.MediaUtils;
import com.onegravity.rteditor.media.MonitoredActivity;
import com.onegravity.rteditor.media.choose.MediaChooserManager;
import com.onegravity.rteditor.media.choose.processor.VideoProcessor;
import com.onegravity.rteditor.utils.Constants;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import java.io.File;

/* loaded from: classes7.dex */
public class VideoChooserManager extends MediaChooserManager implements VideoProcessor.VideoProcessorListener {

    /* renamed from: g */
    public static final String f40407g = "CAPTURED_VIDEO.mp4";

    /* renamed from: f */
    public VideoChooserListener f40408f;

    /* loaded from: classes7.dex */
    public interface VideoChooserListener extends MediaChooserManager.MediaChooserListener {
        void onVideoChosen(RTVideo rTVideo);
    }

    /* renamed from: com.onegravity.rteditor.media.choose.VideoChooserManager$a */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class C7063a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f40409a;

        static {
            int[] iArr = new int[Constants.MediaAction.values().length];
            f40409a = iArr;
            try {
                iArr[Constants.MediaAction.CAPTURE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40409a[Constants.MediaAction.PICK_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public VideoChooserManager(MonitoredActivity monitoredActivity, Constants.MediaAction mediaAction, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory, VideoChooserListener videoChooserListener, Bundle bundle) {
        super(monitoredActivity, mediaAction, rTMediaFactory, videoChooserListener, bundle);
        this.f40408f = videoChooserListener;
    }

    @Override // com.onegravity.rteditor.media.choose.MediaChooserManager
    /* renamed from: a */
    public boolean mo31679a() throws IllegalArgumentException {
        if (this.f40408f == null) {
            throw new IllegalArgumentException("VideoChooserListener cannot be null");
        }
        int i = C7063a.f40409a[this.f40403c.ordinal()];
        if (i == 1) {
            return m31693i();
        }
        if (i != 2) {
            return false;
        }
        return m31694j();
    }

    @Override // com.onegravity.rteditor.media.choose.MediaChooserManager
    /* renamed from: e */
    public void mo31680e(Constants.MediaAction mediaAction, Intent intent) {
        int i = C7063a.f40409a[mediaAction.ordinal()];
        if (i == 1) {
            m31695k(intent);
        } else {
            if (i != 2) {
                return;
            }
            m31696l(intent);
        }
    }

    /* renamed from: i */
    public final boolean m31693i() {
        try {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
            File createUniqueFile = MediaUtils.createUniqueFile(externalStoragePublicDirectory, f40407g, false);
            externalStoragePublicDirectory.mkdirs();
            if (!externalStoragePublicDirectory.exists() || !externalStoragePublicDirectory.createNewFile()) {
                Toast.makeText(this.f40401a, "Can't take picture without an sdcard", 0).show();
                return false;
            }
            m31690f(createUniqueFile.getAbsolutePath());
            m31691g(new Intent("android.media.action.VIDEO_CAPTURE").putExtra(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OUTPUT_STRING, Uri.fromFile(new File(m31688c()))));
            return true;
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return true;
        }
    }

    /* renamed from: j */
    public final boolean m31694j() {
        m31691g(Intent.createChooser(new Intent("android.intent.action.PICK").setData(MediaStore.Images.Media.EXTERNAL_CONTENT_URI).setType(FileExtensionUtils.DEFAULT_MIMETYPE_VIDEO), this.f40401a.getString(C7028R.string.rte_pick_video)));
        return true;
    }

    /* renamed from: k */
    public final void m31695k(Intent intent) {
        String m31688c = m31688c();
        if (m31688c != null) {
            m31692h(new VideoProcessor(m31688c, this.f40402b, this));
        }
    }

    /* renamed from: l */
    public final void m31696l(Intent intent) {
        String m31687b = m31687b(intent);
        if (m31687b != null) {
            m31692h(new VideoProcessor(m31687b, this.f40402b, this));
        }
    }

    @Override // com.onegravity.rteditor.media.choose.processor.VideoProcessor.VideoProcessorListener
    public void onVideoProcessed(RTVideo rTVideo) {
        VideoChooserListener videoChooserListener = this.f40408f;
        if (videoChooserListener != null) {
            videoChooserListener.onVideoChosen(rTVideo);
        }
    }
}
