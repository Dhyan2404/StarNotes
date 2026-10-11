package com.onyx.android.sdk.data.common.cloud.p026v2;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bHÆ\u0003J_\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bHÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\t\u0010#\u001a\u00020\u0005HÖ\u0001R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;", "", "type", "", "content", "", "email", "version", "model", "key", "attachments", "", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getAttachments", "()Ljava/util/List;", "getContent", "()Ljava/lang/String;", "getEmail", "getKey", "getModel", "getType", "()I", "getVersion", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class FeedbacksParams {

    @NotNull
    private final List<String> attachments;

    @Nullable
    private final String content;

    @Nullable
    private final String email;

    @Nullable
    private final String key;

    @Nullable
    private final String model;
    private final int type;

    @Nullable
    private final String version;

    public FeedbacksParams() {
        this(0, null, null, null, null, null, null, 127, null);
    }

    public static /* synthetic */ FeedbacksParams copy$default(FeedbacksParams feedbacksParams, int i, String str, String str2, String str3, String str4, String str5, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = feedbacksParams.type;
        }
        if ((i2 & 2) != 0) {
            str = feedbacksParams.content;
        }
        String str6 = str;
        if ((i2 & 4) != 0) {
            str2 = feedbacksParams.email;
        }
        String str7 = str2;
        if ((i2 & 8) != 0) {
            str3 = feedbacksParams.version;
        }
        String str8 = str3;
        if ((i2 & 16) != 0) {
            str4 = feedbacksParams.model;
        }
        String str9 = str4;
        if ((i2 & 32) != 0) {
            str5 = feedbacksParams.key;
        }
        String str10 = str5;
        if ((i2 & 64) != 0) {
            list = feedbacksParams.attachments;
        }
        return feedbacksParams.copy(i, str6, str7, str8, str9, str10, list);
    }

    /* renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final String getModel() {
        return this.model;
    }

    @Nullable
    /* renamed from: component6, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final List<String> component7() {
        return this.attachments;
    }

    @NotNull
    public final FeedbacksParams copy(int type, @Nullable String content, @Nullable String email, @Nullable String version, @Nullable String model, @Nullable String key, @NotNull List<String> attachments) {
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        return new FeedbacksParams(type, content, email, version, model, key, attachments);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FeedbacksParams)) {
            return false;
        }
        FeedbacksParams feedbacksParams = (FeedbacksParams) other;
        return this.type == feedbacksParams.type && Intrinsics.areEqual(this.content, feedbacksParams.content) && Intrinsics.areEqual(this.email, feedbacksParams.email) && Intrinsics.areEqual(this.version, feedbacksParams.version) && Intrinsics.areEqual(this.model, feedbacksParams.model) && Intrinsics.areEqual(this.key, feedbacksParams.key) && Intrinsics.areEqual(this.attachments, feedbacksParams.attachments);
    }

    @NotNull
    public final List<String> getAttachments() {
        return this.attachments;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    @Nullable
    public final String getModel() {
        return this.model;
    }

    public final int getType() {
        return this.type;
    }

    @Nullable
    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.type) * 31;
        String str = this.content;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.email;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.version;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.model;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.key;
        return ((hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.attachments.hashCode();
    }

    @NotNull
    public String toString() {
        return "FeedbacksParams(type=" + this.type + ", content=" + this.content + ", email=" + this.email + ", version=" + this.version + ", model=" + this.model + ", key=" + this.key + ", attachments=" + this.attachments + ')';
    }

    public FeedbacksParams(int i, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @NotNull List<String> attachments) {
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        this.type = i;
        this.content = str;
        this.email = str2;
        this.version = str3;
        this.model = str4;
        this.key = str5;
        this.attachments = attachments;
    }

    public /* synthetic */ FeedbacksParams(int i, String str, String str2, String str3, String str4, String str5, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? "" : str2, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? "" : str4, (i2 & 32) == 0 ? str5 : "", (i2 & 64) != 0 ? new ArrayList() : list);
    }
}
