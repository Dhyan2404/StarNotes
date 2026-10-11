package com.onyx.android.sdk.replicator.note.p035db.model;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.ImageAttr;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0007\n\u0002\b\u001a\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 D2\u00020\u0001:\u0001DB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010?\u001a\u00020\u0004J\u0006\u0010@\u001a\u00020\u0004J\u0006\u0010A\u001a\u00020\u0013J\u0006\u0010B\u001a\u00020CR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000eR\u001c\u0010$\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\f\"\u0004\b&\u0010\u000eR\u001a\u0010'\u001a\u00020(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001a\u0010-\u001a\u00020(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010*\"\u0004\b/\u0010,R\u001a\u00100\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0015\"\u0004\b2\u0010\u0017R\u001a\u00103\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0015\"\u0004\b5\u0010\u0017R\u001a\u00106\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\f\"\u0004\b8\u0010\u000eR\u001a\u00109\u001a\u00020(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010*\"\u0004\b;\u0010,R\u001a\u0010<\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u0006\"\u0004\b>\u0010\b¨\u0006E"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "colorTheme", "", "getColorTheme", "()I", "setColorTheme", "(I)V", "contentId", "", "getContentId", "()Ljava/lang/String;", "setContentId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_CONTENT_PAGE_ID, "getContentPageId", "setContentPageId", "contentPageSize", "Landroid/graphics/RectF;", "getContentPageSize", "()Landroid/graphics/RectF;", "setContentPageSize", "(Landroid/graphics/RectF;)V", CouchFieldKey.KEY_CONTENT_RELATIVE_PATH, "getContentRelativePath", "setContentRelativePath", CouchFieldKey.KEY_CONTENT_TYPE, "getContentType", "setContentType", "marginColor", "getMarginColor", "setMarginColor", "marginTemplateResource", "getMarginTemplateResource", "setMarginTemplateResource", "marginTemplateResourceId", "getMarginTemplateResourceId", "setMarginTemplateResourceId", "marginTemplateSpace", "", "getMarginTemplateSpace", "()F", "setMarginTemplateSpace", "(F)V", CouchFieldKey.KEY_ORDER_INDEX, "getOrderIndex", "setOrderIndex", "pageSize", "getPageSize", "setPageSize", "pageSizeWithMargin", "getPageSizeWithMargin", "setPageSizeWithMargin", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "rotation", "getRotation", "setRotation", "status", "getStatus", "setStatus", "getCellColumnIndex", "getCellRowIndex", "getPageOriginRectFCopy", "resetTemplateData", "", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class VirtualPageModel extends BaseReplicatorModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int colorTheme;

    @Nullable
    private String marginTemplateResource;

    @Nullable
    private String marginTemplateResourceId;
    private float orderIndex;
    private float rotation;
    private int status;

    @NotNull
    private RectF pageSize = new RectF();

    @NotNull
    private RectF pageSizeWithMargin = new RectF();

    @NotNull
    private RectF contentPageSize = new RectF();

    @NotNull
    private String contentType = ContentConstants.TYPE_GEO_LAYOUT;

    @NotNull
    private String contentRelativePath = "";

    @NotNull
    private String contentPageId = "";

    @NotNull
    private String contentId = "";

    @NotNull
    private String revisionId = "";
    private int marginColor = -1;
    private float marginTemplateSpace = 10.0f;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00050\bJ\u0012\u0010\t\u001a\u00020\u0007*\u00020\u00052\u0006\u0010\n\u001a\u00020\u0004¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;", "", "()V", "loadContentResourceRelativePath", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "reorderIndexByListIndex", "", "", "updateContentResourceRelativePath", "relativePath", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nVirtualPageModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualPageModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n1864#2,3:136\n*S KotlinDebug\n*F\n+ 1 VirtualPageModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion\n*L\n130#1:136,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final String loadContentResourceRelativePath(@NotNull VirtualPageModel virtualPageModel) {
            GeoLayout parseGeoLayout;
            Properties properties;
            ImageAttr imageAttr;
            Intrinsics.checkNotNullParameter(virtualPageModel, "<this>");
            if (Intrinsics.areEqual(virtualPageModel.getContentType(), ContentConstants.TYPE_IMPORT_PDF)) {
                return virtualPageModel.getContentRelativePath();
            }
            if (!Intrinsics.areEqual(virtualPageModel.getContentType(), ContentConstants.TYPE_GEO_LAYOUT)) {
                return null;
            }
            Paths paths = Paths.INSTANCE;
            Path path = paths.toPath(AppFilePaths.INSTANCE.filesDirAbsolutePath(virtualPageModel.getContentRelativePath()));
            if (!paths.isFile(path) || Files.notExists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) || (parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(FileUtils.INSTANCE.readContentOfFileSafely(path.toAbsolutePath().toString()))) == null || (properties = parseGeoLayout.getProperties()) == null || (imageAttr = properties.getImageAttr()) == null) {
                return null;
            }
            return imageAttr.getRelativePath();
        }

        public final void reorderIndexByListIndex(@NotNull List<VirtualPageModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                ((VirtualPageModel) obj).setOrderIndex(i2);
                i = i2;
            }
        }

        public final void updateContentResourceRelativePath(@NotNull VirtualPageModel virtualPageModel, @NotNull String relativePath) {
            Properties properties;
            Intrinsics.checkNotNullParameter(virtualPageModel, "<this>");
            Intrinsics.checkNotNullParameter(relativePath, "relativePath");
            if (Intrinsics.areEqual(virtualPageModel.getContentType(), ContentConstants.TYPE_IMPORT_PDF)) {
                virtualPageModel.setContentRelativePath(relativePath);
            }
            if (Intrinsics.areEqual(virtualPageModel.getContentType(), ContentConstants.TYPE_GEO_LAYOUT)) {
                Paths paths = Paths.INSTANCE;
                Path path = paths.toPath(AppFilePaths.INSTANCE.filesDirAbsolutePath(virtualPageModel.getContentRelativePath()));
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

    public final int getCellColumnIndex() {
        int roundToInt;
        RectF rectF = this.pageSize;
        float width = rectF.left / rectF.width();
        if (!((Float.isInfinite(width) || Float.isNaN(width)) ? false : true)) {
            return 0;
        }
        roundToInt = MathKt__MathJVMKt.roundToInt(width);
        return roundToInt;
    }

    public final int getCellRowIndex() {
        int roundToInt;
        RectF rectF = this.pageSize;
        float height = rectF.top / rectF.height();
        if (!((Float.isInfinite(height) || Float.isNaN(height)) ? false : true)) {
            return 0;
        }
        roundToInt = MathKt__MathJVMKt.roundToInt(height);
        return roundToInt;
    }

    public final int getColorTheme() {
        return this.colorTheme;
    }

    @NotNull
    public final String getContentId() {
        return this.contentId;
    }

    @NotNull
    public final String getContentPageId() {
        return this.contentPageId;
    }

    @NotNull
    public final RectF getContentPageSize() {
        return this.contentPageSize;
    }

    @NotNull
    public final String getContentRelativePath() {
        return this.contentRelativePath;
    }

    @NotNull
    public final String getContentType() {
        return this.contentType;
    }

    public final int getMarginColor() {
        return this.marginColor;
    }

    @Nullable
    public final String getMarginTemplateResource() {
        return this.marginTemplateResource;
    }

    @Nullable
    public final String getMarginTemplateResourceId() {
        return this.marginTemplateResourceId;
    }

    public final float getMarginTemplateSpace() {
        return this.marginTemplateSpace;
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    @NotNull
    public final RectF getPageOriginRectFCopy() {
        RectF copy = RectFKt.copy(this.pageSize);
        copy.offsetTo(0.0f, 0.0f);
        return copy;
    }

    @NotNull
    public final RectF getPageSize() {
        return this.pageSize;
    }

    @NotNull
    public final RectF getPageSizeWithMargin() {
        return this.pageSizeWithMargin;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    public final float getRotation() {
        return this.rotation;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void resetTemplateData() {
        this.contentType = "vector";
        this.contentRelativePath = "";
        this.contentId = "0";
        this.contentPageId = "0";
    }

    public final void setColorTheme(int i) {
        this.colorTheme = i;
    }

    public final void setContentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentId = str;
    }

    public final void setContentPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPageId = str;
    }

    public final void setContentPageSize(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.contentPageSize = rectF;
    }

    public final void setContentRelativePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentRelativePath = str;
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    public final void setMarginColor(int i) {
        this.marginColor = i;
    }

    public final void setMarginTemplateResource(@Nullable String str) {
        this.marginTemplateResource = str;
    }

    public final void setMarginTemplateResourceId(@Nullable String str) {
        this.marginTemplateResourceId = str;
    }

    public final void setMarginTemplateSpace(float f) {
        this.marginTemplateSpace = f;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setPageSize(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageSize = rectF;
    }

    public final void setPageSizeWithMargin(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageSizeWithMargin = rectF;
    }

    public final void setRevisionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.revisionId = str;
    }

    public final void setRotation(float f) {
        this.rotation = f;
    }

    public final void setStatus(int i) {
        this.status = i;
    }
}
