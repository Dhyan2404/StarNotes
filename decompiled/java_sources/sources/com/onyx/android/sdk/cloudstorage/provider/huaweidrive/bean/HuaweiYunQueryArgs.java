package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean;

import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.logging.log4j.util.Chars;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u000f\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0005\u001a\u0004\b\u0010\u0010\u0007\"\u0004\b\u0011\u0010\tR\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0005\u001a\u0004\b\u001c\u0010\u0007\"\u0004\b\u001d\u0010\t¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;", "", "", "queryCondition", "a", Constants.STRING_SIG, "getQueryParam", "()Ljava/lang/String;", "setQueryParam", "(Ljava/lang/String;)V", "queryParam", "b", "getOrderBy", "setOrderBy", "orderBy", "c", "getCursor", "setCursor", "cursor", "", "d", "I", "getPageSize", "()I", "setPageSize", "(I)V", "pageSize", "e", "getParentFileId", "setParentFileId", "parentFileId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HuaweiYunQueryArgs {

    @NotNull
    public static final String CREATED_TIME = "createdTime";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String EDITED_TIME = "editedTime";

    @NotNull
    public static final String FILE_NAME = "fileName";

    @NotNull
    public static final String QUERY_PARENT_FOLDER = "parentFolder";

    @NotNull
    public static final String QUERY_PARENT_MIMETYPE = "mimeType";

    @NotNull
    public static final String SIZE = "size";

    @NotNull
    public static final String SORT_ORDER_DESC = "desc,";

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String queryParam;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String orderBy;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String cursor;

    /* renamed from: d, reason: from kotlin metadata */
    public int pageSize = 100;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String parentFileId = "root";

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\f\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\tR\u0014\u0010\r\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\tR\u0014\u0010\u000f\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\t¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs$Companion;", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "cloudFileArgs", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;", "from", "", "a", "CREATED_TIME", Constants.STRING_SIG, "EDITED_TIME", "FILE_NAME", "QUERY_PARENT_FOLDER", "QUERY_PARENT_MIMETYPE", "SIZE", "SORT_ORDER_DESC", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SortBy.values().length];
                try {
                    iArr[SortBy.Name.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SortBy.Size.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SortBy.CreationTime.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[SortBy.UpdateAt.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final String m32711a(CloudFileQueryArgs cloudFileArgs) {
            String str = cloudFileArgs.getOrder() == SortOrder.Desc ? HuaweiYunQueryArgs.SORT_ORDER_DESC : "";
            int i = WhenMappings.$EnumSwitchMapping$0[cloudFileArgs.getSortBy().ordinal()];
            return (i != 1 ? i != 2 ? i != 3 ? HuaweiYunQueryArgs.EDITED_TIME : HuaweiYunQueryArgs.CREATED_TIME : "size" : HuaweiYunQueryArgs.FILE_NAME) + ' ' + str;
        }

        @NotNull
        public final HuaweiYunQueryArgs from(@NotNull CloudFileQueryArgs cloudFileArgs) {
            Intrinsics.checkNotNullParameter(cloudFileArgs, "cloudFileArgs");
            HuaweiYunQueryArgs huaweiYunQueryArgs = new HuaweiYunQueryArgs();
            huaweiYunQueryArgs.setPageSize(Math.min(100, cloudFileArgs.getLimit()));
            huaweiYunQueryArgs.setCursor(cloudFileArgs.getCursor());
            huaweiYunQueryArgs.setOrderBy(HuaweiYunQueryArgs.INSTANCE.m32711a(cloudFileArgs));
            String parentId = cloudFileArgs.getParentId();
            if (!(parentId == null || parentId.length() == 0) && !cloudFileArgs.getFilterParent()) {
                huaweiYunQueryArgs.setQueryParam(huaweiYunQueryArgs.m32710a(Chars.QUOTE + cloudFileArgs.getParentId() + "' in parentFolder"));
            }
            String query = cloudFileArgs.getQuery();
            if (!(query == null || query.length() == 0)) {
                huaweiYunQueryArgs.setQueryParam(huaweiYunQueryArgs.m32710a(HuaweiYunQueryArgs.FILE_NAME + (cloudFileArgs.getPrecisionSearch() ? CloudStorageConstants.OPERATION_EQUAL : CloudStorageConstants.OPERATION_CONTAINS) + Chars.QUOTE + cloudFileArgs.getQuery() + Chars.QUOTE));
            }
            String mimeType = cloudFileArgs.getMimeType();
            if (!(mimeType == null || mimeType.length() == 0)) {
                huaweiYunQueryArgs.setQueryParam(huaweiYunQueryArgs.m32710a("mimeType = '" + cloudFileArgs.getMimeType() + Chars.QUOTE));
            }
            return huaweiYunQueryArgs;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final String m32710a(String queryCondition) {
        String str = this.queryParam;
        if (str == null || str.length() == 0) {
            return queryCondition;
        }
        return this.queryParam + CloudStorageConstants.OPERATION_AND + queryCondition;
    }

    @Nullable
    public final String getCursor() {
        return this.cursor;
    }

    @Nullable
    public final String getOrderBy() {
        return this.orderBy;
    }

    public final int getPageSize() {
        return this.pageSize;
    }

    @NotNull
    public final String getParentFileId() {
        return this.parentFileId;
    }

    @Nullable
    public final String getQueryParam() {
        return this.queryParam;
    }

    public final void setCursor(@Nullable String str) {
        this.cursor = str;
    }

    public final void setOrderBy(@Nullable String str) {
        this.orderBy = str;
    }

    public final void setPageSize(int i) {
        this.pageSize = i;
    }

    public final void setParentFileId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.parentFileId = str;
    }

    public final void setQueryParam(@Nullable String str) {
        this.queryParam = str;
    }
}
