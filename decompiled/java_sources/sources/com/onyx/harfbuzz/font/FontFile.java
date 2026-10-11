package com.onyx.harfbuzz.font;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.onyx.harfbuzz.utils.Preconditions;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes9.dex */
public final class FontFile {

    /* renamed from: a */
    public long f62726a;

    /* renamed from: b */
    public final C12989b f62727b = new C12989b();

    /* renamed from: c */
    public List<HBTypeface> f62728c;

    /* renamed from: com.onyx.harfbuzz.font.FontFile$b */
    /* loaded from: classes9.dex */
    public class C12989b {
        public C12989b() {
        }

        public void finalize() throws Throwable {
            try {
                FontFile.this.m52030b();
            } finally {
                super.finalize();
            }
        }
    }

    public FontFile(@NonNull AssetManager assetManager, @NonNull String str) {
        Preconditions.checkNotNull(assetManager, "assetManager");
        Preconditions.checkNotNull(str, "filePath");
        long nCreateFromAsset = nCreateFromAsset(assetManager, str);
        this.f62726a = nCreateFromAsset;
        if (nCreateFromAsset == 0) {
            throw new RuntimeException("Could not create typeface from specified asset");
        }
    }

    private static native long nCreateFromAsset(AssetManager assetManager, String str);

    private static native long nCreateFromPath(String str);

    private static native long nCreateFromStream(InputStream inputStream);

    private static native HBTypeface nCreateTypeface(long j, int i);

    private static native int nGetFaceCount(long j);

    private static native void nRelease(long j);

    /* renamed from: a */
    public final void m52029a() {
        ArrayList arrayList = new ArrayList();
        int nGetFaceCount = nGetFaceCount(this.f62726a);
        for (int i = 0; i < nGetFaceCount; i++) {
            HBTypeface nCreateTypeface = nCreateTypeface(this.f62726a, i);
            List<NamedStyle> namedStyles = nCreateTypeface.getNamedStyles();
            if (namedStyles == null || namedStyles.size() == 0) {
                arrayList.add(nCreateTypeface);
            } else {
                Iterator<NamedStyle> it2 = namedStyles.iterator();
                while (it2.hasNext()) {
                    arrayList.add(nCreateTypeface.getVariationInstance(it2.next().coordinates()));
                }
            }
        }
        this.f62728c = arrayList;
    }

    /* renamed from: b */
    public void m52030b() {
        nRelease(this.f62726a);
    }

    public List<HBTypeface> getTypefaces() {
        if (this.f62728c == null) {
            synchronized (this) {
                if (this.f62728c == null) {
                    m52029a();
                }
            }
        }
        return this.f62728c;
    }

    public FontFile(@NonNull File file) {
        Preconditions.checkNotNull(file, "file");
        long nCreateFromPath = nCreateFromPath(file.getAbsolutePath());
        this.f62726a = nCreateFromPath;
        if (nCreateFromPath == 0) {
            throw new RuntimeException("Could not create typeface from specified file");
        }
    }

    public FontFile(@NonNull InputStream inputStream) {
        Preconditions.checkNotNull(inputStream, "stream");
        long nCreateFromStream = nCreateFromStream(inputStream);
        this.f62726a = nCreateFromStream;
        if (nCreateFromStream == 0) {
            throw new RuntimeException("Could not create typeface from specified stream");
        }
    }
}
