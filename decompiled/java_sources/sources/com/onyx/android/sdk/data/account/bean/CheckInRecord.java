package com.onyx.android.sdk.data.account.bean;

import com.onyx.android.sdk.data.account.data.BusinessCode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;", "", "()V", "businessCode", "", "getBusinessCode", "()Ljava/lang/String;", "checkInTimes", "", "", "getCheckInTimes", "()Ljava/util/List;", "lastCheckInDay", "getLastCheckInDay", "setLastCheckInDay", "(Ljava/lang/String;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CheckInRecord {

    @NotNull
    private final String businessCode = BusinessCode.CHECK_IN;

    @NotNull
    private final List<Long> checkInTimes = new ArrayList();

    @NotNull
    private String lastCheckInDay = "";

    @NotNull
    public final String getBusinessCode() {
        return this.businessCode;
    }

    @NotNull
    public final List<Long> getCheckInTimes() {
        return this.checkInTimes;
    }

    @NotNull
    public final String getLastCheckInDay() {
        return this.lastCheckInDay;
    }

    public final void setLastCheckInDay(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lastCheckInDay = str;
    }
}
