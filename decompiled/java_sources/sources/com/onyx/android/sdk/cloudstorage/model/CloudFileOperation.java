package com.onyx.android.sdk.cloudstorage.model;

import com.alibaba.fastjson2.TypeReference;
import com.alibaba.fastjson2.annotation.JSONCreator;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002#$B\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "Ljava/io/Serializable;", "()V", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "data", "", "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/Object;)V", "accountId", "", "getAccountId", "()Ljava/lang/String;", "setAccountId", "(Ljava/lang/String;)V", "dataJson", "getDataJson", "setDataJson", "isCloudOperate", "", Constants.BOOLEAN_VALUE_SIG, "setCloudOperate", "(Z)V", "getProvider", "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "setProvider", "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V", "strategy", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;", "getStrategy", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;", "setStrategy", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;)V", "parseDataList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "OperationData", "OperationStrategy", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CloudFileOperation implements Serializable {

    @Nullable
    private String accountId;

    @Nullable
    private String dataJson;
    private boolean isCloudOperate;

    @NotNull
    private Provider provider;

    @NotNull
    private OperationStrategy strategy;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u0011\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005B\u001b\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\u0005R \u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\u0005R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\u0005¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "Ljava/io/Serializable;", "()V", "origin", "", "(Ljava/lang/String;)V", "path", "(Ljava/lang/String;Ljava/lang/String;)V", "dest", "getDest", "()Ljava/lang/String;", "setDest", "newName", "getNewName", "setNewName", "getOrigin", "setOrigin", "getPath", "setPath", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class OperationData implements Serializable {

        @Nullable
        private String dest;

        @JSONField(name = com.onyx.android.sdk.cloudstorage.constans.Constants.OPERATION_DATA_NEW_NAME)
        @Nullable
        private String newName;

        @Nullable
        private String origin;

        @Nullable
        private String path;

        @JSONCreator
        public OperationData() {
        }

        @Nullable
        public final String getDest() {
            return this.dest;
        }

        @Nullable
        public final String getNewName() {
            return this.newName;
        }

        @Nullable
        public final String getOrigin() {
            return this.origin;
        }

        @Nullable
        public final String getPath() {
            return this.path;
        }

        public final void setDest(@Nullable String str) {
            this.dest = str;
        }

        public final void setNewName(@Nullable String str) {
            this.newName = str;
        }

        public final void setOrigin(@Nullable String str) {
            this.origin = str;
        }

        public final void setPath(@Nullable String str) {
            this.path = str;
        }

        public OperationData(@Nullable String str) {
            this.origin = str;
        }

        public OperationData(@Nullable String str, @Nullable String str2) {
            this(str);
            this.path = str2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;", "", "title", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "FAIL", "NEW_COPY", "OVERWRITE", "SKIP", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class OperationStrategy {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ OperationStrategy[] $VALUES;
        public static final OperationStrategy FAIL = new OperationStrategy("FAIL", 0, OneDriverConstants.CONFLICT_BEHAVIOR_FAIL);
        public static final OperationStrategy NEW_COPY = new OperationStrategy("NEW_COPY", 1, "newcopy");
        public static final OperationStrategy OVERWRITE = new OperationStrategy("OVERWRITE", 2, "overwrite");
        public static final OperationStrategy SKIP = new OperationStrategy("SKIP", 3, "skip");

        @NotNull
        private final String title;

        private static final /* synthetic */ OperationStrategy[] $values() {
            return new OperationStrategy[]{FAIL, NEW_COPY, OVERWRITE, SKIP};
        }

        static {
            OperationStrategy[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private OperationStrategy(String str, int i, String str2) {
            this.title = str2;
        }

        @NotNull
        public static EnumEntries<OperationStrategy> getEntries() {
            return $ENTRIES;
        }

        public static OperationStrategy valueOf(String str) {
            return (OperationStrategy) Enum.valueOf(OperationStrategy.class, str);
        }

        public static OperationStrategy[] values() {
            return (OperationStrategy[]) $VALUES.clone();
        }

        @NotNull
        public final String getTitle() {
            return this.title;
        }
    }

    @JSONCreator
    public CloudFileOperation() {
        this.provider = Provider.BAIDU_YUN;
        this.strategy = OperationStrategy.FAIL;
        this.isCloudOperate = true;
    }

    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    @Nullable
    public final String getDataJson() {
        return this.dataJson;
    }

    @NotNull
    public final Provider getProvider() {
        return this.provider;
    }

    @NotNull
    public final OperationStrategy getStrategy() {
        return this.strategy;
    }

    /* renamed from: isCloudOperate, reason: from getter */
    public final boolean getIsCloudOperate() {
        return this.isCloudOperate;
    }

    @Nullable
    public final List<OperationData> parseDataList() {
        return (List) JSONUtils.INSTANCE.parseObject(this.dataJson, new TypeReference<List<? extends OperationData>>() { // from class: com.onyx.android.sdk.cloudstorage.model.CloudFileOperation$parseDataList$1
        });
    }

    public final void setAccountId(@Nullable String str) {
        this.accountId = str;
    }

    public final void setCloudOperate(boolean z) {
        this.isCloudOperate = z;
    }

    public final void setDataJson(@Nullable String str) {
        this.dataJson = str;
    }

    public final void setProvider(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "<set-?>");
        this.provider = provider;
    }

    public final void setStrategy(@NotNull OperationStrategy operationStrategy) {
        Intrinsics.checkNotNullParameter(operationStrategy, "<set-?>");
        this.strategy = operationStrategy;
    }

    public CloudFileOperation(@NotNull Provider provider, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = Provider.BAIDU_YUN;
        this.strategy = OperationStrategy.FAIL;
        this.isCloudOperate = true;
        this.provider = provider;
        this.dataJson = JSONUtils.INSTANCE.toJSONString(obj);
    }
}
