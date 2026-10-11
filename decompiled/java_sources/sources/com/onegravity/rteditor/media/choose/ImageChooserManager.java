package com.onegravity.rteditor.media.choose;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.onegravity.rteditor.C7028R;
import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.media.MediaUtils;
import com.onegravity.rteditor.media.MonitoredActivity;
import com.onegravity.rteditor.media.choose.MediaChooserManager;
import com.onegravity.rteditor.media.choose.processor.ImageProcessor;
import com.onegravity.rteditor.utils.Constants;
import java.io.File;

/* loaded from: classes7.dex */
public class ImageChooserManager extends MediaChooserManager implements ImageProcessor.ImageProcessorListener {

    /* renamed from: g */
    public static final String f40389g = "CAPTURED_IMAGE.jpeg";

    /* renamed from: f */
    public ImageChooserListener f40390f;

    /* loaded from: classes7.dex */
    public interface ImageChooserListener extends MediaChooserManager.MediaChooserListener {
        void onImageChosen(RTImage rTImage);
    }

    /* renamed from: com.onegravity.rteditor.media.choose.ImageChooserManager$a */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class C7060a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f40391a;

        static {
            int[] iArr = new int[Constants.MediaAction.values().length];
            f40391a = iArr;
            try {
                iArr[Constants.MediaAction.PICK_PICTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40391a[Constants.MediaAction.CAPTURE_PICTURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public ImageChooserManager(MonitoredActivity monitoredActivity, Constants.MediaAction mediaAction, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory, ImageChooserListener imageChooserListener, Bundle bundle) {
        super(monitoredActivity, mediaAction, rTMediaFactory, imageChooserListener, bundle);
        this.f40390f = imageChooserListener;
    }

    @Override // com.onegravity.rteditor.media.choose.MediaChooserManager
    /* renamed from: a */
    public boolean mo31679a() throws IllegalArgumentException {
        if (this.f40390f == null) {
            throw new IllegalArgumentException("ImageChooserListener cannot be null");
        }
        int i = C7060a.f40391a[this.f40403c.ordinal()];
        if (i == 1) {
            return m31681i();
        }
        if (i != 2) {
            return false;
        }
        return m31682j();
    }

    @Override // com.onegravity.rteditor.media.choose.MediaChooserManager
    /* renamed from: e */
    public void mo31680e(Constants.MediaAction mediaAction, Intent intent) {
        String m31688c;
        int i = C7060a.f40391a[mediaAction.ordinal()];
        if (i != 1) {
            if (i == 2 && (m31688c = m31688c()) != null) {
                m31692h(new ImageProcessor(m31688c, this.f40402b, this));
                return;
            }
            return;
        }
        String m31687b = m31687b(intent);
        if (m31687b != null) {
            m31692h(new ImageProcessor(m31687b, this.f40402b, this));
        }
    }

    /* renamed from: i */
    public final boolean m31681i() {
        m31691g(Intent.createChooser(new Intent("android.intent.action.GET_CONTENT", (Uri) null).addCategory("android.intent.category.OPENABLE").setType("image/*"), this.f40401a.getString(C7028R.string.rte_pick_image)));
        return true;
    }

    /* renamed from: j */
    public final boolean m31682j() {
        try {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
            File createUniqueFile = MediaUtils.createUniqueFile(externalStoragePublicDirectory, f40389g, false);
            externalStoragePublicDirectory.mkdirs();
            if (!externalStoragePublicDirectory.exists() || !createUniqueFile.createNewFile()) {
                Toast.makeText(this.f40401a, "Can't take picture without an sdcard", 0).show();
                return false;
            }
            m31690f(createUniqueFile.getAbsolutePath());
            m31691g(new Intent("android.media.action.IMAGE_CAPTURE").putExtra(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OUTPUT_STRING, FileProvider.getUriForFile(this.f40401a, this.f40401a.getPackageName() + ".provider", createUniqueFile)));
            return true;
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return true;
        }
    }

    @Override // com.onegravity.rteditor.media.choose.processor.ImageProcessor.ImageProcessorListener
    public void onImageProcessed(RTImage rTImage) {
        ImageChooserListener imageChooserListener = this.f40390f;
        if (imageChooserListener != null) {
            imageChooserListener.onImageChosen(rTImage);
        }
    }
}
