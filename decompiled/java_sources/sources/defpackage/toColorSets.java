package defpackage;

import android.graphics.Color;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u001a\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, m61528d2 = {"toColorSets", "", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "LColorSetQueryResponse;", "isPreset", "", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nColorResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorResponse.kt\nColorResponseKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,39:1\n1549#2:40\n1620#2,2:41\n1549#2:43\n1620#2,2:44\n1622#2:63\n1622#2:64\n125#3,17:46\n*S KotlinDebug\n*F\n+ 1 ColorResponse.kt\nColorResponseKt\n*L\n27#1:40\n27#1:41,2\n31#1:43\n31#1:44,2\n31#1:63\n27#1:64\n34#1:46,17\n*E\n"})
/* renamed from: ColorResponseKt, reason: from Kotlin metadata */
/* loaded from: classes3.dex */
public final class toColorSets {
    @NotNull
    public static final List<ColorSetModel> toColorSets(@NotNull ColorSetQueryResponse colorSetQueryResponse, boolean z) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List<Integer> mutableList;
        Intrinsics.checkNotNullParameter(colorSetQueryResponse, "<this>");
        ColorSetQueryResult data = colorSetQueryResponse.getData();
        Intrinsics.checkNotNull(data);
        ColorSetResourceList resources = data.getResources();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(resources, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ColorSetResource colorSetResource : resources) {
            ColorSetModel colorSetModel = new ColorSetModel();
            colorSetModel.setUniqueId(colorSetResource.getUniqueId());
            colorSetModel.setName(colorSetResource.getName());
            List<ColorItem> colors = colorSetResource.getColors();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(colors, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (ColorItem colorItem : colors) {
                int parseColor = Color.parseColor(colorItem.getColor());
                arrayList2.add(Integer.valueOf(Color.argb((int) (255 * colorItem.getCom.onegravity.colorpicker.OpacityBar.J java.lang.String()), (parseColor >> 16) & 255, (parseColor >> 8) & 255, parseColor & 255)));
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
            colorSetModel.setColors(mutableList);
            colorSetModel.setPreset(z);
            arrayList.add(colorSetModel);
        }
        return arrayList;
    }

    public static /* synthetic */ List toColorSets$default(ColorSetQueryResponse colorSetQueryResponse, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return toColorSets(colorSetQueryResponse, z);
    }
}
