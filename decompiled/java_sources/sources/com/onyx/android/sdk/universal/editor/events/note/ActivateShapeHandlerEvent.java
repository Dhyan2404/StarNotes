package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;", "", "", "a", Constants.STRING_SIG, "getProviderName", "()Ljava/lang/String;", CouchFieldKey.KEY_PROVIDER_NAME, "", "b", Constants.HASIDCALL_INDEX_SIG, "getUserProvider", Constants.BOOLEAN_VALUE_SIG, "userProvider", "", "c", Constants.INTEGER_SIG, "getShapeType", "()Ljava/lang/Integer;", "shapeType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;ZLjava/lang/Integer;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ActivateShapeHandlerEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final String providerName;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean userProvider;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final Integer shapeType;

    public ActivateShapeHandlerEvent(@Nullable String str, boolean z, @Nullable Integer num) {
        this.providerName = str;
        this.userProvider = z;
        this.shapeType = num;
    }

    @Nullable
    public final String getProviderName() {
        return this.providerName;
    }

    @Nullable
    public final Integer getShapeType() {
        return this.shapeType;
    }

    public final boolean getUserProvider() {
        return this.userProvider;
    }

    public /* synthetic */ ActivateShapeHandlerEvent(String str, boolean z, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, (i & 4) != 0 ? null : num);
    }
}
