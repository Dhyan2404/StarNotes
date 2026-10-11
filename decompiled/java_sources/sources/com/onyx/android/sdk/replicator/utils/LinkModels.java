package com.onyx.android.sdk.replicator.utils;

import android.graphics.RectF;
import com.onyx.android.sdk.data.common.p027db.BaseModel;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.onyx.android.sdk.replicator.note.proto.LinkDataProto;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005J\u0010\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007*\u00020\bJ\n\u0010\t\u001a\u00020\u0005*\u00020\u0004J\u0010\u0010\n\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00040\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/utils/LinkModels;", "", "()V", "fromProto", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", "Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto$LinkProto;", "fromProtoList", "", "Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto$LinkProtoList;", "toProto", "toProtoList", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class LinkModels {

    @NotNull
    public static final LinkModels INSTANCE = new LinkModels();

    @NotNull
    public final LinkModel fromProto(@NotNull LinkDataProto.LinkProto linkProto) {
        Intrinsics.checkNotNullParameter(linkProto, "<this>");
        LinkModel linkModel = new LinkModel();
        String uniqueId = linkProto.getUniqueId();
        Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
        linkModel.setUniqueId(uniqueId);
        linkModel.setDocumentId(linkProto.getDocumentId());
        linkModel.setCreatedAt(linkProto.getCreatedAt());
        linkModel.setUpdatedAt(linkProto.getUpdatedAt());
        linkModel.setTitle(linkProto.getTitle());
        String type = linkProto.getType();
        Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
        linkModel.setType(type);
        linkModel.setRevisionId(linkProto.getRevisionId());
        linkModel.setStatus(linkProto.getStatus());
        linkModel.setUserId(linkProto.getUserId());
        linkModel.setTargetDocId(linkProto.getTargetDocId());
        linkModel.setPageUniqueId(linkProto.getPageUniqueId());
        linkModel.setTargetPageId(linkProto.getTargetPageId());
        linkModel.setContent(linkProto.getContent());
        linkModel.setRemark(linkProto.getRemark());
        linkModel.setDisplayStyle(linkProto.getDisplayStyle());
        linkModel.setTargetPageIndex(linkProto.getTargetPageIndex());
        linkModel.setPath(linkProto.getPath());
        linkModel.setExtra(linkProto.getExtra());
        linkModel.setBoundingRect((RectF) JSONUtils.INSTANCE.parseObject(linkProto.getBoundingRect(), RectF.class));
        return linkModel;
    }

    @NotNull
    public final List<LinkModel> fromProtoList(@NotNull LinkDataProto.LinkProtoList linkProtoList) {
        Intrinsics.checkNotNullParameter(linkProtoList, "<this>");
        ArrayList arrayList = new ArrayList();
        for (LinkDataProto.LinkProto linkProto : linkProtoList.getProtoList()) {
            Intrinsics.checkNotNull(linkProto);
            arrayList.add(fromProto(linkProto));
        }
        return arrayList;
    }

    @NotNull
    public final LinkDataProto.LinkProto toProto(@NotNull LinkModel linkModel) {
        Intrinsics.checkNotNullParameter(linkModel, "<this>");
        LinkDataProto.LinkProto.Builder newBuilder = LinkDataProto.LinkProto.newBuilder();
        BaseModel.Companion companion = BaseModel.INSTANCE;
        LinkDataProto.LinkProto build = newBuilder.setUniqueId(companion.ensureNotNull(linkModel.getUniqueId())).setDocumentId(companion.ensureNotNull(linkModel.getDocumentId())).setCreatedAt(linkModel.getCreatedAt()).setUpdatedAt(linkModel.getUpdatedAt()).setTitle(companion.ensureNotNull(linkModel.getTitle())).setType(companion.ensureNotNull(linkModel.getType())).setRevisionId(companion.ensureNotNull(linkModel.getRevisionId())).setStatus(linkModel.getStatus()).setUserId(companion.ensureNotNull(linkModel.getUserId())).setTargetDocId(companion.ensureNotNull(linkModel.getTargetDocId())).setPageUniqueId(companion.ensureNotNull(linkModel.getPageUniqueId())).setTargetPageId(companion.ensureNotNull(linkModel.getTargetPageId())).setContent(companion.ensureNotNull(linkModel.getContent())).setRemark(companion.ensureNotNull(linkModel.getRemark())).setDisplayStyle(linkModel.getDisplayStyle()).setTargetPageIndex(linkModel.getTargetPageIndex()).setPath(companion.ensureNotNull(linkModel.getPath())).setExtra(companion.ensureNotNull(linkModel.getExtra())).setBoundingRect(companion.ensureNotNull(JSONUtils.INSTANCE.toJson(linkModel.getBoundingRect()))).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @NotNull
    public final LinkDataProto.LinkProtoList toProtoList(@NotNull List<LinkModel> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<LinkModel> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(toProto(it2.next()));
        }
        LinkDataProto.LinkProtoList build = LinkDataProto.LinkProtoList.newBuilder().addAllProto(arrayList).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }
}
