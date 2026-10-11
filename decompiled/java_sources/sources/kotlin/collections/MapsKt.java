package kotlin.collections;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"kotlin/collections/MapsKt__MapWithDefaultKt", "kotlin/collections/MapsKt__MapsJVMKt", "kotlin/collections/MapsKt__MapsKt", "kotlin/collections/MapsKt___MapsJvmKt", "kotlin/collections/MapsKt___MapsKt"}, m61529k = 4, m61530mv = {1, 9, 0}, m61532xi = 49)
/* loaded from: classes7.dex */
public final class MapsKt extends MapsKt___MapsKt {
    private MapsKt() {
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Sequence asSequence(@NotNull Map map) {
        return MapsKt___MapsKt.asSequence(map);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Map emptyMap() {
        return MapsKt__MapsKt.emptyMap();
    }

    @PublishedApi
    public static /* bridge */ /* synthetic */ int mapCapacity(int i) {
        return MapsKt__MapsJVMKt.mapCapacity(i);
    }

    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    @NotNull
    public static /* bridge */ /* synthetic */ Map toMutableMap(@NotNull Map map) {
        return MapsKt__MapsKt.toMutableMap(map);
    }

    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    @NotNull
    public static /* bridge */ /* synthetic */ Map toMap(@NotNull Map map) {
        return MapsKt__MapsKt.toMap(map);
    }
}
