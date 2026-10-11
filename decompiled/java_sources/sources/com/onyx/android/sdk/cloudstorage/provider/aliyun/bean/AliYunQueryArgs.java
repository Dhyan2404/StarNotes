package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.google.android.gms.actions.SearchIntents;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.util.Chars;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u001a\u0018\u0000 )2\u00020\u0001:\u0001)B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010(\u001a\u00020\u0000R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\u001e\u0010\u0019\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\bR \u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR\u001e\u0010\u001f\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0006\"\u0004\b!\u0010\bR\u001c\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR\u001a\u0010%\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0006\"\u0004\b'\u0010\b¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;", "Ljava/io/Serializable;", "()V", "category", "", "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", "driveId", "getDriveId", "setDriveId", "fields", "getFields", "setFields", "limit", "", "getLimit", "()Ljava/lang/Integer;", "setLimit", "(Ljava/lang/Integer;)V", Constants.INTEGER_SIG, "marker", "getMarker", "setMarker", "orderBy", "getOrderBy", "setOrderBy", "orderDirection", "getOrderDirection", "setOrderDirection", "parentFileId", "getParentFileId", "setParentFileId", SearchIntents.EXTRA_QUERY, "getQuery", "setQuery", "type", "getType", "setType", "copy", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AliYunQueryArgs implements Serializable {

    @NotNull
    public static final String CREATED_AT = "created_at";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String NAME_TAG = "name";

    @NotNull
    public static final String PARENT_FILE_ID_TAG = "parent_file_id";

    @NotNull
    public static final String UPDATED_AT = "updated_at";

    @Nullable
    private String category;

    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_DRIVE_ID})
    @Nullable
    private String driveId;

    @Nullable
    private String fields;

    @Nullable
    private Integer limit;

    @Nullable
    private String marker;

    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_ORDER_BY})
    @NotNull
    private String orderBy;

    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_ORDER_DIRECTION})
    @Nullable
    private String orderDirection;

    @JSONField(alternateNames = {"parent_file_id"})
    @NotNull
    private String parentFileId;

    @Nullable
    private String query;

    @NotNull
    private String type;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion;", "", "", "driveId", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "cloudFileArgs", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;", "from", "Lcom/onyx/android/sdk/base/data/SortBy;", "sortBy", "a", "CREATED_AT", Constants.STRING_SIG, "NAME_TAG", "PARENT_FILE_ID_TAG", "UPDATED_AT", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
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
        public final String m32337a(SortBy sortBy) {
            int i = WhenMappings.$EnumSwitchMapping$0[sortBy.ordinal()];
            String lowerCase = StringUtils.lowerCase(i != 1 ? i != 2 ? i != 3 ? "updated_at" : "created_at" : SortBy.Size.name() : SortBy.Name.name());
            Intrinsics.checkNotNullExpressionValue(lowerCase, "lowerCase(...)");
            return lowerCase;
        }

        @NotNull
        public final AliYunQueryArgs from(@Nullable String driveId, @NotNull CloudFileQueryArgs cloudFileArgs) {
            Intrinsics.checkNotNullParameter(cloudFileArgs, "cloudFileArgs");
            AliYunQueryArgs aliYunQueryArgs = new AliYunQueryArgs();
            aliYunQueryArgs.setDriveId(driveId);
            aliYunQueryArgs.setLimit(Integer.valueOf(Math.min(100, cloudFileArgs.getLimit())));
            aliYunQueryArgs.setMarker(cloudFileArgs.getCursor());
            String parentId = cloudFileArgs.getParentId();
            if (parentId == null) {
                parentId = "root";
            }
            aliYunQueryArgs.setParentFileId(parentId);
            aliYunQueryArgs.setOrderDirection(StringUtils.upperCase(cloudFileArgs.getOrder().name()));
            aliYunQueryArgs.setOrderBy(AliYunQueryArgs.INSTANCE.m32337a(cloudFileArgs.getSortBy()));
            if (StringUtils.isNotBlank(cloudFileArgs.getQuery())) {
                StringBuilder sb = new StringBuilder();
                sb.append("name");
                sb.append(cloudFileArgs.getPrecisionSearch() ? CloudStorageConstants.OPERATION_EQUAL : CloudStorageConstants.OPERATION_MATCH);
                sb.append(Chars.QUOTE);
                sb.append(cloudFileArgs.getQuery());
                sb.append(Chars.QUOTE);
                aliYunQueryArgs.setQuery(sb.toString());
                aliYunQueryArgs.setOrderBy(aliYunQueryArgs.getOrderBy() + ' ' + aliYunQueryArgs.getOrderDirection());
                aliYunQueryArgs.setOrderDirection(null);
                if (StringUtils.isNotBlank(cloudFileArgs.getParentId()) || !cloudFileArgs.getFilterParent()) {
                    aliYunQueryArgs.setQuery(aliYunQueryArgs.getQuery() + " and parent_file_id = '" + aliYunQueryArgs.getParentFileId() + Chars.QUOTE);
                }
            }
            return aliYunQueryArgs;
        }

        public Companion() {
        }
    }

    public AliYunQueryArgs() {
        String name = SortBy.Name.name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        this.orderBy = lowerCase;
        String upperCase = SortOrder.Desc.name().toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        this.orderDirection = upperCase;
        this.parentFileId = "root";
        this.type = "all";
    }

    @NotNull
    public final AliYunQueryArgs copy() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Object parseObject = jSONUtils.parseObject(jSONUtils.toJson(this), (Class<Object>) AliYunQueryArgs.class);
        Intrinsics.checkNotNull(parseObject);
        return (AliYunQueryArgs) parseObject;
    }

    @Nullable
    public final String getCategory() {
        return this.category;
    }

    @Nullable
    public final String getDriveId() {
        return this.driveId;
    }

    @Nullable
    public final String getFields() {
        return this.fields;
    }

    @Nullable
    public final Integer getLimit() {
        return this.limit;
    }

    @Nullable
    public final String getMarker() {
        return this.marker;
    }

    @NotNull
    public final String getOrderBy() {
        return this.orderBy;
    }

    @Nullable
    public final String getOrderDirection() {
        return this.orderDirection;
    }

    @NotNull
    public final String getParentFileId() {
        return this.parentFileId;
    }

    @Nullable
    public final String getQuery() {
        return this.query;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setCategory(@Nullable String str) {
        this.category = str;
    }

    public final void setDriveId(@Nullable String str) {
        this.driveId = str;
    }

    public final void setFields(@Nullable String str) {
        this.fields = str;
    }

    public final void setLimit(@Nullable Integer num) {
        this.limit = num;
    }

    public final void setMarker(@Nullable String str) {
        this.marker = str;
    }

    public final void setOrderBy(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.orderBy = str;
    }

    public final void setOrderDirection(@Nullable String str) {
        this.orderDirection = str;
    }

    public final void setParentFileId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.parentFileId = str;
    }

    public final void setQuery(@Nullable String str) {
        this.query = str;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }
}
