package com.onyx.galaxy.note.datarepository.bean;

import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;", "", "attachmentBean", "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;", "progressInfo", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "(Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V", "getAttachmentBean", "()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;", "getProgressInfo", "()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "setProgressInfo", "(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V", "isDownloadFailed", "", "isDownloadFinished", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ShareResourceDownloadBean {

    @NotNull
    private final AttachmentBean attachmentBean;

    @Nullable
    private ProgressInfo progressInfo;

    public ShareResourceDownloadBean(@NotNull AttachmentBean attachmentBean, @Nullable ProgressInfo progressInfo) {
        Intrinsics.checkNotNullParameter(attachmentBean, "attachmentBean");
        this.attachmentBean = attachmentBean;
        this.progressInfo = progressInfo;
    }

    @NotNull
    public final AttachmentBean getAttachmentBean() {
        return this.attachmentBean;
    }

    @Nullable
    public final ProgressInfo getProgressInfo() {
        return this.progressInfo;
    }

    public final boolean isDownloadFailed() {
        return this.progressInfo == null;
    }

    public final boolean isDownloadFinished() {
        ProgressInfo progressInfo = this.progressInfo;
        if (progressInfo != null) {
            return progressInfo != null && progressInfo.isComplete();
        }
        return true;
    }

    public final void setProgressInfo(@Nullable ProgressInfo progressInfo) {
        this.progressInfo = progressInfo;
    }

    public /* synthetic */ ShareResourceDownloadBean(AttachmentBean attachmentBean, ProgressInfo progressInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(attachmentBean, (i & 2) != 0 ? null : progressInfo);
    }
}
