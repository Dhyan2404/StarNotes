package com.onyx.android.sdk.data.common.data.template;

import com.onyx.android.sdk.data.common.cloud.Constant;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/template/OfficialCoverConst;", "", "()V", "CATEGORY_SIMPLE", "", "COVER_SIMPLE_TITLE_TAG_COLOR_INDEX", "", "COVER_SIMPLE_TITLE_TAG_TITLE", Constant.MAP_TAG, "", "getMap", "()Ljava/util/Map;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OfficialCoverConst {

    @NotNull
    public static final String CATEGORY_SIMPLE = "SIMPLE";
    private static final int COVER_SIMPLE_TITLE_TAG_COLOR_INDEX = 1;

    @NotNull
    private static final String COVER_SIMPLE_TITLE_TAG_TITLE = "cover_simple_title_tag";

    @NotNull
    public static final OfficialCoverConst INSTANCE = new OfficialCoverConst();

    @NotNull
    private static final Map<String, Integer> map;

    static {
        Map<String, Integer> mapOf;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(COVER_SIMPLE_TITLE_TAG_TITLE, 1));
        map = mapOf;
    }

    private OfficialCoverConst() {
    }

    @NotNull
    public final Map<String, Integer> getMap() {
        return map;
    }
}
