package com.onyx.android.sdk.replicator.note.p035db;

import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.TemplateQueryBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0003\u001a\u0006\u0010\u0006\u001a\u00020\u0001\u001a\u000e\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, m61528d2 = {"loadCoverByIdQuery", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "coverId", "", "loadCustomListByCategoryQuery", "category", "loadImportEmptyRevisionIdCoverQuery", "loadListByCategoryQuery", "templateQueryBean", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCoverQueryArgsExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverQueryArgsExt.kt\ncom/onyx/android/sdk/replicator/note/db/CoverQueryArgsExtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n1#2:39\n*E\n"})
/* loaded from: classes8.dex */
public final class CoverQueryArgsExtKt {
    @NotNull
    public static final CBQueryArgs loadCoverByIdQuery(@NotNull String coverId) {
        Intrinsics.checkNotNullParameter(coverId, "coverId");
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, coverId));
    }

    @NotNull
    public static final CBQueryArgs loadCustomListByCategoryQuery(@NotNull String category) {
        Intrinsics.checkNotNullParameter(category, "category");
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_CATEGORY_ID, category));
    }

    @NotNull
    public static final CBQueryArgs loadImportEmptyRevisionIdCoverQuery() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.nullOrEqualExpression(CouchFieldKey.KEY_REVISION_ID, "")).andWith(couchUtils.equalExpression("source", 1));
    }

    @NotNull
    public static final CBQueryArgs loadListByCategoryQuery(@NotNull TemplateQueryBean templateQueryBean) {
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
