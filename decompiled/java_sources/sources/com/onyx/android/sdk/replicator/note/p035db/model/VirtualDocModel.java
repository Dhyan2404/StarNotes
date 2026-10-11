package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.data.template.TemplateData;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.ImageAttr;
import com.onyx.android.sdk.genericshape.Properties;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001a\u0010!\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000e¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "actualScale", "", "getActualScale", "()F", "setActualScale", "(F)V", "coverPageId", "", "getCoverPageId", "()Ljava/lang/String;", "setCoverPageId", "(Ljava/lang/String;)V", "defaultTemplate", "Lcom/onyx/android/sdk/data/common/data/template/TemplateData;", "getDefaultTemplate", "()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;", "setDefaultTemplate", "(Lcom/onyx/android/sdk/data/common/data/template/TemplateData;)V", "docOptions", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;", "getDocOptions", "()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;", "setDocOptions", "(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;)V", "offsetX", "getOffsetX", "setOffsetX", "offsetY", "getOffsetY", "setOffsetY", "viewportId", "getViewportId", "setViewportId", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class VirtualDocModel extends BaseReplicatorModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private TemplateData defaultTemplate;
    private float offsetX;
    private float offsetY;

    @NotNull
    private String viewportId = "";
    private float actualScale = 1.0f;

    @NotNull
    private String coverPageId = "";

    @NotNull
    private VirtualDocOptions docOptions = new VirtualDocOptions();

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005J\u0012\u0010\u0006\u001a\u00020\u0007*\u00020\u00052\u0006\u0010\b\u001a\u00020\u0004¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel$Companion;", "", "()V", "loadContentResourceRelativePath", "", "Lcom/onyx/android/sdk/data/common/data/template/TemplateData;", "updateContentResourceRelativePath", "", "relativePath", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final String loadContentResourceRelativePath(@NotNull TemplateData templateData) {
            GeoLayout parseGeoLayout;
            Properties properties;
            ImageAttr imageAttr;
            Intrinsics.checkNotNullParameter(templateData, "<this>");
            if (Intrinsics.areEqual(templateData.getContentType(), ContentConstants.TYPE_IMPORT_PDF)) {
                return templateData.getContentRelativePath();
            }
            if (!Intrinsics.areEqual(templateData.getContentType(), ContentConstants.TYPE_GEO_LAYOUT)) {
                return null;
            }
            Paths paths = Paths.INSTANCE;
            Path path = paths.toPath(AppFilePaths.INSTANCE.filesDirAbsolutePath(templateData.getContentRelativePath()));
            if (!paths.isFile(path) || Files.notExists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) || (parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(FileUtils.INSTANCE.readContentOfFileSafely(path.toAbsolutePath().toString()))) == null || (properties = parseGeoLayout.getProperties()) == null || (imageAttr = properties.getImageAttr()) == null) {
                return null;
            }
            return imageAttr.getRelativePath();
        }

        public final void updateContentResourceRelativePath(@NotNull TemplateData templateData, @NotNull String relativePath) {
            Properties properties;
            Intrinsics.checkNotNullParameter(templateData, "<this>");
            Intrinsics.checkNotNullParameter(relativePath, "relativePath");
            if (Intrinsics.areEqual(templateData.getContentType(), ContentConstants.TYPE_IMPORT_PDF)) {
                templateData.setContentRelativePath(relativePath);
            }
            if (Intrinsics.areEqual(templateData.getContentType(), ContentConstants.TYPE_GEO_LAYOUT)) {
                Paths paths = Paths.INSTANCE;
                Path path = paths.toPath(AppFilePaths.INSTANCE.filesDirAbsolutePath(templateData.getContentRelativePath()));
                if (!paths.isFile(path) || Files.notExists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    return;
                }
                GeoLayout parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(FileUtils.INSTANCE.readContentOfFileSafely(path.toAbsolutePath().toString()));
                ImageAttr imageAttr = (parseGeoLayout == null || (properties = parseGeoLayout.getProperties()) == null) ? null : properties.getImageAttr();
                if (imageAttr != null) {
                    imageAttr.setRelativePath(relativePath);
                }
                File asFile = paths.asFile(path);
                String json = JSONUtils.INSTANCE.toJson(parseGeoLayout);
                if (json != null) {
                    asFile.delete();
                    asFile.createNewFile();
                    FilesKt__FileReadWriteKt.writeText$default(asFile, json, null, 2, null);
                }
            }
        }

        public Companion() {
        }
    }

    public final float getActualScale() {
        return this.actualScale;
    }

    @NotNull
    public final String getCoverPageId() {
        return this.coverPageId;
    }

    @Nullable
    public final TemplateData getDefaultTemplate() {
        return this.defaultTemplate;
    }

    @NotNull
    public final VirtualDocOptions getDocOptions() {
        return this.docOptions;
    }

    public final float getOffsetX() {
        return this.offsetX;
    }

    public final float getOffsetY() {
        return this.offsetY;
    }

    @NotNull
    public final String getViewportId() {
        return this.viewportId;
    }

    public final void setActualScale(float f) {
        this.actualScale = f;
    }

    public final void setCoverPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.coverPageId = str;
    }

    public final void setDefaultTemplate(@Nullable TemplateData templateData) {
        this.defaultTemplate = templateData;
    }

    public final void setDocOptions(@NotNull VirtualDocOptions virtualDocOptions) {
        Intrinsics.checkNotNullParameter(virtualDocOptions, "<set-?>");
        this.docOptions = virtualDocOptions;
    }

    public final void setOffsetX(float f) {
        this.offsetX = f;
    }

    public final void setOffsetY(float f) {
        this.offsetY = f;
    }

    public final void setViewportId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.viewportId = str;
    }
}
