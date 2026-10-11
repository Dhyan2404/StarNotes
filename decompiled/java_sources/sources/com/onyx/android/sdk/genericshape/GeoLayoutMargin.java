package com.onyx.android.sdk.genericshape;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.RawResourceUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.io.File;
import kotlin.Metadata;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;", "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;", "()V", "Companion", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GeoLayoutMargin extends GeoLayoutMarginBase {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0016\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin$Companion;", "", "()V", "loadFromFileOrDefault", "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;", "file", "Ljava/io/File;", "loadFromRes", "resName", "", "loadFromResOrDefault", "saveToFile", "geoLayoutMargin", "targetFile", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final GeoLayoutMargin loadFromFileOrDefault(@Nullable File file) {
            if (file == null || !file.exists() || file.isDirectory()) {
                return new GeoLayoutMargin();
            }
            try {
                return GeoFactory.INSTANCE.parseGeoLayoutMargin(FileUtils.INSTANCE.readContentOfFile(file.getAbsolutePath()));
            } catch (Exception e) {
                Debug.INSTANCE.m32048e(e);
                return new GeoLayoutMargin();
            }
        }

        @Nullable
        public final GeoLayoutMargin loadFromRes(@Nullable String resName) {
            if (resName == null || resName.length() == 0) {
                return null;
            }
            try {
                ResManager resManager = ResManager.INSTANCE;
                String contentOfRawResource = RawResourceUtil.INSTANCE.contentOfRawResource(resManager.getAppContext(), resManager.getRawIdentifier(resName));
                if (contentOfRawResource == null) {
                    return null;
                }
                return GeoFactory.INSTANCE.parseGeoLayoutMargin(contentOfRawResource);
            } catch (Exception unused) {
                return null;
            }
        }

        @NotNull
        public final GeoLayoutMargin loadFromResOrDefault(@Nullable String resName) {
            GeoLayoutMargin loadFromRes = loadFromRes(resName);
            return loadFromRes == null ? new GeoLayoutMargin() : loadFromRes;
        }

        @NotNull
        public final String saveToFile(@NotNull GeoLayoutMargin geoLayoutMargin, @NotNull File targetFile) {
            Intrinsics.checkNotNullParameter(geoLayoutMargin, "geoLayoutMargin");
            Intrinsics.checkNotNullParameter(targetFile, "targetFile");
            try {
                String json = JSONUtils.INSTANCE.toJson(geoLayoutMargin);
                targetFile.delete();
                if (json == null) {
                    return "";
                }
                targetFile.createNewFile();
                FilesKt__FileReadWriteKt.writeText$default(targetFile, json, null, 2, null);
                String absolutePath = targetFile.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                return absolutePath;
            } catch (Exception e) {
                Debug.INSTANCE.m32048e(e);
                return "";
            }
        }

        private Companion() {
        }
    }
}
