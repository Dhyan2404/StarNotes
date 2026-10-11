package com.onyx.android.sdk.media.config;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u001b\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b,\u0010-J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\u0007HÆ\u0003JE\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u00072\b\b\u0002\u0010\u0010\u001a\u00020\u0007HÆ\u0001J\t\u0010\u0012\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0013HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u0018\u001a\u0004\b \u0010\u001aR\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0017\u0010\u000f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b'\u0010\"\u001a\u0004\b(\u0010$R\"\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\"\u001a\u0004\b*\u0010$\"\u0004\b+\u0010&¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/media/config/RecordingConfig;", "", "", "component1", "Lcom/onyx/android/sdk/media/config/FormatConfig;", "component2", "component3", "", "component4", "component5", "component6", CouchFieldKey.KEY_RECORD_ID, "formatConfig", "filePath", "acceptAudioData", "appendMode", "postDurationEvent", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getRecordId", "()Ljava/lang/String;", "b", "Lcom/onyx/android/sdk/media/config/FormatConfig;", "getFormatConfig", "()Lcom/onyx/android/sdk/media/config/FormatConfig;", "c", "getFilePath", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getAcceptAudioData", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setAcceptAudioData", "(Z)V", "e", "getAppendMode", C6997f.f39671c, "getPostDurationEvent", "setPostDurationEvent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/media/config/FormatConfig;Ljava/lang/String;ZZZ)V", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class RecordingConfig {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String recordId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final FormatConfig formatConfig;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final String filePath;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public boolean acceptAudioData;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final boolean appendMode;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public boolean postDurationEvent;

    public RecordingConfig(@NotNull String recordId, @NotNull FormatConfig formatConfig, @NotNull String filePath, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(recordId, "recordId");
        Intrinsics.checkNotNullParameter(formatConfig, "formatConfig");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        this.recordId = recordId;
        this.formatConfig = formatConfig;
        this.filePath = filePath;
        this.acceptAudioData = z;
        this.appendMode = z2;
        this.postDurationEvent = z3;
    }

    public static /* synthetic */ RecordingConfig copy$default(RecordingConfig recordingConfig, String str, FormatConfig formatConfig, String str2, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = recordingConfig.recordId;
        }
        if ((i & 2) != 0) {
            formatConfig = recordingConfig.formatConfig;
        }
        FormatConfig formatConfig2 = formatConfig;
        if ((i & 4) != 0) {
            str2 = recordingConfig.filePath;
        }
        String str3 = str2;
        if ((i & 8) != 0) {
            z = recordingConfig.acceptAudioData;
        }
        boolean z4 = z;
        if ((i & 16) != 0) {
            z2 = recordingConfig.appendMode;
        }
        boolean z5 = z2;
        if ((i & 32) != 0) {
            z3 = recordingConfig.postDurationEvent;
        }
        return recordingConfig.copy(str, formatConfig2, str3, z4, z5, z3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getRecordId() {
        return this.recordId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final FormatConfig getFormatConfig() {
        return this.formatConfig;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getFilePath() {
        return this.filePath;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getAcceptAudioData() {
        return this.acceptAudioData;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getAppendMode() {
        return this.appendMode;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getPostDurationEvent() {
        return this.postDurationEvent;
    }

    @NotNull
    public final RecordingConfig copy(@NotNull String recordId, @NotNull FormatConfig formatConfig, @NotNull String filePath, boolean acceptAudioData, boolean appendMode, boolean postDurationEvent) {
        Intrinsics.checkNotNullParameter(recordId, "recordId");
        Intrinsics.checkNotNullParameter(formatConfig, "formatConfig");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return new RecordingConfig(recordId, formatConfig, filePath, acceptAudioData, appendMode, postDurationEvent);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RecordingConfig)) {
            return false;
        }
        RecordingConfig recordingConfig = (RecordingConfig) other;
        return Intrinsics.areEqual(this.recordId, recordingConfig.recordId) && Intrinsics.areEqual(this.formatConfig, recordingConfig.formatConfig) && Intrinsics.areEqual(this.filePath, recordingConfig.filePath) && this.acceptAudioData == recordingConfig.acceptAudioData && this.appendMode == recordingConfig.appendMode && this.postDurationEvent == recordingConfig.postDurationEvent;
    }

    public final boolean getAcceptAudioData() {
        return this.acceptAudioData;
    }

    public final boolean getAppendMode() {
        return this.appendMode;
    }

    @NotNull
    public final String getFilePath() {
        return this.filePath;
    }

    @NotNull
    public final FormatConfig getFormatConfig() {
        return this.formatConfig;
    }

    public final boolean getPostDurationEvent() {
        return this.postDurationEvent;
    }

    @NotNull
    public final String getRecordId() {
        return this.recordId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.recordId.hashCode() * 31) + this.formatConfig.hashCode()) * 31) + this.filePath.hashCode()) * 31;
        boolean z = this.acceptAudioData;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.appendMode;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.postDurationEvent;
        return i4 + (z3 ? 1 : z3 ? 1 : 0);
    }

    public final void setAcceptAudioData(boolean z) {
        this.acceptAudioData = z;
    }

    public final void setPostDurationEvent(boolean z) {
        this.postDurationEvent = z;
    }

    @NotNull
    public String toString() {
        return "RecordingConfig(recordId=" + this.recordId + ", formatConfig=" + this.formatConfig + ", filePath=" + this.filePath + ", acceptAudioData=" + this.acceptAudioData + ", appendMode=" + this.appendMode + ", postDurationEvent=" + this.postDurationEvent + ')';
    }

    public /* synthetic */ RecordingConfig(String str, FormatConfig formatConfig, String str2, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, formatConfig, str2, z, z2, (i & 32) != 0 ? true : z3);
    }
}
