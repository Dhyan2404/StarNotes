package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\b\u0086\u0081\u0002\u0018\u0000 :2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001:BW\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\fJ\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0005J\u0006\u0010%\u001a\u00020\u0005R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000e\"\u0004\b\u0017\u0010\u0010R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\u0018\"\u0004\b\u001b\u0010\u001aR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0018\"\u0004\b\u001c\u0010\u001aR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000e\"\u0004\b\u001f\u0010\u0010j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9¨\u0006;"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "", "shapeType", "", "isThemeIcon", "", "isVipType", "isShapeToolGroup", "isSecondaryToolType", "colorArrayId", "fillColorArrayId", "defaultDisplayColor", "(Ljava/lang/String;IIZZZZIILjava/lang/Integer;)V", "getColorArrayId", "()I", "setColorArrayId", "(I)V", "getDefaultDisplayColor", "()Ljava/lang/Integer;", "setDefaultDisplayColor", "(Ljava/lang/Integer;)V", Constants.INTEGER_SIG, "getFillColorArrayId", "setFillColorArrayId", Constants.BOOLEAN_VALUE_SIG, "setSecondaryToolType", "(Z)V", "setShapeToolGroup", "setThemeIcon", "setVipType", "getShapeType", "setShapeType", "getDrawableRes", "Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;", "getPhysicsDrawables", "Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;", "isRoundCorner", "isPenType", "WRITE_PEN_GROUP", "INK_PEN", "CALLIGRAPHY_PEN", "SOFT_PAINT_PEN", "BALLPOINT_PEN", "MARKER_PEN", "PENCIL", "ERASER", "LASSO", ShapeLinkType.LINK_IMAGE, "EDIT_TEXT", "EXCERPT", "TAG", "GRAPH_PEN", "IMAGE_STICKER", "TAPE_PEN", "LASER_PEN", "RULER", "MAGNIFIER", "CUSTOM", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ShapeToolType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ShapeToolType[] $VALUES;
    public static final ShapeToolType BALLPOINT_PEN;
    public static final ShapeToolType CALLIGRAPHY_PEN;
    public static final ShapeToolType CUSTOM;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private static final List<ShapeToolType> DISABLE_SELECT_SHAPE_TOOL_TYPES;
    public static final ShapeToolType EDIT_TEXT;
    public static final ShapeToolType ERASER;
    public static final ShapeToolType EXCERPT;
    public static final ShapeToolType GRAPH_PEN;
    public static final ShapeToolType IMAGE;
    public static final ShapeToolType IMAGE_STICKER;
    public static final ShapeToolType INK_PEN;
    public static final ShapeToolType LASER_PEN;
    public static final ShapeToolType LASSO;
    public static final ShapeToolType MAGNIFIER;
    public static final ShapeToolType MARKER_PEN;
    public static final ShapeToolType PENCIL;
    public static final ShapeToolType RULER;
    public static final ShapeToolType SOFT_PAINT_PEN;
    public static final ShapeToolType TAG;
    public static final ShapeToolType TAPE_PEN;
    public static final ShapeToolType WRITE_PEN_GROUP;
    private int colorArrayId;

    @Nullable
    private Integer defaultDisplayColor;
    private int fillColorArrayId;
    private boolean isSecondaryToolType;
    private boolean isShapeToolGroup;
    private boolean isThemeIcon;
    private boolean isVipType;
    private int shapeType;

    @Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0004J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0012\u001a\u00020\fJ\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0016\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0016j\b\u0012\u0004\u0012\u00020\u0005`\u0017J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\tJ\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\fJ\u000e\u0010\u001d\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u0005R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;", "", "()V", "DISABLE_SELECT_SHAPE_TOOL_TYPES", "", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getDISABLE_SELECT_SHAPE_TOOL_TYPES", "()Ljava/util/List;", "getClosestIndex", "", "shapeToolType", "shapeNameList", "", "getDefaultColorList", "Lcom/onyx/android/sdk/base/extension/IntList;", "type", "getDefaultFillColorList", "getShapeToolByName", "shapeName", "getShapeToolType", "default", "getWritePenGroupTypeList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "isPenType", "", "shapeType", "safetyValueOf", "value", "toShapeHandlerProviderName", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nShapeToolType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolType.kt\ncom/onyx/galaxy/note/editor/data/ShapeToolType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,476:1\n1#2:477\n1#2:490\n1855#3,2:478\n1603#3,9:480\n1855#3:489\n1856#3:491\n1612#3:492\n1002#3,2:493\n*S KotlinDebug\n*F\n+ 1 ShapeToolType.kt\ncom/onyx/galaxy/note/editor/data/ShapeToolType$Companion\n*L\n463#1:490\n460#1:478,2\n463#1:480,9\n463#1:489\n463#1:491\n463#1:492\n464#1:493,2\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ShapeToolType.values().length];
                try {
                    iArr[ShapeToolType.LASER_PEN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ShapeToolType.ERASER.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ShapeToolType.LASSO.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ShapeToolType.EXCERPT.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[ShapeToolType.EDIT_TEXT.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[ShapeToolType.GRAPH_PEN.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[ShapeToolType.TAPE_PEN.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[ShapeToolType.IMAGE.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[ShapeToolType.IMAGE_STICKER.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ShapeToolType getShapeToolType$default(Companion companion, int i, ShapeToolType shapeToolType, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                shapeToolType = null;
            }
            return companion.getShapeToolType(i, shapeToolType);
        }

        public final int getClosestIndex(@NotNull ShapeToolType shapeToolType, @NotNull List<String> shapeNameList) {
            List mutableListOf;
            Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
            Intrinsics.checkNotNullParameter(shapeNameList, "shapeNameList");
            if (shapeNameList.isEmpty()) {
                return 0;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (ShapeToolType shapeToolType2 : ShapeToolType.getEntries()) {
                linkedHashMap.put(shapeToolType2.name(), shapeToolType2);
            }
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(shapeToolType);
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = shapeNameList.iterator();
            while (it2.hasNext()) {
                ShapeToolType shapeToolType3 = (ShapeToolType) linkedHashMap.get((String) it2.next());
                if (shapeToolType3 != null) {
                    arrayList.add(shapeToolType3);
                }
            }
            mutableListOf.addAll(arrayList);
            if (mutableListOf.size() > 1) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableListOf, new Comparator() { // from class: com.onyx.galaxy.note.editor.data.ShapeToolType$Companion$getClosestIndex$$inlined$sortBy$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((ShapeToolType) t).ordinal()), Integer.valueOf(((ShapeToolType) t2).ordinal()));
                        return compareValues;
                    }
                });
            }
            int indexOf = mutableListOf.indexOf(shapeToolType);
            if (indexOf == 0) {
                return 0;
            }
            return Math.min(shapeNameList.indexOf(((ShapeToolType) mutableListOf.get(indexOf - 1)).name()) + 1, shapeNameList.size() - 1);
        }

        @NotNull
        public final List<ShapeToolType> getDISABLE_SELECT_SHAPE_TOOL_TYPES() {
            return ShapeToolType.DISABLE_SELECT_SHAPE_TOOL_TYPES;
        }

        @NotNull
        public final IntList getDefaultColorList(int type) {
            ShapeToolType shapeToolType;
            ShapeToolType[] values = ShapeToolType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    shapeToolType = null;
                    break;
                }
                shapeToolType = values[i];
                if (shapeToolType.getShapeType() == type) {
                    break;
                }
                i++;
            }
            return shapeToolType == null ? TypeExtKt.toIntList(ResManager.INSTANCE.getIntArray(C10651R.array.shape_color_list_default)) : TypeExtKt.toIntList(ResManager.INSTANCE.getIntArray(shapeToolType.getColorArrayId()));
        }

        @NotNull
        public final IntList getDefaultFillColorList(int type) {
            ShapeToolType shapeToolType;
            ShapeToolType[] values = ShapeToolType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    shapeToolType = null;
                    break;
                }
                shapeToolType = values[i];
                if (shapeToolType.getShapeType() == type) {
                    break;
                }
                i++;
            }
            return shapeToolType == null ? TypeExtKt.toIntList(ResManager.INSTANCE.getIntArray(C10651R.array.shape_fill_color_list_default)) : TypeExtKt.toIntList(ResManager.INSTANCE.getIntArray(shapeToolType.getFillColorArrayId()));
        }

        @Nullable
        public final ShapeToolType getShapeToolByName(@NotNull String shapeName) {
            Intrinsics.checkNotNullParameter(shapeName, "shapeName");
            for (ShapeToolType shapeToolType : ShapeToolType.values()) {
                if (Intrinsics.areEqual(shapeToolType.name(), shapeName)) {
                    return shapeToolType;
                }
            }
            return null;
        }

        @Nullable
        public final ShapeToolType getShapeToolType(int type, @Nullable ShapeToolType r7) {
            ShapeToolType shapeToolType;
            ShapeToolType[] values = ShapeToolType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    shapeToolType = null;
                    break;
                }
                shapeToolType = values[i];
                if (shapeToolType.getShapeType() == type && !shapeToolType.getIsShapeToolGroup()) {
                    break;
                }
                i++;
            }
            return shapeToolType == null ? r7 : shapeToolType;
        }

        @NotNull
        public final ArrayList<ShapeToolType> getWritePenGroupTypeList() {
            ArrayList<ShapeToolType> arrayListOf;
            arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(ShapeToolType.INK_PEN, ShapeToolType.CALLIGRAPHY_PEN, ShapeToolType.SOFT_PAINT_PEN, ShapeToolType.BALLPOINT_PEN, ShapeToolType.PENCIL);
            return arrayListOf;
        }

        public final boolean isPenType(int shapeType) {
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            return shapeTypes.isPenShape(shapeType) || shapeTypes.isTapeShape(shapeType);
        }

        @Nullable
        public final ShapeToolType safetyValueOf(@Nullable String value) {
            if (value == null) {
                return null;
            }
            try {
                return ShapeToolType.valueOf(value);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @NotNull
        public final String toShapeHandlerProviderName(@NotNull ShapeToolType shapeToolType) {
            Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
            switch (WhenMappings.$EnumSwitchMapping$0[shapeToolType.ordinal()]) {
                case 1:
                    return ShapeHandlerManager.LASER_SHAPE_PROVIDER;
                case 2:
                    return ShapeHandlerManager.ERASE_PROVIDER;
                case 3:
                    return ShapeHandlerManager.SELECTION_PROVIDER;
                case 4:
                    return ShapeHandlerManager.EXCERPT_PROVIDER;
                case 5:
                    return ShapeHandlerManager.TEXT_INPUT_PROVIDER;
                case 6:
                    return ShapeHandlerManager.UNIVERSAL_SHAPE_PROVIDER;
                case 7:
                    return ShapeHandlerManager.SHAPE_DRAWING_PROVIDER;
                case 8:
                case 9:
                    return ShapeHandlerManager.SHAPE_IMAGE_PROVIDER;
                default:
                    return ShapeTypes.INSTANCE.isPenShape(shapeToolType.getShapeType()) ? ShapeHandlerManager.SHAPE_DRAWING_PROVIDER : "dummy";
            }
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ShapeToolType.values().length];
            try {
                iArr[ShapeToolType.WRITE_PEN_GROUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShapeToolType.INK_PEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShapeToolType.CALLIGRAPHY_PEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShapeToolType.SOFT_PAINT_PEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShapeToolType.BALLPOINT_PEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ShapeToolType.MARKER_PEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ShapeToolType.PENCIL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ShapeToolType.ERASER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ShapeToolType.LASSO.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ShapeToolType.IMAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ShapeToolType.EDIT_TEXT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ShapeToolType.EXCERPT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ShapeToolType.TAG.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ShapeToolType.GRAPH_PEN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ShapeToolType.IMAGE_STICKER.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ShapeToolType.TAPE_PEN.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ShapeToolType.LASER_PEN.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ShapeToolType.CUSTOM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ShapeToolType.RULER.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ShapeToolType.MAGNIFIER.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ ShapeToolType[] $values() {
        return new ShapeToolType[]{WRITE_PEN_GROUP, INK_PEN, CALLIGRAPHY_PEN, SOFT_PAINT_PEN, BALLPOINT_PEN, MARKER_PEN, PENCIL, ERASER, LASSO, IMAGE, EDIT_TEXT, EXCERPT, TAG, GRAPH_PEN, IMAGE_STICKER, TAPE_PEN, LASER_PEN, RULER, MAGNIFIER, CUSTOM};
    }

    static {
        List<ShapeToolType> listOf;
        boolean z = true;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        DefaultConstructorMarker defaultConstructorMarker = null;
        WRITE_PEN_GROUP = new ShapeToolType("WRITE_PEN_GROUP", 0, MMKVNote.getLastWriteGroupShapeType$default(MMKVNote.INSTANCE, 0, 1, null), z, z2, true, false, i, i2, null, 244, defaultConstructorMarker);
        boolean z3 = true;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = true;
        int i3 = 0;
        int i4 = 0;
        int i5 = 108;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        INK_PEN = new ShapeToolType("INK_PEN", 1, 5, z3, z4, z5, z6, i3, i4, Integer.valueOf(C10651R.color.default_display_color_ink_pen), i5, defaultConstructorMarker2);
        boolean z7 = false;
        boolean z8 = true;
        int i6 = 108;
        CALLIGRAPHY_PEN = new ShapeToolType("CALLIGRAPHY_PEN", 2, 47, z, z2, z7, z8, i, i2, Integer.valueOf(C10651R.color.default_display_color_calligraphy_pen), i6, defaultConstructorMarker);
        SOFT_PAINT_PEN = new ShapeToolType("SOFT_PAINT_PEN", 3, 49, z3, z4, z5, z6, i3, i4, Integer.valueOf(C10651R.color.default_display_color_soft_paint_pen), i5, defaultConstructorMarker2);
        BALLPOINT_PEN = new ShapeToolType("BALLPOINT_PEN", 4, 2, z, z2, z7, z8, i, i2, Integer.valueOf(C10651R.color.default_display_color_ballpoint_pen), i6, defaultConstructorMarker);
        boolean z9 = false;
        MARKER_PEN = new ShapeToolType("MARKER_PEN", 5, 15, z3, z4, z5, z9, C10651R.array.shape_color_list_mark_pen, i4, Integer.valueOf(C10651R.color.default_display_color_mark_pen), 92, defaultConstructorMarker2);
        PENCIL = new ShapeToolType("PENCIL", 6, 46, z, z2, z7, z8, i, i2, Integer.valueOf(C10651R.color.default_display_color_pencil), i6, defaultConstructorMarker);
        boolean z10 = false;
        int i7 = 0;
        Integer num = null;
        int i8 = 254;
        ERASER = new ShapeToolType("ERASER", 7, 1000, z10, z4, z5, z9, i7, i4, num, i8, defaultConstructorMarker2);
        boolean z11 = false;
        boolean z12 = false;
        Integer num2 = null;
        int i9 = 254;
        LASSO = new ShapeToolType("LASSO", 8, 1001, z11, z2, z7, z12, i, i2, num2, i9, defaultConstructorMarker);
        IMAGE = new ShapeToolType(ShapeLinkType.LINK_IMAGE, 9, 19, z10, z4, z5, z9, i7, i4, num, i8, defaultConstructorMarker2);
        EDIT_TEXT = new ShapeToolType("EDIT_TEXT", 10, 16, z11, z2, z7, z12, i, i2, num2, i9, defaultConstructorMarker);
        EXCERPT = new ShapeToolType("EXCERPT", 11, 41, z10, z4, z5, z9, i7, i4, num, i8, defaultConstructorMarker2);
        ShapeToolType shapeToolType = new ShapeToolType("TAG", 12, 1005, z11, z2, z7, z12, i, i2, num2, i9, defaultConstructorMarker);
        TAG = shapeToolType;
        GRAPH_PEN = new ShapeToolType("GRAPH_PEN", 13, 40, z10, z4, z5, z9, i7, i4, num, i8, defaultConstructorMarker2);
        IMAGE_STICKER = new ShapeToolType("IMAGE_STICKER", 14, 1002, z11, z2, z7, z12, i, i2, num2, i9, defaultConstructorMarker);
        TAPE_PEN = new ShapeToolType("TAPE_PEN", 15, 39, z10, z4, z5, z9, C10651R.array.shape_color_list_tape_pen, i4, Integer.valueOf(C10651R.color.default_display_color_tape_pen), 94, defaultConstructorMarker2);
        LASER_PEN = new ShapeToolType("LASER_PEN", 16, 1003, true, z2, z7, z12, C10651R.array.shape_color_list_laser_pen, i2, Integer.valueOf(C10651R.color.default_display_color_laser_pen), 92, defaultConstructorMarker);
        int i10 = 0;
        Integer num3 = null;
        int i11 = 254;
        ShapeToolType shapeToolType2 = new ShapeToolType("RULER", 17, 1006, z10, z4, z5, z9, i10, i4, num3, i11, defaultConstructorMarker2);
        RULER = shapeToolType2;
        ShapeToolType shapeToolType3 = new ShapeToolType("MAGNIFIER", 18, 1007, false, z2, z7, z12, 0, i2, null, 254, defaultConstructorMarker);
        MAGNIFIER = shapeToolType3;
        ShapeToolType shapeToolType4 = new ShapeToolType("CUSTOM", 19, 1004, z10, z4, z5, z9, i10, i4, num3, i11, defaultConstructorMarker2);
        CUSTOM = shapeToolType4;
        ShapeToolType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ShapeToolType[]{shapeToolType, shapeToolType4, shapeToolType2, shapeToolType3});
        DISABLE_SELECT_SHAPE_TOOL_TYPES = listOf;
    }

    private ShapeToolType(String str, int i, int i2, boolean z, boolean z2, boolean z3, boolean z4, int i3, int i4, Integer num) {
        this.shapeType = i2;
        this.isThemeIcon = z;
        this.isVipType = z2;
        this.isShapeToolGroup = z3;
        this.isSecondaryToolType = z4;
        this.colorArrayId = i3;
        this.fillColorArrayId = i4;
        this.defaultDisplayColor = num;
    }

    @NotNull
    public static EnumEntries<ShapeToolType> getEntries() {
        return $ENTRIES;
    }

    public static ShapeToolType valueOf(String str) {
        return (ShapeToolType) Enum.valueOf(ShapeToolType.class, str);
    }

    public static ShapeToolType[] values() {
        return (ShapeToolType[]) $VALUES.clone();
    }

    public final int getColorArrayId() {
        return this.colorArrayId;
    }

    @Nullable
    public final Integer getDefaultDisplayColor() {
        return this.defaultDisplayColor;
    }

    @NotNull
    public final ShapeDrawableBean getDrawableRes() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_pen_fountain, C10651R.drawable.ic_note_pen_fountain_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_pen_fountain_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.write_pen);
            case 2:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_pen_fountain, C10651R.drawable.ic_note_pen_fountain_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_pen_fountain_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.fountain_pen);
            case 3:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_pen_calligraphy, C10651R.drawable.ic_note_pen_calligraphy_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_pen_calligraphy_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.calligraphy_pen);
            case 4:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_pen_soft_paint, C10651R.drawable.ic_note_pen_soft_paint_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_pen_soft_paint_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.soft_paint_pen);
            case 5:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_pen_hard, C10651R.drawable.ic_note_pen_hard_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_pen_hard_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.ballpoint_pen);
            case 6:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_marker_pen, C10651R.drawable.ic_note_marker_pen_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_marker_pen_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.marker_pen);
            case 7:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_charcoal_pen, C10651R.drawable.ic_note_charcoal_pen_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_charcoal_pen_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.pencil);
            case 8:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_eraser, C10651R.drawable.ic_note_eraser_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_eraser_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.eraser);
            case 9:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_lasso, C10651R.drawable.ic_note_lasso_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_lasso_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.lasso);
            case 10:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_image, C10651R.drawable.ic_note_image_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_image_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.image);
            case 11:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_text, C10651R.drawable.ic_note_text_select, 0, Integer.valueOf(C10651R.drawable.ic_note_text_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.text);
            case 12:
                return new ShapeDrawableBean(C10651R.drawable.icon_note_excerpt, C10651R.drawable.icon_note_excerpt_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.icon_note_excerpt_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.excerpt);
            case 13:
                return new ShapeDrawableBean(C10651R.drawable.ic_tool_tag, C10651R.drawable.ic_tool_tag_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_tool_tag_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.tag);
            case 14:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_graph, C10651R.drawable.ic_note_graph_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_graph_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.graph);
            case 15:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_image_sticker, C10651R.drawable.ic_note_image_sticker_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_image_sticker_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.stickers);
            case 16:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_tape, C10651R.drawable.ic_note_tape_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_tape_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.tape);
            case 17:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_laser, C10651R.drawable.ic_note_laser_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_laser_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.laser_pen);
            case 18:
                return new ShapeDrawableBean(C10651R.drawable.ic_add, C10651R.drawable.ic_add_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_add_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.custom);
            case 19:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_ruler, C10651R.drawable.ic_note_ruler_select, 0, Integer.valueOf(C10651R.drawable.ic_note_ruler_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.ruler);
            case 20:
                return new ShapeDrawableBean(C10651R.drawable.ic_note_magnifier, C10651R.drawable.ic_note_magnifier_select, C10651R.drawable.ic_shape_arrow_down, Integer.valueOf(C10651R.drawable.ic_note_magnifier_fill), C10651R.drawable.ic_shape_tool_select_bg, C10651R.string.magnifier);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final int getFillColorArrayId() {
        return this.fillColorArrayId;
    }

    @NotNull
    public final PhysicalShapeDrawableBean getPhysicsDrawables(boolean isRoundCorner) {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 2:
                return new PhysicalShapeDrawableBean(C10651R.drawable.ic_note_phy_fountain_pen_stroke, C7996R.drawable.ic_note_phy_fountain_pen_highlight, C10651R.drawable.ic_note_phy_fountain_pen_fill_color, C10651R.drawable.ic_note_phy_fountain_pen_unselected_fill_color, C10651R.drawable.ic_note_phy_fountain_pen_unselected, C10651R.string.fountain_pen);
            case 3:
                return new PhysicalShapeDrawableBean(C10651R.drawable.ic_note_phy_art_pen_stroke, C7996R.drawable.ic_note_phy_art_pen_highlight, C10651R.drawable.ic_note_phy_art_pen_fill_color, C10651R.drawable.ic_note_phy_art_pen_unselectd_fill_color, C10651R.drawable.ic_note_phy_art_pen_unselected, C10651R.string.fountain_pen);
            case 4:
                return new PhysicalShapeDrawableBean(C10651R.drawable.ic_note_phy_soft_paint_pen_stroke, C7996R.drawable.ic_note_phy_soft_paint_pen_highlight, C10651R.drawable.ic_note_phy_soft_paint_pen_fill_color, C10651R.drawable.ic_note_phy_soft_paint_pen_unselected_fill_color, C10651R.drawable.ic_note_phy_soft_paint_pen_unselected, C10651R.string.soft_paint_pen);
            case 5:
                return new PhysicalShapeDrawableBean(C10651R.drawable.ic_note_phy_ballpoint_pen_stroke, C7996R.drawable.ic_note_phy_ballpoint_pen_highlight, C10651R.drawable.ic_note_phy_ballpoint_pen_fill_color, C10651R.drawable.ic_note_phy_ballpoint_pen_unselected_fill_color, C10651R.drawable.ic_note_phy_ballpoint_pen_unselected, C10651R.string.fountain_pen);
            case 6:
                return isRoundCorner ? new PhysicalShapeDrawableBean(C10651R.drawable.ic_note_phy_circle_marker_pen_stroke, C7996R.drawable.ic_note_phy_circle_marker_pen_highlight, C10651R.drawable.ic_note_phy_circle_marker_pen_fill_color, C10651R.drawable.ic_note_phy_circle_marker_pen_unselected_fill_color, C10651R.drawable.ic_note_phy_circle_marker_pen_unselected, C10651R.string.fountain_pen) : new PhysicalShapeDrawableBean(C10651R.drawable.ic_note_phy_square_marker_pen_stroke, C7996R.drawable.ic_note_phy_square_marker_pen_highlight, C10651R.drawable.ic_note_phy_square_marker_pen_fill_color, C10651R.drawable.ic_note_phy_square_marker_pen_unselected_fill_color, C10651R.drawable.ic_note_phy_square_marker_pen_unselected, C10651R.string.fountain_pen);
            case 7:
                return new PhysicalShapeDrawableBean(C10651R.drawable.ic_note_phy_pencil_stroke, C7996R.drawable.ic_note_phy_pencil_highlight, C10651R.drawable.ic_note_phy_pencil_fill_color, C10651R.drawable.ic_note_phy_pencil_unselected_fill_color, C10651R.drawable.ic_note_phy_pencil_unselected, C10651R.string.fountain_pen);
            default:
                return new PhysicalShapeDrawableBean(C10651R.drawable.ic_note_phy_fountain_pen_stroke, C7996R.drawable.ic_note_phy_fountain_pen_highlight, C10651R.drawable.ic_note_phy_fountain_pen_fill_color, C10651R.drawable.ic_note_phy_fountain_pen_unselected_fill_color, C10651R.drawable.ic_note_phy_fountain_pen_unselected, C10651R.string.fountain_pen);
        }
    }

    public final int getShapeType() {
        return this.shapeType;
    }

    public final boolean isPenType() {
        return INSTANCE.isPenType(this.shapeType);
    }

    /* renamed from: isSecondaryToolType, reason: from getter */
    public final boolean getIsSecondaryToolType() {
        return this.isSecondaryToolType;
    }

    /* renamed from: isShapeToolGroup, reason: from getter */
    public final boolean getIsShapeToolGroup() {
        return this.isShapeToolGroup;
    }

    /* renamed from: isThemeIcon, reason: from getter */
    public final boolean getIsThemeIcon() {
        return this.isThemeIcon;
    }

    /* renamed from: isVipType, reason: from getter */
    public final boolean getIsVipType() {
        return this.isVipType;
    }

    public final void setColorArrayId(int i) {
        this.colorArrayId = i;
    }

    public final void setDefaultDisplayColor(@Nullable Integer num) {
        this.defaultDisplayColor = num;
    }

    public final void setFillColorArrayId(int i) {
        this.fillColorArrayId = i;
    }

    public final void setSecondaryToolType(boolean z) {
        this.isSecondaryToolType = z;
    }

    public final void setShapeToolGroup(boolean z) {
        this.isShapeToolGroup = z;
    }

    public final void setShapeType(int i) {
        this.shapeType = i;
    }

    public final void setThemeIcon(boolean z) {
        this.isThemeIcon = z;
    }

    public final void setVipType(boolean z) {
        this.isVipType = z;
    }

    public /* synthetic */ ShapeToolType(String str, int i, int i2, boolean z, boolean z2, boolean z3, boolean z4, int i3, int i4, Integer num, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, i2, (i5 & 2) != 0 ? false : z, (i5 & 4) != 0 ? false : z2, (i5 & 8) != 0 ? false : z3, (i5 & 16) != 0 ? false : z4, (i5 & 32) != 0 ? C10651R.array.shape_color_list_default : i3, (i5 & 64) != 0 ? C10651R.array.shape_fill_color_list_default : i4, (i5 & 128) != 0 ? null : num);
    }
}
