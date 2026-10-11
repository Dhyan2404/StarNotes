package com.onegravity.rteditor.media.choose.processor;

import android.net.Uri;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.onegravity.rteditor.api.RTApi;
import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.utils.io.FilenameUtils;
import com.onegravity.rteditor.utils.io.IOUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes7.dex */
public abstract class MediaProcessor implements Runnable {

    /* renamed from: e */
    public final MediaProcessorListener f40411e;

    /* renamed from: f */
    public final String f40412f;
    protected final RTMediaFactory<RTImage, RTAudio, RTVideo> mMediaFactory;

    /* loaded from: classes7.dex */
    public interface MediaProcessorListener {
        void onError(String str);
    }

    /* renamed from: com.onegravity.rteditor.media.choose.processor.MediaProcessor$a */
    /* loaded from: classes7.dex */
    public class C7064a extends BufferedInputStream {

        /* renamed from: e */
        public final /* synthetic */ HttpURLConnection f40413e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7064a(InputStream inputStream, HttpURLConnection httpURLConnection) {
            super(inputStream);
            this.f40413e = httpURLConnection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            this.f40413e.disconnect();
        }
    }

    public MediaProcessor(String str, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory, MediaProcessorListener mediaProcessorListener) {
        this.f40412f = str;
        this.mMediaFactory = rTMediaFactory;
        this.f40411e = mediaProcessorListener;
    }

    /* renamed from: a */
    public final InputStream m31697a(String str) {
        try {
            return new FileInputStream(new File(Uri.parse(str).getPath()));
        } catch (IOException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return null;
        }
    }

    /* renamed from: b */
    public final InputStream m31698b(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            return new C7064a(httpURLConnection.getInputStream(), httpURLConnection);
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            IOUtils.closeQuietly((InputStream) null);
            return null;
        }
    }

    /* renamed from: c */
    public final InputStream m31699c(String str) {
        try {
            return RTApi.getApplicationContext().getContentResolver().openInputStream(Uri.parse(str));
        } catch (IOException e) {
            Log.e(this.getClass().getSimpleName(), e.getMessage(), e);
            return null;
        }
    }

    public InputStream getInputStream() throws IOException, Exception {
        return this.f40412f.startsWith("http") ? m31698b(this.f40412f) : this.f40412f.startsWith("content://") ? m31699c(this.f40412f) : m31697a(this.f40412f);
    }

    public String getMimeType() throws IOException, Exception {
        if (this.f40412f.startsWith("content://")) {
            return RTApi.getApplicationContext().getContentResolver().getType(Uri.parse(this.f40412f));
        }
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(FilenameUtils.getExtension(this.f40412f));
    }

    public String getOriginalFile() {
        return this.f40412f;
    }

    public abstract void processMedia() throws IOException, Exception;

    @Override // java.lang.Runnable
    public final void run() {
        try {
            processMedia();
        } catch (Exception e) {
            if (this.f40411e != null) {
                this.f40411e.onError(e.getMessage());
            }
        }
    }
}
