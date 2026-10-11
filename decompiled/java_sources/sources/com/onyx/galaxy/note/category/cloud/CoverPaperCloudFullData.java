package com.onyx.galaxy.note.category.cloud;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b3\u00104R(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR(\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0005\u001a\u0004\b\u0010\u0010\u0007\"\u0004\b\u0011\u0010\tR(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00130\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0005\u001a\u0004\b\u0015\u0010\u0007\"\u0004\b\u0016\u0010\tR(\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00130\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0005\u001a\u0004\b\u0019\u0010\u0007\"\u0004\b\u001a\u0010\tR(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0005\u001a\u0004\b\u001e\u0010\u0007\"\u0004\b\u001f\u0010\tR(\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0005\u001a\u0004\b\"\u0010\u0007\"\u0004\b#\u0010\tR(\u0010)\u001a\b\u0012\u0004\u0012\u00020%0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0005\u001a\u0004\b'\u0010\u0007\"\u0004\b(\u0010\tR(\u0010-\u001a\b\u0012\u0004\u0012\u00020%0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0005\u001a\u0004\b+\u0010\u0007\"\u0004\b,\u0010\tR(\u00102\u001a\b\u0012\u0004\u0012\u00020.0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\u0005\u001a\u0004\b0\u0010\u0007\"\u0004\b1\u0010\t¨\u00065"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;", "", "", "Lcom/onyx/galaxy/note/category/cloud/ResourceItem;", "a", "Ljava/util/List;", "getResources", "()Ljava/util/List;", "setResources", "(Ljava/util/List;)V", "resources", "b", "getCoverResources", "setCoverResources", "coverResources", "c", "getPaperResources", "setPaperResources", "paperResources", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;", "d", "getCovers", "setCovers", "covers", "e", "getPapers", "setPapers", "papers", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;", C6997f.f39671c, "getCoverCategories", "setCoverCategories", "coverCategories", C6998g.f39679a, "getPaperCategories", "setPaperCategories", "paperCategories", "Lcom/onyx/galaxy/note/category/cloud/CategoryRelationItem;", C6999h.f39688c, "getCoverCategoryRelations", "setCoverCategoryRelations", "coverCategoryRelations", "i", "getPaperCategoryRelations", "setPaperCategoryRelations", "paperCategoryRelations", "Lcom/onyx/galaxy/note/category/cloud/ResourceRelationItem;", "j", "getResourceRelations", "setResourceRelations", "resourceRelations", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CoverPaperCloudFullData {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<ResourceItem> resources = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<ResourceItem> coverResources = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<ResourceItem> paperResources = new ArrayList();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<CoverPaperItem> covers = new ArrayList();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public List<CoverPaperItem> papers = new ArrayList();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<CoverPaperCategoryItem> coverCategories = new ArrayList();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<CoverPaperCategoryItem> paperCategories = new ArrayList();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<CategoryRelationItem> coverCategoryRelations = new ArrayList();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<CategoryRelationItem> paperCategoryRelations = new ArrayList();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<ResourceRelationItem> resourceRelations = new ArrayList();

    @NotNull
    public final List<CoverPaperCategoryItem> getCoverCategories() {
        return this.coverCategories;
    }

    @NotNull
    public final List<CategoryRelationItem> getCoverCategoryRelations() {
        return this.coverCategoryRelations;
    }

    @NotNull
    public final List<ResourceItem> getCoverResources() {
        return this.coverResources;
    }

    @NotNull
    public final List<CoverPaperItem> getCovers() {
        return this.covers;
    }

    @NotNull
    public final List<CoverPaperCategoryItem> getPaperCategories() {
        return this.paperCategories;
    }

    @NotNull
    public final List<CategoryRelationItem> getPaperCategoryRelations() {
        return this.paperCategoryRelations;
    }

    @NotNull
    public final List<ResourceItem> getPaperResources() {
        return this.paperResources;
    }

    @NotNull
    public final List<CoverPaperItem> getPapers() {
        return this.papers;
    }

    @NotNull
    public final List<ResourceRelationItem> getResourceRelations() {
        return this.resourceRelations;
    }

    @NotNull
    public final List<ResourceItem> getResources() {
        return this.resources;
    }

    public final void setCoverCategories(@NotNull List<CoverPaperCategoryItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.coverCategories = list;
    }

    public final void setCoverCategoryRelations(@NotNull List<CategoryRelationItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.coverCategoryRelations = list;
    }

    public final void setCoverResources(@NotNull List<ResourceItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.coverResources = list;
    }

    public final void setCovers(@NotNull List<CoverPaperItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.covers = list;
    }

    public final void setPaperCategories(@NotNull List<CoverPaperCategoryItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.paperCategories = list;
    }

    public final void setPaperCategoryRelations(@NotNull List<CategoryRelationItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.paperCategoryRelations = list;
    }

    public final void setPaperResources(@NotNull List<ResourceItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.paperResources = list;
    }

    public final void setPapers(@NotNull List<CoverPaperItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.papers = list;
    }

    public final void setResourceRelations(@NotNull List<ResourceRelationItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.resourceRelations = list;
    }

    public final void setResources(@NotNull List<ResourceItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.resources = list;
    }
}
