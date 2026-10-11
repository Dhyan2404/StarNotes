package com.onyx.galaxy.note.account.data;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R'\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;", "", "", "codeRes", "", "a", "", "Lkotlin/Lazy;", "getPhoneLengthByAreaCodeMap", "()Ljava/util/Map;", "phoneLengthByAreaCodeMap", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AreaCodeConstant {

    @NotNull
    public static final AreaCodeConstant INSTANCE = new AreaCodeConstant();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy phoneLengthByAreaCodeMap;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Map<String, Integer>>() { // from class: com.onyx.galaxy.note.account.data.AreaCodeConstant$phoneLengthByAreaCodeMap$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Map<String, Integer> invoke() {
                String m41808a;
                String m41808a2;
                String m41808a3;
                String m41808a4;
                String m41808a5;
                String m41808a6;
                String m41808a7;
                String m41808a8;
                String m41808a9;
                String m41808a10;
                String m41808a11;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                AreaCodeConstant areaCodeConstant = AreaCodeConstant.INSTANCE;
                m41808a = areaCodeConstant.m41808a(C10651R.integer.area_code_china_mainland);
                ResManager resManager = ResManager.INSTANCE;
                linkedHashMap.put(m41808a, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_china_mainland)));
                m41808a2 = areaCodeConstant.m41808a(C10651R.integer.area_code_hong_kong);
                linkedHashMap.put(m41808a2, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_hong_kong)));
                m41808a3 = areaCodeConstant.m41808a(C10651R.integer.area_code_macao);
                linkedHashMap.put(m41808a3, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_macao)));
                m41808a4 = areaCodeConstant.m41808a(C10651R.integer.area_code_taiwan);
                linkedHashMap.put(m41808a4, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_taiwan)));
                m41808a5 = areaCodeConstant.m41808a(C10651R.integer.area_code_japan);
                linkedHashMap.put(m41808a5, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_japan)));
                m41808a6 = areaCodeConstant.m41808a(C10651R.integer.area_code_korea);
                linkedHashMap.put(m41808a6, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_korea)));
                m41808a7 = areaCodeConstant.m41808a(C10651R.integer.area_code_usa_or_canada);
                linkedHashMap.put(m41808a7, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_usa_or_canada)));
                m41808a8 = areaCodeConstant.m41808a(C10651R.integer.area_code_mexico);
                linkedHashMap.put(m41808a8, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_mexico)));
                m41808a9 = areaCodeConstant.m41808a(C10651R.integer.area_code_brazil);
                linkedHashMap.put(m41808a9, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_brazil)));
                m41808a10 = areaCodeConstant.m41808a(C10651R.integer.area_code_germany);
                linkedHashMap.put(m41808a10, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_germany)));
                m41808a11 = areaCodeConstant.m41808a(C10651R.integer.area_code_italy);
                linkedHashMap.put(m41808a11, Integer.valueOf(resManager.getInteger(C10651R.integer.phone_length_limit_italy)));
                return linkedHashMap;
            }
        });
        phoneLengthByAreaCodeMap = lazy;
    }

    /* renamed from: a */
    public final String m41808a(int codeRes) {
        return String.valueOf(ResManager.INSTANCE.getInteger(codeRes));
    }

    @NotNull
    public final Map<String, Integer> getPhoneLengthByAreaCodeMap() {
        return (Map) phoneLengthByAreaCodeMap.getValue();
    }
}
