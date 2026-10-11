package com.onyx.android.sdk.data.account.utils;

import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountQuotaSubItem;
import com.onyx.android.sdk.data.account.bean.AccountQuotas;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0004¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/utils/QuotaManager;", "", "()V", "getAudioRecordQuota", "", "getNoteCreateQuota", "useDefault", "", "getRegisterGuideQuota", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class QuotaManager {

    @NotNull
    public static final QuotaManager INSTANCE = new QuotaManager();

    private QuotaManager() {
    }

    public static /* synthetic */ long getNoteCreateQuota$default(QuotaManager quotaManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return quotaManager.getNoteCreateQuota(z);
    }

    public final long getAudioRecordQuota() {
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        AccountQuotaSubItem accountQuotaSubItem = AccountQuotas.INSTANCE.getAccountQuotaSubItem(onyxAccount != null ? onyxAccount.getAccountQuota() : null, AccountQuotas.KEY_QUOTAS_AUDIO_RECORD, AccountQuotas.SUB_KEY_QUOTAS_AUDIO_RECORD);
        if (accountQuotaSubItem != null) {
            return DateTimeUtil.INSTANCE.minuteToMs(accountQuotaSubItem.getTotalQuota());
        }
        return -1L;
    }

    public final long getNoteCreateQuota(boolean useDefault) {
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        AccountQuotaSubItem accountQuotaSubItem = AccountQuotas.INSTANCE.getAccountQuotaSubItem(onyxAccount != null ? onyxAccount.getAccountQuota() : null, "notebook", AccountQuotas.SUB_KEY_QUOTAS_NOTE_CREATE);
        long totalQuota = accountQuotaSubItem != null ? accountQuotaSubItem.getTotalQuota() : -1L;
        if (useDefault || totalQuota >= 0) {
            return ((Number) MathUtils.INSTANCE.atLeast(Long.valueOf(totalQuota), Long.valueOf(ResManager.INSTANCE.getLong(C7373R.integer.note_quota_min)))).longValue();
        }
        return -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
    
        r3 = kotlin.text.StringsKt__StringNumberConversionsKt.toLongOrNull(com.onyx.android.sdk.data.common.data.MessageTemplateKt.getMessageTemplate(com.onyx.android.sdk.data.common.data.MessageTemplateKt.KEY_FUNC_NOTE_COUNT_REGISTER_GUIDE, com.onyx.android.sdk.data.common.data.MessageTemplateKt.KEY_NOTE_QUOTA));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long getRegisterGuideQuota() {
        /*
            r3 = this;
            java.lang.String r3 = "noteCountRegisterGuide"
            boolean r0 = com.onyx.android.sdk.data.common.data.MessageTemplateKt.isMessageExpired(r3)
            r1 = -1
            if (r0 == 0) goto Lb
            return r1
        Lb:
            java.lang.String r0 = "noteQuota"
            java.lang.String r3 = com.onyx.android.sdk.data.common.data.MessageTemplateKt.getMessageTemplate(r3, r0)
            java.lang.Long r3 = kotlin.text.StringsKt.toLongOrNull(r3)
            if (r3 == 0) goto L1b
            long r1 = r3.longValue()
        L1b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.account.utils.QuotaManager.getRegisterGuideQuota():long");
    }
}
