package com.onyx.android.sdk.data.common.data;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a\u0016\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001\u001a\u0006\u0010\u001e\u001a\u00020\u001f\u001a\u000e\u0010 \u001a\u00020!2\u0006\u0010\u001c\u001a\u00020\u0001\u001a\u000e\u0010\"\u001a\u00020#2\u0006\u0010\u001c\u001a\u00020\u0001\u001a\n\u0010$\u001a\u00020%*\u00020\u001f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006&"}, m61528d2 = {"CONFIG_KEY_MESSAGE_TEMPLATE_SET", "", "KEY_BUTTON", "KEY_BUTTON1", "KEY_BUTTON2", "KEY_CONTENT", "KEY_CONTENT1", "KEY_CONTENT2", "KEY_EFFECTIVE_DATE", "KEY_EXPIRE_DATE", "KEY_FUNC", "KEY_FUNC_NOTE_COUNT_REGISTER_GUIDE", "KEY_FUNC_NOTE_CREATE_JOIN_VIP", "KEY_FUNC_NOTE_QUOTA_RED_LINE", "KEY_FUNC_NOTE_QUOTA_USED_OUT", "KEY_FUNC_RECORD_QUOTA_RED_LINE", "KEY_FUNC_RECORD_QUOTA_USED_OUT", "KEY_NAVIGATE_TYPE", "KEY_NOTE_QUOTA", "KEY_RED_LINE", "KEY_STATISTIC_TYPE", "KEY_TITLE", "KEY_VERSION", "PLACEHOLDER_CONSUMED_QUOTA", "PLACEHOLDER_LEFT_QUOTA", "PLACEHOLDER_RECORD_LEFT_TIME", "PLACEHOLDER_RECORD_MAX_TIME", "getMessageTemplate", "functionKey", "messageKey", "getMessageTemplateSet", "Lcom/onyx/android/sdk/data/common/data/MessageTemplateSet;", "getParentTemplate", "Lcom/onyx/android/sdk/data/common/data/MessageTemplate;", "isMessageExpired", "", "save", "", "sdk-data_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMessageTemplate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageTemplate.kt\ncom/onyx/android/sdk/data/common/data/MessageTemplateKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,84:1\n215#2,2:85\n*S KotlinDebug\n*F\n+ 1 MessageTemplate.kt\ncom/onyx/android/sdk/data/common/data/MessageTemplateKt\n*L\n51#1:85,2\n*E\n"})
/* loaded from: classes7.dex */
public final class MessageTemplateKt {

    @NotNull
    public static final String CONFIG_KEY_MESSAGE_TEMPLATE_SET = "MessageTemplateSet";

    @NotNull
    public static final String KEY_BUTTON = "button";

    @NotNull
    public static final String KEY_BUTTON1 = "button1";

    @NotNull
    public static final String KEY_BUTTON2 = "button2";

    @NotNull
    public static final String KEY_CONTENT = "content";

    @NotNull
    public static final String KEY_CONTENT1 = "content1";

    @NotNull
    public static final String KEY_CONTENT2 = "content2";

    @NotNull
    public static final String KEY_EFFECTIVE_DATE = "effectiveDate";

    @NotNull
    public static final String KEY_EXPIRE_DATE = "expiredDate";

    @NotNull
    public static final String KEY_FUNC = "key";

    @NotNull
    public static final String KEY_FUNC_NOTE_COUNT_REGISTER_GUIDE = "noteCountRegisterGuide";

    @NotNull
    public static final String KEY_FUNC_NOTE_CREATE_JOIN_VIP = "joinVipBeforeCreateNote";

    @NotNull
    public static final String KEY_FUNC_NOTE_QUOTA_RED_LINE = "joinVipWithNotebookQuota";

    @NotNull
    public static final String KEY_FUNC_NOTE_QUOTA_USED_OUT = "joinVipWithNotebookNoneQuota";

    @NotNull
    public static final String KEY_FUNC_RECORD_QUOTA_RED_LINE = "joinVipWithRecordQuotaRedLine";

    @NotNull
    public static final String KEY_FUNC_RECORD_QUOTA_USED_OUT = "joinVipWithRecordQuotaUsedOut";

    @NotNull
    public static final String KEY_NAVIGATE_TYPE = "navType1";

    @NotNull
    public static final String KEY_NOTE_QUOTA = "noteQuota";

    @NotNull
    public static final String KEY_RED_LINE = "redLine";

    @NotNull
    public static final String KEY_STATISTIC_TYPE = "statisticType";

    @NotNull
    public static final String KEY_TITLE = "title";

    @NotNull
    public static final String KEY_VERSION = "version";

    @NotNull
    public static final String PLACEHOLDER_CONSUMED_QUOTA = "${usedQuota}";

    @NotNull
    public static final String PLACEHOLDER_LEFT_QUOTA = "${quota}";

    @NotNull
    public static final String PLACEHOLDER_RECORD_LEFT_TIME = "${quota}";

    @NotNull
    public static final String PLACEHOLDER_RECORD_MAX_TIME = "${maxQuota}";

    @NotNull
    public static final String getMessageTemplate(@NotNull String functionKey, @NotNull String messageKey) {
        Intrinsics.checkNotNullParameter(functionKey, "functionKey");
        Intrinsics.checkNotNullParameter(messageKey, "messageKey");
        MessageTemplate messageTemplate = (MessageTemplate) getMessageTemplateSet().get((Object) functionKey);
        String str = messageTemplate != null ? (String) messageTemplate.get((Object) messageKey) : null;
        return str == null ? "" : str;
    }

    @NotNull
    public static final MessageTemplateSet getMessageTemplateSet() {
        MessageTemplateSet messageTemplateSet = new MessageTemplateSet();
        Map map = (Map) JSONUtils.INSTANCE.parseObject(MMKVUtils.INSTANCE.get().getString(CONFIG_KEY_MESSAGE_TEMPLATE_SET, "{}"), new TypeReference<Map<String, ? extends MessageTemplate>>() { // from class: com.onyx.android.sdk.data.common.data.MessageTemplateKt$getMessageTemplateSet$type$1
        });
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                messageTemplateSet.put((String) entry.getKey(), (MessageTemplate) entry.getValue());
            }
        }
        return messageTemplateSet;
    }

    @NotNull
    public static final MessageTemplate getParentTemplate(@NotNull String functionKey) {
        Intrinsics.checkNotNullParameter(functionKey, "functionKey");
        MessageTemplate messageTemplate = (MessageTemplate) getMessageTemplateSet().get((Object) functionKey);
        return messageTemplate == null ? new MessageTemplate() : messageTemplate;
    }

    public static final boolean isMessageExpired(@NotNull String functionKey) {
        Intrinsics.checkNotNullParameter(functionKey, "functionKey");
        long currentTimeMillis = System.currentTimeMillis();
        String messageTemplate = getMessageTemplate(functionKey, KEY_EFFECTIVE_DATE);
        if ((messageTemplate.length() > 0) && currentTimeMillis < DateTimeUtil.rfcTimeToLong$default(DateTimeUtil.INSTANCE, messageTemplate, false, 2, null)) {
            return true;
        }
        String messageTemplate2 = getMessageTemplate(functionKey, KEY_EXPIRE_DATE);
        return (messageTemplate2.length() > 0) && currentTimeMillis > DateTimeUtil.rfcTimeToLong$default(DateTimeUtil.INSTANCE, messageTemplate2, false, 2, null);
    }

    public static final void save(@NotNull MessageTemplateSet messageTemplateSet) {
        Intrinsics.checkNotNullParameter(messageTemplateSet, "<this>");
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        mMKVUtils.putObject(mMKVUtils.get(), CONFIG_KEY_MESSAGE_TEMPLATE_SET, messageTemplateSet);
    }
}
