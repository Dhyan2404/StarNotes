package com.onyx.android.sdk.replicator.note.bean;

import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;", "", "()V", "coverModel", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "getCoverModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "setCoverModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V", "templateResourceList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", "getTemplateResourceList", "()Ljava/util/List;", "setTemplateResourceList", "(Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CoverJsonList {

    @Nullable
    private CoverModel coverModel;

    @Nullable
    private List<TemplateResourceModel> templateResourceList;

    @Nullable
    public final CoverModel getCoverModel() {
        return this.coverModel;
    }

    @Nullable
    public final List<TemplateResourceModel> getTemplateResourceList() {
        return this.templateResourceList;
    }

    public final void setCoverModel(@Nullable CoverModel coverModel) {
        this.coverModel = coverModel;
    }

    public final void setTemplateResourceList(@Nullable List<TemplateResourceModel> list) {
        this.templateResourceList = list;
    }
}
