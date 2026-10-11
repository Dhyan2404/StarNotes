package com.onyx.android.sdk.data.account.bean;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\t\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"NORMAL_ROLE_FLAG", "", "VIP_LIST", "", "", "getVIP_LIST", "()Ljava/util/List;", "VIP_ONYX", "VIP_ONYX_FLAG", "VIP_PERMANENT", "VIP_PERMANENT_FLAG", "VIP_STAR", "VIP_STAR_FLAG", "sdk-data_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UserRoleItemKt {
    public static final int NORMAL_ROLE_FLAG = 1;

    @NotNull
    private static final List<String> VIP_LIST;

    @NotNull
    public static final String VIP_ONYX = "galaxyOnyxMember";
    public static final int VIP_ONYX_FLAG = 2;

    @NotNull
    public static final String VIP_PERMANENT = "galaxyStarNotePermanentMember";
    public static final int VIP_PERMANENT_FLAG = 4;

    @NotNull
    public static final String VIP_STAR = "galaxyStarNoteMember";
    public static final int VIP_STAR_FLAG = 3;

    static {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{VIP_ONYX, VIP_PERMANENT, VIP_STAR});
        VIP_LIST = listOf;
    }

    @NotNull
    public static final List<String> getVIP_LIST() {
        return VIP_LIST;
    }
}
