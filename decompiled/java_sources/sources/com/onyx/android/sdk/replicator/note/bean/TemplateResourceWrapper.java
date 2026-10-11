package com.onyx.android.sdk.replicator.note.bean;

import android.graphics.RectF;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 N2\u00020\u0001:\u0001NB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010C\u001a\u00020D2\u0006\u0010?\u001a\u00020\u0004H\u0002J\u0015\u0010E\u001a\u0002052\b\u0010F\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010GJ\u000e\u0010H\u001a\u0002052\u0006\u0010I\u001a\u00020\u0004J\u001c\u0010J\u001a\u0002052\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u0002050LH\u0002J\b\u0010M\u001a\u00020\u0004H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\nR\u0011\u0010\r\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0006R\u0011\u0010\u0011\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R&\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\b8F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\n\"\u0004\b\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0006R\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0011\u0010&\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b'\u0010\nR\u0011\u0010(\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b)\u0010\u0006R\u0011\u0010*\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b+\u0010\u0006R\u0011\u0010,\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b-\u0010\u0006R\u0011\u0010.\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b/\u0010\u0006R\u0017\u00100\u001a\b\u0012\u0004\u0012\u00020\b018F¢\u0006\u0006\u001a\u0004\b2\u00103R\u001a\u00104\u001a\u000205X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R \u0010:\u001a\b\u0012\u0004\u0012\u00020\u00160;X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u00103\"\u0004\b=\u0010>R\u001a\u0010?\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u0006\"\u0004\bA\u0010B¨\u0006O"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;", "", "()V", "curAbsolutePath", "", "getCurAbsolutePath", "()Ljava/lang/String;", "curColorTransformMode", "", "getCurColorTransformMode", "()I", "curFillColor", "getCurFillColor", "curRelativePath", "getCurRelativePath", "curResName", "getCurResName", "curResRect", "Landroid/graphics/RectF;", "getCurResRect", "()Landroid/graphics/RectF;", "curResource", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", "getCurResource", "()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", "value", "curResourceIndex", "getCurResourceIndex", "setCurResourceIndex", "(I)V", "curResourceType", "getCurResourceType", "curSpacing", "", "getCurSpacing", "()F", "setCurSpacing", "(F)V", "curStrokeColor", "getCurStrokeColor", "curThumbnailAbsolutePath", "getCurThumbnailAbsolutePath", "curThumbnailRelativePath", "getCurThumbnailRelativePath", "curThumbnailResName", "getCurThumbnailResName", "curThumbnailUri", "getCurThumbnailUri", "fillColorList", "", "getFillColorList", "()Ljava/util/List;", "fromMMKV", "", "getFromMMKV", Constants.BOOLEAN_VALUE_SIG, "setFromMMKV", "(Z)V", "resourceList", "", "getResourceList", "setResourceList", "(Ljava/util/List;)V", "templateUniqueId", "getTemplateUniqueId", "setTemplateUniqueId", "(Ljava/lang/String;)V", "createResourceIndexOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "selectByFillColor", "color", "(Ljava/lang/Integer;)Z", "selectByResourceId", "id", "selectResourceIndex", "predicate", "Lkotlin/Function1;", "toString", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTemplateResourceWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateResourceWrapper.kt\ncom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,144:1\n1549#2:145\n1620#2,3:146\n766#2:149\n857#2,2:150\n1864#2,3:152\n*S KotlinDebug\n*F\n+ 1 TemplateResourceWrapper.kt\ncom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper\n*L\n56#1:145\n56#1:146,3\n56#1:149\n56#1:150,2\n119#1:152,3\n*E\n"})
/* loaded from: classes8.dex */
public final class TemplateResourceWrapper {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String TEMPLATE_RESOURCE_INDEX = "TEMPLATE_RESOURCE_INDEX";
    private int curResourceIndex;
    private float curSpacing;

    @NotNull
    private String templateUniqueId = "";
    private boolean fromMMKV = true;

    @NotNull
    private List<TemplateResourceModel> resourceList = new ArrayList();

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u0006\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;", "", "()V", TemplateResourceWrapper.TEMPLATE_RESOURCE_INDEX, "", "generateOldResourceIndexKey", "generateResourceId", "modelCategoryId", "modelId", "generateResourceIndexKey", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String generateOldResourceIndexKey(String generateResourceId) {
            return "TEMPLATE_RESOURCE_INDEX-" + generateResourceId;
        }

        @NotNull
        public final String generateResourceId(@Nullable String modelCategoryId, @Nullable String modelId) {
            return modelCategoryId + '-' + modelId;
        }

        @NotNull
        public final String generateResourceIndexKey(@NotNull String generateResourceId) {
            Intrinsics.checkNotNullParameter(generateResourceId, "generateResourceId");
            return AccountDataBundle.INSTANCE.getSyncUserId() + '-' + generateOldResourceIndexKey(generateResourceId);
        }

        private Companion() {
        }
    }

    private final IntOption createResourceIndexOption(String templateUniqueId) {
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        Companion companion = INSTANCE;
        return mMKVUtils.migrateIntOption(companion.generateOldResourceIndexKey(templateUniqueId), companion.generateResourceIndexKey(templateUniqueId), 0);
    }

    private final boolean selectResourceIndex(Function1<? super TemplateResourceModel, Boolean> predicate) {
        int i = 0;
        for (Object obj : this.resourceList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            if (predicate.invoke((TemplateResourceModel) obj).booleanValue()) {
                setCurResourceIndex(i);
                return true;
            }
            i = i2;
        }
        return false;
    }

    @NotNull
    public final String getCurAbsolutePath() {
        return TemplatePaths.INSTANCE.templateResAbsolutePath(getCurRelativePath());
    }

    public final int getCurColorTransformMode() {
        TemplateResourceModel curResource = getCurResource();
        if (curResource != null) {
            return curResource.getColorTransformMode();
        }
        return 0;
    }

    public final int getCurFillColor() {
        TemplateResourceModel curResource = getCurResource();
        if (curResource != null) {
            return curResource.getFillColor();
        }
        return 0;
    }

    @NotNull
    public final String getCurRelativePath() {
        String relativePath;
        TemplateResourceModel curResource = getCurResource();
        return (curResource == null || (relativePath = curResource.getRelativePath()) == null) ? "" : relativePath;
    }

    @NotNull
    public final String getCurResName() {
        String resName;
        TemplateResourceModel curResource = getCurResource();
        return (curResource == null || (resName = curResource.getResName()) == null) ? "" : resName;
    }

    @NotNull
    public final RectF getCurResRect() {
        RectF resRect;
        TemplateResourceModel curResource = getCurResource();
        return (curResource == null || (resRect = curResource.getResRect()) == null) ? new RectF() : resRect;
    }

    @Nullable
    public final TemplateResourceModel getCurResource() {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.resourceList, getCurResourceIndex());
        return (TemplateResourceModel) orNull;
    }

    public final int getCurResourceIndex() {
        return !this.fromMMKV ? this.curResourceIndex : createResourceIndexOption(this.templateUniqueId).get();
    }

    @NotNull
    public final String getCurResourceType() {
        String resourceType;
        TemplateResourceModel curResource = getCurResource();
        return (curResource == null || (resourceType = curResource.getResourceType()) == null) ? "" : resourceType;
    }

    public final float getCurSpacing() {
        return this.curSpacing;
    }

    public final int getCurStrokeColor() {
        TemplateResourceModel curResource = getCurResource();
        if (curResource != null) {
            return curResource.getStrokeColor();
        }
        return 0;
    }

    @NotNull
    public final String getCurThumbnailAbsolutePath() {
        return TemplatePaths.INSTANCE.templateResAbsolutePath(getCurThumbnailRelativePath());
    }

    @NotNull
    public final String getCurThumbnailRelativePath() {
        String thumbnailRelativePath;
        TemplateResourceModel curResource = getCurResource();
        return (curResource == null || (thumbnailRelativePath = curResource.getThumbnailRelativePath()) == null) ? "" : thumbnailRelativePath;
    }

    @NotNull
    public final String getCurThumbnailResName() {
        String thumbnailResName;
        TemplateResourceModel curResource = getCurResource();
        return (curResource == null || (thumbnailResName = curResource.getThumbnailResName()) == null) ? getCurResName() : thumbnailResName;
    }

    @NotNull
    public final String getCurThumbnailUri() {
        String thumbnailUri;
        TemplateResourceModel curResource = getCurResource();
        return (curResource == null || (thumbnailUri = curResource.getThumbnailUri()) == null) ? "" : thumbnailUri;
    }

    @NotNull
    public final List<Integer> getFillColorList() {
        int collectionSizeOrDefault;
        List<Integer> list;
        List<TemplateResourceModel> list2 = this.resourceList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((TemplateResourceModel) it2.next()).getFillColor()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((Number) obj).intValue() != 0) {
                arrayList2.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList2);
        return list;
    }

    public final boolean getFromMMKV() {
        return this.fromMMKV;
    }

    @NotNull
    public final List<TemplateResourceModel> getResourceList() {
        return this.resourceList;
    }

    @NotNull
    public final String getTemplateUniqueId() {
        return this.templateUniqueId;
    }

    public final boolean selectByFillColor(@Nullable final Integer color) {
        return selectResourceIndex(new Function1<TemplateResourceModel, Boolean>() { // from class: com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper$selectByFillColor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TemplateResourceModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                int fillColor = it2.getFillColor();
                Integer num = color;
                return Boolean.valueOf(num != null && fillColor == num.intValue());
            }
        });
    }

    public final boolean selectByResourceId(@NotNull final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return selectResourceIndex(new Function1<TemplateResourceModel, Boolean>() { // from class: com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper$selectByResourceId$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TemplateResourceModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), id));
            }
        });
    }

    public final void setCurResourceIndex(int i) {
        this.curResourceIndex = i;
        if (this.fromMMKV) {
            createResourceIndexOption(this.templateUniqueId).put(this.curResourceIndex);
        }
    }

    public final void setCurSpacing(float f) {
        this.curSpacing = f;
    }

    public final void setFromMMKV(boolean z) {
        this.fromMMKV = z;
    }

    public final void setResourceList(@NotNull List<TemplateResourceModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.resourceList = list;
    }

    public final void setTemplateUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.templateUniqueId = str;
    }

    @NotNull
    public String toString() {
        return "{ curResName:" + getCurResName() + ", curRelativePath:" + getCurRelativePath() + ", curFillColor:" + getCurFillColor() + " curStrokeColor:" + getCurStrokeColor() + " curThumbnailRelativePath:" + getCurThumbnailRelativePath() + " curThumbnailUri:" + getCurThumbnailUri() + " }";
    }
}
