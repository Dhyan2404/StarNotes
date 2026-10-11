package com.onyx.android.sdk.data.common.oss;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b-\u0018\u0000 02\u00020\u0001:\u00010B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001c\u0010'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\u001c\u0010-\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\b¨\u00061"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;", "", "()V", "cosImmBucket", "", "getCosImmBucket", "()Ljava/lang/String;", "setCosImmBucket", "(Ljava/lang/String;)V", "cosImmEndpoint", "getCosImmEndpoint", "setCosImmEndpoint", "ossAIBucket", "getOssAIBucket", "setOssAIBucket", "ossAIEndPoint", "getOssAIEndPoint", "setOssAIEndPoint", "ossDeprecatedBucket", "getOssDeprecatedBucket", "setOssDeprecatedBucket", "ossDeprecatedEndPoint", "getOssDeprecatedEndPoint", "setOssDeprecatedEndPoint", "ossImmBukcet", "getOssImmBukcet", "setOssImmBukcet", "ossImmEndpoint", "getOssImmEndpoint", "setOssImmEndpoint", "ossLogBucket", "getOssLogBucket", "setOssLogBucket", "ossLogEndpoint", "getOssLogEndpoint", "setOssLogEndpoint", "ossNoteBucket", "getOssNoteBucket", "setOssNoteBucket", "ossNoteEndPoint", "getOssNoteEndPoint", "setOssNoteEndPoint", "ossTestBucket", "getOssTestBucket", "setOssTestBucket", "ossTestEndpoint", "getOssTestEndpoint", "setOssTestEndpoint", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OssConfigInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String OSS_AI_BUCKET_CN_DEFAULT = "onyx-ai";

    @NotNull
    private static final String OSS_AI_BUCKET_EN_DEFAULT = "onyx-ai-us";

    @NotNull
    private static final String OSS_AI_ENDPOINT_CN_DEFAULT = "https://oss-cn-shenzhen.aliyuncs.com";

    @NotNull
    private static final String OSS_AI_ENDPOINT_EN_DEFAULT = "https://oss-us-west-1.aliyuncs.com";

    @NotNull
    private static final String OSS_DEPRECATED_BACKUP_BUCKET_CN = "onyx-note";

    @NotNull
    private static final String OSS_DEPRECATED_BACKUP_BUCKET_EN = "onyx-note-us";

    @NotNull
    private static final String OSS_DEPRECATED_BACKUP_ENDPOINT_CN = "https://oss-cn-shenzhen.aliyuncs.com";

    @NotNull
    private static final String OSS_DEPRECATED_BACKUP_ENDPOINT_EN = "https://oss-us-west-1.aliyuncs.com";

    @NotNull
    private static final String OSS_DOC_CONVERT_BUCKET_CN_DEFAULT = "onyx-imm";

    @NotNull
    private static final String OSS_DOC_CONVERT_BUCKET_EN_DEFAULT = "onyx-imm-us";

    @NotNull
    private static final String OSS_DOC_CONVERT_ENDPOINT_CN_DEFAULT = "http://oss-cn-beijing.aliyuncs.com";

    @NotNull
    private static final String OSS_DOC_CONVERT_ENDPOINT_EN_DEFAULT = "http://oss-us-west-1.aliyuncs.com";

    @NotNull
    private static final String OSS_ENDPOINT_CN_DEFAULT = "https://oss-cn-shenzhen.aliyuncs.com";

    @NotNull
    private static final String OSS_ENDPOINT_EN_DEFAULT = "https://oss-us-west-1.aliyuncs.com";

    @NotNull
    private static final String OSS_IMM_ENDPOINT_CN_DEFAULT = "http://oss-cn-beijing.aliyuncs.com";

    @NotNull
    private static final String OSS_IMM_ENDPOINT_EN_DEFAULT = "http://oss-us-west-1.aliyuncs.com";

    @NotNull
    private static final String OSS_LOG_BUCKET_CN_DEFAULT = "onyx-log-collection";

    @NotNull
    private static final String OSS_LOG_BUCKET_EN_DEFAULT = "onyx-log-collection-us";

    @NotNull
    private static final String OSS_LOG_ENDPOINT_CN_DEFAULT = "https://oss-cn-shenzhen.aliyuncs.com";

    @NotNull
    private static final String OSS_LOG_ENDPOINT_EN_DEFAULT = "https://oss-us-west-1.aliyuncs.com";

    @NotNull
    private static final String OSS_NOTE_BUCKET_CN_DEFAULT = "onyx-cloud";

    @NotNull
    private static final String OSS_NOTE_BUCKET_EN_DEFAULT = "onyx-cloud-us";

    @NotNull
    private static final String OSS_NOTE_ENDPOINT_CN_DEFAULT = "https://oss-cn-shenzhen.aliyuncs.com";

    @NotNull
    private static final String OSS_NOTE_ENDPOINT_EN_DEFAULT = "https://oss-us-west-1.aliyuncs.com";

    @NotNull
    private static final String OSS_TEST_BUCKET_CN = "onyx-cloud-test";

    @NotNull
    private static final String OSS_TEST_BUCKET_EN = "onyx-cloud-test";

    @NotNull
    private static final String OSS_TEST_ENDPOINT_CN = "https://oss-cn-shenzhen.aliyuncs.com";

    @NotNull
    private static final String OSS_TEST_ENDPOINT_EN = "https://oss-cn-shenzhen.aliyuncs.com";

    @Nullable
    private String cosImmBucket;

    @Nullable
    private String cosImmEndpoint;

    @Nullable
    private String ossAIBucket;

    @Nullable
    private String ossAIEndPoint;

    @Nullable
    private String ossDeprecatedBucket;

    @Nullable
    private String ossDeprecatedEndPoint;

    @Nullable
    private String ossImmBukcet;

    @Nullable
    private String ossImmEndpoint;

    @Nullable
    private String ossLogBucket;

    @Nullable
    private String ossLogEndpoint;

    @Nullable
    private String ossNoteBucket;

    @Nullable
    private String ossNoteEndPoint;

    @Nullable
    private String ossTestBucket;

    @Nullable
    private String ossTestEndpoint;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010 \u001a\u00020!H\u0007J\b\u0010\"\u001a\u00020!H\u0007J\b\u0010#\u001a\u00020!H\u0007J\b\u0010$\u001a\u00020!H\u0007J\u0080\u0001\u0010%\u001a\u00020!2\b\u0010&\u001a\u0004\u0018\u00010\u00042\b\u0010'\u001a\u0004\u0018\u00010\u00042\b\u0010(\u001a\u0004\u0018\u00010\u00042\b\u0010)\u001a\u0004\u0018\u00010\u00042\b\u0010*\u001a\u0004\u0018\u00010\u00042\b\u0010+\u001a\u0004\u0018\u00010\u00042\b\u0010,\u001a\u0004\u0018\u00010\u00042\b\u0010-\u001a\u0004\u0018\u00010\u00042\b\u0010.\u001a\u0004\u0018\u00010\u00042\b\u0010/\u001a\u0004\u0018\u00010\u00042\b\u00100\u001a\u0004\u0018\u00010\u00042\b\u00101\u001a\u0004\u0018\u00010\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo$Companion;", "", "()V", "OSS_AI_BUCKET_CN_DEFAULT", "", "OSS_AI_BUCKET_EN_DEFAULT", "OSS_AI_ENDPOINT_CN_DEFAULT", "OSS_AI_ENDPOINT_EN_DEFAULT", "OSS_DEPRECATED_BACKUP_BUCKET_CN", "OSS_DEPRECATED_BACKUP_BUCKET_EN", "OSS_DEPRECATED_BACKUP_ENDPOINT_CN", "OSS_DEPRECATED_BACKUP_ENDPOINT_EN", "OSS_DOC_CONVERT_BUCKET_CN_DEFAULT", "OSS_DOC_CONVERT_BUCKET_EN_DEFAULT", "OSS_DOC_CONVERT_ENDPOINT_CN_DEFAULT", "OSS_DOC_CONVERT_ENDPOINT_EN_DEFAULT", "OSS_ENDPOINT_CN_DEFAULT", "OSS_ENDPOINT_EN_DEFAULT", "OSS_IMM_ENDPOINT_CN_DEFAULT", "OSS_IMM_ENDPOINT_EN_DEFAULT", "OSS_LOG_BUCKET_CN_DEFAULT", "OSS_LOG_BUCKET_EN_DEFAULT", "OSS_LOG_ENDPOINT_CN_DEFAULT", "OSS_LOG_ENDPOINT_EN_DEFAULT", "OSS_NOTE_BUCKET_CN_DEFAULT", "OSS_NOTE_BUCKET_EN_DEFAULT", "OSS_NOTE_ENDPOINT_CN_DEFAULT", "OSS_NOTE_ENDPOINT_EN_DEFAULT", "OSS_TEST_BUCKET_CN", "OSS_TEST_BUCKET_EN", "OSS_TEST_ENDPOINT_CN", "OSS_TEST_ENDPOINT_EN", "createDefaultAmericanOss", "Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;", "createDefaultChineseOss", "createDefaultEuropeOss", "createDefaultOss", "createOssConfigInfo", "ossLogBucket", "ossLogEndpoint", "ossNoteBucket", "ossNoteEndPoint", "ossTestBucket", "ossTestEndpoint", "ossDeprecatedBucket", "ossDeprecatedEndPoint", "ossAIBucket", "ossAIEndPoint", "ossDocConvertBucket", "ossDocConvertEndPoint", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final OssConfigInfo createOssConfigInfo(String ossLogBucket, String ossLogEndpoint, String ossNoteBucket, String ossNoteEndPoint, String ossTestBucket, String ossTestEndpoint, String ossDeprecatedBucket, String ossDeprecatedEndPoint, String ossAIBucket, String ossAIEndPoint, String ossDocConvertBucket, String ossDocConvertEndPoint) {
            OssConfigInfo ossConfigInfo = new OssConfigInfo();
            ossConfigInfo.setOssLogBucket(ossLogBucket);
            ossConfigInfo.setOssLogEndpoint(ossLogEndpoint);
            ossConfigInfo.setOssNoteBucket(ossNoteBucket);
            ossConfigInfo.setOssNoteEndPoint(ossNoteEndPoint);
            ossConfigInfo.setOssTestBucket(ossTestBucket);
            ossConfigInfo.setOssTestEndpoint(ossTestEndpoint);
            ossConfigInfo.setOssDeprecatedBucket(ossDeprecatedBucket);
            ossConfigInfo.setOssDeprecatedEndPoint(ossDeprecatedEndPoint);
            ossConfigInfo.setOssAIBucket(ossAIBucket);
            ossConfigInfo.setOssAIEndPoint(ossAIEndPoint);
            ossConfigInfo.setOssImmBukcet(ossDocConvertBucket);
            ossConfigInfo.setOssImmEndpoint(ossDocConvertEndPoint);
            return ossConfigInfo;
        }

        @JvmStatic
        @NotNull
        public final OssConfigInfo createDefaultAmericanOss() {
            return createOssConfigInfo(OssConfigInfo.OSS_LOG_BUCKET_EN_DEFAULT, "https://oss-us-west-1.aliyuncs.com", OssConfigInfo.OSS_NOTE_BUCKET_EN_DEFAULT, "https://oss-us-west-1.aliyuncs.com", "onyx-cloud-test", "https://oss-cn-shenzhen.aliyuncs.com", OssConfigInfo.OSS_DEPRECATED_BACKUP_BUCKET_EN, "https://oss-us-west-1.aliyuncs.com", OssConfigInfo.OSS_AI_BUCKET_EN_DEFAULT, "https://oss-us-west-1.aliyuncs.com", OssConfigInfo.OSS_DOC_CONVERT_BUCKET_EN_DEFAULT, "http://oss-us-west-1.aliyuncs.com");
        }

        @JvmStatic
        @NotNull
        public final OssConfigInfo createDefaultChineseOss() {
            return createOssConfigInfo(OssConfigInfo.OSS_LOG_BUCKET_CN_DEFAULT, "https://oss-cn-shenzhen.aliyuncs.com", OssConfigInfo.OSS_NOTE_BUCKET_CN_DEFAULT, "https://oss-cn-shenzhen.aliyuncs.com", "onyx-cloud-test", "https://oss-cn-shenzhen.aliyuncs.com", OssConfigInfo.OSS_DEPRECATED_BACKUP_BUCKET_CN, "https://oss-cn-shenzhen.aliyuncs.com", OssConfigInfo.OSS_AI_BUCKET_CN_DEFAULT, "https://oss-cn-shenzhen.aliyuncs.com", OssConfigInfo.OSS_DOC_CONVERT_BUCKET_CN_DEFAULT, "http://oss-cn-beijing.aliyuncs.com");
        }

        @JvmStatic
        @NotNull
        public final OssConfigInfo createDefaultEuropeOss() {
            return createOssConfigInfo(OssConfigInfo.OSS_LOG_BUCKET_EN_DEFAULT, "https://oss-us-west-1.aliyuncs.com", OssConfigInfo.OSS_NOTE_BUCKET_EN_DEFAULT, "https://oss-us-west-1.aliyuncs.com", "onyx-cloud-test", "https://oss-cn-shenzhen.aliyuncs.com", OssConfigInfo.OSS_DEPRECATED_BACKUP_BUCKET_EN, "https://oss-us-west-1.aliyuncs.com", OssConfigInfo.OSS_AI_BUCKET_EN_DEFAULT, "https://oss-us-west-1.aliyuncs.com", OssConfigInfo.OSS_DOC_CONVERT_BUCKET_EN_DEFAULT, "http://oss-us-west-1.aliyuncs.com");
        }

        @JvmStatic
        @NotNull
        public final OssConfigInfo createDefaultOss() {
            return Intrinsics.areEqual(Locale.getDefault().getDisplayLanguage(), Locale.CHINESE.getDisplayLanguage()) ? createDefaultChineseOss() : createDefaultAmericanOss();
        }

        private Companion() {
        }
    }

    @JvmStatic
    @NotNull
    public static final OssConfigInfo createDefaultAmericanOss() {
        return INSTANCE.createDefaultAmericanOss();
    }

    @JvmStatic
    @NotNull
    public static final OssConfigInfo createDefaultChineseOss() {
        return INSTANCE.createDefaultChineseOss();
    }

    @JvmStatic
    @NotNull
    public static final OssConfigInfo createDefaultEuropeOss() {
        return INSTANCE.createDefaultEuropeOss();
    }

    @JvmStatic
    @NotNull
    public static final OssConfigInfo createDefaultOss() {
        return INSTANCE.createDefaultOss();
    }

    @Nullable
    public final String getCosImmBucket() {
        return this.cosImmBucket;
    }

    @Nullable
    public final String getCosImmEndpoint() {
        return this.cosImmEndpoint;
    }

    @Nullable
    public final String getOssAIBucket() {
        return this.ossAIBucket;
    }

    @Nullable
    public final String getOssAIEndPoint() {
        return this.ossAIEndPoint;
    }

    @Nullable
    public final String getOssDeprecatedBucket() {
        return this.ossDeprecatedBucket;
    }

    @Nullable
    public final String getOssDeprecatedEndPoint() {
        return this.ossDeprecatedEndPoint;
    }

    @Nullable
    public final String getOssImmBukcet() {
        return this.ossImmBukcet;
    }

    @Nullable
    public final String getOssImmEndpoint() {
        return this.ossImmEndpoint;
    }

    @Nullable
    public final String getOssLogBucket() {
        return this.ossLogBucket;
    }

    @Nullable
    public final String getOssLogEndpoint() {
        return this.ossLogEndpoint;
    }

    @Nullable
    public final String getOssNoteBucket() {
        return this.ossNoteBucket;
    }

    @Nullable
    public final String getOssNoteEndPoint() {
        return this.ossNoteEndPoint;
    }

    @Nullable
    public final String getOssTestBucket() {
        return this.ossTestBucket;
    }

    @Nullable
    public final String getOssTestEndpoint() {
        return this.ossTestEndpoint;
    }

    public final void setCosImmBucket(@Nullable String str) {
        this.cosImmBucket = str;
    }

    public final void setCosImmEndpoint(@Nullable String str) {
        this.cosImmEndpoint = str;
    }

    public final void setOssAIBucket(@Nullable String str) {
        this.ossAIBucket = str;
    }

    public final void setOssAIEndPoint(@Nullable String str) {
        this.ossAIEndPoint = str;
    }

    public final void setOssDeprecatedBucket(@Nullable String str) {
        this.ossDeprecatedBucket = str;
    }

    public final void setOssDeprecatedEndPoint(@Nullable String str) {
        this.ossDeprecatedEndPoint = str;
    }

    public final void setOssImmBukcet(@Nullable String str) {
        this.ossImmBukcet = str;
    }

    public final void setOssImmEndpoint(@Nullable String str) {
        this.ossImmEndpoint = str;
    }

    public final void setOssLogBucket(@Nullable String str) {
        this.ossLogBucket = str;
    }

    public final void setOssLogEndpoint(@Nullable String str) {
        this.ossLogEndpoint = str;
    }

    public final void setOssNoteBucket(@Nullable String str) {
        this.ossNoteBucket = str;
    }

    public final void setOssNoteEndPoint(@Nullable String str) {
        this.ossNoteEndPoint = str;
    }

    public final void setOssTestBucket(@Nullable String str) {
        this.ossTestBucket = str;
    }

    public final void setOssTestEndpoint(@Nullable String str) {
        this.ossTestEndpoint = str;
    }
}
