package com.onyx.android.sdk.replicator.colorset.core;

import com.couchbase.lite.Collection;
import com.couchbase.lite.Expression;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.C7594R;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 %2\u00020\u0001:\u0001%B\u000f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0005J\u0014\u0010\u000b\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fJ+\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00102\u001b\b\u0002\u0010\u0014\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u00010\u0012¢\u0006\u0002\b\u0013J\u0014\u0010\u0018\u001a\u00020\b2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0002J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u0005H\u0002J\u0010\u0010\u001e\u001a\n \u001d*\u0004\u0018\u00010\u00100\u0010H\u0002J\b\u0010 \u001a\u00020\u001fH\u0002¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "loadColorSetList", "model", "", "saveColorSet", "models", "saveColorSetList", "Lcom/couchbase/lite/Expression;", "expression", "", "queryCount", "", "name", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", BreakpointSQLiteHelper.f39283i, "", "hasDuplicatedName", "colorSets", "syncPresetColorSets", "cbQueryArgs", "deleteColorSetList", "colorSetModel", "c", "kotlin.jvm.PlatformType", "b", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nColorSetProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorSetProvider.kt\ncom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n48#2,5:101\n1855#3,2:106\n*S KotlinDebug\n*F\n+ 1 ColorSetProvider.kt\ncom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider\n*L\n41#1:101,5\n54#1:106,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ColorSetProvider extends BaseCouchProvider {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a */
    @NotNull
    public static final Lazy<Integer> f45302a;

    /* renamed from: b */
    @NotNull
    public static final Lazy<Integer> f45303b;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rR\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\n\u0010\u0006¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;", "", "()V", "MAX_COLOR_SET_COUNT", "", "getMAX_COLOR_SET_COUNT", "()I", "MAX_COLOR_SET_COUNT$delegate", "Lkotlin/Lazy;", "MAX_COLOR_SET_NAME_LENGTH", "getMAX_COLOR_SET_NAME_LENGTH", "MAX_COLOR_SET_NAME_LENGTH$delegate", "generateCommonColorSetArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CBQueryArgs generateCommonColorSetArgs() {
            return new CBQueryArgs();
        }

        public final int getMAX_COLOR_SET_COUNT() {
            return ((Number) ColorSetProvider.f45302a.getValue()).intValue();
        }

        public final int getMAX_COLOR_SET_NAME_LENGTH() {
            return ((Number) ColorSetProvider.f45303b.getValue()).intValue();
        }

        public Companion() {
        }
    }

    static {
        Lazy<Integer> lazy;
        Lazy<Integer> lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider$Companion$MAX_COLOR_SET_COUNT$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getInteger(C7594R.integer.max_color_set_count));
            }
        });
        f45302a = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider$Companion$MAX_COLOR_SET_NAME_LENGTH$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getInteger(C7594R.integer.max_color_set_name_length));
            }
        });
        f45303b = lazy2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorSetProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean hasDuplicatedName$default(ColorSetProvider colorSetProvider, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return colorSetProvider.hasDuplicatedName(str, function1);
    }

    /* renamed from: a */
    public final Collection m34977a() {
        String m34978b = m34978b();
        Intrinsics.checkNotNullExpressionValue(m34978b, "getColorSetCollectionName(...)");
        return ensureCollection(m34978b);
    }

    /* renamed from: b */
    public final String m34978b() {
        return ColorSetModel.class.getSimpleName();
    }

    /* renamed from: c */
    public final void m34979c(ColorSetModel colorSetModel) {
        colorSetModel.setUser(getCouchHolder().getUserId());
        colorSetModel.setDbId(getCouchHolder().getDbName());
        colorSetModel.ensureUniqueIdExist();
        colorSetModel.beforeSave();
    }

    public final long deleteColorSetList(@NotNull CBQueryArgs cbQueryArgs) {
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        return CouchCollections.INSTANCE.deleteByExpression(m34977a(), getDatabase(), cbQueryArgs);
    }

    public final boolean hasDuplicatedName(@NotNull String name, @Nullable Function1<? super CBQueryArgs, Unit> block) {
        Intrinsics.checkNotNullParameter(name, "name");
        CBQueryArgs andWith = INSTANCE.generateCommonColorSetArgs().andWith(CouchUtils.INSTANCE.equalExpression("name", name));
        if (block != null) {
            block.invoke(andWith);
        }
        Expression whereEx = andWith.getWhereEx();
        Intrinsics.checkNotNull(whereEx);
        return queryCount(whereEx) > 0;
    }

    @NotNull
    public final List<ColorSetModel> loadColorSetList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m34977a = m34977a();
        if (m34977a == null || (str = m34977a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m34977a, queryArgs), ColorSetModel.class, str);
    }

    public final long queryCount(@NotNull Expression expression) {
        Intrinsics.checkNotNullParameter(expression, "expression");
        return CouchCollections.INSTANCE.queryDocumentCount(m34977a(), expression);
    }

    public final void saveColorSet(@NotNull ColorSetModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        m34979c(model);
        CouchCollections.INSTANCE.saveDocument(m34977a(), (Collection) model);
    }

    public final void saveColorSetList(@NotNull List<ColorSetModel> models) {
        Intrinsics.checkNotNullParameter(models, "models");
        if (CollectionKt.isNullOrEmpty(models)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (ColorSetModel colorSetModel : models) {
            m34979c(colorSetModel);
            CollectionKt.safeAdd(arrayList, CouchUtils.INSTANCE.toMutableDocument(colorSetModel));
        }
        CouchCollections.INSTANCE.saveDocumentList(m34977a(), getDatabase(), arrayList);
    }

    public final void syncPresetColorSets(@NotNull List<ColorSetModel> colorSets) {
        Intrinsics.checkNotNullParameter(colorSets, "colorSets");
        CBQueryArgs generateCommonColorSetArgs = INSTANCE.generateCommonColorSetArgs();
        generateCommonColorSetArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_PRESET, Boolean.TRUE));
        deleteColorSetList(generateCommonColorSetArgs);
        saveColorSetList(colorSets);
    }
}
