package androidx.emoji2.text;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.util.SparseArray;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.TraceCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataList;
import com.sunia.HTREnginev2.nnj;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

@AnyThread
@RequiresApi(19)
/* loaded from: classes3.dex */
public final class MetadataRepo {

    /* renamed from: e */
    public static final int f6993e = 1024;

    /* renamed from: f */
    public static final String f6994f = "EmojiCompat.MetadataRepo.create";

    /* renamed from: a */
    @NonNull
    public final MetadataList f6995a;

    /* renamed from: b */
    @NonNull
    public final char[] f6996b;

    /* renamed from: c */
    @NonNull
    public final C1040a f6997c = new C1040a(1024);

    /* renamed from: d */
    @NonNull
    public final Typeface f6998d;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: androidx.emoji2.text.MetadataRepo$a */
    /* loaded from: classes3.dex */
    public static class C1040a {

        /* renamed from: a */
        public final SparseArray<C1040a> f6999a;

        /* renamed from: b */
        public TypefaceEmojiRasterizer f7000b;

        public C1040a() {
            this(1);
        }

        /* renamed from: a */
        public C1040a m4252a(int i) {
            SparseArray<C1040a> sparseArray = this.f6999a;
            if (sparseArray == null) {
                return null;
            }
            return sparseArray.get(i);
        }

        /* renamed from: b */
        public final TypefaceEmojiRasterizer m4253b() {
            return this.f7000b;
        }

        /* renamed from: c */
        public void m4254c(@NonNull TypefaceEmojiRasterizer typefaceEmojiRasterizer, int i, int i2) {
            C1040a m4252a = m4252a(typefaceEmojiRasterizer.getCodepointAt(i));
            if (m4252a == null) {
                m4252a = new C1040a();
                this.f6999a.put(typefaceEmojiRasterizer.getCodepointAt(i), m4252a);
            }
            if (i2 > i) {
                m4252a.m4254c(typefaceEmojiRasterizer, i + 1, i2);
            } else {
                m4252a.f7000b = typefaceEmojiRasterizer;
            }
        }

        public C1040a(int i) {
            this.f6999a = new SparseArray<>(i);
        }
    }

    public MetadataRepo(@NonNull Typeface typeface, @NonNull MetadataList metadataList) {
        this.f6998d = typeface;
        this.f6995a = metadataList;
        this.f6996b = new char[metadataList.listLength() * 2];
        m4247a(metadataList);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.TESTS})
    public static MetadataRepo create(@NonNull Typeface typeface) {
        try {
            TraceCompat.beginSection(f6994f);
            return new MetadataRepo(typeface, new MetadataList());
        } finally {
            TraceCompat.endSection();
        }
    }

    /* renamed from: a */
    public final void m4247a(MetadataList metadataList) {
        int listLength = metadataList.listLength();
        for (int i = 0; i < listLength; i++) {
            TypefaceEmojiRasterizer typefaceEmojiRasterizer = new TypefaceEmojiRasterizer(this, i);
            Character.toChars(typefaceEmojiRasterizer.getId(), this.f6996b, i * 2);
            m4251e(typefaceEmojiRasterizer);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: b */
    public int m4248b() {
        return this.f6995a.version();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: c */
    public C1040a m4249c() {
        return this.f6997c;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: d */
    public Typeface m4250d() {
        return this.f6998d;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    /* renamed from: e */
    public void m4251e(@NonNull TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        Preconditions.checkNotNull(typefaceEmojiRasterizer, "emoji metadata cannot be null");
        Preconditions.checkArgument(typefaceEmojiRasterizer.getCodepointsLength() > 0, "invalid metadata codepoint length");
        this.f6997c.m4254c(typefaceEmojiRasterizer, 0, typefaceEmojiRasterizer.getCodepointsLength() - 1);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public char[] getEmojiCharArray() {
        return this.f6996b;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public MetadataList getMetadataList() {
        return this.f6995a;
    }

    @NonNull
    public static MetadataRepo create(@NonNull Typeface typeface, @NonNull InputStream inputStream) throws IOException {
        try {
            TraceCompat.beginSection(f6994f);
            return new MetadataRepo(typeface, nnj.m55775c(inputStream));
        } finally {
            TraceCompat.endSection();
        }
    }

    @NonNull
    public static MetadataRepo create(@NonNull Typeface typeface, @NonNull ByteBuffer byteBuffer) throws IOException {
        try {
            TraceCompat.beginSection(f6994f);
            return new MetadataRepo(typeface, nnj.m55776d(byteBuffer));
        } finally {
            TraceCompat.endSection();
        }
    }

    @NonNull
    public static MetadataRepo create(@NonNull AssetManager assetManager, @NonNull String str) throws IOException {
        try {
            TraceCompat.beginSection(f6994f);
            return new MetadataRepo(Typeface.createFromAsset(assetManager, str), nnj.m55774b(assetManager, str));
        } finally {
            TraceCompat.endSection();
        }
    }
}
