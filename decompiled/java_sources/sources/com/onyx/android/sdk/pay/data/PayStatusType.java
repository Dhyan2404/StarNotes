package com.onyx.android.sdk.pay.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/PayStatusType;", "", "(Ljava/lang/String;I)V", "LOADING", "LOAD_FAIL", "OTHER_PAYING", "PAYING", "CHECKING", "PAY_SUCCESS", "PAY_LATER_REMIND", "PAY_FAIL", "PAY_FAIL_WITHOUT_RETRY", "ORDER_CANCEL", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PayStatusType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PayStatusType[] $VALUES;
    public static final PayStatusType LOADING = new PayStatusType("LOADING", 0);
    public static final PayStatusType LOAD_FAIL = new PayStatusType("LOAD_FAIL", 1);
    public static final PayStatusType OTHER_PAYING = new PayStatusType("OTHER_PAYING", 2);
    public static final PayStatusType PAYING = new PayStatusType("PAYING", 3);
    public static final PayStatusType CHECKING = new PayStatusType("CHECKING", 4);
    public static final PayStatusType PAY_SUCCESS = new PayStatusType("PAY_SUCCESS", 5);
    public static final PayStatusType PAY_LATER_REMIND = new PayStatusType("PAY_LATER_REMIND", 6);
    public static final PayStatusType PAY_FAIL = new PayStatusType("PAY_FAIL", 7);
    public static final PayStatusType PAY_FAIL_WITHOUT_RETRY = new PayStatusType("PAY_FAIL_WITHOUT_RETRY", 8);
    public static final PayStatusType ORDER_CANCEL = new PayStatusType("ORDER_CANCEL", 9);

    private static final /* synthetic */ PayStatusType[] $values() {
        return new PayStatusType[]{LOADING, LOAD_FAIL, OTHER_PAYING, PAYING, CHECKING, PAY_SUCCESS, PAY_LATER_REMIND, PAY_FAIL, PAY_FAIL_WITHOUT_RETRY, ORDER_CANCEL};
    }

    static {
        PayStatusType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private PayStatusType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<PayStatusType> getEntries() {
        return $ENTRIES;
    }

    public static PayStatusType valueOf(String str) {
        return (PayStatusType) Enum.valueOf(PayStatusType.class, str);
    }

    public static PayStatusType[] values() {
        return (PayStatusType[]) $VALUES.clone();
    }
}
