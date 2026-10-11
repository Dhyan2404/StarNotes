package com.onyx.android.sdk.data.common.p027db;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/db/BaseModel;", "", "()V", CouchFieldKey.KEY_CREATE_AT, "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", "id", "", "getId", "()J", "setId", "(J)V", "updatedAt", "getUpdatedAt", "setUpdatedAt", "beforeSave", "", "date", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class BaseModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final long OBJECT_ID_INIT_VALUE = 0;

    @Nullable
    private Date createdAt;
    private long id;

    @Nullable
    private Date updatedAt;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;", "", "()V", "OBJECT_ID_INIT_VALUE", "", "ensureNotNull", "", "v", "getDateTime", "date", "Ljava/util/Date;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String ensureNotNull(@Nullable String v) {
            if (StringUtils.isEmpty(v) || StringUtils.equalsIgnoreCase(v, "null")) {
                return "";
            }
            Intrinsics.checkNotNull(v);
            return v;
        }

        public final long getDateTime(@Nullable Date date) {
            if (date != null) {
                return date.getTime();
            }
            return 0L;
        }

        private Companion() {
        }
    }

    public final void beforeSave() {
        if (getCreatedAt() == null) {
            m72245setCreatedAt(new Date());
        }
        m72246setUpdatedAt(new Date());
    }

    @Nullable
    public Date getCreatedAt() {
        return this.createdAt;
    }

    public long getId() {
        return this.id;
    }

    @Nullable
    public Date getUpdatedAt() {
        return this.updatedAt;
    }

    /* renamed from: setCreatedAt, reason: collision with other method in class */
    public void m72245setCreatedAt(@Nullable Date date) {
        this.createdAt = date;
    }

    public void setId(long j) {
        this.id = j;
    }

    /* renamed from: setUpdatedAt, reason: collision with other method in class */
    public void m72246setUpdatedAt(@Nullable Date date) {
        this.updatedAt = date;
    }

    @NotNull
    public final BaseModel setCreatedAt(@Nullable Date date) {
        m72245setCreatedAt(date);
        return this;
    }

    @NotNull
    public final BaseModel setUpdatedAt(@Nullable Date date) {
        m72246setUpdatedAt(date);
        return this;
    }
}
