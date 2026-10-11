package com.onyx.galaxy.note.account.data;

import androidx.annotation.StringRes;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\b\u0002\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/data/PolicyType;", "", "titleRes", "", "urlRes", "(Ljava/lang/String;III)V", "getTitleRes", "()I", "getUrlRes", "getUrl", "", "SERVICE", "PRIVACY", "INFORMATION", "MEMBER_PAYMENT_AGREEMENT", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class PolicyType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PolicyType[] $VALUES;
    private final int titleRes;
    private final int urlRes;
    public static final PolicyType SERVICE = new PolicyType("SERVICE", 0, C10651R.string.dialog_policy_service_title, C10651R.string.star_note_service_url);
    public static final PolicyType PRIVACY = new PolicyType("PRIVACY", 1, C10651R.string.dialog_policy_privacy_title, C10651R.string.star_note_policy_url);
    public static final PolicyType INFORMATION = new PolicyType("INFORMATION", 2, C10651R.string.dialog_policy_information_title, C10651R.string.star_note_information_url);
    public static final PolicyType MEMBER_PAYMENT_AGREEMENT = new PolicyType("MEMBER_PAYMENT_AGREEMENT", 3, C10651R.string.dialog_policy_member_charge_title, C10651R.string.star_note_member_charge_url);

    private static final /* synthetic */ PolicyType[] $values() {
        return new PolicyType[]{SERVICE, PRIVACY, INFORMATION, MEMBER_PAYMENT_AGREEMENT};
    }

    static {
        PolicyType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private PolicyType(@StringRes String str, @StringRes int i, int i2, int i3) {
        this.titleRes = i2;
        this.urlRes = i3;
    }

    @NotNull
    public static EnumEntries<PolicyType> getEntries() {
        return $ENTRIES;
    }

    public static PolicyType valueOf(String str) {
        return (PolicyType) Enum.valueOf(PolicyType.class, str);
    }

    public static PolicyType[] values() {
        return (PolicyType[]) $VALUES.clone();
    }

    public final int getTitleRes() {
        return this.titleRes;
    }

    @NotNull
    public final String getUrl() {
        return ResManager.INSTANCE.getStringSafely(this.urlRes);
    }

    public final int getUrlRes() {
        return this.urlRes;
    }
}
