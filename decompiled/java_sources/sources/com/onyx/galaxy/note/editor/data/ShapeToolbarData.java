package com.onyx.galaxy.note.editor.data;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.galaxy.note.utils.ShapeToolUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0002J\u0013\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\r\u001a\u00020\fH\u0016R(\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0011\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;", "", "", "distinct", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", SessionDescription.f26443s, "", "enableTool", "disableTool", "resetConfig", Constants.ATTRVAL_OTHER, "equals", "", "hashCode", "", "", "a", "Ljava/util/List;", "getEnabledList", "()Ljava/util/List;", "setEnabledList", "(Ljava/util/List;)V", "enabledList", "b", "getDisabledList", "setDisabledList", "disabledList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShapeToolbarData {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final Lazy<ShapeToolbarData> f58558c;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<String> enabledList = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<String> disabledList = new ArrayList();

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;", "", "()V", "DEFAULT_SHAPE_TOOLBAR_DATA", "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;", "getDEFAULT_SHAPE_TOOLBAR_DATA", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;", "DEFAULT_SHAPE_TOOLBAR_DATA$delegate", "Lkotlin/Lazy;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ShapeToolbarData getDEFAULT_SHAPE_TOOLBAR_DATA() {
            return (ShapeToolbarData) ShapeToolbarData.f58558c.getValue();
        }

        public Companion() {
        }
    }

    static {
        Lazy<ShapeToolbarData> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ShapeToolbarData>() { // from class: com.onyx.galaxy.note.editor.data.ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ShapeToolbarData invoke() {
                int collectionSizeOrDefault;
                List<String> mutableList;
                ShapeToolbarData shapeToolbarData = new ShapeToolbarData();
                List<ShapeToolType> defaultValues = ShapeToolUtils.INSTANCE.getDefaultValues();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(defaultValues, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it2 = defaultValues.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((ShapeToolType) it2.next()).name());
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                shapeToolbarData.setEnabledList(mutableList);
                return shapeToolbarData;
            }
        });
        f58558c = lazy;
    }

    public final boolean disableTool(@NotNull final ShapeToolType tool) {
        Intrinsics.checkNotNullParameter(tool, "tool");
        if (!CollectionKt.contains(this.enabledList, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.editor.data.ShapeToolbarData$disableTool$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2, ShapeToolType.this.name()));
            }
        })) {
            return false;
        }
        this.enabledList.remove(tool.name());
        this.disabledList.add(tool.name());
        return true;
    }

    public final void distinct() {
        Set mutableSet;
        Set mutableSet2;
        List<String> mutableList;
        List<String> mutableList2;
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(this.enabledList);
        mutableSet2 = CollectionsKt___CollectionsKt.toMutableSet(this.disabledList);
        mutableSet2.removeAll(mutableSet);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) mutableSet);
        this.enabledList = mutableList;
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) mutableSet2);
        this.disabledList = mutableList2;
    }

    public final boolean enableTool(@NotNull final ShapeToolType tool) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(tool, "tool");
        if (!CollectionKt.contains(this.disabledList, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.editor.data.ShapeToolbarData$enableTool$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2, ShapeToolType.this.name()));
            }
        })) {
            return false;
        }
        this.disabledList.remove(tool.name());
        List<String> list = this.enabledList;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        list.add(lastIndex, tool.name());
        return true;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShapeToolbarData)) {
            return false;
        }
        ShapeToolbarData shapeToolbarData = (ShapeToolbarData) other;
        return Intrinsics.areEqual(this.enabledList, shapeToolbarData.enabledList) && Intrinsics.areEqual(this.disabledList, shapeToolbarData.disabledList);
    }

    @NotNull
    public final List<String> getDisabledList() {
        return this.disabledList;
    }

    @NotNull
    public final List<String> getEnabledList() {
        return this.enabledList;
    }

    public int hashCode() {
        return (this.enabledList.hashCode() * 31) + this.disabledList.hashCode();
    }

    public final void resetConfig() {
        this.enabledList.clear();
        this.disabledList.clear();
        List<String> list = this.enabledList;
        Companion companion = INSTANCE;
        list.addAll(companion.getDEFAULT_SHAPE_TOOLBAR_DATA().enabledList);
        this.disabledList.addAll(companion.getDEFAULT_SHAPE_TOOLBAR_DATA().disabledList);
    }

    public final void setDisabledList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.disabledList = list;
    }

    public final void setEnabledList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.enabledList = list;
    }
}
