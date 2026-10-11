package com.onyx.android.sdk.data.model;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b&\u0018\u0000 #2\u00020\u0001:\u0001#B\u0007\b\u0016¢\u0006\u0002\u0010\u0002BA\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\fJ\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\"R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/data/model/BaseData;", "", "()V", "id", "", "guid", "", "idString", "objectId", CouchFieldKey.KEY_CREATE_AT, "Ljava/util/Date;", "updatedAt", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", "getGuid", "()Ljava/lang/String;", "setGuid", "(Ljava/lang/String;)V", "getId", "()J", "setId", "(J)V", "getIdString", "setIdString", "getObjectId", "setObjectId", "getUpdatedAt", "setUpdatedAt", "beforeSave", "", "hasValidId", "", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class BaseData {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String DELIMITER = ",";
    public static final int INVALID_ID = -1;
    public static final int INVALID_VERSION = -1;

    @NotNull
    public static final String KEY_UPDATE_AT = "updatedAt";

    @NotNull
    public static final String OBJECT_ID = "_id";

    @Nullable
    private Date createdAt;

    @Nullable
    private String guid;
    private long id;

    @Nullable
    private String idString;

    @Nullable
    private String objectId;

    @Nullable
    private Date updatedAt;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/model/BaseData$Companion;", "", "()V", "DELIMITER", "", "INVALID_ID", "", "INVALID_VERSION", "KEY_UPDATE_AT", "OBJECT_ID", "generateUniqueId", "isValid", "", "data", "Lcom/onyx/android/sdk/data/model/BaseData;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String generateUniqueId() {
            return UUIDUtils.INSTANCE.shortUUID();
        }

        public final boolean isValid(@Nullable BaseData data) {
            return data != null && data.hasValidId();
        }

        private Companion() {
        }
    }

    public BaseData() {
        this.id = -1L;
    }

    public final void beforeSave() {
        Date date = new Date();
        if (this.createdAt == null) {
            this.createdAt = date;
        }
        this.updatedAt = date;
    }

    @Nullable
    public final Date getCreatedAt() {
        return this.createdAt;
    }

    @Nullable
    public final String getGuid() {
        return this.guid;
    }

    public final long getId() {
        return this.id;
    }

    @Nullable
    public final String getIdString() {
        return this.idString;
    }

    @Nullable
    public final String getObjectId() {
        return this.objectId;
    }

    @Nullable
    public final Date getUpdatedAt() {
        return this.updatedAt;
    }

    public final boolean hasValidId() {
        return this.id > -1;
    }

    public final void setCreatedAt(@Nullable Date date) {
        this.createdAt = date;
    }

    public final void setGuid(@Nullable String str) {
        this.guid = str;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setIdString(@Nullable String str) {
        this.idString = str;
    }

    public final void setObjectId(@Nullable String str) {
        this.objectId = str;
    }

    public final void setUpdatedAt(@Nullable Date date) {
        this.updatedAt = date;
    }

    public BaseData(long j, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Date date, @Nullable Date date2) {
        this.id = j;
        this.guid = str;
        this.idString = str2;
        this.objectId = str3;
        this.createdAt = date;
        this.updatedAt = date2;
    }
}
