package com.onegravity.rteditor.media.choose;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTMedia;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.media.MonitoredActivity;
import com.onegravity.rteditor.media.choose.AudioChooserManager;
import com.onegravity.rteditor.media.choose.ImageChooserManager;
import com.onegravity.rteditor.media.choose.VideoChooserManager;
import com.onegravity.rteditor.media.crop.CropImageActivity;
import com.onegravity.rteditor.utils.Constants;
import com.sagittarius.p050v6.C13086AB;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes17.dex */
public class MediaChooserActivity extends MonitoredActivity implements ImageChooserManager.ImageChooserListener, AudioChooserManager.AudioChooserListener, VideoChooserManager.VideoChooserListener {

    /* renamed from: B0 */
    public static final String f40392B0 = "MediaChooserActivity";

    /* renamed from: C0 */
    public static boolean f40393C0;
    public static final String EXTRA_MEDIA_ACTION;
    public static final String EXTRA_MEDIA_FACTORY;

    /* renamed from: A0 */
    public RTMedia f40394A0;

    /* renamed from: x0 */
    public RTMediaFactory<RTImage, RTAudio, RTVideo> f40395x0;

    /* renamed from: y0 */
    public Constants.MediaAction f40396y0;

    /* renamed from: z0 */
    public transient MediaChooserManager f40397z0;

    /* renamed from: com.onegravity.rteditor.media.choose.MediaChooserActivity$a */
    /* loaded from: classes7.dex */
    public class RunnableC7061a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ RTImage f40398e;

        public RunnableC7061a(RTImage rTImage) {
            this.f40398e = rTImage;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MediaChooserActivity.this.f40396y0 != Constants.MediaAction.CAPTURE_PICTURE) {
                EventBus.getDefault().postSticky(new MediaEvent(MediaChooserActivity.this.f40394A0));
                MediaChooserActivity.this.finish();
            } else {
                String filePath = this.f40398e.getFilePath(RTFormat.SPANNED);
                MediaChooserActivity.this.startActivityForResult(new Intent(MediaChooserActivity.this, (Class<?>) CropImageActivity.class).putExtra(CropImageActivity.IMAGE_SOURCE_FILE, filePath).putExtra(CropImageActivity.IMAGE_DESTINATION_FILE, filePath).putExtra("scale", true).putExtra(CropImageActivity.SCALE_UP_IF_NEEDED, false).putExtra(CropImageActivity.ASPECT_X, 0).putExtra(CropImageActivity.ASPECT_Y, 0), 107);
            }
        }
    }

    /* renamed from: com.onegravity.rteditor.media.choose.MediaChooserActivity$b */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class C7062b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f40400a;

        static {
            int[] iArr = new int[Constants.MediaAction.values().length];
            f40400a = iArr;
            try {
                iArr[Constants.MediaAction.PICK_PICTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40400a[Constants.MediaAction.CAPTURE_PICTURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40400a[Constants.MediaAction.PICK_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f40400a[Constants.MediaAction.CAPTURE_VIDEO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f40400a[Constants.MediaAction.PICK_AUDIO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f40400a[Constants.MediaAction.CAPTURE_AUDIO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static {
        String simpleName = MediaChooserActivity.class.getSimpleName();
        EXTRA_MEDIA_ACTION = simpleName + "EXTRA_MEDIA_ACTION";
        EXTRA_MEDIA_FACTORY = simpleName + "EXTRA_MEDIA_FACTORY";
    }

    /* renamed from: E */
    public final boolean m31685E() {
        return f40393C0;
    }

    /* renamed from: F */
    public final void m31686F(boolean z) {
        f40393C0 = z;
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        m31686F(false);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != -1) {
            setResult(0);
            finish();
            return;
        }
        Constants.MediaAction mediaAction = Constants.MediaAction.PICK_PICTURE;
        if (i == mediaAction.requestCode() && intent != null) {
            this.f40397z0.mo31680e(mediaAction, intent);
            return;
        }
        Constants.MediaAction mediaAction2 = Constants.MediaAction.CAPTURE_PICTURE;
        if (i == mediaAction2.requestCode()) {
            this.f40397z0.mo31680e(mediaAction2, intent);
        } else if (i == 107 && intent.getStringExtra(CropImageActivity.IMAGE_DESTINATION_FILE) != null && (this.f40394A0 instanceof RTImage)) {
            EventBus.getDefault().postSticky(new MediaEvent(this.f40394A0));
            finish();
        }
    }

    @Override // com.onegravity.rteditor.media.choose.AudioChooserManager.AudioChooserListener
    public void onAudioChosen(RTAudio rTAudio) {
        this.f40394A0 = rTAudio;
        m31686F(false);
    }

    @Override // com.onegravity.rteditor.media.MonitoredActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        C13086AB.m52315v(-1426063355, this, bundle);
    }

    @Override // com.onegravity.rteditor.media.choose.MediaChooserManager.MediaChooserListener
    public void onError(String str) {
        Toast.makeText(this, str, 0).show();
        m31686F(false);
    }

    @Override // com.onegravity.rteditor.media.choose.ImageChooserManager.ImageChooserListener
    public void onImageChosen(RTImage rTImage) {
        this.f40394A0 = rTImage;
        runOnUiThread(new RunnableC7061a(rTImage));
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        RTMedia rTMedia = this.f40394A0;
        if (rTMedia != null) {
            bundle.putSerializable("mSelectedMedia", rTMedia);
        }
    }

    @Override // com.onegravity.rteditor.media.choose.VideoChooserManager.VideoChooserListener
    public void onVideoChosen(RTVideo rTVideo) {
        this.f40394A0 = rTVideo;
        m31686F(false);
    }
}
