package com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.Serializable;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.BooleanUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b.\u0018\u0000 A2\u00020\u0001:\u0001AB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010@\u001a\u00020\u0000R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u000f\"\u0004\b\u001b\u0010\u0011R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR\u001a\u0010\u001f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u000f\"\u0004\b!\u0010\u0011R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR\u001a\u0010%\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u000f\"\u0004\b'\u0010\u0011R\u001c\u0010(\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0006\"\u0004\b*\u0010\bR\u001a\u0010+\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u000f\"\u0004\b-\u0010\u0011R\u001c\u0010.\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR\u001a\u00101\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u000f\"\u0004\b3\u0010\u0011R\u001a\u00104\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u000f\"\u0004\b6\u0010\u0011R\u001a\u00107\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u000f\"\u0004\b9\u0010\u0011R\u001a\u0010:\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u000f\"\u0004\b<\u0010\u0011R\u001a\u0010=\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\u000f\"\u0004\b?\u0010\u0011¨\u0006B"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;", "Ljava/io/Serializable;", "()V", "accessToken", "", "getAccessToken", "()Ljava/lang/String;", "setAccessToken", "(Ljava/lang/String;)V", CouchFieldKey.KEY_DIR, "getDir", "setDir", "dlink", "", "getDlink", "()I", "setDlink", "(I)V", "fsids", "", "", "getFsids", "()Ljava/util/List;", "setFsids", "(Ljava/util/List;)V", BaiduYunConstant.IS_DIR, "getIsdir", "setIsdir", "key", "getKey", "setKey", "limit", "getLimit", "setLimit", "method", "getMethod", "setMethod", "num", "getNum", "setNum", Constants.ATTRNAME_ORDER, "getOrder", "setOrder", "page", "getPage", "setPage", "path", "getPath", "setPath", BaiduYunQueryArgs.RECURSION_PARAM_KEY, "getRecursion", "setRecursion", BaiduYunConstant.RTYPE, "getRtype", "setRtype", "size", "getSize", "setSize", gon.f71290o0, "getStart", "setStart", "web", "getWeb", "setWeb", "copy", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BaiduYunQueryArgs implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String RECURSION_PARAM_KEY = "recursion";

    @JSONField(name = "access_token")
    @Nullable
    private String accessToken;

    @Nullable
    private String dir;
    private int dlink;

    @Nullable
    private List<Long> fsids;
    private int isdir;

    @Nullable
    private String key;
    private int limit;
    private int num;

    @Nullable
    private String order;
    private int page;

    @Nullable
    private String path;
    private int recursion;
    private int size;
    private int start;
    private int web;

    @Nullable
    private String method = "list";
    private int rtype = 1;

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs$Companion;", "", "()V", "RECURSION_PARAM_KEY", "", "createFetchAllQueryArgs", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;", gon.f71290o0, "", "getSortBy", "sortBy", "Lcom/onyx/android/sdk/base/data/SortBy;", "getSortOrder", "sortOrder", "Lcom/onyx/android/sdk/base/data/SortOrder;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
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
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final BaiduYunQueryArgs createFetchAllQueryArgs(int start) {
            BaiduYunQueryArgs baiduYunQueryArgs = new BaiduYunQueryArgs();
            baiduYunQueryArgs.setMethod(BaiduYunConstant.LIST_ALL);
            baiduYunQueryArgs.setPath("/");
            baiduYunQueryArgs.setStart(start);
            baiduYunQueryArgs.setLimit(1000);
            baiduYunQueryArgs.setRecursion(BooleanUtils.toInteger(true));
            baiduYunQueryArgs.setWeb(BooleanUtils.toInteger(true));
            baiduYunQueryArgs.setOrder("size");
            return baiduYunQueryArgs;
        }

        @NotNull
        public final String getSortBy(@NotNull SortBy sortBy) {
            Intrinsics.checkNotNullParameter(sortBy, "sortBy");
            int i = WhenMappings.$EnumSwitchMapping$0[sortBy.ordinal()];
            String name = (i == 1 || i == 2) ? sortBy.name() : "time";
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            String lowerCase = name.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            return lowerCase;
        }

        @Nullable
        public final String getSortOrder(@NotNull SortOrder sortOrder) {
            Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
            if (sortOrder == SortOrder.Desc) {
                return "1";
            }
            return null;
        }

        public Companion() {
        }
    }

    @NotNull
    public final BaiduYunQueryArgs copy() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Object parseObject = jSONUtils.parseObject(jSONUtils.toJson(this), (Class<Object>) BaiduYunQueryArgs.class);
        Intrinsics.checkNotNull(parseObject);
        return (BaiduYunQueryArgs) parseObject;
    }

    @Nullable
    public final String getAccessToken() {
        return this.accessToken;
    }

    @Nullable
    public final String getDir() {
        return this.dir;
    }

    public final int getDlink() {
        return this.dlink;
    }

    @Nullable
    public final List<Long> getFsids() {
        return this.fsids;
    }

    public final int getIsdir() {
        return this.isdir;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    public final int getLimit() {
        return this.limit;
    }

    @Nullable
    public final String getMethod() {
        return this.method;
    }

    public final int getNum() {
        return this.num;
    }

    @Nullable
    public final String getOrder() {
        return this.order;
    }

    public final int getPage() {
        return this.page;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    public final int getRecursion() {
        return this.recursion;
    }

    public final int getRtype() {
        return this.rtype;
    }

    public final int getSize() {
        return this.size;
    }

    public final int getStart() {
        return this.start;
    }

    public final int getWeb() {
        return this.web;
    }

    public final void setAccessToken(@Nullable String str) {
        this.accessToken = str;
    }

    public final void setDir(@Nullable String str) {
        this.dir = str;
    }

    public final void setDlink(int i) {
        this.dlink = i;
    }

    public final void setFsids(@Nullable List<Long> list) {
        this.fsids = list;
    }

    public final void setIsdir(int i) {
        this.isdir = i;
    }

    public final void setKey(@Nullable String str) {
        this.key = str;
    }

    public final void setLimit(int i) {
        this.limit = i;
    }

    public final void setMethod(@Nullable String str) {
        this.method = str;
    }

    public final void setNum(int i) {
        this.num = i;
    }

    public final void setOrder(@Nullable String str) {
        this.order = str;
    }

    public final void setPage(int i) {
        this.page = i;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    public final void setRecursion(int i) {
        this.recursion = i;
    }

    public final void setRtype(int i) {
        this.rtype = i;
    }

    public final void setSize(int i) {
        this.size = i;
    }

    public final void setStart(int i) {
        this.start = i;
    }

    public final void setWeb(int i) {
        this.web = i;
    }
}
