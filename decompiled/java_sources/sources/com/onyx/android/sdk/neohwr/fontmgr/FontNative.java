package com.onyx.android.sdk.neohwr.fontmgr;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.error.ErrorType;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;", "Ljava/io/Closeable;", "path", "", "handle", "", "(Ljava/lang/String;J)V", "getPath", "()Ljava/lang/String;", "close", "", "loadGlyphPath", "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;", "codepoint", "", "pixelSize", "", "Companion", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FontNative implements Closeable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private long handle;

    @NotNull
    private final String path;

    @Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0083 J\u0011\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0083 J!\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0083 ¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;", "fontPath", "", "loadGlyphPathOnce", "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;", "font", "codepoint", "", "pixelSize", "", "nativeCreate", "", "nativeDestroy", "", "handle", "nativeLoadGlyphPath", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        private final long nativeCreate(String fontPath) {
            return FontNative.nativeCreate(fontPath);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void nativeDestroy(long handle) {
            FontNative.nativeDestroy(handle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final GlyphPath nativeLoadGlyphPath(long handle, int codepoint, float pixelSize) {
            return FontNative.nativeLoadGlyphPath(handle, codepoint, pixelSize);
        }

        @JvmStatic
        @NotNull
        public final FontNative create(@NotNull String fontPath) {
            Intrinsics.checkNotNullParameter(fontPath, "fontPath");
            long nativeCreate = nativeCreate(fontPath);
            if (nativeCreate != 0) {
                return new FontNative(fontPath, nativeCreate);
            }
            throw new RuntimeException(ErrorType.FONT_FORMAT_ERROR);
        }

        @NotNull
        public final GlyphPath loadGlyphPathOnce(@NotNull String font, int codepoint, float pixelSize) {
            Intrinsics.checkNotNullParameter(font, "font");
            FontNative create = create(font);
            GlyphPath loadGlyphPath = create.loadGlyphPath(codepoint, pixelSize);
            create.close();
            return loadGlyphPath;
        }

        private Companion() {
        }
    }

    static {
        System.loadLibrary("neo_hwr_jni");
    }

    public FontNative(@NotNull String path, long j) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.path = path;
        this.handle = j;
    }

    @JvmStatic
    @NotNull
    public static final FontNative create(@NotNull String str) {
        return INSTANCE.create(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native long nativeCreate(String str);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void nativeDestroy(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native GlyphPath nativeLoadGlyphPath(long j, int i, float f);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long j = this.handle;
        if (j != 0) {
            INSTANCE.nativeDestroy(j);
            this.handle = 0L;
        }
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final GlyphPath loadGlyphPath(int codepoint, float pixelSize) {
        return INSTANCE.nativeLoadGlyphPath(this.handle, codepoint, pixelSize);
    }
}
