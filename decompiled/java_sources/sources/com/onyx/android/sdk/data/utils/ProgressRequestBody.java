package com.onyx.android.sdk.data.utils;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 \u00142\u00020\u0001:\u0004\u0014\u0015\u0016\u0017B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\n\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;", "Lokhttp3/RequestBody;", "file", "Ljava/io/File;", "mediaType", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;", "(Ljava/io/File;Ljava/lang/String;Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;)V", Constants.TRANSLET_OUTPUT_PNAME, "Landroid/os/Handler;", CouchFieldKey.KEY_CONTENT_TYPE, "Lokhttp3/MediaType;", "onProgressUpdate", "", "runnable", "Ljava/lang/Runnable;", "writeTo", "sink", "Lokio/BufferedSink;", "Companion", "DoneUpdater", "ProgressUpdater", "UploadCallbacks", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nProgressRequestBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressRequestBody.kt\ncom/onyx/android/sdk/data/utils/ProgressRequestBody\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"})
/* loaded from: classes7.dex */
public class ProgressRequestBody extends RequestBody {
    private static final int DEFAULT_BUFFER_SIZE = 2048;

    @NotNull
    private final File file;

    @Nullable
    private Handler handler;

    @Nullable
    private final UploadCallbacks listener;

    @Nullable
    private final String mediaType;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;", "Ljava/lang/Runnable;", "isFinish", "", "(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;Z)V", "run", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public final class DoneUpdater implements Runnable {
        private final boolean isFinish;

        public DoneUpdater(boolean z) {
            this.isFinish = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.isFinish) {
                UploadCallbacks uploadCallbacks = ProgressRequestBody.this.listener;
                Intrinsics.checkNotNull(uploadCallbacks);
                uploadCallbacks.onFinish();
            } else {
                UploadCallbacks uploadCallbacks2 = ProgressRequestBody.this.listener;
                Intrinsics.checkNotNull(uploadCallbacks2);
                uploadCallbacks2.onError();
            }
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;", "Ljava/lang/Runnable;", "uploaded", "", "total", "(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;JJ)V", "run", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public final class ProgressUpdater implements Runnable {
        private final long total;
        private final long uploaded;

        public ProgressUpdater(long j, long j2) {
            this.uploaded = j;
            this.total = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            UploadCallbacks uploadCallbacks = ProgressRequestBody.this.listener;
            Intrinsics.checkNotNull(uploadCallbacks);
            uploadCallbacks.onProgressUpdate((int) ((100 * this.uploaded) / this.total));
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;", "", "onError", "", "onFinish", "onProgressUpdate", "percentage", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public interface UploadCallbacks {
        void onError();

        void onFinish();

        void onProgressUpdate(int percentage);
    }

    public ProgressRequestBody(@NotNull File file, @Nullable String str, @Nullable UploadCallbacks uploadCallbacks) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.file = file;
        this.mediaType = str;
        this.listener = uploadCallbacks;
    }

    @Override // okhttp3.RequestBody
    @Nullable
    /* renamed from: contentType */
    public MediaType getF103381e() {
        String str = this.mediaType;
        if (str != null) {
            return MediaType.INSTANCE.parse(str);
        }
        return null;
    }

    public void onProgressUpdate(@Nullable Runnable runnable) {
        Handler handler = this.handler;
        Intrinsics.checkNotNull(handler);
        Intrinsics.checkNotNull(runnable);
        handler.post(runnable);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink sink) throws IOException {
        FileInputStream fileInputStream;
        boolean z;
        int i;
        Intrinsics.checkNotNullParameter(sink, "sink");
        long length = this.file.length();
        byte[] bArr = new byte[2048];
        FileInputStream fileInputStream2 = new FileInputStream(this.file);
        this.handler = new Handler(Looper.getMainLooper());
        long j = 0;
        while (true) {
            try {
                int read = fileInputStream2.read(bArr);
                if (read == -1) {
                    break;
                }
                if (this.listener != null) {
                    i = read;
                    fileInputStream = fileInputStream2;
                    z = false;
                    try {
                        onProgressUpdate(new ProgressUpdater(j, length));
                    } catch (Throwable th) {
                        th = th;
                        if (this.listener != null) {
                            if (j == 0 || j < length) {
                                Handler handler = this.handler;
                                Intrinsics.checkNotNull(handler);
                                handler.post(new DoneUpdater(z));
                            } else {
                                Handler handler2 = this.handler;
                                Intrinsics.checkNotNull(handler2);
                                handler2.post(new DoneUpdater(true));
                            }
                        }
                        fileInputStream.close();
                        throw th;
                    }
                } else {
                    i = read;
                    fileInputStream = fileInputStream2;
                    z = false;
                }
                j += i;
                sink.write(bArr, z ? 1 : 0, i);
                fileInputStream2 = fileInputStream;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                z = false;
            }
        }
        FileInputStream fileInputStream3 = fileInputStream2;
        if (this.listener != null) {
            if (j == 0 || j < length) {
                Handler handler3 = this.handler;
                Intrinsics.checkNotNull(handler3);
                handler3.post(new DoneUpdater(false));
            } else {
                Handler handler4 = this.handler;
                Intrinsics.checkNotNull(handler4);
                handler4.post(new DoneUpdater(true));
            }
        }
        fileInputStream3.close();
    }
}
