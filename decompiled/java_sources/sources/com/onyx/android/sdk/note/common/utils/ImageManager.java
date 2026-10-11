package com.onyx.android.sdk.note.common.utils;

import android.graphics.Bitmap;
import androidx.annotation.WorkerThread;
import com.blankj.utilcode.util.ImageUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.signature.ObjectKey;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.SvgUtil;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006J*\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\u0010\u001a\u00020\fH\u0007J*\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\u0010\u001a\u00020\fH\u0002J \u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u0002¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ImageManager;", "", "Ljava/io/File;", "file", "Lcom/onyx/android/sdk/note/common/utils/ImageManager$FileKey;", "getDefaultFileCacheKey", "", "filePath", "Lcom/onyx/android/sdk/base/data/Size;", "decodeSize", "", "getShapeType", "", "isJpegImage", "width", "height", "scaleable", "Landroid/graphics/Bitmap;", "decodeImageAsBitmap", "b", "a", Constants.CONSTRUCTOR_NAME, "()V", "FileKey", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ImageManager {

    @NotNull
    public static final ImageManager INSTANCE = new ImageManager();

    @Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\r\u001a\u00020\fH\u0016R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u000f\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ImageManager$FileKey;", "Lcom/bumptech/glide/load/Key;", "Ljava/security/MessageDigest;", "messageDigest", "", "updateDiskCacheKey", "", "hashCode", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "", "toString", "Ljava/io/File;", "a", "Ljava/io/File;", "file", "Lcom/bumptech/glide/signature/ObjectKey;", "b", "Lkotlin/Lazy;", "()Lcom/bumptech/glide/signature/ObjectKey;", "objectKey", Constants.CONSTRUCTOR_NAME, "(Ljava/io/File;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class FileKey implements Key {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final File file;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final Lazy objectKey;

        public FileKey(@NotNull File file) {
            Lazy lazy;
            Intrinsics.checkNotNullParameter(file, "file");
            this.file = file;
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<ObjectKey>() { // from class: com.onyx.android.sdk.note.common.utils.ImageManager$FileKey$objectKey$2
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final ObjectKey invoke() {
                    File file2;
                    FileUtils fileUtils = FileUtils.INSTANCE;
                    file2 = ImageManager.FileKey.this.file;
                    return new ObjectKey(fileUtils.getCacheKey(file2, new String[0]));
                }
            });
            this.objectKey = lazy;
        }

        /* renamed from: a */
        public final ObjectKey m34013a() {
            return (ObjectKey) this.objectKey.getValue();
        }

        @Override // com.bumptech.glide.load.Key
        public boolean equals(@Nullable Object r2) {
            FileKey fileKey = r2 instanceof FileKey ? (FileKey) r2 : null;
            if (fileKey == null) {
                return false;
            }
            return Intrinsics.areEqual(m34013a(), fileKey.m34013a());
        }

        @Override // com.bumptech.glide.load.Key
        public int hashCode() {
            return m34013a().hashCode();
        }

        @NotNull
        public String toString() {
            return "FileKey{object=" + m34013a() + "`}";
        }

        @Override // com.bumptech.glide.load.Key
        public void updateDiskCacheKey(@NotNull MessageDigest messageDigest) {
            Intrinsics.checkNotNullParameter(messageDigest, "messageDigest");
            m34013a().updateDiskCacheKey(messageDigest);
        }
    }

    /* renamed from: c */
    public static /* synthetic */ Bitmap m34010c(ImageManager imageManager, String str, int i, int i2, boolean z, int i3, Object obj) throws IOException {
        if ((i3 & 8) != 0) {
            z = true;
        }
        return imageManager.m34012b(str, i, i2, z);
    }

    public static /* synthetic */ Bitmap decodeImageAsBitmap$default(ImageManager imageManager, String str, int i, int i2, boolean z, int i3, Object obj) throws Exception {
        if ((i3 & 8) != 0) {
            z = true;
        }
        return imageManager.decodeImageAsBitmap(str, i, i2, z);
    }

    /* renamed from: a */
    public final Bitmap m34011a(String filePath, int width, int height) throws Exception {
        return SvgUtil.INSTANCE.decodeSvgAsBitmap(filePath, width, height);
    }

    /* renamed from: b */
    public final Bitmap m34012b(String filePath, int width, int height, boolean scaleable) throws IOException {
        Bitmap bitmap = Glide.with(ResManager.INSTANCE.getAppContext()).asBitmap().load(filePath).apply((BaseRequestOptions<?>) new RequestOptions().signature(getDefaultFileCacheKey(new File(filePath)))).submit(width, height).get();
        Intrinsics.checkNotNullExpressionValue(bitmap, "get(...)");
        Bitmap bitmap2 = bitmap;
        return (BitmapKt.isValid(bitmap2) && scaleable) ? (bitmap2.getWidth() == width && bitmap2.getHeight() == height) ? bitmap2 : BitmapKt.createScaledBitmap(bitmap2, width, height) : bitmap2;
    }

    @WorkerThread
    @NotNull
    public final Bitmap decodeImageAsBitmap(@NotNull String filePath, int width, int height, boolean scaleable) throws Exception {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return SvgUtil.INSTANCE.isSvgImage(filePath) ? m34011a(filePath, width, height) : m34012b(filePath, width, height, scaleable);
    }

    @NotNull
    public final Size decodeSize(@NotNull String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Size size = new Size(0, 0, 3, null);
        SvgUtil svgUtil = SvgUtil.INSTANCE;
        if (svgUtil.isSvgImage(filePath)) {
            svgUtil.decodeSize(filePath, size);
        } else {
            BitmapUtils.INSTANCE.decodeBitmapSizeSupportExif(filePath, size);
        }
        return size;
    }

    @NotNull
    public final FileKey getDefaultFileCacheKey(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return new FileKey(file);
    }

    public final int getShapeType(@NotNull String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return SvgUtil.INSTANCE.isSvgImage(filePath) ? 35 : 19;
    }

    public final boolean isJpegImage(@NotNull String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return ImageUtils.getImageType(filePath) == ImageUtils.ImageType.TYPE_JPG;
    }
}
