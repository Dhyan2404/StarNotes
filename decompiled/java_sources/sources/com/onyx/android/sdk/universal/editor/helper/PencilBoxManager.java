package com.onyx.android.sdk.universal.editor.helper;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PencilBox;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0004J\b\u0010\n\u001a\u00020\u0004H\u0002R2\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u000bj\b\u0012\u0004\u0012\u00020\u0002`\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;", "", "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;", "getCurSelectedPencilBox", "", "id", "getSelectedPencilBox", "boxId", "", "deletePenBox", "c", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "a", "Ljava/util/ArrayList;", "getBoxList", "()Ljava/util/ArrayList;", "setBoxList", "(Ljava/util/ArrayList;)V", "boxList", "b", Constants.STRING_SIG, "getSelectedId", "()Ljava/lang/String;", "setSelectedId", "(Ljava/lang/String;)V", "selectedId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPencilBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PencilBoxManager.kt\ncom/onyx/android/sdk/universal/editor/helper/PencilBoxManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"})
/* loaded from: classes8.dex */
public final class PencilBoxManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final Lazy<JSONObjectOption<PencilBoxManager>> f52430c;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ArrayList<PencilBox> boxList = new ArrayList<>();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String selectedId = "";

    @Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b+\u0010,J\u001c\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0006\u0010\b\u001a\u00020\u0002J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\tJ\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0006J \u0010\u0012\u001a\u00020\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u001a\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00132\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J \u0010\u0017\u001a\u00020\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J \u0010\u0018\u001a\u00020\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0014\u0010\u001a\u001a\u00020\u00112\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\tJ\u0012\u0010\u001b\u001a\u00020\u000b2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0004J\u001c\u0010\u001e\u001a\u00020\u00112\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J>\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0018\b\u0002\u0010 \u001a\u0012\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\t\u0018\u00010\u001f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0004J\u0012\u0010#\u001a\u00020\u00062\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010$\u001a\u00020\u0011R!\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;", "", "Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;", "boxSet", "", "boxId", "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;", "a", "getPencilBox", "", "getPencilBoxList", "", "getPenBoxCount", "", "hasPenBox", "hasSelectedPen", "penBox", "", "addPencilBox", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penItems", "penItem", "updatePencilBox", "setPencilBox", "deletePenArgs", "boxIdList", "deletePencilBox", "getPenCount", "updateSelectedBoxId", "id", "updateSelectedId", "Lkotlin/Function0;", "defaultList", "selectId", "getPenList", "getPenBox", "clearPenBox", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "penBoxOption$delegate", "Lkotlin/Lazy;", "c", "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "penBoxOption", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void addPencilBox$default(Companion companion, List list, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            companion.addPencilBox(list, str);
        }

        /* renamed from: b */
        public static /* synthetic */ PencilBox m41219b(Companion companion, PencilBoxManager pencilBoxManager, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            return companion.m41220a(pencilBoxManager, str);
        }

        public static /* synthetic */ void deletePenArgs$default(Companion companion, List list, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            companion.deletePenArgs(list, str);
        }

        public static /* synthetic */ PencilBox getPenBox$default(Companion companion, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            return companion.getPenBox(str);
        }

        public static /* synthetic */ int getPenCount$default(Companion companion, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            return companion.getPenCount(str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ List getPenList$default(Companion companion, String str, Function0 function0, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                function0 = null;
            }
            if ((i & 4) != 0) {
                str2 = null;
            }
            return companion.getPenList(str, function0, str2);
        }

        public static /* synthetic */ void setPencilBox$default(Companion companion, List list, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            companion.setPencilBox(list, str);
        }

        public static /* synthetic */ void updatePencilBox$default(Companion companion, PenArgs penArgs, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            companion.updatePencilBox(penArgs, str);
        }

        public static /* synthetic */ void updateSelectedId$default(Companion companion, String str, String str2, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = null;
            }
            companion.updateSelectedId(str, str2);
        }

        /* renamed from: a */
        public final PencilBox m41220a(PencilBoxManager boxSet, String boxId) {
            if (boxId == null || boxId.length() == 0) {
                boxId = boxSet.m41218c();
            }
            return boxSet.getSelectedPencilBox(boxId);
        }

        public final void addPencilBox(@NotNull final PencilBox penBox) {
            Intrinsics.checkNotNullParameter(penBox, "penBox");
            m41221c().getAndPut(new Function1<PencilBoxManager, Unit>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$addPencilBox$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PencilBoxManager pencilBoxManager) {
                    invoke2(pencilBoxManager);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PencilBoxManager pencilBoxManager) {
                    ArrayList<PencilBox> boxList;
                    if (pencilBoxManager != null && (boxList = pencilBoxManager.getBoxList()) != null) {
                        boxList.add(PencilBox.this);
                    }
                    if (pencilBoxManager == null) {
                        return;
                    }
                    pencilBoxManager.setSelectedId(PencilBox.this.ensureUniqueId());
                }
            });
        }

        /* renamed from: c */
        public final JSONObjectOption<PencilBoxManager> m41221c() {
            return (JSONObjectOption) PencilBoxManager.f52430c.getValue();
        }

        public final void clearPenBox() {
            m41221c().getAndPut(new Function1<PencilBoxManager, Unit>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$clearPenBox$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PencilBoxManager pencilBoxManager) {
                    invoke2(pencilBoxManager);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PencilBoxManager pencilBoxManager) {
                    if (pencilBoxManager == null) {
                        return;
                    }
                    pencilBoxManager.getBoxList().clear();
                }
            });
        }

        public final void deletePenArgs(@NotNull final List<PenArgs> penItems, @Nullable final String boxId) {
            Intrinsics.checkNotNullParameter(penItems, "penItems");
            m41221c().getAndPut(new Function1<PencilBoxManager, Unit>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$deletePenArgs$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PencilBoxManager pencilBoxManager) {
                    invoke2(pencilBoxManager);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PencilBoxManager pencilBoxManager) {
                    int collectionSizeOrDefault;
                    PencilBox m41220a;
                    List mutableList;
                    boolean contains;
                    List<PenArgs> list = penItems;
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                    final ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    Iterator<T> it2 = list.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(String.valueOf(((PenArgs) it2.next()).getId()));
                    }
                    PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
                    Intrinsics.checkNotNull(pencilBoxManager);
                    m41220a = companion.m41220a(pencilBoxManager, boxId);
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.ensureList(m41220a.getPenList()));
                    CollectionKt.removeIf(mutableList, false, new Function1<PenArgs, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$deletePenArgs$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Boolean invoke(@NotNull PenArgs it3) {
                            boolean contains2;
                            Intrinsics.checkNotNullParameter(it3, "it");
                            contains2 = CollectionsKt___CollectionsKt.contains(arrayList, it3.getId());
                            return Boolean.valueOf(contains2);
                        }
                    });
                    m41220a.setPenList(CollectionKt.ensureList(mutableList));
                    contains = CollectionsKt___CollectionsKt.contains(arrayList, m41220a.getSelectedId());
                    if (contains) {
                        m41220a.setSelectedId("");
                    }
                }
            });
        }

        public final void deletePencilBox(@NotNull List<String> boxIdList) {
            Intrinsics.checkNotNullParameter(boxIdList, "boxIdList");
            if (CollectionKt.isNullOrEmpty(boxIdList)) {
                return;
            }
            m41221c().getAndPut(new PencilBoxManager$Companion$deletePencilBox$1(boxIdList));
        }

        @NotNull
        public final PencilBox getPenBox(@Nullable String boxId) {
            return m41220a(m41221c().get(), boxId);
        }

        public final int getPenBoxCount() {
            return CollectionKt.getSize(getPencilBoxList());
        }

        public final int getPenCount(@Nullable String boxId) {
            return CollectionKt.getSize(getPenBox(boxId).getPenList());
        }

        @NotNull
        public final List<PenArgs> getPenList(@Nullable String boxId, @Nullable Function0<? extends List<PenArgs>> defaultList, @Nullable String selectId) {
            final List<PenArgs> mutableList;
            final PencilBox m41220a = m41220a(m41221c().get(), boxId);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.ensureList(m41220a.getPenList()));
            Object obj = null;
            if (mutableList.isEmpty()) {
                CollectionKt.safeAddAll(mutableList, defaultList != null ? defaultList.invoke() : null);
            }
            Iterator<T> it2 = mutableList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (Intrinsics.areEqual(((PenArgs) next).getId(), selectId)) {
                    obj = next;
                    break;
                }
            }
            final PenArgs penArgs = (PenArgs) obj;
            m41221c().getAndPut(new Function1<PencilBoxManager, Unit>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$getPenList$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PencilBoxManager pencilBoxManager) {
                    invoke2(pencilBoxManager);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PencilBoxManager pencilBoxManager) {
                    PencilBox pencilBox = PencilBox.this;
                    PenArgs penArgs2 = penArgs;
                    pencilBox.setSelectedId(penArgs2 != null ? penArgs2.getId() : null);
                    PencilBox.this.setPenList(mutableList);
                }
            });
            return mutableList;
        }

        @NotNull
        public final PencilBoxManager getPencilBox() {
            return m41221c().get();
        }

        @NotNull
        public final List<PencilBox> getPencilBoxList() {
            return getPencilBox().getBoxList();
        }

        public final boolean hasPenBox() {
            return getPenBoxCount() > 0;
        }

        public final boolean hasSelectedPen() {
            return hasPenBox() && StringKt.isNotEmpty(getPenBox$default(this, null, 1, null).getSelectedId());
        }

        public final void setPencilBox(@NotNull final List<PenArgs> penItems, @Nullable final String boxId) {
            Intrinsics.checkNotNullParameter(penItems, "penItems");
            m41221c().getAndPut(new Function1<PencilBoxManager, Unit>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$setPencilBox$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PencilBoxManager pencilBoxManager) {
                    invoke2(pencilBoxManager);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PencilBoxManager pencilBoxManager) {
                    PencilBox m41220a;
                    List<PenArgs> mutableList;
                    PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
                    Intrinsics.checkNotNull(pencilBoxManager);
                    m41220a = companion.m41220a(pencilBoxManager, boxId);
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) penItems);
                    m41220a.setPenList(mutableList);
                }
            });
        }

        public final void updatePencilBox(@NotNull final PenArgs penItem, @Nullable final String boxId) {
            Intrinsics.checkNotNullParameter(penItem, "penItem");
            m41221c().getAndPut(new Function1<PencilBoxManager, Unit>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$updatePencilBox$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PencilBoxManager pencilBoxManager) {
                    invoke2(pencilBoxManager);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PencilBoxManager pencilBoxManager) {
                    PencilBox m41220a;
                    List mutableList;
                    PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
                    Intrinsics.checkNotNull(pencilBoxManager);
                    m41220a = companion.m41220a(pencilBoxManager, boxId);
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.ensureList(m41220a.getPenList()));
                    PenArgs penArgs = penItem;
                    Iterator it2 = mutableList.iterator();
                    int i = 0;
                    while (true) {
                        if (!it2.hasNext()) {
                            i = -1;
                            break;
                        } else if (Intrinsics.areEqual(((PenArgs) it2.next()).getId(), penArgs.getId())) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (i >= 0) {
                        mutableList.set(i, penItem);
                    }
                    m41220a.setPenList(CollectionKt.ensureList(mutableList));
                }
            });
        }

        public final void updateSelectedBoxId(@NotNull final String boxId) {
            Intrinsics.checkNotNullParameter(boxId, "boxId");
            m41221c().getAndPut(new Function1<PencilBoxManager, Unit>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$updateSelectedBoxId$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PencilBoxManager pencilBoxManager) {
                    invoke2(pencilBoxManager);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PencilBoxManager pencilBoxManager) {
                    if (pencilBoxManager == null) {
                        return;
                    }
                    pencilBoxManager.setSelectedId(boxId);
                }
            });
        }

        public final void updateSelectedId(@Nullable final String id, @Nullable final String boxId) {
            m41221c().getAndPut(new Function1<PencilBoxManager, Unit>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$updateSelectedId$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PencilBoxManager pencilBoxManager) {
                    invoke2(pencilBoxManager);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PencilBoxManager pencilBoxManager) {
                    PencilBox m41220a;
                    PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
                    Intrinsics.checkNotNull(pencilBoxManager);
                    m41220a = companion.m41220a(pencilBoxManager, boxId);
                    m41220a.setSelectedId(id);
                }
            });
        }

        public Companion() {
        }

        public final void addPencilBox(@NotNull final List<PenArgs> penItems, @Nullable final String boxId) {
            Intrinsics.checkNotNullParameter(penItems, "penItems");
            m41221c().getAndPut(new Function1<PencilBoxManager, Unit>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$addPencilBox$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PencilBoxManager pencilBoxManager) {
                    invoke2(pencilBoxManager);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PencilBoxManager pencilBoxManager) {
                    PencilBox m41220a;
                    List mutableList;
                    PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
                    Intrinsics.checkNotNull(pencilBoxManager);
                    m41220a = companion.m41220a(pencilBoxManager, boxId);
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.ensureList(m41220a.getPenList()));
                    mutableList.addAll(penItems);
                    m41220a.setPenList(CollectionKt.ensureList(mutableList));
                }
            });
        }
    }

    static {
        Lazy<JSONObjectOption<PencilBoxManager>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<PencilBoxManager>>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$Companion$penBoxOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<PencilBoxManager> invoke() {
                return MMKVNote.INSTANCE.getPencilBoxOption();
            }
        });
        f52430c = lazy;
    }

    /* renamed from: b */
    public static final boolean m41217b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: c */
    public final String m41218c() {
        if (this.selectedId.length() == 0) {
            this.selectedId = UUIDUtils.INSTANCE.shortUUID();
        }
        return this.selectedId;
    }

    public final boolean deletePenBox(@NotNull final String boxId) {
        Object firstOrNull;
        String str;
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        ArrayList<PencilBox> arrayList = this.boxList;
        final Function1<PencilBox, Boolean> function1 = new Function1<PencilBox, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.helper.PencilBoxManager$deletePenBox$succeed$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PencilBox it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), boxId));
            }
        };
        boolean removeIf = arrayList.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.c2l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m41217b;
                m41217b = PencilBoxManager.m41217b(Function1.this, obj);
                return m41217b;
            }
        });
        if (removeIf && Intrinsics.areEqual(this.selectedId, boxId)) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.boxList);
            PencilBox pencilBox = (PencilBox) firstOrNull;
            if (pencilBox == null || (str = pencilBox.getId()) == null) {
                str = "";
            }
            this.selectedId = str;
        }
        return removeIf;
    }

    @NotNull
    public final ArrayList<PencilBox> getBoxList() {
        return this.boxList;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final PencilBox getCurSelectedPencilBox() {
        return getSelectedPencilBox(m41218c());
    }

    @NotNull
    public final String getSelectedId() {
        return this.selectedId;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final PencilBox getSelectedPencilBox(@NotNull String id) {
        Object obj;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it2 = this.boxList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((PencilBox) obj).ensureUniqueId(), id)) {
                break;
            }
        }
        PencilBox pencilBox = (PencilBox) obj;
        if (pencilBox != null) {
            return pencilBox;
        }
        PencilBox pencilBox2 = new PencilBox();
        pencilBox2.setId(id);
        this.boxList.add(pencilBox2);
        return pencilBox2;
    }

    public final void setBoxList(@NotNull ArrayList<PencilBox> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.boxList = arrayList;
    }

    public final void setSelectedId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.selectedId = str;
    }
}
