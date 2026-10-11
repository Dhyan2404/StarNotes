package com.onyx.android.sdk.replicator.utils;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.p027db.BaseModel;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.proto.ResourceDocProto;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00060\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\n\u0010\t\u001a\u00020\u0006*\u00020\u0006J\u000e\u0010\n\u001a\u0004\u0018\u00010\u000b*\u0004\u0018\u00010\u0006J\u0012\u0010\f\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\r\u001a\u00020\bJ\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\b\u0012\u0004\u0012\u00020\u00060\u0005J\n\u0010\u000f\u001a\u00020\u0006*\u00020\u0010J\u0012\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u0004\u0018\u00010\u0012J\n\u0010\u0013\u001a\u00020\u0006*\u00020\u000bJ\n\u0010\u0014\u001a\u00020\u0010*\u00020\u0006J\u0010\u0010\u0015\u001a\u00020\u0012*\b\u0012\u0004\u0012\u00020\u00060\u0005J\f\u0010\u0016\u001a\u00020\u000b*\u0004\u0018\u00010\u0006¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/utils/ResourceModels;", "", "()V", "containsTitle", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "title", "", "copyFileToDocDir", "createShapeResourceByModel", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", "duplicate", "newDocumentId", "filterExportPBResourceModel", "fromResourceProto", "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;", "fromResourceProtoList", "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;", "fromShapeResource", "toResourceProto", "toResourceProtoList", "toShapeResource", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ResourceModels {

    @NotNull
    public static final ResourceModels INSTANCE = new ResourceModels();

    public final boolean containsTitle(@NotNull List<ResourceModel> list, @Nullable String str) {
        boolean equals$default;
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (CollectionKt.isNonBlank(list)) {
            Iterator<ResourceModel> it2 = list.iterator();
            while (it2.hasNext()) {
                equals$default = StringsKt__StringsJVMKt.equals$default(it2.next().getTitle(), str, false, 2, null);
                if (equals$default) {
                    return true;
                }
            }
        }
        return false;
    }

    @NotNull
    public final ResourceModel copyFileToDocDir(@NotNull ResourceModel resourceModel) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(resourceModel, "<this>");
        if (resourceModel.isRemoved()) {
            return resourceModel;
        }
        String path = resourceModel.getPath();
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (!fileUtils.fileExist(path)) {
            return resourceModel;
        }
        ResourcePaths resourcePaths = ResourcePaths.INSTANCE;
        String documentId = resourceModel.getDocumentId();
        if (documentId == null) {
            documentId = "";
        }
        String obj = resourcePaths.appResourceDataDir(documentId).toAbsolutePath().toString();
        Intrinsics.checkNotNull(path);
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(path, obj, false, 2, null);
        if (startsWith$default) {
            return resourceModel;
        }
        String str = obj + resourceModel.getRelativePath();
        if (fileUtils.fileExist(str)) {
            return resourceModel;
        }
        onyx.org.apache.commons.io.FileUtils.copyFile(new File(path), new File(str));
        return resourceModel;
    }

    @Nullable
    public final ShapeResource createShapeResourceByModel(@Nullable ResourceModel resourceModel) {
        if (resourceModel != null) {
            return toShapeResource(resourceModel);
        }
        return null;
    }

    @NotNull
    public final ResourceModel duplicate(@NotNull ResourceModel resourceModel, @NotNull String newDocumentId) {
        boolean equals$default;
        Intrinsics.checkNotNullParameter(resourceModel, "<this>");
        Intrinsics.checkNotNullParameter(newDocumentId, "newDocumentId");
        String path = resourceModel.getPath();
        String relativePath = resourceModel.getRelativePath();
        String obj = ResourcePaths.INSTANCE.appResourceDataCopyPath(newDocumentId, path).toAbsolutePath().toString();
        equals$default = StringsKt__StringsJVMKt.equals$default(path, obj, false, 2, null);
        if (!equals$default) {
            onyx.org.apache.commons.io.FileUtils.copyFile(new File(path), new File(obj));
        }
        resourceModel.setUniqueId(UUIDUtils.INSTANCE.rawUUID());
        resourceModel.setDocumentId(newDocumentId);
        resourceModel.setOssUrl((String) null);
        resourceModel.setRelativePath(relativePath);
        resourceModel.setLocalPath(obj);
        resourceModel.setRevisionId((String) null);
        return resourceModel;
    }

    @NotNull
    public final List<ResourceModel> filterExportPBResourceModel(@NotNull List<ResourceModel> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (ResourceModel resourceModel : list) {
            if ((resourceModel.isEnabled() && FileUtils.INSTANCE.fileExist(resourceModel.getPath())) || resourceModel.isRemoved()) {
                arrayList.add(resourceModel);
            }
        }
        return arrayList;
    }

    @NotNull
    public final ResourceModel fromResourceProto(@NotNull ResourceDocProto.ResourceProto resourceProto) {
        Intrinsics.checkNotNullParameter(resourceProto, "<this>");
        ResourceModel ossUrl = new ResourceModel().setDocumentId(resourceProto.getDocumentId()).setTitle(resourceProto.getTitle()).setAudioDuration(resourceProto.getAudioDuration()).setType(resourceProto.getType()).setRelativePath(resourceProto.getRelativePath()).setRevisionId(resourceProto.getRevisionId()).setLocalPath(resourceProto.getOriginPath()).setStatus(resourceProto.getStatus()).setOssUrl(resourceProto.getCloudPath());
        String uniqueId = resourceProto.getUniqueId();
        Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
        ossUrl.setUniqueId(uniqueId);
        ossUrl.setCreatedAt(resourceProto.getCreatedAt());
        ossUrl.setUpdatedAt(resourceProto.getUpdatedAt());
        return ossUrl;
    }

    @NotNull
    public final List<ResourceModel> fromResourceProtoList(@Nullable ResourceDocProto.ResourceProtoList resourceProtoList) {
        ArrayList arrayList = new ArrayList();
        if (resourceProtoList == null) {
            return arrayList;
        }
        for (ResourceDocProto.ResourceProto resourceProto : resourceProtoList.getProtoList()) {
            Intrinsics.checkNotNull(resourceProto);
            arrayList.add(fromResourceProto(resourceProto));
        }
        return arrayList;
    }

    @NotNull
    public final ResourceModel fromShapeResource(@NotNull ShapeResource shapeResource) {
        Intrinsics.checkNotNullParameter(shapeResource, "<this>");
        ResourceModel resourceModel = new ResourceModel();
        String uniqueId = shapeResource.getUniqueId();
        if (uniqueId == null) {
            uniqueId = "";
        }
        resourceModel.setUniqueId(uniqueId);
        resourceModel.setLocalPath(shapeResource.getLocalPath());
        resourceModel.setTitle(shapeResource.getTitle());
        resourceModel.setOssUrl(shapeResource.getOssUrl());
        resourceModel.setAudioDuration(shapeResource.getAudioDuration());
        resourceModel.setDocumentId(shapeResource.getDocumentId());
        resourceModel.setType(shapeResource.getType());
        resourceModel.setRevisionId(shapeResource.getRevisionId());
        resourceModel.setStatus(shapeResource.getStatus());
        resourceModel.setRelativePath(shapeResource.getRelativePath());
        return resourceModel;
    }

    @NotNull
    public final ResourceDocProto.ResourceProto toResourceProto(@NotNull ResourceModel resourceModel) {
        Intrinsics.checkNotNullParameter(resourceModel, "<this>");
        ResourceDocProto.ResourceProto.Builder newBuilder = ResourceDocProto.ResourceProto.newBuilder();
        BaseModel.Companion companion = BaseModel.INSTANCE;
        ResourceDocProto.ResourceProto build = newBuilder.setUniqueId(companion.ensureNotNull(resourceModel.getUniqueId())).setDocumentId(resourceModel.getDocumentId()).setCreatedAt(resourceModel.getCreatedAt()).setUpdatedAt(resourceModel.getUpdatedAt()).setTitle(companion.ensureNotNull(resourceModel.getTitle())).setAudioDuration(resourceModel.getAudioDuration()).setType(resourceModel.getType()).setRelativePath(companion.ensureNotNull(resourceModel.getRelativePath())).setCloudPath(companion.ensureNotNull(resourceModel.getOssUrl())).setRevisionId(companion.ensureNotNull(resourceModel.getRevisionId())).setOriginPath(companion.ensureNotNull(resourceModel.getLocalPath())).setStatus(resourceModel.getStatus()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @NotNull
    public final ResourceDocProto.ResourceProtoList toResourceProtoList(@NotNull List<ResourceModel> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<ResourceModel> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(toResourceProto(it2.next()));
        }
        ResourceDocProto.ResourceProtoList build = ResourceDocProto.ResourceProtoList.newBuilder().addAllProto(arrayList).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @NotNull
    public final ShapeResource toShapeResource(@Nullable ResourceModel resourceModel) {
        ShapeResource shapeResource = new ShapeResource();
        if (resourceModel == null) {
            return shapeResource;
        }
        shapeResource.setLocalPath(resourceModel.getLocalPath());
        shapeResource.setOssUrl(resourceModel.getOssUrl());
        shapeResource.setType(resourceModel.getType());
        shapeResource.setUniqueId(resourceModel.getUniqueId());
        shapeResource.setTitle(resourceModel.getTitle());
        shapeResource.setAudioDuration(resourceModel.getAudioDuration());
        shapeResource.setDocumentId(resourceModel.getDocumentId());
        shapeResource.setRelativePath(resourceModel.getRelativePath());
        shapeResource.setRevisionId(resourceModel.getRevisionId());
        shapeResource.setStatus(resourceModel.getStatus());
        return shapeResource;
    }
}
