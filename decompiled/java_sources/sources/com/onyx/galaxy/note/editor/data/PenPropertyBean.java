package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FloatList;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.FloatListOption;
import com.onyx.android.sdk.data.utils.FloatOption;
import com.onyx.android.sdk.data.utils.IntListOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.note.common.data.shape.ShapeType;
import com.onyx.android.sdk.note.common.utils.PenUtils;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.data.TapePropertyOption;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.sun.org.apache.bcel.internal.Constants;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b0\u00101J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002J\u001c\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015J\u000e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015J\u0016\u0010 \u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001eJ\u0006\u0010\"\u001a\u00020!J\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#2\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020$0#2\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010'\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002J\u0016\u0010)\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u001eJ\u0016\u0010+\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u0002R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "", "", "penType", "Lcom/onyx/android/sdk/data/utils/IntOption;", "getColorIndexOption", "getColorOption", "getSizeIndexOption", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "getColorListOption", "shapeType", "getFillColorOption", "getFillColorListOption", "getFillColorIndexOption", "", "selectFirstFillColorIfInvalid", "getLineStyleTypeOption", "getHistoryColorListOption", "color", "Lcom/onyx/android/sdk/base/extension/IntList;", "getHistoryColorList", "", CouchFieldKey.KEY_COLORS, "addHistoryColorList", "Lcom/onyx/android/sdk/data/utils/FloatListOption;", "getSizeListOption", "Lcom/onyx/android/sdk/data/utils/FloatOption;", "getStrokeWidthOption", "colorList", "saveColorList", "", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "updateSizeList", "Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;", "getTapePropertyOption", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "getPenArgsOption", "ensurePenArgsInitialized", "saveSelectPenColor", "width", "saveSelectPenStrokeWidth", "subShapeType", "saveSubShapeType", "Lcom/tencent/mmkv/MMKV;", "a", "Lcom/tencent/mmkv/MMKV;", "mmkv", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPenPropertyBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenPropertyBean.kt\ncom/onyx/galaxy/note/editor/data/PenPropertyBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n766#2:181\n857#2,2:182\n1549#2:184\n1620#2,3:185\n*S KotlinDebug\n*F\n+ 1 PenPropertyBean.kt\ncom/onyx/galaxy/note/editor/data/PenPropertyBean\n*L\n108#1:181\n108#1:182,2\n124#1:184\n124#1:185,3\n*E\n"})
/* loaded from: classes9.dex */
public final class PenPropertyBean {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final MMKV mmkv = MMKVUtils.INSTANCE.get();

    public final void addHistoryColorList(int penType, @NotNull List<Integer> colors) {
        List mutableList;
        Intrinsics.checkNotNullParameter(colors, "colors");
        IntListOption historyColorListOption = getHistoryColorListOption(penType);
        IntList value = historyColorListOption.getValue();
        ArrayList arrayList = new ArrayList();
        for (Integer num : value) {
            if (!colors.contains(Integer.valueOf(num.intValue()))) {
                arrayList.add(num);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        mutableList.addAll(0, colors);
        if (mutableList.size() > 5) {
            mutableList = CollectionKt.safelySubList(mutableList, 0, 5);
        }
        historyColorListOption.set(TypeExtKt.toIntList((List<Integer>) mutableList));
    }

    @NotNull
    public final JSONObjectOption<PenArgs> ensurePenArgsInitialized(int penType) {
        Object firstOrNull;
        MMKVNote mMKVNote = MMKVNote.INSTANCE;
        JSONObjectOption<PenArgs> penArgsOption = mMKVNote.getPenArgsOption(penType);
        if (!mMKVNote.containsPenAttr(penType)) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) ShapeToolType.INSTANCE.getDefaultColorList(penType));
            Integer num = (Integer) firstOrNull;
            final int intValue = num != null ? num.intValue() : -16777216;
            penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.data.PenPropertyBean$ensurePenArgsInitialized$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                    invoke2(penArgs);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PenArgs penArgs) {
                    if (penArgs == null) {
                        return;
                    }
                    penArgs.setColor(intValue);
                }
            });
        }
        return penArgsOption;
    }

    @NotNull
    public final IntOption getColorIndexOption(int penType) {
        return new IntOption(this.mmkv, NoteConfigConst.ONYX_NOTE_EDIT_COLOR_INDEX + penType, 0, 4, null);
    }

    @NotNull
    public final IntListOption getColorListOption(int penType) {
        return new IntListOption(this.mmkv, NoteConfigConst.ONYX_NOTE_EDIT_COLOR_LIST + penType, ShapeToolType.INSTANCE.getDefaultColorList(penType));
    }

    @NotNull
    public final IntOption getColorOption(int penType) {
        return new IntOption(this.mmkv, NoteConfigConst.ONYX_NOTE_EDIT_COLOR + penType, -16777216);
    }

    @NotNull
    public final IntOption getFillColorIndexOption(int shapeType) {
        return new IntOption(this.mmkv, "ONYX_NOTE_FILL_COLOR_INDEX_" + shapeType, shapeType == 40 ? -1 : 0);
    }

    @NotNull
    public final IntListOption getFillColorListOption(int shapeType) {
        return new IntListOption(this.mmkv, "ONYX_NOTE_FILL_COLOR_LIST_" + shapeType, ShapeToolType.INSTANCE.getDefaultFillColorList(shapeType));
    }

    @NotNull
    public final IntOption getFillColorOption(int shapeType) {
        return new IntOption(this.mmkv, "ONYX_NOTE_FILL_COLOR_" + shapeType, 0);
    }

    @NotNull
    public final IntList getHistoryColorList(int penType, int color) {
        List list;
        ArrayList arrayList = new ArrayList();
        IntList value = getHistoryColorListOption(penType).getValue();
        arrayList.add(Integer.valueOf(color));
        Iterator<Integer> it2 = value.iterator();
        while (it2.hasNext()) {
            Integer next = it2.next();
            if (arrayList.size() >= 5) {
                break;
            }
            Intrinsics.checkNotNull(next);
            CollectionKt.addIfNotContains(arrayList, next);
        }
        if (arrayList.size() < 5) {
            Iterator<Integer> it3 = ShapeToolType.INSTANCE.getDefaultColorList(penType).iterator();
            while (it3.hasNext()) {
                Integer next2 = it3.next();
                if (arrayList.size() >= 5) {
                    break;
                }
                Intrinsics.checkNotNull(next2);
                CollectionKt.addIfNotContains(arrayList, next2);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return TypeExtKt.toIntList((List<Integer>) list);
    }

    @NotNull
    public final IntListOption getHistoryColorListOption(int penType) {
        return new IntListOption(this.mmkv, NoteConfigConst.ONYX_NOTE_EDIT_HISTORY_COLOR_LIST + penType, new IntList());
    }

    @NotNull
    public final IntOption getLineStyleTypeOption(int shapeType) {
        return new IntOption(this.mmkv, "ONYX_NOTE_STROKE_STYLE_" + shapeType, 0);
    }

    @NotNull
    public final JSONObjectOption<PenArgs> getPenArgsOption(int penType) {
        return ensurePenArgsInitialized(penType);
    }

    @NotNull
    public final IntOption getSizeIndexOption(int penType) {
        return new IntOption(this.mmkv, NoteConfigConst.ONYX_NOTE_EDIT_SIZE_INDEX + penType, 0, 4, null);
    }

    @NotNull
    public final FloatListOption getSizeListOption(int penType) {
        int collectionSizeOrDefault;
        MMKV mmkv = this.mmkv;
        String str = NoteConfigConst.ONYX_NOTE_EDIT_SIZE_LIST + penType;
        IntList defaultSizeList = ShapeType.INSTANCE.getDefaultSizeList(penType);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(defaultSizeList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it2 = defaultSizeList.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(it2.next().intValue()));
        }
        return new FloatListOption(mmkv, str, TypeExtKt.toFloatList(arrayList));
    }

    @NotNull
    public final FloatOption getStrokeWidthOption(int penType) {
        return new FloatOption(this.mmkv, NoteConfigConst.ONYX_NOTE_EDIT_STROKE_WIDTH + penType, PenUtils.INSTANCE.getDefaultStrokeWidth(penType));
    }

    @NotNull
    public final TapePropertyOption getTapePropertyOption() {
        return new TapePropertyOption();
    }

    public final void saveColorList(int penType, @NotNull List<Integer> colorList) {
        Intrinsics.checkNotNullParameter(colorList, "colorList");
        MMKVUtils.INSTANCE.putObject(this.mmkv, NoteConfigConst.ONYX_NOTE_EDIT_COLOR_LIST + penType, colorList);
    }

    public final void saveSelectPenColor(int penType, final int color) {
        getPenArgsOption(penType).getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.data.PenPropertyBean$saveSelectPenColor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                invoke2(penArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable PenArgs penArgs) {
                if (penArgs == null) {
                    return;
                }
                penArgs.setColor(color);
            }
        });
    }

    public final void saveSelectPenStrokeWidth(int penType, final float width) {
        getPenArgsOption(penType).getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.data.PenPropertyBean$saveSelectPenStrokeWidth$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                invoke2(penArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable PenArgs penArgs) {
                if (penArgs == null) {
                    return;
                }
                penArgs.setWidth(width);
            }
        });
    }

    public final void saveSubShapeType(int penType, final int subShapeType) {
        getPenArgsOption(penType).getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.data.PenPropertyBean$saveSubShapeType$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                invoke2(penArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable PenArgs penArgs) {
                if (penArgs == null) {
                    return;
                }
                penArgs.setSubShapeType(subShapeType);
            }
        });
    }

    public final void selectFirstFillColorIfInvalid(int shapeType) {
        IntOption fillColorIndexOption = getFillColorIndexOption(shapeType);
        if (fillColorIndexOption.has()) {
            return;
        }
        fillColorIndexOption.put(0);
    }

    public final void updateSizeList(int penType, float strokeWidth) {
        FloatList list = getSizeListOption(penType).getList();
        int i = getSizeIndexOption(penType).get();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 == i) {
                list.remove(i2);
                list.add(i2, Float.valueOf(strokeWidth));
            }
        }
        getSizeListOption(penType).put(list);
    }
}
