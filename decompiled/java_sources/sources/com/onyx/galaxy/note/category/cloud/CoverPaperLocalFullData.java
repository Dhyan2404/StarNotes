package com.onyx.galaxy.note.category.cloud;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b'\u0010(R(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR(\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0005\u001a\u0004\b\u0010\u0010\u0007\"\u0004\b\u0011\u0010\tR(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00130\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0005\u001a\u0004\b\u0015\u0010\u0007\"\u0004\b\u0016\u0010\tR(\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00180\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0005\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR(\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0005\u001a\u0004\b\u001f\u0010\u0007\"\u0004\b \u0010\tR(\u0010&\u001a\b\u0012\u0004\u0012\u00020\"0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0005\u001a\u0004\b$\u0010\u0007\"\u0004\b%\u0010\t¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", "a", "Ljava/util/List;", "getResources", "()Ljava/util/List;", "setResources", "(Ljava/util/List;)V", "resources", "b", "getCoverResources", "setCoverResources", "coverResources", "c", "getPaperResources", "setPaperResources", "paperResources", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "d", "getCovers", "setCovers", "covers", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "e", "getPapers", "setPapers", "papers", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;", C6997f.f39671c, "getCoverCategories", "setCoverCategories", "coverCategories", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;", C6998g.f39679a, "getPaperCategories", "setPaperCategories", "paperCategories", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CoverPaperLocalFullData {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<TemplateResourceModel> resources = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<TemplateResourceModel> coverResources = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<TemplateResourceModel> paperResources = new ArrayList();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<CoverModel> covers = new ArrayList();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public List<TemplateModel> papers = new ArrayList();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<CoverCategoryModel> coverCategories = new ArrayList();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<TemplateCategoryModel> paperCategories = new ArrayList();

    @NotNull
    public final List<CoverCategoryModel> getCoverCategories() {
        return this.coverCategories;
    }

    @NotNull
    public final List<TemplateResourceModel> getCoverResources() {
        return this.coverResources;
    }

    @NotNull
    public final List<CoverModel> getCovers() {
        return this.covers;
    }

    @NotNull
    public final List<TemplateCategoryModel> getPaperCategories() {
        return this.paperCategories;
    }

    @NotNull
    public final List<TemplateResourceModel> getPaperResources() {
        return this.paperResources;
    }

    @NotNull
    public final List<TemplateModel> getPapers() {
        return this.papers;
    }

    @NotNull
    public final List<TemplateResourceModel> getResources() {
        return this.resources;
    }

    public final void setCoverCategories(@NotNull List<CoverCategoryModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.coverCategories = list;
    }

    public final void setCoverResources(@NotNull List<TemplateResourceModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.coverResources = list;
    }

    public final void setCovers(@NotNull List<CoverModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.covers = list;
    }

    public final void setPaperCategories(@NotNull List<TemplateCategoryModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.paperCategories = list;
    }

    public final void setPaperResources(@NotNull List<TemplateResourceModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.paperResources = list;
    }

    public final void setPapers(@NotNull List<TemplateModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.papers = list;
    }

    public final void setResources(@NotNull List<TemplateResourceModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.resources = list;
    }
}
