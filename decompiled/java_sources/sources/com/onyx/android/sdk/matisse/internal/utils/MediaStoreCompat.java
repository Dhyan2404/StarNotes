package com.onyx.android.sdk.matisse.internal.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import androidx.core.content.FileProvider;
import androidx.core.os.EnvironmentCompat;
import androidx.fragment.app.Fragment;
import com.onyx.android.sdk.matisse.internal.entity.CaptureStrategy;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes7.dex */
public class MediaStoreCompat {

    /* renamed from: a */
    public final WeakReference<Activity> f42830a;

    /* renamed from: b */
    public final WeakReference<Fragment> f42831b;

    /* renamed from: c */
    public CaptureStrategy f42832c;

    /* renamed from: d */
    public Uri f42833d;

    /* renamed from: e */
    public String f42834e;

    public MediaStoreCompat(Activity activity) {
        this.f42830a = new WeakReference<>(activity);
        this.f42831b = null;
    }

    public static boolean hasCameraFeature(Context context) {
        return context.getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.camera");
    }

    /* renamed from: a */
    public final File m33469a() throws IOException {
        File externalFilesDir;
        String format = String.format("JPEG_%s.jpg", new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date()));
        if (this.f42832c.isPublic) {
            externalFilesDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
            if (!externalFilesDir.exists()) {
                externalFilesDir.mkdirs();
            }
        } else {
            externalFilesDir = this.f42830a.get().getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        }
        if (this.f42832c.directory != null) {
            File file = new File(externalFilesDir, this.f42832c.directory);
            if (!file.exists()) {
                file.mkdirs();
            }
            externalFilesDir = file;
        }
        File file2 = new File(externalFilesDir, format);
        if ("mounted".equals(EnvironmentCompat.getStorageState(file2))) {
            return file2;
        }
        return null;
    }

    public void dispatchCaptureIntent(Context context, int i) {
        File file;
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            try {
                file = m33469a();
            } catch (IOException e) {
                e.printStackTrace();
                file = null;
            }
            if (file != null) {
                this.f42834e = file.getAbsolutePath();
                Uri uriForFile = FileProvider.getUriForFile(this.f42830a.get(), this.f42832c.authority, file);
                this.f42833d = uriForFile;
                intent.putExtra(Constants.ELEMNAME_OUTPUT_STRING, uriForFile);
                intent.addFlags(2);
                WeakReference<Fragment> weakReference = this.f42831b;
                if (weakReference != null) {
                    weakReference.get().startActivityForResult(intent, i);
                } else {
                    this.f42830a.get().startActivityForResult(intent, i);
                }
            }
        }
    }

    public String getCurrentPhotoPath() {
        return this.f42834e;
    }

    public Uri getCurrentPhotoUri() {
        return this.f42833d;
    }

    public void setCaptureStrategy(CaptureStrategy captureStrategy) {
        this.f42832c = captureStrategy;
    }

    public MediaStoreCompat(Activity activity, Fragment fragment) {
        this.f42830a = new WeakReference<>(activity);
        this.f42831b = new WeakReference<>(fragment);
    }
}
