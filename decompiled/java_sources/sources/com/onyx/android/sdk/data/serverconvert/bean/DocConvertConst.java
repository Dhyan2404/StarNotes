package com.onyx.android.sdk.data.serverconvert.bean;

import com.onyx.android.sdk.data.config.DocConvertConfig;
import com.onyx.android.sdk.data.utils.ConfigLoader;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010&\u001a\u00020\u0004J\u0006\u0010'\u001a\u00020\u0007J\u0006\u0010(\u001a\u00020\u0007J\u0006\u0010)\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u001d\u0010 \u001a\u0004\u0018\u00010!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b\"\u0010#¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertConst;", "", "()V", "CONVERT_SERVER_CONFIG_LANG_DEFAULT", "", "DOC_CONVERT_CONFIG_RAW_NAME", "DOC_CONVERT_DOWNLOAD_FILE_PROGRESS_VALUE", "", "DOC_CONVERT_FIVE_MINUTES_PROGRESS_VALUE", "DOC_CONVERT_GET_TICKET_PROGRESS_VALUE", "DOC_CONVERT_ONE_MINUTES_PROGRESS_VALUE", "DOC_CONVERT_PROGRESS_VALUE_30_PERCENT", "DOC_CONVERT_QUERY_TIME_FIVE_MINUTES", "DOC_CONVERT_QUERY_TIME_ONE_MINUTES", "DOC_CONVERT_QUERY_TIME_THREE_MINUTES", "DOC_CONVERT_SUCCESS_PROGRESS_VALUE", "DOC_CONVERT_THREE_MINUTES_PROGRESS_VALUE", "DOC_CONVERT_TIME_DELAY", "", "DOC_CONVERT_UPLOAD_FILE_START_PROGRESS_VALUE", "DOC_PAGE_MAX_LIMIT", "DOC_SIZE_MAX_LIMIT", "NETWORK_CONVERT_SIZE_MAX_LIMIT", "PROGRESS_STATUS_CANCEL", "PROGRESS_STATUS_COMPLETE", "PROGRESS_STATUS_PROCESSING", "PROGRESS_STATUS_START", "PROGRESS_STATUS_WAITING", "QUERY_STATUS_FAILED", "QUERY_STATUS_PROCESSING", "QUERY_STATUS_SUCCESS", "QUERY_STATUS_WAITING", "docConvertConfig", "Lcom/onyx/android/sdk/data/config/DocConvertConfig;", "getDocConvertConfig", "()Lcom/onyx/android/sdk/data/config/DocConvertConfig;", "docConvertConfig$delegate", "Lkotlin/Lazy;", "getConvertServerConfig", "getFiveMinutesTimesCount", "getOneMinutesCount", "getThreeMinutesTimesCount", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DocConvertConst {

    @NotNull
    private static final String CONVERT_SERVER_CONFIG_LANG_DEFAULT = "zh";

    @NotNull
    private static final String DOC_CONVERT_CONFIG_RAW_NAME = "doc_convert_config";
    public static final int DOC_CONVERT_DOWNLOAD_FILE_PROGRESS_VALUE = 95;
    public static final int DOC_CONVERT_FIVE_MINUTES_PROGRESS_VALUE = 65;
    public static final int DOC_CONVERT_GET_TICKET_PROGRESS_VALUE = 18;
    public static final int DOC_CONVERT_ONE_MINUTES_PROGRESS_VALUE = 45;
    public static final int DOC_CONVERT_PROGRESS_VALUE_30_PERCENT = 30;
    private static final int DOC_CONVERT_QUERY_TIME_FIVE_MINUTES = 300000;
    private static final int DOC_CONVERT_QUERY_TIME_ONE_MINUTES = 60000;
    private static final int DOC_CONVERT_QUERY_TIME_THREE_MINUTES = 180000;
    public static final int DOC_CONVERT_SUCCESS_PROGRESS_VALUE = 85;
    public static final int DOC_CONVERT_THREE_MINUTES_PROGRESS_VALUE = 55;
    public static final long DOC_CONVERT_TIME_DELAY = 500;
    public static final int DOC_CONVERT_UPLOAD_FILE_START_PROGRESS_VALUE = 5;
    public static final int DOC_PAGE_MAX_LIMIT = 1000;
    public static final long DOC_SIZE_MAX_LIMIT = 209715200;

    @NotNull
    public static final DocConvertConst INSTANCE = new DocConvertConst();
    public static final long NETWORK_CONVERT_SIZE_MAX_LIMIT = 524288000;
    public static final int PROGRESS_STATUS_CANCEL = 204;
    public static final int PROGRESS_STATUS_COMPLETE = 203;
    public static final int PROGRESS_STATUS_PROCESSING = 202;
    public static final int PROGRESS_STATUS_START = 200;
    public static final int PROGRESS_STATUS_WAITING = 201;
    public static final int QUERY_STATUS_FAILED = 2;
    public static final int QUERY_STATUS_PROCESSING = 3;
    public static final int QUERY_STATUS_SUCCESS = 1;
    public static final int QUERY_STATUS_WAITING = 0;

    /* renamed from: docConvertConfig$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy docConvertConfig;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DocConvertConfig>() { // from class: com.onyx.android.sdk.data.serverconvert.bean.DocConvertConst$docConvertConfig$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final DocConvertConfig invoke() {
                return (DocConvertConfig) ConfigLoader.INSTANCE.load(DocConvertConfig.class, "doc_convert_config");
            }
        });
        docConvertConfig = lazy;
    }

    private DocConvertConst() {
    }

    private final DocConvertConfig getDocConvertConfig() {
        return (DocConvertConfig) docConvertConfig.getValue();
    }

    @NotNull
    public final String getConvertServerConfig() {
        String convertServerName;
        DocConvertConfig docConvertConfig2 = getDocConvertConfig();
        return (docConvertConfig2 == null || (convertServerName = docConvertConfig2.getConvertServerName()) == null) ? "zh" : convertServerName;
    }

    public final int getFiveMinutesTimesCount() {
        return 600;
    }

    public final int getOneMinutesCount() {
        return 120;
    }

    public final int getThreeMinutesTimesCount() {
        return 360;
    }
}
