package com.onyx.galaxy.note.datarepository.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.replicator.note.p035db.model.TitleModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001a\u0018\u00002\u00020\u0001Bc\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\u000e\b\u0003\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\t\u0012\b\b\u0003\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\b\u0010(\u001a\u00020\u0003H\u0007R \u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0018\"\u0004\b\u001f\u0010\u001aR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0018\"\u0004\b!\u0010\u001aR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010#\"\u0004\b'\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "", "id", "", "name", "type", "", "resourceType", "groupName", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;", "version", "attachments", "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;", "isDeleted", "", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/util/List;Z)V", "getAttachments", "()Ljava/util/List;", "setAttachments", "(Ljava/util/List;)V", "getGroupName", "setGroupName", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", Constants.BOOLEAN_VALUE_SIG, "setDeleted", "(Z)V", "getName", "setName", "getResourceType", "setResourceType", "getType", "()I", "setType", "(I)V", "getVersion", "setVersion", "getDefaultName", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LibraryBean {

    @NotNull
    private List<AttachmentBean> attachments;

    @NotNull
    private List<TitleModel> groupName;

    @NotNull
    private String id;
    private boolean isDeleted;

    @Nullable
    private String name;

    @NotNull
    private String resourceType;
    private int type;
    private int version;

    public LibraryBean() {
        this(null, null, 0, null, null, 0, null, false, 255, null);
    }

    @NotNull
    public final List<AttachmentBean> getAttachments() {
        return this.attachments;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getDefaultName() {
        Object firstOrNull;
        String value;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.groupName);
        TitleModel titleModel = (TitleModel) firstOrNull;
        if (titleModel != null && (value = titleModel.getValue()) != null) {
            return value;
        }
        String str = this.name;
        return str == null ? "" : str;
    }

    @NotNull
    public final List<TitleModel> getGroupName() {
        return this.groupName;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getResourceType() {
        return this.resourceType;
    }

    public final int getType() {
        return this.type;
    }

    public final int getVersion() {
        return this.version;
    }

    /* renamed from: isDeleted, reason: from getter */
    public final boolean getIsDeleted() {
        return this.isDeleted;
    }

    public final void setAttachments(@NotNull List<AttachmentBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.attachments = list;
    }

    public final void setDeleted(boolean z) {
        this.isDeleted = z;
    }

    public final void setGroupName(@NotNull List<TitleModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.groupName = list;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setResourceType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resourceType = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    public LibraryBean(@NotNull String id, @Nullable String str, int i, @NotNull String resourceType, @NotNull List<TitleModel> groupName, int i2, @JSONField(name = "attachments") @NotNull List<AttachmentBean> attachments, @JSONField(name = "isDeleted") boolean z) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(resourceType, "resourceType");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        this.id = id;
        this.name = str;
        this.type = i;
        this.resourceType = resourceType;
        this.groupName = groupName;
        this.version = i2;
        this.attachments = attachments;
        this.isDeleted = z;
    }

    public /* synthetic */ LibraryBean(String str, String str2, int i, String str3, List list, int i2, List list2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? "" : str, (i3 & 2) != 0 ? "" : str2, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? "" : str3, (i3 & 16) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i3 & 32) != 0 ? 0 : i2, (i3 & 64) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list2, (i3 & 128) != 0 ? false : z);
    }
}
