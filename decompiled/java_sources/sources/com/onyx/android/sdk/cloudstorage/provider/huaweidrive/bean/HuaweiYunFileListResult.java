package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.cloudstorage.model.common.MediaCategory;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001:\u0001\u0014B+\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0011\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult;", "", "", "a", Constants.STRING_SIG, "getCategory", "()Ljava/lang/String;", "category", "", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "b", "Ljava/util/List;", "getFiles", "()Ljava/util/List;", "files", "c", "getNextCursor", "nextCursor", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "File", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HuaweiYunFileListResult {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String category;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<File> files;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String nextCursor;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b/\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\f\u0018\u0000 ^2\u00020\u0001:\u0001^B\u0093\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\"\u001a\u00020\u0002\u0012\b\b\u0002\u0010%\u001a\u00020\u0014\u0012\b\b\u0002\u0010(\u001a\u00020\u0014\u0012\b\b\u0002\u0010+\u001a\u00020\u0002\u0012\b\b\u0002\u0010.\u001a\u00020\u0014\u0012\b\b\u0002\u00101\u001a\u00020\u0002\u0012\b\b\u0002\u00104\u001a\u00020\u0002\u0012\b\b\u0002\u00107\u001a\u00020\u0002\u0012\b\b\u0002\u0010:\u001a\u00020\u0014\u0012\u000e\b\u0002\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\u000e\b\u0002\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\b\b\u0002\u0010C\u001a\u00020\u0014\u0012\b\b\u0002\u0010I\u001a\u00020D\u0012\b\b\u0002\u0010L\u001a\u00020\u0014\u0012\b\b\u0002\u0010O\u001a\u00020\u0014\u0012\b\b\u0002\u0010R\u001a\u00020\u0014\u0012\b\b\u0002\u0010X\u001a\u00020S\u0012\b\b\u0002\u0010[\u001a\u00020\u0002¢\u0006\u0004\b\\\u0010]R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006R\u0017\u0010\u0013\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0012\u0010\u0006R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001c\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0016\u001a\u0004\b\u001b\u0010\u0018R\u0017\u0010\u001f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u0004\u001a\u0004\b\u001e\u0010\u0006R\u0017\u0010\"\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b \u0010\u0004\u001a\u0004\b!\u0010\u0006R\u0017\u0010%\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b#\u0010\u0016\u001a\u0004\b$\u0010\u0018R\u0017\u0010(\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b&\u0010\u0016\u001a\u0004\b'\u0010\u0018R\u0017\u0010+\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b)\u0010\u0004\u001a\u0004\b*\u0010\u0006R\u0017\u0010.\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b,\u0010\u0016\u001a\u0004\b-\u0010\u0018R\u0017\u00101\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b/\u0010\u0004\u001a\u0004\b0\u0010\u0006R\u0017\u00104\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b2\u0010\u0004\u001a\u0004\b3\u0010\u0006R\u0017\u00107\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b5\u0010\u0004\u001a\u0004\b6\u0010\u0006R\u0017\u0010:\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b8\u0010\u0016\u001a\u0004\b9\u0010\u0018R\u001d\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00020\b8\u0006¢\u0006\f\n\u0004\b;\u0010\n\u001a\u0004\b<\u0010\fR\u001d\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00020\b8\u0006¢\u0006\f\n\u0004\b>\u0010\n\u001a\u0004\b?\u0010\fR\u0017\u0010C\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\bA\u0010\u0016\u001a\u0004\bB\u0010\u0018R\u0017\u0010I\u001a\u00020D8\u0006¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR\u0017\u0010L\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\bJ\u0010\u0016\u001a\u0004\bK\u0010\u0018R\u0017\u0010O\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\bM\u0010\u0016\u001a\u0004\bN\u0010\u0018R\u0017\u0010R\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\bP\u0010\u0016\u001a\u0004\bQ\u0010\u0018R\u0017\u0010X\u001a\u00020S8\u0006¢\u0006\f\n\u0004\bT\u0010U\u001a\u0004\bV\u0010WR\u0017\u0010[\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bY\u0010\u0004\u001a\u0004\bZ\u0010\u0006¨\u0006_"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "", "", "a", Constants.STRING_SIG, "getCategory", "()Ljava/lang/String;", "category", "", "b", "Ljava/util/List;", "getContainers", "()Ljava/util/List;", "containers", "c", "getCreatedTime", HuaweiYunQueryArgs.CREATED_TIME, "d", "getDescription", "description", "", "e", Constants.HASIDCALL_INDEX_SIG, "getDirectlyRecycled", Constants.BOOLEAN_VALUE_SIG, "directlyRecycled", C6997f.f39671c, "getEditedByMe", "editedByMe", C6998g.f39679a, "getEditedByMeTime", "editedByMeTime", C6999h.f39688c, "getEditedTime", HuaweiYunQueryArgs.EDITED_TIME, "i", "getExistThumbnail", "existThumbnail", "j", "getFavorite", "favorite", C4921e.f26537n, "getFileName", HuaweiYunQueryArgs.FILE_NAME, "l", "getHasShared", "hasShared", "m", "getIconDownloadLink", "iconDownloadLink", GoogleApiAvailabilityLight.f29016b, "getId", "id", C4921e.f26528e, "getMimeType", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, "p", "getOwnedByMe", "ownedByMe", "q", "getParentFolder", HuaweiYunQueryArgs.QUERY_PARENT_FOLDER, "r", "getPermissionIds", "permissionIds", "s", "getRecycled", "recycled", "", "t", "I", "getVersion", "()I", "version", "u", "getViewedByMe", "viewedByMe", "v", "getWriterHasCopyPermission", "writerHasCopyPermission", "w", "getWritersHasSharePermission", "writersHasSharePermission", "", "x", "J", "getSize", "()J", "size", "y", "getFullFileSuffix", "fullFileSuffix", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;ZIZZZJLjava/lang/String;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class File {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        @NotNull
        public static final String FOLDER = "application/vnd.huawei-apps.folder";

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final String category;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final List<String> containers;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final String createdTime;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public final String description;

        /* renamed from: e, reason: from kotlin metadata */
        public final boolean directlyRecycled;

        /* renamed from: f, reason: from kotlin metadata */
        public final boolean editedByMe;

        /* renamed from: g, reason: from kotlin metadata */
        @NotNull
        public final String editedByMeTime;

        /* renamed from: h, reason: from kotlin metadata */
        @NotNull
        public final String editedTime;

        /* renamed from: i, reason: from kotlin metadata */
        public final boolean existThumbnail;

        /* renamed from: j, reason: from kotlin metadata */
        public final boolean favorite;

        /* renamed from: k, reason: from kotlin metadata */
        @NotNull
        public final String fileName;

        /* renamed from: l, reason: from kotlin metadata */
        public final boolean hasShared;

        /* renamed from: m, reason: from kotlin metadata */
        @NotNull
        public final String iconDownloadLink;

        /* renamed from: n, reason: from kotlin metadata */
        @NotNull
        public final String id;

        /* renamed from: o, reason: from kotlin metadata */
        @NotNull
        public final String mimeType;

        /* renamed from: p, reason: from kotlin metadata */
        public final boolean ownedByMe;

        /* renamed from: q, reason: from kotlin metadata */
        @NotNull
        public final List<String> parentFolder;

        /* renamed from: r, reason: from kotlin metadata */
        @NotNull
        public final List<String> permissionIds;

        /* renamed from: s, reason: from kotlin metadata */
        public final boolean recycled;

        /* renamed from: t, reason: from kotlin metadata */
        public final int version;

        /* renamed from: u, reason: from kotlin metadata */
        public final boolean viewedByMe;

        /* renamed from: v, reason: from kotlin metadata */
        public final boolean writerHasCopyPermission;

        /* renamed from: w, reason: from kotlin metadata */
        public final boolean writersHasSharePermission;

        /* renamed from: x, reason: from kotlin metadata */
        public final long size;

        /* renamed from: y, reason: from kotlin metadata */
        @NotNull
        public final String fullFileSuffix;

        @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File$Companion;", "", "()V", "FOLDER", "", "getMediaCategory", "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "file", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final MediaCategory getMediaCategory(@NotNull File file) {
                boolean startsWith$default;
                Intrinsics.checkNotNullParameter(file, "file");
                MediaCategory mediaCategory = MediaCategory.Unknown;
                FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
                if (fileExtensionUtils.isImageFile(file.getFullFileSuffix())) {
                    mediaCategory = MediaCategory.Image;
                }
                if (fileExtensionUtils.isVideoType(file.getFullFileSuffix())) {
                    mediaCategory = MediaCategory.Video;
                }
                if (fileExtensionUtils.isAudio(file.getFullFileSuffix())) {
                    mediaCategory = MediaCategory.Audio;
                }
                if (!fileExtensionUtils.isOffice(file.getFullFileSuffix())) {
                    startsWith$default = StringsKt__StringsJVMKt.startsWith$default(file.getMimeType(), "text/plain", false, 2, null);
                    if (!startsWith$default) {
                        return mediaCategory;
                    }
                }
                return MediaCategory.Document;
            }

            public Companion() {
            }
        }

        public File() {
            this(null, null, null, null, false, false, null, null, false, false, null, false, null, null, null, false, null, null, false, 0, false, false, false, 0L, null, 33554431, null);
        }

        @NotNull
        public final String getCategory() {
            return this.category;
        }

        @NotNull
        public final List<String> getContainers() {
            return this.containers;
        }

        @NotNull
        public final String getCreatedTime() {
            return this.createdTime;
        }

        @NotNull
        public final String getDescription() {
            return this.description;
        }

        public final boolean getDirectlyRecycled() {
            return this.directlyRecycled;
        }

        public final boolean getEditedByMe() {
            return this.editedByMe;
        }

        @NotNull
        public final String getEditedByMeTime() {
            return this.editedByMeTime;
        }

        @NotNull
        public final String getEditedTime() {
            return this.editedTime;
        }

        public final boolean getExistThumbnail() {
            return this.existThumbnail;
        }

        public final boolean getFavorite() {
            return this.favorite;
        }

        @NotNull
        public final String getFileName() {
            return this.fileName;
        }

        @NotNull
        public final String getFullFileSuffix() {
            return this.fullFileSuffix;
        }

        public final boolean getHasShared() {
            return this.hasShared;
        }

        @NotNull
        public final String getIconDownloadLink() {
            return this.iconDownloadLink;
        }

        @NotNull
        public final String getId() {
            return this.id;
        }

        @NotNull
        public final String getMimeType() {
            return this.mimeType;
        }

        public final boolean getOwnedByMe() {
            return this.ownedByMe;
        }

        @NotNull
        public final List<String> getParentFolder() {
            return this.parentFolder;
        }

        @NotNull
        public final List<String> getPermissionIds() {
            return this.permissionIds;
        }

        public final boolean getRecycled() {
            return this.recycled;
        }

        public final long getSize() {
            return this.size;
        }

        public final int getVersion() {
            return this.version;
        }

        public final boolean getViewedByMe() {
            return this.viewedByMe;
        }

        public final boolean getWriterHasCopyPermission() {
            return this.writerHasCopyPermission;
        }

        public final boolean getWritersHasSharePermission() {
            return this.writersHasSharePermission;
        }

        public File(@NotNull String category, @NotNull List<String> containers, @NotNull String createdTime, @NotNull String description, boolean z, boolean z2, @NotNull String editedByMeTime, @NotNull String editedTime, boolean z3, boolean z4, @NotNull String fileName, boolean z5, @NotNull String iconDownloadLink, @NotNull String id, @NotNull String mimeType, boolean z6, @NotNull List<String> parentFolder, @NotNull List<String> permissionIds, boolean z7, int i, boolean z8, boolean z9, boolean z10, long j, @NotNull String fullFileSuffix) {
            Intrinsics.checkNotNullParameter(category, "category");
            Intrinsics.checkNotNullParameter(containers, "containers");
            Intrinsics.checkNotNullParameter(createdTime, "createdTime");
            Intrinsics.checkNotNullParameter(description, "description");
            Intrinsics.checkNotNullParameter(editedByMeTime, "editedByMeTime");
            Intrinsics.checkNotNullParameter(editedTime, "editedTime");
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            Intrinsics.checkNotNullParameter(iconDownloadLink, "iconDownloadLink");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            Intrinsics.checkNotNullParameter(parentFolder, "parentFolder");
            Intrinsics.checkNotNullParameter(permissionIds, "permissionIds");
            Intrinsics.checkNotNullParameter(fullFileSuffix, "fullFileSuffix");
            this.category = category;
            this.containers = containers;
            this.createdTime = createdTime;
            this.description = description;
            this.directlyRecycled = z;
            this.editedByMe = z2;
            this.editedByMeTime = editedByMeTime;
            this.editedTime = editedTime;
            this.existThumbnail = z3;
            this.favorite = z4;
            this.fileName = fileName;
            this.hasShared = z5;
            this.iconDownloadLink = iconDownloadLink;
            this.id = id;
            this.mimeType = mimeType;
            this.ownedByMe = z6;
            this.parentFolder = parentFolder;
            this.permissionIds = permissionIds;
            this.recycled = z7;
            this.version = i;
            this.viewedByMe = z8;
            this.writerHasCopyPermission = z9;
            this.writersHasSharePermission = z10;
            this.size = j;
            this.fullFileSuffix = fullFileSuffix;
        }

        public /* synthetic */ File(String str, List list, String str2, String str3, boolean z, boolean z2, String str4, String str5, boolean z3, boolean z4, String str6, boolean z5, String str7, String str8, String str9, boolean z6, List list2, List list3, boolean z7, int i, boolean z8, boolean z9, boolean z10, long j, String str10, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? new ArrayList() : list, (i2 & 4) != 0 ? "" : str2, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? false : z2, (i2 & 64) != 0 ? "" : str4, (i2 & 128) != 0 ? "" : str5, (i2 & 256) != 0 ? false : z3, (i2 & 512) != 0 ? false : z4, (i2 & 1024) != 0 ? "" : str6, (i2 & 2048) != 0 ? false : z5, (i2 & 4096) != 0 ? "" : str7, (i2 & 8192) != 0 ? "" : str8, (i2 & 16384) != 0 ? "" : str9, (i2 & 32768) != 0 ? false : z6, (i2 & 65536) != 0 ? new ArrayList() : list2, (i2 & 131072) != 0 ? new ArrayList() : list3, (i2 & 262144) != 0 ? false : z7, (i2 & 524288) != 0 ? 0 : i, (i2 & 1048576) != 0 ? false : z8, (i2 & 2097152) != 0 ? false : z9, (i2 & 4194304) != 0 ? false : z10, (i2 & 8388608) != 0 ? 0L : j, (i2 & 16777216) != 0 ? "" : str10);
        }
    }

    public HuaweiYunFileListResult() {
        this(null, null, null, 7, null);
    }

    @NotNull
    public final String getCategory() {
        return this.category;
    }

    @NotNull
    public final List<File> getFiles() {
        return this.files;
    }

    @NotNull
    public final String getNextCursor() {
        return this.nextCursor;
    }

    public HuaweiYunFileListResult(@NotNull String category, @NotNull List<File> files, @NotNull String nextCursor) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(files, "files");
        Intrinsics.checkNotNullParameter(nextCursor, "nextCursor");
        this.category = category;
        this.files = files;
        this.nextCursor = nextCursor;
    }

    public /* synthetic */ HuaweiYunFileListResult(String str, List list, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? new ArrayList() : list, (i & 4) != 0 ? "" : str2);
    }
}
