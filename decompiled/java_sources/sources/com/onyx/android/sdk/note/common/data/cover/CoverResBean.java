package com.onyx.android.sdk.note.common.data.cover;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002R(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R(\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R$\u0010\b\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00078\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR(\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\n8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R(\u0010\r\u001a\u0004\u0018\u00010\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\n8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\"\u0010\u001f\u001a\u0004\b#\u0010!R(\u0010\u0011\u001a\u0004\u0018\u00010\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b$\u0010\u0015\u001a\u0004\b%\u0010\u0017R$\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00078\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b&\u0010\u001b\u001a\u0004\b'\u0010\u001d¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/cover/CoverResBean;", "", "", "id", "setId", "title", "setTitle", "", "iconResId", "setIconResId", "Ljava/util/Date;", CouchFieldKey.KEY_CREATE_AT, "setCreatedAt", "updatedAt", "setUpdatedAt", "type", "setType", "url", "setUrl", "<set-?>", "a", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "b", "getTitle", "c", "I", "getIconResId", "()I", "d", "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "e", "getUpdatedAt", C6997f.f39671c, "getUrl", C6998g.f39679a, "getType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CoverResBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String id;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String title;

    /* renamed from: c, reason: from kotlin metadata */
    public int iconResId;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Date createdAt;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Date updatedAt;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String url;

    /* renamed from: g, reason: from kotlin metadata */
    public int type;

    @Nullable
    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    @Nullable
    public final Date getUpdatedAt() {
        return this.updatedAt;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public final CoverResBean setCreatedAt(@Nullable Date createdAt) {
        this.createdAt = createdAt;
        return this;
    }

    @NotNull
    public final CoverResBean setIconResId(int iconResId) {
        this.iconResId = iconResId;
        return this;
    }

    @NotNull
    public final CoverResBean setId(@Nullable String id) {
        this.id = id;
        return this;
    }

    @NotNull
    public final CoverResBean setTitle(@Nullable String title) {
        this.title = title;
        return this;
    }

    @NotNull
    public final CoverResBean setType(int type) {
        this.type = type;
        return this;
    }

    @NotNull
    public final CoverResBean setUpdatedAt(@Nullable Date updatedAt) {
        this.updatedAt = updatedAt;
        return this;
    }

    @NotNull
    public final CoverResBean setUrl(@Nullable String url) {
        this.url = url;
        return this;
    }
}
