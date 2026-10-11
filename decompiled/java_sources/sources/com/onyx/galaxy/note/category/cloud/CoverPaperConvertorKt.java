package com.onyx.galaxy.note.category.cloud;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.data.template.SpaceArgs;
import com.onyx.android.sdk.data.common.data.template.TemplateArgs;
import com.onyx.android.sdk.data.common.path.CoverPaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\n\u0010\u0007\u001a\u00020\b*\u00020\t\u001a\u0012\u0010\n\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\n\u0010\f\u001a\u00020\r*\u00020\t\u001a\n\u0010\u000e\u001a\u00020\u000f*\u00020\u0010\u001a\u0012\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0012\u0010\u0013\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0018\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00120\u0015*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u000f\u001a\n\u0010\u0018\u001a\u00020\u0012*\u00020\u000f\u001a\n\u0010\u0019\u001a\u00020\u0017*\u00020\u000f\u001a\n\u0010\u001a\u001a\u00020\u0012*\u00020\u000f\u001a\n\u0010\u001b\u001a\u00020\u001c*\u00020\u0010¨\u0006\u001d"}, m61528d2 = {"convertAll", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;", "convertCover", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "item", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;", "convertCoverCategory", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;", "convertPaper", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "convertPaperCategory", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;", "convertResource", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", "Lcom/onyx/galaxy/note/category/cloud/ResourceItem;", "findCoverCategory", "", "findPaperCategory", "findResourceList", "", "getResourceDir", "Ljava/nio/file/Path;", "getResourceSavePath", "getThumbnailDir", "getThumbnailSavePath", "toLocalType", "", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCoverPaperConvertor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverPaperConvertor.kt\ncom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1549#2:182\n1620#2,3:183\n1549#2:186\n1620#2,3:187\n1549#2:190\n1620#2,3:191\n1549#2:194\n1620#2,3:195\n1549#2:198\n1620#2,3:199\n1549#2:202\n1620#2,3:203\n1549#2:206\n1620#2,3:207\n766#2:210\n857#2,2:211\n1549#2:213\n1620#2,3:214\n223#2,2:217\n223#2,2:219\n*S KotlinDebug\n*F\n+ 1 CoverPaperConvertor.kt\ncom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt\n*L\n25#1:182\n25#1:183,3\n26#1:186\n26#1:187,3\n27#1:190\n27#1:191,3\n28#1:194\n28#1:195,3\n29#1:198\n29#1:199,3\n30#1:202\n30#1:203,3\n31#1:206\n31#1:207,3\n146#1:210\n146#1:211,2\n146#1:213\n146#1:214,3\n150#1:217,2\n154#1:219,2\n*E\n"})
/* loaded from: classes9.dex */
public final class CoverPaperConvertorKt {
    @NotNull
    public static final CoverPaperLocalFullData convertAll(@NotNull CoverPaperCloudFullData coverPaperCloudFullData) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        int collectionSizeOrDefault4;
        int collectionSizeOrDefault5;
        int collectionSizeOrDefault6;
        int collectionSizeOrDefault7;
        Intrinsics.checkNotNullParameter(coverPaperCloudFullData, "<this>");
        CoverPaperLocalFullData coverPaperLocalFullData = new CoverPaperLocalFullData();
        List<TemplateResourceModel> resources = coverPaperLocalFullData.getResources();
        List<ResourceItem> resources2 = coverPaperCloudFullData.getResources();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(resources2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = resources2.iterator();
        while (it2.hasNext()) {
            arrayList.add(convertResource((ResourceItem) it2.next()));
        }
        resources.addAll(arrayList);
        List<TemplateResourceModel> coverResources = coverPaperLocalFullData.getCoverResources();
        List<ResourceItem> coverResources2 = coverPaperCloudFullData.getCoverResources();
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(coverResources2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = coverResources2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(convertResource((ResourceItem) it3.next()));
        }
        coverResources.addAll(arrayList2);
        List<TemplateResourceModel> paperResources = coverPaperLocalFullData.getPaperResources();
        List<ResourceItem> paperResources2 = coverPaperCloudFullData.getPaperResources();
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(paperResources2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
        Iterator<T> it4 = paperResources2.iterator();
        while (it4.hasNext()) {
            arrayList3.add(convertResource((ResourceItem) it4.next()));
        }
        paperResources.addAll(arrayList3);
        List<CoverModel> covers = coverPaperLocalFullData.getCovers();
        List<CoverPaperItem> covers2 = coverPaperCloudFullData.getCovers();
        collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(covers2, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault4);
        Iterator<T> it5 = covers2.iterator();
        while (it5.hasNext()) {
            arrayList4.add(convertCover(coverPaperCloudFullData, (CoverPaperItem) it5.next()));
        }
        covers.addAll(arrayList4);
        List<TemplateModel> papers = coverPaperLocalFullData.getPapers();
        List<CoverPaperItem> papers2 = coverPaperCloudFullData.getPapers();
        collectionSizeOrDefault5 = CollectionsKt__IterablesKt.collectionSizeOrDefault(papers2, 10);
        ArrayList arrayList5 = new ArrayList(collectionSizeOrDefault5);
        Iterator<T> it6 = papers2.iterator();
        while (it6.hasNext()) {
            arrayList5.add(convertPaper(coverPaperCloudFullData, (CoverPaperItem) it6.next()));
        }
        papers.addAll(arrayList5);
        List<CoverCategoryModel> coverCategories = coverPaperLocalFullData.getCoverCategories();
        List<CoverPaperCategoryItem> coverCategories2 = coverPaperCloudFullData.getCoverCategories();
        collectionSizeOrDefault6 = CollectionsKt__IterablesKt.collectionSizeOrDefault(coverCategories2, 10);
        ArrayList arrayList6 = new ArrayList(collectionSizeOrDefault6);
        Iterator<T> it7 = coverCategories2.iterator();
        while (it7.hasNext()) {
            arrayList6.add(convertCoverCategory((CoverPaperCategoryItem) it7.next()));
        }
        coverCategories.addAll(arrayList6);
        List<TemplateCategoryModel> paperCategories = coverPaperLocalFullData.getPaperCategories();
        List<CoverPaperCategoryItem> paperCategories2 = coverPaperCloudFullData.getPaperCategories();
        collectionSizeOrDefault7 = CollectionsKt__IterablesKt.collectionSizeOrDefault(paperCategories2, 10);
        ArrayList arrayList7 = new ArrayList(collectionSizeOrDefault7);
        Iterator<T> it8 = paperCategories2.iterator();
        while (it8.hasNext()) {
            arrayList7.add(convertPaperCategory((CoverPaperCategoryItem) it8.next()));
        }
        paperCategories.addAll(arrayList7);
        return coverPaperLocalFullData;
    }

    @NotNull
    public static final CoverModel convertCover(@NotNull CoverPaperCloudFullData coverPaperCloudFullData, @NotNull CoverPaperItem item) {
        Intrinsics.checkNotNullParameter(coverPaperCloudFullData, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        List<String> findResourceList = findResourceList(coverPaperCloudFullData, item);
        CoverModel coverModel = new CoverModel();
        coverModel.setUniqueId(item.getUniqueId());
        coverModel.setVersion(item.getVersion());
        coverModel.setCreatedAt(item.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String());
        coverModel.setUpdatedAt(item.getUpdatedAt());
        coverModel.setSource(2);
        coverModel.setTitle(item.getName());
        coverModel.setOrientation(item.getOrientation());
        coverModel.setSizeFormat(item.getPageSize());
        coverModel.setCategoryId(findCoverCategory(coverPaperCloudFullData, item));
        coverModel.getResourceIdList().addAll(findResourceList);
        coverModel.setOrderIndex(item.getPriority());
        return coverModel;
    }

    @NotNull
    public static final CoverCategoryModel convertCoverCategory(@NotNull CoverPaperCategoryItem coverPaperCategoryItem) {
        Intrinsics.checkNotNullParameter(coverPaperCategoryItem, "<this>");
        CoverCategoryModel coverCategoryModel = new CoverCategoryModel();
        coverCategoryModel.setUniqueId(coverPaperCategoryItem.getUniqueId());
        coverCategoryModel.setVersion(coverPaperCategoryItem.getVersion());
        coverCategoryModel.setCreatedAt(coverPaperCategoryItem.getCreatedAt());
        coverCategoryModel.setUpdatedAt(coverPaperCategoryItem.getUpdatedAt());
        coverCategoryModel.setSource(2);
        coverCategoryModel.setTitle(coverPaperCategoryItem.getName());
        coverCategoryModel.setOrderIndex(coverPaperCategoryItem.getPriority());
        return coverCategoryModel;
    }

    @NotNull
    public static final TemplateModel convertPaper(@NotNull CoverPaperCloudFullData coverPaperCloudFullData, @NotNull CoverPaperItem item) {
        Intrinsics.checkNotNullParameter(coverPaperCloudFullData, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        List<String> findResourceList = findResourceList(coverPaperCloudFullData, item);
        TemplateModel templateModel = new TemplateModel();
        templateModel.setUniqueId(item.getUniqueId());
        templateModel.setVersion(item.getVersion());
        templateModel.setCreatedAt(item.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String());
        templateModel.setUpdatedAt(item.getUpdatedAt());
        templateModel.setSource(2);
        templateModel.setType(0);
        templateModel.setTitle(item.getName());
        templateModel.setOrientation(item.getOrientation());
        templateModel.setSizeFormat(item.getPageSize());
        templateModel.setCategoryId(findPaperCategory(coverPaperCloudFullData, item));
        templateModel.getResourceIdList().addAll(findResourceList);
        if (item.getHasPaperArgs()) {
            templateModel.setTemplateArgs(new TemplateArgs());
        }
        if (item.getHasSpaceArgs()) {
            SpaceArgs spaceArgs = new SpaceArgs();
            spaceArgs.setDefaultSpaceValueDp(item.getDefaultSpaceValueDp());
            spaceArgs.setMaxSpaceValueDp(item.getMaxSpaceValueDp());
            spaceArgs.setMinSpaceValueDp(item.getMinSpaceValueDp());
            spaceArgs.setSpaceValuePx(item.getSpaceValuePx());
            spaceArgs.setSpaceUniqueId(item.getSpaceUniqueId());
            spaceArgs.setPagePaddingLeft(item.getPagePaddingLeft());
            spaceArgs.setPagePaddingRight(item.getPagePaddingRight());
            spaceArgs.setPagePaddingTop(item.getPagePaddingTop());
            spaceArgs.setPagePaddingBottom(item.getPagePaddingBottom());
            TemplateArgs templateArgs = templateModel.getTemplateArgs();
            Intrinsics.checkNotNull(templateArgs);
            templateArgs.setSpaceArgs(spaceArgs);
        }
        templateModel.setOrderIndex(item.getPriority());
        return templateModel;
    }

    @NotNull
    public static final TemplateCategoryModel convertPaperCategory(@NotNull CoverPaperCategoryItem coverPaperCategoryItem) {
        Intrinsics.checkNotNullParameter(coverPaperCategoryItem, "<this>");
        TemplateCategoryModel templateCategoryModel = new TemplateCategoryModel();
        templateCategoryModel.setUniqueId(coverPaperCategoryItem.getUniqueId());
        templateCategoryModel.setVersion(coverPaperCategoryItem.getVersion());
        templateCategoryModel.setCreatedAt(coverPaperCategoryItem.getCreatedAt());
        templateCategoryModel.setUpdatedAt(coverPaperCategoryItem.getUpdatedAt());
        templateCategoryModel.setSource(2);
        templateCategoryModel.setTitle(coverPaperCategoryItem.getName());
        templateCategoryModel.setOrderIndex(coverPaperCategoryItem.getPriority());
        return templateCategoryModel;
    }

    @NotNull
    public static final TemplateResourceModel convertResource(@NotNull ResourceItem resourceItem) {
        Intrinsics.checkNotNullParameter(resourceItem, "<this>");
        TemplateResourceModel templateResourceModel = new TemplateResourceModel();
        templateResourceModel.setUniqueId(resourceItem.getUniqueId());
        templateResourceModel.setVersion(resourceItem.getVersion());
        templateResourceModel.setCreatedAt(resourceItem.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String());
        templateResourceModel.setUpdatedAt(resourceItem.getUpdatedAt());
        templateResourceModel.setSource(resourceItem.getSource());
        templateResourceModel.setType(toLocalType(resourceItem));
        templateResourceModel.setResourceType(resourceItem.getType());
        templateResourceModel.setStrokeColor(resourceItem.getStrokeColor());
        templateResourceModel.setFillColor(resourceItem.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_FILL_COLOR java.lang.String());
        templateResourceModel.setColorTransformMode(resourceItem.getColorTransformMode());
        templateResourceModel.setUri(resourceItem.getUri());
        templateResourceModel.setThumbnailUri(resourceItem.getThumbnailUri());
        templateResourceModel.setRelativePath(getResourceSavePath(templateResourceModel));
        templateResourceModel.setThumbnailRelativePath(getThumbnailSavePath(templateResourceModel));
        templateResourceModel.setOrderIndex(resourceItem.getPriority());
        return templateResourceModel;
    }

    @NotNull
    public static final String findCoverCategory(@NotNull CoverPaperCloudFullData coverPaperCloudFullData, @NotNull CoverPaperItem item) {
        Intrinsics.checkNotNullParameter(coverPaperCloudFullData, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        for (CategoryRelationItem categoryRelationItem : coverPaperCloudFullData.getCoverCategoryRelations()) {
            if (Intrinsics.areEqual(categoryRelationItem.getItemId(), item.getUniqueId())) {
                return categoryRelationItem.getCategoryId();
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @NotNull
    public static final String findPaperCategory(@NotNull CoverPaperCloudFullData coverPaperCloudFullData, @NotNull CoverPaperItem item) {
        Intrinsics.checkNotNullParameter(coverPaperCloudFullData, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        for (CategoryRelationItem categoryRelationItem : coverPaperCloudFullData.getPaperCategoryRelations()) {
            if (Intrinsics.areEqual(categoryRelationItem.getItemId(), item.getUniqueId())) {
                return categoryRelationItem.getCategoryId();
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @NotNull
    public static final List<String> findResourceList(@NotNull CoverPaperCloudFullData coverPaperCloudFullData, @NotNull CoverPaperItem item) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(coverPaperCloudFullData, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        List<ResourceRelationItem> resourceRelations = coverPaperCloudFullData.getResourceRelations();
        ArrayList arrayList = new ArrayList();
        for (Object obj : resourceRelations) {
            if (Intrinsics.areEqual(((ResourceRelationItem) obj).getTargetUniqueId(), item.getUniqueId())) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((ResourceRelationItem) it2.next()).getResourceUniqueId());
        }
        return arrayList2;
    }

    @NotNull
    public static final Path getResourceDir(@NotNull TemplateResourceModel templateResourceModel) {
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        int type = templateResourceModel.getType();
        if (type == 0) {
            return TemplatePaths.INSTANCE.appCurUserNoteTemplateResDir();
        }
        if (type == 1) {
            return CoverPaths.INSTANCE.appCurUserNoteCoverResDir();
        }
        throw OnyxException.INSTANCE.m31891of("Unknown Resource Type");
    }

    @NotNull
    public static final String getResourceSavePath(@NotNull TemplateResourceModel templateResourceModel) {
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        String obj = getResourceDir(templateResourceModel).toAbsolutePath().toString();
        String baseName = FilenameUtils.getBaseName(templateResourceModel.getUniqueId());
        String extension = FilenameUtils.getExtension(templateResourceModel.getUri());
        FileUtils fileUtils = FileUtils.INSTANCE;
        Intrinsics.checkNotNull(baseName);
        Intrinsics.checkNotNull(extension);
        return fileUtils.getFile(obj, baseName, extension);
    }

    @NotNull
    public static final Path getThumbnailDir(@NotNull TemplateResourceModel templateResourceModel) {
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        int type = templateResourceModel.getType();
        if (type == 0) {
            return TemplatePaths.INSTANCE.appCurUserNoteTemplateThumbnailResDir();
        }
        if (type == 1) {
            return CoverPaths.INSTANCE.appCurUserNoteCoverThumbnailResDir();
        }
        throw OnyxException.INSTANCE.m31891of("Unknown Resource Type");
    }

    @NotNull
    public static final String getThumbnailSavePath(@NotNull TemplateResourceModel templateResourceModel) {
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        String obj = getThumbnailDir(templateResourceModel).toAbsolutePath().toString();
        String baseName = FilenameUtils.getBaseName(templateResourceModel.getUniqueId() + "-thumbnail");
        String extension = FilenameUtils.getExtension(templateResourceModel.getThumbnailUri());
        FileUtils fileUtils = FileUtils.INSTANCE;
        Intrinsics.checkNotNull(baseName);
        Intrinsics.checkNotNull(extension);
        return fileUtils.getFile(obj, baseName, extension);
    }

    public static final int toLocalType(@NotNull ResourceItem resourceItem) {
        Intrinsics.checkNotNullParameter(resourceItem, "<this>");
        String target = resourceItem.getTarget();
        if (Intrinsics.areEqual(target, "cover")) {
            return 1;
        }
        return Intrinsics.areEqual(target, "template") ? 0 : -1;
    }
}
