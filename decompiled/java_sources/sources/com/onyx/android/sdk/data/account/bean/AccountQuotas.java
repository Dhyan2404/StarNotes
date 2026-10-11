package com.onyx.android.sdk.data.account.bean;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0004J\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004J\u001c\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001a*\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountQuotas;", "", "()V", "KEY_QUOTAS_AUDIO_RECORD", "", "KEY_QUOTAS_NLP", "KEY_QUOTAS_NOTE_CREATE", "KEY_QUOTAS_PAGE_OCR", "KEY_QUOTAS_SUB_BAIDU_TRANSLATE", "KEY_QUOTAS_SUB_BING_TRANSLATE", "KEY_QUOTAS_SUB_FEISHU_NLP", "KEY_QUOTAS_SUB_FEISHU_PAGE_OCR", "KEY_QUOTAS_SUB_FEISHU_TRANSLATE", "KEY_QUOTAS_SUB_OSS_AUDIO_RECORD", "KEY_QUOTAS_SUB_PAGE_OCR", "KEY_QUOTAS_TRANSLATE", "SUB_KEY_QUOTAS_AUDIO_RECORD", "SUB_KEY_QUOTAS_NOTE_CREATE", "getAccountQuotaItem", "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;", "Lcom/onyx/android/sdk/data/account/bean/AccountQuota;", "category", "getAccountQuotaSubItem", "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;", "subCategory", "getAccountQuotaSubItems", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountQuotas {

    @NotNull
    public static final AccountQuotas INSTANCE = new AccountQuotas();

    @NotNull
    public static final String KEY_QUOTAS_AUDIO_RECORD = "audioRecord";

    @NotNull
    public static final String KEY_QUOTAS_NLP = "NLP";

    @NotNull
    public static final String KEY_QUOTAS_NOTE_CREATE = "notebook";

    @NotNull
    public static final String KEY_QUOTAS_PAGE_OCR = "pageOcr";

    @NotNull
    public static final String KEY_QUOTAS_SUB_BAIDU_TRANSLATE = "baiduTranslate";

    @NotNull
    public static final String KEY_QUOTAS_SUB_BING_TRANSLATE = "bingTranslate";

    @NotNull
    public static final String KEY_QUOTAS_SUB_FEISHU_NLP = "feishuNLP";

    @NotNull
    public static final String KEY_QUOTAS_SUB_FEISHU_PAGE_OCR = "feishuPageOcr";

    @NotNull
    public static final String KEY_QUOTAS_SUB_FEISHU_TRANSLATE = "feishuTranslate";

    @NotNull
    public static final String KEY_QUOTAS_SUB_OSS_AUDIO_RECORD = "ossAudioRecord";

    @NotNull
    public static final String KEY_QUOTAS_SUB_PAGE_OCR = "pageOcr";

    @NotNull
    public static final String KEY_QUOTAS_TRANSLATE = "translate";

    @NotNull
    public static final String SUB_KEY_QUOTAS_AUDIO_RECORD = "normalAudioRecord";

    @NotNull
    public static final String SUB_KEY_QUOTAS_NOTE_CREATE = "normalNotebook";

    private AccountQuotas() {
    }

    @Nullable
    public final AccountQuotaItem getAccountQuotaItem(@Nullable AccountQuota accountQuota, @NotNull String category) {
        Intrinsics.checkNotNullParameter(category, "category");
        if (accountQuota == null) {
            return null;
        }
        return accountQuota.getQuotaMap().get(category);
    }

    @Nullable
    public final AccountQuotaSubItem getAccountQuotaSubItem(@Nullable AccountQuota accountQuota, @NotNull String category, @NotNull String subCategory) {
        AccountQuotaItem accountQuotaItem;
        Map<String, AccountQuotaSubItem> subItemMap;
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(subCategory, "subCategory");
        if (accountQuota == null || (accountQuotaItem = getAccountQuotaItem(accountQuota, category)) == null || (subItemMap = accountQuotaItem.getSubItemMap()) == null) {
            return null;
        }
        return subItemMap.get(subCategory);
    }

    @Nullable
    public final List<AccountQuotaSubItem> getAccountQuotaSubItems(@Nullable AccountQuota accountQuota, @NotNull String category) {
        AccountQuotaItem accountQuotaItem;
        Map<String, AccountQuotaSubItem> subItemMap;
        Collection<AccountQuotaSubItem> values;
        List<AccountQuotaSubItem> list;
        Intrinsics.checkNotNullParameter(category, "category");
        if (accountQuota == null || (accountQuotaItem = getAccountQuotaItem(accountQuota, category)) == null || (subItemMap = accountQuotaItem.getSubItemMap()) == null || (values = subItemMap.values()) == null) {
            return null;
        }
        list = CollectionsKt___CollectionsKt.toList(values);
        return list;
    }
}
