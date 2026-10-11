package com.onyx.galaxy.note.editor.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.editor.data.NoteEditConfigInfo;
import com.onyx.galaxy.note.editor.data.PenContext;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bN\u0010OJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\u0002J\u0016\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u000eR(\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R(\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0014\u001a\u0004\b\u001e\u0010\u0016\"\u0004\b\u001f\u0010\u0018R(\u0010$\u001a\b\u0012\u0004\u0012\u00020 0\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0014\u001a\u0004\b\"\u0010\u0016\"\u0004\b#\u0010\u0018R(\u0010)\u001a\b\u0012\u0004\u0012\u00020%0\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0014\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010\u0018R%\u0010-\u001a\u0010\u0012\f\u0012\n **\u0004\u0018\u00010\n0\n0\u00118\u0006¢\u0006\f\n\u0004\b+\u0010\u0014\u001a\u0004\b,\u0010\u0016R(\u00101\u001a\b\u0012\u0004\u0012\u00020\u00050\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0014\u001a\u0004\b/\u0010\u0016\"\u0004\b0\u0010\u0018R.\u00106\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0012020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010\u0014\u001a\u0004\b4\u0010\u0016\"\u0004\b5\u0010\u0018R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010F\u001a\u00020?8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER'\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020H0G8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L¨\u0006P"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "loadConfig", "loadShapeToolbar", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getPopupType", "forceNotifyPenTypeChanged", "changeSide", "setEditTextShapeToolType", "", "colorIndex", "color", "updateIndexAndColor", "", "isPenDrawing", "isVisibleShapeParams", "Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "i", "Landroidx/lifecycle/MutableLiveData;", "getPenType", "()Landroidx/lifecycle/MutableLiveData;", "setPenType", "(Landroidx/lifecycle/MutableLiveData;)V", "penType", "j", "getColor", "setColor", C4921e.f26537n, "getColorIndex", "setColorIndex", "Lcom/onyx/android/sdk/base/extension/IntList;", "l", "getColorSet", "setColorSet", "colorSet", "", "m", "getSize", "setSize", "size", "kotlin.jvm.PlatformType", GoogleApiAvailabilityLight.f29016b, "getLineStyleType", "lineStyleType", C4921e.f26528e, "getDockType", "setDockType", "dockType", "", "p", "getShapeShowList", "setShapeShowList", "shapeShowList", "Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;", "q", "Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;", "getNoteConfig", "()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;", "setNoteConfig", "(Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;)V", "noteConfig", "Lcom/onyx/galaxy/note/editor/data/PenContext;", "r", "Lcom/onyx/galaxy/note/editor/data/PenContext;", "getLastPenType", "()Lcom/onyx/galaxy/note/editor/data/PenContext;", "setLastPenType", "(Lcom/onyx/galaxy/note/editor/data/PenContext;)V", "lastPenType", "", "", "s", "Lkotlin/Lazy;", "getShapeToolHandlerMap", "()Ljava/util/Map;", "shapeToolHandlerMap", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPenViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/PenViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"})
/* loaded from: classes9.dex */
public final class PenViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<ShapeToolType> penType = new MutableLiveData<ShapeToolType>() { // from class: com.onyx.galaxy.note.editor.viewmodel.PenViewModel$penType$1
        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(@Nullable ShapeToolType value) {
            PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
            if (companion.hasPenBox()) {
                String selectedId = PencilBoxManager.Companion.getPenBox$default(companion, null, 1, null).getSelectedId();
                if (StringKt.isNotEmpty(selectedId)) {
                    PenViewModel.this.setLastPenType(new PenContext(null, selectedId, null, 5, null));
                    super.setValue((PenViewModel$penType$1) value);
                    return;
                }
            }
            if (PenViewModel.this.getLastPenType().getLastShapeTool() != getValue() && value != null && getValue() != value) {
                PenViewModel penViewModel = PenViewModel.this;
                ShapeToolType value2 = getValue();
                if (value2 == null) {
                    value2 = ShapeToolType.INK_PEN;
                }
                penViewModel.setLastPenType(new PenContext(value2, null, null, 6, null));
            }
            super.setValue((PenViewModel$penType$1) value);
        }
    };

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<Integer> color = new MutableLiveData<>();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<Integer> colorIndex = new MutableLiveData<>();

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<IntList> colorSet = new MutableLiveData<>();

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<Float> size = new MutableLiveData<>();

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> lineStyleType = new MutableLiveData<>(0);

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<DockType> dockType = new MutableLiveData<>();

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<ShapeToolType>> shapeShowList = new MutableLiveData<>();

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public NoteEditConfigInfo noteConfig = NoteConfigManager.INSTANCE.getNoteEditConfigInfo();

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public PenContext lastPenType = new PenContext(null, null, null, 7, null);

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy shapeToolHandlerMap;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PenViewModel() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Map<ShapeToolType, String>>() { // from class: com.onyx.galaxy.note.editor.viewmodel.PenViewModel$shapeToolHandlerMap$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Map<ShapeToolType, String> invoke() {
                Map<ShapeToolType, String> mutableMapOf;
                mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(ShapeToolType.LASSO, ShapeHandlerManager.SELECTION_PROVIDER), TuplesKt.m61535to(ShapeToolType.WRITE_PEN_GROUP, ShapeHandlerManager.SHAPE_DRAWING_PROVIDER), TuplesKt.m61535to(ShapeToolType.INK_PEN, ShapeHandlerManager.SHAPE_DRAWING_PROVIDER), TuplesKt.m61535to(ShapeToolType.BALLPOINT_PEN, ShapeHandlerManager.SHAPE_DRAWING_PROVIDER), TuplesKt.m61535to(ShapeToolType.PENCIL, ShapeHandlerManager.SHAPE_DRAWING_PROVIDER), TuplesKt.m61535to(ShapeToolType.TAPE_PEN, ShapeHandlerManager.SHAPE_DRAWING_PROVIDER), TuplesKt.m61535to(ShapeToolType.MARKER_PEN, ShapeHandlerManager.SHAPE_DRAWING_PROVIDER), TuplesKt.m61535to(ShapeToolType.CALLIGRAPHY_PEN, ShapeHandlerManager.SHAPE_DRAWING_PROVIDER), TuplesKt.m61535to(ShapeToolType.SOFT_PAINT_PEN, ShapeHandlerManager.SHAPE_DRAWING_PROVIDER), TuplesKt.m61535to(ShapeToolType.LASER_PEN, ShapeHandlerManager.LASER_SHAPE_PROVIDER), TuplesKt.m61535to(ShapeToolType.ERASER, ShapeHandlerManager.ERASE_PROVIDER), TuplesKt.m61535to(ShapeToolType.IMAGE_STICKER, ShapeHandlerManager.SHAPE_IMAGE_PROVIDER), TuplesKt.m61535to(ShapeToolType.IMAGE, ShapeHandlerManager.SHAPE_IMAGE_PROVIDER), TuplesKt.m61535to(ShapeToolType.EXCERPT, ShapeHandlerManager.EXCERPT_PROVIDER), TuplesKt.m61535to(ShapeToolType.EDIT_TEXT, ShapeHandlerManager.TEXT_INPUT_PROVIDER), TuplesKt.m61535to(ShapeToolType.GRAPH_PEN, ShapeHandlerManager.UNIVERSAL_SHAPE_PROVIDER));
                return mutableMapOf;
            }
        });
        this.shapeToolHandlerMap = lazy;
    }

    public final void changeSide() {
        DockType value = this.dockType.getValue();
        int i = value == null ? -1 : WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
        this.dockType.postValue(i != 1 ? i != 2 ? i != 3 ? i != 4 ? DockType.TOP : DockType.LEFT : DockType.TOP : DockType.RIGHT : DockType.BOTTOM);
    }

    public final void forceNotifyPenTypeChanged() {
        MutableLiveData<ShapeToolType> mutableLiveData = this.penType;
        mutableLiveData.setValue(mutableLiveData.getValue());
    }

    @NotNull
    public final MutableLiveData<Integer> getColor() {
        return this.color;
    }

    @NotNull
    public final MutableLiveData<Integer> getColorIndex() {
        return this.colorIndex;
    }

    @NotNull
    public final MutableLiveData<IntList> getColorSet() {
        return this.colorSet;
    }

    @NotNull
    public final MutableLiveData<DockType> getDockType() {
        return this.dockType;
    }

    @NotNull
    public final PenContext getLastPenType() {
        return this.lastPenType;
    }

    @NotNull
    public final MutableLiveData<Integer> getLineStyleType() {
        return this.lineStyleType;
    }

    @NotNull
    public final NoteEditConfigInfo getNoteConfig() {
        return this.noteConfig;
    }

    @NotNull
    public final MutableLiveData<ShapeToolType> getPenType() {
        return this.penType;
    }

    @NotNull
    public final DockType getPopupType() {
        DockType value = this.dockType.getValue();
        if (value == null) {
            value = DockType.TOP;
        }
        Intrinsics.checkNotNull(value);
        return value.reverse();
    }

    @NotNull
    public final MutableLiveData<List<ShapeToolType>> getShapeShowList() {
        return this.shapeShowList;
    }

    @NotNull
    public final Map<ShapeToolType, String> getShapeToolHandlerMap() {
        return (Map) this.shapeToolHandlerMap.getValue();
    }

    @NotNull
    public final MutableLiveData<Float> getSize() {
        return this.size;
    }

    public final boolean isPenDrawing() {
        if (!PencilBoxManager.INSTANCE.hasSelectedPen()) {
            ShapeToolType value = this.penType.getValue();
            if (!(value != null ? value.isPenType() : false)) {
                return false;
            }
        }
        return true;
    }

    public final boolean isVisibleShapeParams() {
        ShapeToolType value;
        Object obj;
        List<ShapeToolType> value2 = this.shapeShowList.getValue();
        if (value2 == null || (value = this.penType.getValue()) == null) {
            return false;
        }
        Iterator<T> it2 = value2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((ShapeToolType) obj) == value) {
                break;
            }
        }
        return obj != null;
    }

    public final void loadConfig() {
        loadShapeToolbar();
        this.dockType.setValue(this.noteConfig.ensureDockType());
        this.penType.postValue(this.noteConfig.ensureSelectShapeType());
    }

    public final void loadShapeToolbar() {
        this.shapeShowList.postValue(this.noteConfig.getShapeShowList());
    }

    public final void setColor(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.color = mutableLiveData;
    }

    public final void setColorIndex(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.colorIndex = mutableLiveData;
    }

    public final void setColorSet(@NotNull MutableLiveData<IntList> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.colorSet = mutableLiveData;
    }

    public final void setDockType(@NotNull MutableLiveData<DockType> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.dockType = mutableLiveData;
    }

    public final void setEditTextShapeToolType() {
        this.penType.postValue(ShapeToolType.EDIT_TEXT);
    }

    public final void setLastPenType(@NotNull PenContext penContext) {
        Intrinsics.checkNotNullParameter(penContext, "<set-?>");
        this.lastPenType = penContext;
    }

    public final void setNoteConfig(@NotNull NoteEditConfigInfo noteEditConfigInfo) {
        Intrinsics.checkNotNullParameter(noteEditConfigInfo, "<set-?>");
        this.noteConfig = noteEditConfigInfo;
    }

    public final void setPenType(@NotNull MutableLiveData<ShapeToolType> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.penType = mutableLiveData;
    }

    public final void setShapeShowList(@NotNull MutableLiveData<List<ShapeToolType>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.shapeShowList = mutableLiveData;
    }

    public final void setSize(@NotNull MutableLiveData<Float> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.size = mutableLiveData;
    }

    public final void updateIndexAndColor(int colorIndex, int color) {
        this.colorIndex.postValue(Integer.valueOf(colorIndex));
        this.color.postValue(Integer.valueOf(color));
    }
}
