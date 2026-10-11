package com.onyx.android.sdk.replicator.note.p035db;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.TemplateQueryBean;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateRecentUseModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0016\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u001a\u000e\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u0014\u0010\t\u001a\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u001a\u000e\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f¨\u0006\u0010"}, m61528d2 = {"loadImportEmptyRevisionIdTemplateQuery", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "loadRecentUseTemplatesQuery", TypedValues.CycleType.S_WAVE_OFFSET, "", "limit", "loadSameRecentUseTemplateQuery", "model", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;", "loadTemplateByIdListQuery", "idList", "", "", "loadTemplateListByCategoryQuery", "templateQueryBean", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTemplateQueryArgsExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateQueryArgsExt.kt\ncom/onyx/android/sdk/replicator/note/db/TemplateQueryArgsExtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"})
/* loaded from: classes8.dex */
public final class TemplateQueryArgsExtKt {
    @NotNull
    public static final CBQueryArgs loadImportEmptyRevisionIdTemplateQuery() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.nullOrEqualExpression(CouchFieldKey.KEY_REVISION_ID, "")).andWith(couchUtils.equalExpression("source", 1));
    }

    @NotNull
    public static final CBQueryArgs loadRecentUseTemplatesQuery(int i, int i2) {
        return new CBQueryArgs().setVarargOrdering(CouchUtils.INSTANCE.getOrdering("updatedAt", false)).setLimit(i2).setOffset(i);
    }

    @NotNull
    public static final CBQueryArgs loadSameRecentUseTemplateQuery(@NotNull TemplateRecentUseModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression("contentId", model.getContentId())).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_CONTENT_PAGE_ID, model.getContentPageId())).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_CONTENT_TYPE, model.getContentType())).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_CONTENT_RELATIVE_PATH, model.getContentRelativePath())).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_GEO_CONTENT, model.getGeoContent()));
    }

    @NotNull
    public static final CBQueryArgs loadTemplateByIdListQuery(@NotNull List<String> idList) {
        Intrinsics.checkNotNullParameter(idList, "idList");
        List<String> list = idList;
        CBQueryArgs limit = new CBQueryArgs().setLimit(CollectionKt.getSize(list));
        if (CollectionKt.isNonBlank(list)) {
            limit.andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, list));
        }
        return limit;
    }

    @NotNull
    public static final CBQueryArgs loadTemplateListByCategoryQuery(@NotNull TemplateQueryBean templateQueryBean) {
        Intrinsics.checkNotNullParameter(templateQueryBean, "templateQueryBean");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs varargOrdering = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_CATEGORY_ID, templateQueryBean.getCategoryId())).andWith(couchUtils.nullOrEqualExpression("status", 0)).setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_ORDER_INDEX, true));
        Integer orientation = templateQueryBean.getOrientation();
        if (orientation != null) {
            varargOrdering.andWith(couchUtils.equalExpression("orientation", Integer.valueOf(orientation.intValue())));
        }
        String sizeFormat = templateQueryBean.getSizeFormat();
        if (sizeFormat != null) {
            varargOrdering.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_SIZE_FORMAT, sizeFormat));
        }
        List<String> excludeSizeFormat = templateQueryBean.getExcludeSizeFormat();
        if (excludeSizeFormat != null) {
            varargOrdering.andWith(couchUtils.notInExpression(CouchFieldKey.KEY_SIZE_FORMAT, excludeSizeFormat));
        }
        return varargOrdering;
    }
}
