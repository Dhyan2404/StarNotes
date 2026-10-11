package com.onyx.android.sdk.replicator.colorset.data;

import android.graphics.Color;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.StringList;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.utils.RawResourceUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.C7594R;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, m61528d2 = {"loadDefaultColorSets", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;", "loadDefaultColors", "Lcom/onyx/android/sdk/base/extension/IntList;", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nColorSetModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorSetModel.kt\ncom/onyx/android/sdk/replicator/colorset/data/ColorSetModelKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1549#2:43\n1620#2,3:44\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 ColorSetModel.kt\ncom/onyx/android/sdk/replicator/colorset/data/ColorSetModelKt\n*L\n31#1:43\n31#1:44,3\n37#1:47,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ColorSetModelKt {
    @NotNull
    public static final ColorSetList loadDefaultColorSets() {
        Object parseObject = JSONUtils.INSTANCE.parseObject(RawResourceUtil.INSTANCE.contentOfRawResource(ResManager.INSTANCE.getAppContext(), C7594R.raw.default_color_sets), (Class<Object>) ColorSetList.class);
        Intrinsics.checkNotNull(parseObject);
        ColorSetList colorSetList = (ColorSetList) parseObject;
        for (ColorSetModel colorSetModel : colorSetList) {
            String stringSafely = ResManager.INSTANCE.getStringSafely(colorSetModel.getNameRes());
            if (stringSafely == null) {
                stringSafely = "";
            }
            colorSetModel.setName(stringSafely);
            colorSetModel.setPreset(true);
        }
        return colorSetList;
    }

    @NotNull
    public static final IntList loadDefaultColors() {
        int collectionSizeOrDefault;
        Object parseObject = JSONUtils.INSTANCE.parseObject(RawResourceUtil.INSTANCE.contentOfRawResource(ResManager.INSTANCE.getAppContext(), C7594R.raw.default_colors), (Class<Object>) StringList.class);
        Intrinsics.checkNotNull(parseObject);
        StringList stringList = (StringList) parseObject;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(stringList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<String> it2 = stringList.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(Color.parseColor(it2.next())));
        }
        return TypeExtKt.toIntList(arrayList);
    }
}
