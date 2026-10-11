package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.DataScope;
import com.onyx.android.sdk.data.common.data.StorageLocation;
import com.onyx.android.sdk.data.common.path.AppPaths;
import com.onyx.android.sdk.data.common.path.PathManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.C7594R;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\rJ\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000b*\b\u0012\u0004\u0012\u00020\u000b0\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\n\u0010\u0010\u001a\u00020\u0004*\u00020\u000bJ\n\u0010\u0011\u001a\u00020\u0004*\u00020\u000bJ\n\u0010\u0012\u001a\u00020\u0004*\u00020\u000bJ\u0012\u0010\u0013\u001a\n \u0014*\u0004\u0018\u00010\u00040\u0004*\u00020\u000bJ\u0014\u0010\u0015\u001a\u00020\u0004*\u00020\u000b2\b\b\u0002\u0010\u0016\u001a\u00020\u0004J\n\u0010\u0017\u001a\u00020\u0007*\u00020\u000bJ\n\u0010\u0018\u001a\u00020\u0019*\u00020\u000bJ\n\u0010\u001a\u001a\u00020\u0019*\u00020\u000bJ\n\u0010\u001b\u001a\u00020\u0019*\u00020\u000bJ\n\u0010\u001c\u001a\u00020\u0019*\u00020\u000bJ\n\u0010\u001d\u001a\u00020\u0019*\u00020\u000bJ\u0015\u0010\u001e\u001a\u00020\u0007*\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u000bH\u0086\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;", "", "()V", "FONT_THUMBNAIL_DIR", "", "ID_DEFAULT_FONT", "TYPE_DEFAULT", "", "TYPE_LOCAL", "TYPE_OFFICIAL", "createDefault", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "getTypeOrders", "", "findByDisplayName", "name", "getCachedInkContentThumbnailFile", "getCachedInkTitleThumbnailFile", "getCachedPreviewFile", "getDisplayName", "kotlin.jvm.PlatformType", "getSavePath", CouchFieldKey.KEY_DIR, "getSourceType", "isDefaultResource", "", "isDownloaded", "isDownloading", "isLocalResource", "isThumbnailCached", "minus", Constants.ATTRVAL_OTHER, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nFontModelExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontModelExt.kt\ncom/onyx/android/sdk/replicator/note/db/model/FontModelExt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"})
/* loaded from: classes8.dex */
public final class FontModelExt {

    @NotNull
    public static final String FONT_THUMBNAIL_DIR = "FontThumbnail";

    @NotNull
    public static final String ID_DEFAULT_FONT = "default";

    @NotNull
    public static final FontModelExt INSTANCE = new FontModelExt();
    public static final int TYPE_DEFAULT = 1;
    public static final int TYPE_LOCAL = 0;
    public static final int TYPE_OFFICIAL = 2;

    public static /* synthetic */ String getSavePath$default(FontModelExt fontModelExt, FontModel fontModel, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = AppPaths.INSTANCE.appFontDir().toAbsolutePath().toString();
        }
        return fontModelExt.getSavePath(fontModel, str);
    }

    @NotNull
    public final FontModel createDefault() {
        FontModel fontModel = new FontModel();
        fontModel.setName(ResManager.INSTANCE.getStringSafely(C7594R.string.default_font));
        return fontModel;
    }

    @Nullable
    public final FontModel findByDisplayName(@NotNull List<FontModel> list, @Nullable String str) {
        Object obj;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(INSTANCE.getDisplayName((FontModel) obj), str)) {
                break;
            }
        }
        return (FontModel) obj;
    }

    @NotNull
    public final String getCachedInkContentThumbnailFile(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        return PathManager.INSTANCE.getFile(StorageLocation.PRIVATE_FILE, DataScope.APP, FONT_THUMBNAIL_DIR, fontModel.getUniqueId() + "-ink-content", "png");
    }

    @NotNull
    public final String getCachedInkTitleThumbnailFile(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        return PathManager.INSTANCE.getFile(StorageLocation.PRIVATE_FILE, DataScope.APP, FONT_THUMBNAIL_DIR, fontModel.getUniqueId() + "-ink-title", "png");
    }

    @NotNull
    public final String getCachedPreviewFile(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        return PathManager.INSTANCE.getFile(StorageLocation.PRIVATE_FILE, DataScope.APP, FONT_THUMBNAIL_DIR, fontModel.getUniqueId(), "png");
    }

    public final String getDisplayName(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        return FilenameUtils.getBaseName(fontModel.getName());
    }

    @NotNull
    public final String getSavePath(@NotNull final FontModel fontModel, @NotNull String dir) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        String baseName = FilenameUtils.getBaseName(fontModel.getName());
        String ifEmpty = StringKt.ifEmpty(fontModel.getFormat(), new Function0<String>() { // from class: com.onyx.android.sdk.replicator.note.db.model.FontModelExt$getSavePath$ext$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                String extension = FilenameUtils.getExtension(FontModel.this.getName());
                Intrinsics.checkNotNullExpressionValue(extension, "getExtension(...)");
                return extension;
            }
        });
        FileUtils fileUtils = FileUtils.INSTANCE;
        Intrinsics.checkNotNull(baseName);
        return fileUtils.getFile(dir, baseName, ifEmpty);
    }

    public final int getSourceType(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        if (isDefaultResource(fontModel)) {
            return 1;
        }
        return isLocalResource(fontModel) ? 0 : 2;
    }

    @NotNull
    public final List<Integer> getTypeOrders() {
        return CollectionsKt.listOf((Object[]) new Integer[]{0, 1, 2});
    }

    public final boolean isDefaultResource(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        return fontModel.getUniqueId().length() == 0;
    }

    public final boolean isDownloaded(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        return FileUtils.INSTANCE.fileExist(getSavePath$default(this, fontModel, null, 1, null));
    }

    public final boolean isDownloading(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        return fontModel.getState() == 3;
    }

    public final boolean isLocalResource(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        return fontModel.getUrl().length() == 0;
    }

    public final boolean isThumbnailCached(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        return FileUtils.INSTANCE.fileExist(getCachedPreviewFile(fontModel));
    }

    public final int minus(@NotNull FontModel fontModel, @NotNull FontModel other) {
        Intrinsics.checkNotNullParameter(fontModel, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int sourceType = getSourceType(fontModel);
        int sourceType2 = getSourceType(other);
        if (sourceType == sourceType2) {
            return 0;
        }
        List<Integer> typeOrders = getTypeOrders();
        return typeOrders.indexOf(Integer.valueOf(sourceType)) - typeOrders.indexOf(Integer.valueOf(sourceType2));
    }
}
