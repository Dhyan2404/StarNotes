package com.onyx.android.sdk.replicator.note.proto.doc;

import com.alibaba.fastjson2.TypeReference;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.common.data.template.TemplateArgs;
import com.onyx.android.sdk.data.common.p027db.BaseModel;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.replicator.note.proto.CoverProto;
import com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto;
import com.onyx.android.sdk.replicator.note.proto.PageTagProto;
import com.onyx.android.sdk.replicator.note.proto.TemplateProto;
import com.onyx.android.sdk.replicator.note.proto.UserDataProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/UserDataPBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BaseUserPBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/UserDataProto$DataCollection;", "()V", "getDataFilePath", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "getPBFileDirPath", CouchFieldKey.KEY_UNIQUE_ID, "parseFrom", "fin", "Ljava/io/FileInputStream;", "writeTo", "", "data", "fout", "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class UserDataPBDocument extends BaseUserPBDocument<UserDataProto.DataCollection> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0003J\u0014\u0010\f\u001a\u00020\u0003*\u00020\n2\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000f\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\r0\u0002J\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u0002*\u00020\u000e2\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\rJ\u0014\u0010\u0014\u001a\u00020\r*\u00020\u00122\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u0017\u001a\u00020\u0016*\b\u0012\u0004\u0012\u00020\u00150\u0002J\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u0002*\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u001b\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00190\u0002J\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u0002*\u00020\u001a2\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\f\u0010\u001e\u001a\u00020\u001d*\u00020\u0015H\u0002J\u0016\u0010\u001f\u001a\u00020\u0015*\u00020\u001d2\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u0019H\u0002J\u0016\u0010#\u001a\u00020\u0019*\u00020!2\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0002¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/UserDataPBDocument$Companion;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateList;", "toTemplateProtoList", "", CouchFieldKey.KEY_REVISION_ID, "fromTemplateProtoList", "templateModel", "Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;", "toTemplateProto", "fromTemplateProto", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$CoverList;", "toCoverProtoList", "fromCoverProtoList", "coverModel", "Lcom/onyx/android/sdk/replicator/note/proto/CoverProto$Cover;", "toCoverProto", "fromCoverProto", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTagList;", "toPageTagProtoList", "fromPageTagProtoList", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollectionList;", "toExcerptCollectionProtoList", "fromExcerptCollectionProtoList", "Lcom/onyx/android/sdk/replicator/note/proto/PageTagProto$PageTag;", C6997f.f39671c, "c", "model", "Lcom/onyx/android/sdk/replicator/note/proto/ExcerptCollectionProto$ExcerptCollection;", "e", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nUserDataPBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserDataPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/UserDataPBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,282:1\n1549#2:283\n1620#2,3:284\n1549#2:287\n1620#2,3:288\n*S KotlinDebug\n*F\n+ 1 UserDataPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/UserDataPBDocument$Companion\n*L\n105#1:283\n105#1:284,3\n166#1:287\n166#1:288,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: b */
        public static /* synthetic */ ExcerptCollectionModel m35416b(Companion companion, ExcerptCollectionProto.ExcerptCollection excerptCollection, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "";
            }
            return companion.m35418a(excerptCollection, str);
        }

        /* renamed from: d */
        public static /* synthetic */ PageTagModel m35417d(Companion companion, PageTagProto.PageTag pageTag, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "";
            }
            return companion.m35419c(pageTag, str);
        }

        public static /* synthetic */ CoverModel fromCoverProto$default(Companion companion, CoverProto.Cover cover, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "";
            }
            return companion.fromCoverProto(cover, str);
        }

        public static /* synthetic */ List fromCoverProtoList$default(Companion companion, CoverProto.CoverList coverList, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "";
            }
            return companion.fromCoverProtoList(coverList, str);
        }

        public static /* synthetic */ List fromExcerptCollectionProtoList$default(Companion companion, ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "";
            }
            return companion.fromExcerptCollectionProtoList(excerptCollectionList, str);
        }

        public static /* synthetic */ List fromPageTagProtoList$default(Companion companion, PageTagProto.PageTagList pageTagList, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "";
            }
            return companion.fromPageTagProtoList(pageTagList, str);
        }

        public static /* synthetic */ TemplateModel fromTemplateProto$default(Companion companion, TemplateProto.Template template, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "";
            }
            return companion.fromTemplateProto(template, str);
        }

        public static /* synthetic */ List fromTemplateProtoList$default(Companion companion, TemplateProto.TemplateList templateList, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "";
            }
            return companion.fromTemplateProtoList(templateList, str);
        }

        /* renamed from: a */
        public final ExcerptCollectionModel m35418a(ExcerptCollectionProto.ExcerptCollection excerptCollection, String str) {
            ExcerptCollectionModel excerptCollectionModel = new ExcerptCollectionModel();
            String uuid = excerptCollection.getUuid();
            Intrinsics.checkNotNullExpressionValue(uuid, "getUuid(...)");
            excerptCollectionModel.setUniqueId(uuid);
            excerptCollectionModel.setCreatedAt(excerptCollection.getCreatedAt());
            excerptCollectionModel.setUpdatedAt(excerptCollection.getUpdatedAt());
            excerptCollectionModel.setStatus(excerptCollection.getStatus());
            String sourceDocId = excerptCollection.getSourceDocId();
            Intrinsics.checkNotNullExpressionValue(sourceDocId, "getSourceDocId(...)");
            excerptCollectionModel.setSourceDocId(sourceDocId);
            String sourceShapeId = excerptCollection.getSourceShapeId();
            Intrinsics.checkNotNullExpressionValue(sourceShapeId, "getSourceShapeId(...)");
            excerptCollectionModel.setSourceShapeId(sourceShapeId);
            String quoteDocId = excerptCollection.getQuoteDocId();
            Intrinsics.checkNotNullExpressionValue(quoteDocId, "getQuoteDocId(...)");
            excerptCollectionModel.setQuoteDocId(quoteDocId);
            String quoteShapeId = excerptCollection.getQuoteShapeId();
            Intrinsics.checkNotNullExpressionValue(quoteShapeId, "getQuoteShapeId(...)");
            excerptCollectionModel.setQuoteShapeId(quoteShapeId);
            excerptCollectionModel.setRevisionId(str);
            return excerptCollectionModel;
        }

        /* renamed from: c */
        public final PageTagModel m35419c(PageTagProto.PageTag pageTag, String str) {
            PageTagModel pageTagModel = new PageTagModel();
            String uniqueId = pageTag.getUniqueId();
            Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
            pageTagModel.setUniqueId(uniqueId);
            pageTagModel.setCreatedAt(pageTag.getCreatedAt());
            pageTagModel.setUpdatedAt(pageTag.getUpdatedAt());
            pageTagModel.setUser(pageTag.getUserId());
            String documentId = pageTag.getDocumentId();
            Intrinsics.checkNotNullExpressionValue(documentId, "getDocumentId(...)");
            pageTagModel.setDocumentId(documentId);
            String pageUniqueId = pageTag.getPageUniqueId();
            Intrinsics.checkNotNullExpressionValue(pageUniqueId, "getPageUniqueId(...)");
            pageTagModel.setPageUniqueId(pageUniqueId);
            String tagId = pageTag.getTagId();
            Intrinsics.checkNotNullExpressionValue(tagId, "getTagId(...)");
            pageTagModel.setTagId(tagId);
            String docTitle = pageTag.getDocTitle();
            Intrinsics.checkNotNullExpressionValue(docTitle, "getDocTitle(...)");
            pageTagModel.setDocTitle(docTitle);
            pageTagModel.setStatus(pageTag.getStatus());
            pageTagModel.setPageIndex(pageTag.getPageIndex());
            pageTagModel.setRevisionId(str);
            pageTagModel.setOrientationValue(pageTag.getOrientation());
            return pageTagModel;
        }

        /* renamed from: e */
        public final ExcerptCollectionProto.ExcerptCollection m35420e(ExcerptCollectionModel model) {
            ExcerptCollectionProto.ExcerptCollection build = ExcerptCollectionProto.ExcerptCollection.newBuilder().setUuid(model.getUniqueId()).setCreatedAt(model.getCreatedAt()).setUpdatedAt(model.getUpdatedAt()).setStatus(model.getStatus()).setSourceDocId(model.getSourceDocId()).setSourceShapeId(model.getSourceShapeId()).setQuoteDocId(model.getQuoteDocId()).setQuoteShapeId(model.getQuoteShapeId()).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        /* renamed from: f */
        public final PageTagProto.PageTag m35421f(PageTagModel pageTagModel) {
            PageTagProto.PageTag.Builder newBuilder = PageTagProto.PageTag.newBuilder();
            BaseModel.Companion companion = BaseModel.INSTANCE;
            PageTagProto.PageTag build = newBuilder.setUniqueId(companion.ensureNotNull(pageTagModel.getUniqueId())).setDocumentId(companion.ensureNotNull(pageTagModel.getDocumentId())).setCreatedAt(pageTagModel.getCreatedAt()).setUpdatedAt(pageTagModel.getUpdatedAt()).setUserId(companion.ensureNotNull(pageTagModel.getUser())).setPageUniqueId(companion.ensureNotNull(pageTagModel.getPageUniqueId())).setTagId(companion.ensureNotNull(pageTagModel.getTagId())).setDocTitle(companion.ensureNotNull(pageTagModel.getDocTitle())).setStatus(pageTagModel.getStatus()).setPageIndex(pageTagModel.getPageIndex()).setOrientation(pageTagModel.getOrientation().getValue()).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final CoverModel fromCoverProto(@NotNull CoverProto.Cover cover, @NotNull String revisionId) {
            int collectionSizeOrDefault;
            List<String> mutableList;
            Intrinsics.checkNotNullParameter(cover, "<this>");
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            List<TemplateResourceModel> list = (List) JSONUtils.INSTANCE.parseObject(cover.getResourceList(), new TypeReference<List<TemplateResourceModel>>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.UserDataPBDocument$Companion$fromCoverProto$resourceListModel$1
            });
            if (list == null) {
                list = new ArrayList<>();
            }
            CoverModel coverModel = new CoverModel();
            String uniqueId = cover.getUniqueId();
            Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
            coverModel.setUniqueId(uniqueId);
            coverModel.setCreatedAt(cover.getCreatedAt());
            coverModel.setUpdatedAt(cover.getUpdatedAt());
            String title = cover.getTitle();
            Intrinsics.checkNotNullExpressionValue(title, "getTitle(...)");
            coverModel.setTitle(title);
            String titleResName = cover.getTitleResName();
            Intrinsics.checkNotNullExpressionValue(titleResName, "getTitleResName(...)");
            coverModel.setTitleResName(titleResName);
            coverModel.setOrientation(cover.getOrientation());
            List<TemplateResourceModel> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(((TemplateResourceModel) it2.next()).getUniqueId());
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            coverModel.setResourceIdList(mutableList);
            String categoryId = cover.getCategoryId();
            Intrinsics.checkNotNullExpressionValue(categoryId, "getCategoryId(...)");
            coverModel.setCategoryId(categoryId);
            String contentPageId = cover.getContentPageId();
            Intrinsics.checkNotNullExpressionValue(contentPageId, "getContentPageId(...)");
            coverModel.setContentPageId(contentPageId);
            coverModel.setOrderIndex(cover.getOrderIndex());
            coverModel.setSource(cover.getSource());
            TemplateResourceWrapper templateResourceWrapper = new TemplateResourceWrapper();
            templateResourceWrapper.setResourceList(list);
            coverModel.setTemplateResourceWrapper(templateResourceWrapper);
            coverModel.setStatus(cover.getStatus());
            String sizeFormat = cover.getSizeFormat();
            Intrinsics.checkNotNullExpressionValue(sizeFormat, "getSizeFormat(...)");
            coverModel.setSizeFormat(sizeFormat);
            coverModel.setRevisionId(revisionId);
            return coverModel;
        }

        @NotNull
        public final List<CoverModel> fromCoverProtoList(@NotNull CoverProto.CoverList coverList, @NotNull String revisionId) {
            Intrinsics.checkNotNullParameter(coverList, "<this>");
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            ArrayList arrayList = new ArrayList();
            for (CoverProto.Cover cover : coverList.getProtoList()) {
                Intrinsics.checkNotNull(cover);
                arrayList.add(fromCoverProto(cover, revisionId));
            }
            return arrayList;
        }

        @NotNull
        public final List<ExcerptCollectionModel> fromExcerptCollectionProtoList(@NotNull ExcerptCollectionProto.ExcerptCollectionList excerptCollectionList, @NotNull String revisionId) {
            Intrinsics.checkNotNullParameter(excerptCollectionList, "<this>");
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            ArrayList arrayList = new ArrayList();
            for (ExcerptCollectionProto.ExcerptCollection excerptCollection : excerptCollectionList.getProtoList()) {
                Intrinsics.checkNotNull(excerptCollection);
                arrayList.add(m35418a(excerptCollection, revisionId));
            }
            return arrayList;
        }

        @NotNull
        public final List<PageTagModel> fromPageTagProtoList(@Nullable PageTagProto.PageTagList pageTagList, @NotNull String revisionId) {
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            ArrayList arrayList = new ArrayList();
            if (pageTagList == null) {
                return arrayList;
            }
            for (PageTagProto.PageTag pageTag : pageTagList.getProtoList()) {
                Intrinsics.checkNotNull(pageTag);
                arrayList.add(m35419c(pageTag, revisionId));
            }
            return arrayList;
        }

        @NotNull
        public final TemplateModel fromTemplateProto(@NotNull TemplateProto.Template template, @NotNull String revisionId) {
            int collectionSizeOrDefault;
            List<String> mutableList;
            Intrinsics.checkNotNullParameter(template, "<this>");
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            List<TemplateResourceModel> list = (List) JSONUtils.INSTANCE.parseObject(template.getResourceList(), new TypeReference<List<TemplateResourceModel>>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.UserDataPBDocument$Companion$fromTemplateProto$resourceListModel$1
            });
            if (list == null) {
                list = new ArrayList<>();
            }
            TemplateModel templateModel = new TemplateModel();
            String uniqueId = template.getUniqueId();
            Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
            templateModel.setUniqueId(uniqueId);
            templateModel.setCreatedAt(template.getCreatedAt());
            templateModel.setUpdatedAt(template.getUpdatedAt());
            String title = template.getTitle();
            Intrinsics.checkNotNullExpressionValue(title, "getTitle(...)");
            templateModel.setTitle(title);
            String titleResName = template.getTitleResName();
            Intrinsics.checkNotNullExpressionValue(titleResName, "getTitleResName(...)");
            templateModel.setTitleResName(titleResName);
            templateModel.setOrientation(template.getOrientation());
            templateModel.setType(template.getType());
            List<TemplateResourceModel> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(((TemplateResourceModel) it2.next()).getUniqueId());
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            templateModel.setResourceIdList(mutableList);
            String categoryId = template.getCategoryId();
            Intrinsics.checkNotNullExpressionValue(categoryId, "getCategoryId(...)");
            templateModel.setCategoryId(categoryId);
            String contentPageId = template.getContentPageId();
            Intrinsics.checkNotNullExpressionValue(contentPageId, "getContentPageId(...)");
            templateModel.setContentPageId(contentPageId);
            templateModel.setTemplateArgs((TemplateArgs) JSONUtils.INSTANCE.parseObject(template.getTemplateArgs(), TemplateArgs.class));
            templateModel.setOrderIndex(template.getOrderIndex());
            templateModel.setSource(template.getSource());
            TemplateResourceWrapper templateResourceWrapper = new TemplateResourceWrapper();
            templateResourceWrapper.setResourceList(list);
            templateModel.setTemplateResourceWrapper(templateResourceWrapper);
            templateModel.setStatus(template.getStatus());
            String sizeFormat = template.getSizeFormat();
            Intrinsics.checkNotNullExpressionValue(sizeFormat, "getSizeFormat(...)");
            templateModel.setSizeFormat(sizeFormat);
            templateModel.setRevisionId(revisionId);
            return templateModel;
        }

        @NotNull
        public final List<TemplateModel> fromTemplateProtoList(@NotNull TemplateProto.TemplateList templateList, @NotNull String revisionId) {
            Intrinsics.checkNotNullParameter(templateList, "<this>");
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            ArrayList arrayList = new ArrayList();
            for (TemplateProto.Template template : templateList.getProtoList()) {
                Intrinsics.checkNotNull(template);
                arrayList.add(fromTemplateProto(template, revisionId));
            }
            return arrayList;
        }

        @NotNull
        public final CoverProto.Cover toCoverProto(@NotNull CoverModel coverModel) {
            Intrinsics.checkNotNullParameter(coverModel, "coverModel");
            CoverProto.Cover.Builder newBuilder = CoverProto.Cover.newBuilder();
            BaseModel.Companion companion = BaseModel.INSTANCE;
            CoverProto.Cover build = newBuilder.setUniqueId(companion.ensureNotNull(coverModel.getUniqueId())).setCreatedAt(coverModel.getCreatedAt()).setUpdatedAt(coverModel.getUpdatedAt()).setTitle(companion.ensureNotNull(coverModel.getTitle())).setTitleResName(companion.ensureNotNull(coverModel.getTitleResName())).setOrientation(coverModel.getOrientation()).setSizeFormat(coverModel.getSizeFormat()).setResourceList(companion.ensureNotNull(JSONUtils.INSTANCE.toJson(coverModel.getTemplateResourceWrapper().getResourceList()))).setCategoryId(companion.ensureNotNull(coverModel.getCategoryId())).setContentPageId(companion.ensureNotNull(coverModel.getContentPageId())).setOrderIndex(coverModel.getOrderIndex()).setSource(coverModel.getSource()).setStatus(coverModel.getStatus()).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final CoverProto.CoverList toCoverProtoList(@NotNull List<CoverModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ArrayList arrayList = new ArrayList();
            Iterator<CoverModel> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(toCoverProto(it2.next()));
            }
            CoverProto.CoverList build = CoverProto.CoverList.newBuilder().addAllProto(arrayList).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final ExcerptCollectionProto.ExcerptCollectionList toExcerptCollectionProtoList(@NotNull List<ExcerptCollectionModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ArrayList arrayList = new ArrayList();
            Iterator<ExcerptCollectionModel> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(m35420e(it2.next()));
            }
            ExcerptCollectionProto.ExcerptCollectionList build = ExcerptCollectionProto.ExcerptCollectionList.newBuilder().addAllProto(arrayList).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final PageTagProto.PageTagList toPageTagProtoList(@NotNull List<? extends PageTagModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ArrayList arrayList = new ArrayList();
            Iterator<? extends PageTagModel> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(m35421f(it2.next()));
            }
            PageTagProto.PageTagList build = PageTagProto.PageTagList.newBuilder().addAllProto(arrayList).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final TemplateProto.Template toTemplateProto(@NotNull TemplateModel templateModel) {
            Intrinsics.checkNotNullParameter(templateModel, "templateModel");
            TemplateProto.Template.Builder newBuilder = TemplateProto.Template.newBuilder();
            BaseModel.Companion companion = BaseModel.INSTANCE;
            TemplateProto.Template.Builder type = newBuilder.setUniqueId(companion.ensureNotNull(templateModel.getUniqueId())).setCreatedAt(templateModel.getCreatedAt()).setUpdatedAt(templateModel.getUpdatedAt()).setTitle(companion.ensureNotNull(templateModel.getTitle())).setTitleResName(companion.ensureNotNull(templateModel.getTitleResName())).setOrientation(templateModel.getOrientation()).setSizeFormat(templateModel.getSizeFormat()).setType(templateModel.getType());
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            TemplateProto.Template build = type.setResourceList(companion.ensureNotNull(jSONUtils.toJson(templateModel.getTemplateResourceWrapper().getResourceList()))).setCategoryId(companion.ensureNotNull(templateModel.getCategoryId())).setContentPageId(companion.ensureNotNull(templateModel.getContentPageId())).setTemplateArgs(companion.ensureNotNull(jSONUtils.toJson(templateModel.getTemplateArgs()))).setOrderIndex(templateModel.getOrderIndex()).setSource(templateModel.getSource()).setStatus(templateModel.getStatus()).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final TemplateProto.TemplateList toTemplateProtoList(@NotNull List<TemplateModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ArrayList arrayList = new ArrayList();
            Iterator<TemplateModel> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(toTemplateProto(it2.next()));
            }
            TemplateProto.TemplateList build = TemplateProto.TemplateList.newBuilder().addAllProto(arrayList).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        public Companion() {
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getDataFilePath(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        String pbDirPath = getPbDirPath();
        String userId = args.getUserId();
        String revisionId = args.getRevisionId();
        if (revisionId == null) {
            revisionId = "";
        }
        return commonPaths.userPBPath(pbDirPath, userId, revisionId).toAbsolutePath().toString();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getPBFileDirPath(@Nullable String uniqueId) {
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        String pbDirPath = getPbDirPath();
        if (uniqueId == null) {
            uniqueId = "";
        }
        return commonPaths.userPBDir(pbDirPath, uniqueId).toAbsolutePath().toString();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public UserDataProto.DataCollection parseFrom(@Nullable FileInputStream fin) throws IOException {
        UserDataProto.DataCollection parseFrom = UserDataProto.DataCollection.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull UserDataProto.DataCollection data, @Nullable FileOutputStream fout) throws IOException {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(fout);
    }
}
