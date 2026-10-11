package com.onyx.android.sdk.geometry.data;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.data.Copier;
import com.onyx.android.sdk.base.data.bitmap.SafeBitmap;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CanvasKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 ]2\u00020\u0001:\u0003]^_B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u0016\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020!2\u0006\u00105\u001a\u00020\u0000J\b\u00106\u001a\u00020\u0000H\u0016J\u000e\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u0000J\u0006\u0010:\u001a\u00020\tJ\u0018\u0010;\u001a\u00020!2\u0006\u0010<\u001a\u00020!2\b\b\u0002\u0010=\u001a\u00020>J\u000e\u0010?\u001a\u00020!2\u0006\u0010@\u001a\u00020!J\u0006\u0010A\u001a\u00020!J\u0006\u0010B\u001a\u00020\u0011J\u0006\u0010C\u001a\u00020\u0011J\u000e\u0010D\u001a\u00020\u00112\u0006\u0010<\u001a\u00020!J\u000e\u0010E\u001a\u00020\u00112\u0006\u0010F\u001a\u00020!J\u0006\u0010G\u001a\u00020\u0011J\u0006\u0010H\u001a\u00020\u0011J\u0006\u0010I\u001a\u00020\u0011J\u0006\u0010J\u001a\u00020\u0011J\u000e\u0010K\u001a\u00020\u00112\u0006\u0010L\u001a\u00020\tJ\u000e\u0010M\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u0000J\u0010\u0010O\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u0000H\u0002J\u0006\u0010P\u001a\u00020\tJ\u0018\u0010Q\u001a\u00020\u00162\u0006\u00104\u001a\u00020!2\u0006\u00105\u001a\u00020\u0000H\u0002J\u0018\u0010R\u001a\u00020\u00162\u0006\u00104\u001a\u00020!2\u0006\u00105\u001a\u00020\u0000H\u0002J\u000e\u0010S\u001a\u00020\u00002\u0006\u0010T\u001a\u00020\u0004J\u0018\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020\u00002\b\u0010X\u001a\u0004\u0018\u00010!J\u0010\u0010Y\u001a\u0002082\u0006\u0010Z\u001a\u00020>H\u0002J\u000e\u0010[\u001a\u0002082\u0006\u0010\\\u001a\u00020%R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001e\u0010\"\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020!@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u001e\u0010&\u001a\u00020%2\u0006\u0010\u0003\u001a\u00020%@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001e\u0010*\u001a\u00020)2\u0006\u0010\u0003\u001a\u00020)@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R \u0010-\u001a\b\u0012\u0004\u0012\u00020\t0.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u0006`"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "Lcom/onyx/android/sdk/base/data/Copier;", "()V", "<set-?>", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "getBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "cacheKey", "", "getCacheKey", "()Ljava/lang/String;", "setCacheKey", "(Ljava/lang/String;)V", "dataPath", "getDataPath", "isHighQuality", "", Constants.BOOLEAN_VALUE_SIG, "setHighQuality", "(Z)V", "pageDisplayMatrix", "Landroid/graphics/Matrix;", "getPageDisplayMatrix", "()Landroid/graphics/Matrix;", "setPageDisplayMatrix", "(Landroid/graphics/Matrix;)V", "safeBitmap", "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;", "getSafeBitmap", "()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;", "setSafeBitmap", "(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)V", "Landroid/graphics/RectF;", "sliceRectFInPage", "getSliceRectFInPage", "()Landroid/graphics/RectF;", "Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;", "state", "getState", "()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;", "Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;", "type", "getType", "()Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;", "verifyIdList", "", "getVerifyIdList", "()Ljava/util/List;", "setVerifyIdList", "(Ljava/util/List;)V", "computeRenderContentMatrix", "dirtySliceRectFInPage", "contentSlice", "copy", "copyDisplayData", "", PrivilegedApp.f6532i, "generateCacheKey", "getPageRectF", "dirtyPageDisplayRectF", "expandRightBottom", "", "getSliceRectF", "pageDisplayRectF", "getSliceRenderDisplayRectF", "isCanDisplay", "isCanDraw", "isContainPageDisplayRect", "isContainPageRectF", "pageRectF", "isContent", "isContentNote", "isNote", "isRendering", "isSameNotePageId", CouchFieldKey.KEY_TOC_PAGE_ID, "isSamePage", "another", "isSameRectInPage", "lastVerifyId", "pageHighQualityMatrix", "pageNormalMatrix", "toScaleSliceInfo", "displayBoxInfo", "updateBitmapDirtyRect", "Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;", "new", "dirtyPageDisplayRect", "updateDisplayMatrix", "bitmapScale", "updateState", "newState", "Companion", "State", "Type", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSlice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slice.kt\ncom/onyx/android/sdk/geometry/data/SliceInfo\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,383:1\n43#2,3:384\n43#2,3:387\n*S KotlinDebug\n*F\n+ 1 Slice.kt\ncom/onyx/android/sdk/geometry/data/SliceInfo\n*L\n251#1:384,3\n261#1:387,3\n*E\n"})
/* loaded from: classes7.dex */
public final class SliceInfo implements Copier {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private static final float DIRTY_RECT_EXPAND_RIGHT_BOTTOM = 2.0f;
    private boolean isHighQuality;

    @NotNull
    private Type type = Type.CONTENT;

    @NotNull
    private String dataPath = "";

    @NotNull
    private BoxInfo boxInfo = new BoxInfo();

    @NotNull
    private RectF sliceRectFInPage = new RectF();

    @NotNull
    private String cacheKey = "";

    @NotNull
    private State state = State.NO_CACHE;

    @NotNull
    private SafeBitmap safeBitmap = new SafeBitmap();

    @NotNull
    private Matrix pageDisplayMatrix = new Matrix();

    @NotNull
    private List<String> verifyIdList = new ArrayList();

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rJ\u0016\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;", "", "()V", "DIRTY_RECT_EXPAND_RIGHT_BOTTOM", "", "createContent", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "virtualPageId", "", "boxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "dataPath", "rectFInPage", "Landroid/graphics/RectF;", "createContentNote", "createNote", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SliceInfo createContent(@NotNull String virtualPageId, @NotNull BoxInfo boxInfo, @NotNull String dataPath, @NotNull RectF rectFInPage) {
            Intrinsics.checkNotNullParameter(virtualPageId, "virtualPageId");
            Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
            Intrinsics.checkNotNullParameter(dataPath, "dataPath");
            Intrinsics.checkNotNullParameter(rectFInPage, "rectFInPage");
            SliceInfo sliceInfo = new SliceInfo();
            sliceInfo.type = Type.CONTENT;
            sliceInfo.dataPath = dataPath;
            sliceInfo.boxInfo = boxInfo;
            sliceInfo.sliceRectFInPage = rectFInPage;
            Matrix matrix = new Matrix();
            matrix.postTranslate(rectFInPage.left, rectFInPage.top);
            sliceInfo.setPageDisplayMatrix(matrix);
            sliceInfo.setCacheKey(virtualPageId + NameUtil.USCORE + sliceInfo.generateCacheKey());
            return sliceInfo;
        }

        @NotNull
        public final SliceInfo createContentNote(@NotNull BoxInfo boxInfo, @NotNull RectF rectFInPage) {
            Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
            Intrinsics.checkNotNullParameter(rectFInPage, "rectFInPage");
            SliceInfo createNote = createNote(boxInfo, rectFInPage);
            createNote.type = Type.CONTENT_NOTE;
            createNote.setCacheKey(createNote.generateCacheKey());
            return createNote;
        }

        @NotNull
        public final SliceInfo createNote(@NotNull BoxInfo boxInfo, @NotNull RectF rectFInPage) {
            Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
            Intrinsics.checkNotNullParameter(rectFInPage, "rectFInPage");
            SliceInfo sliceInfo = new SliceInfo();
            sliceInfo.type = Type.NOTE;
            sliceInfo.dataPath = "";
            sliceInfo.boxInfo = boxInfo;
            sliceInfo.sliceRectFInPage = rectFInPage;
            Matrix matrix = new Matrix();
            matrix.postTranslate(rectFInPage.left, rectFInPage.top);
            sliceInfo.setPageDisplayMatrix(matrix);
            sliceInfo.setCacheKey(sliceInfo.generateCacheKey());
            return sliceInfo;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;", "", "(Ljava/lang/String;I)V", "NO_CACHE", "RENDERING", "IN_CACHE", "DISPLAY", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State NO_CACHE = new State("NO_CACHE", 0);
        public static final State RENDERING = new State("RENDERING", 1);
        public static final State IN_CACHE = new State("IN_CACHE", 2);
        public static final State DISPLAY = new State("DISPLAY", 3);

        private static final /* synthetic */ State[] $values() {
            return new State[]{NO_CACHE, RENDERING, IN_CACHE, DISPLAY};
        }

        static {
            State[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private State(String str, int i) {
        }

        @NotNull
        public static EnumEntries<State> getEntries() {
            return $ENTRIES;
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;", "", "(Ljava/lang/String;I)V", "CONTENT", "CONTENT_NOTE", "NOTE", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Type {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type CONTENT = new Type("CONTENT", 0);
        public static final Type CONTENT_NOTE = new Type("CONTENT_NOTE", 1);
        public static final Type NOTE = new Type("NOTE", 2);

        private static final /* synthetic */ Type[] $values() {
            return new Type[]{CONTENT, CONTENT_NOTE, NOTE};
        }

        static {
            Type[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private Type(String str, int i) {
        }

        @NotNull
        public static EnumEntries<Type> getEntries() {
            return $ENTRIES;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[State.values().length];
            try {
                iArr[State.NO_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[State.RENDERING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[State.IN_CACHE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[State.DISPLAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Type.values().length];
            try {
                iArr2[Type.CONTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[Type.NOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Type.CONTENT_NOTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static /* synthetic */ RectF getPageRectF$default(SliceInfo sliceInfo, RectF rectF, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 2.0f;
        }
        return sliceInfo.getPageRectF(rectF, f);
    }

    private final boolean isSameRectInPage(SliceInfo another) {
        return MathUtils.areApproximatelyEqual$default(MathUtils.INSTANCE, this.sliceRectFInPage.width() / another.sliceRectFInPage.width(), this.sliceRectFInPage.height() / another.sliceRectFInPage.height(), 0.0f, 4, null);
    }

    private final Matrix pageHighQualityMatrix(RectF dirtySliceRectFInPage, SliceInfo contentSlice) {
        BoxInfo boxInfo = contentSlice.boxInfo;
        BoxInfo boxInfo2 = this.boxInfo;
        float f = boxInfo.getBox().left - boxInfo2.getBox().left;
        float f2 = boxInfo.getBox().top - boxInfo2.getBox().top;
        RectF copy = RectFKt.copy(contentSlice.sliceRectFInPage);
        copy.offset(f, f2);
        RectF copy2 = dirtySliceRectFInPage.isEmpty() ? RectFKt.copy(this.sliceRectFInPage) : RectFKt.copy(dirtySliceRectFInPage);
        RectF copy3 = RectFKt.copy(copy);
        RectFKt.translateCoordinates(copy3, copy2);
        Matrix matrix = new Matrix();
        matrix.postTranslate(copy3.left, copy3.top);
        return matrix;
    }

    private final Matrix pageNormalMatrix(RectF dirtySliceRectFInPage, SliceInfo contentSlice) {
        RectF copy;
        Bitmap bitmap = contentSlice.safeBitmap.getBitmap();
        if (bitmap == null) {
            return new Matrix();
        }
        BoxInfo boxInfo = contentSlice.boxInfo;
        BoxInfo boxInfo2 = this.boxInfo;
        if (dirtySliceRectFInPage.isEmpty()) {
            copy = getSliceRenderDisplayRectF();
        } else {
            copy = RectFKt.copy(dirtySliceRectFInPage);
            copy.offsetTo(-copy.left, -copy.top);
        }
        float scaleToPage = RectFKt.scaleToPage(BitmapKt.boundingRectF(bitmap), boxInfo2.getBox());
        Matrix matrix = new Matrix();
        matrix.postScale(scaleToPage, scaleToPage);
        matrix.postTranslate(copy.left, copy.top);
        matrix.postTranslate((boxInfo.getBox().left * scaleToPage) - boxInfo2.getBox().left, (boxInfo.getBox().top * scaleToPage) - boxInfo2.getBox().top);
        return matrix;
    }

    private final void updateDisplayMatrix(float bitmapScale) {
        Matrix matrix = new Matrix();
        matrix.postScale(bitmapScale, bitmapScale);
        RectF copy = RectFKt.copy(this.sliceRectFInPage);
        RectFKt.scaleRect(copy, bitmapScale);
        matrix.postTranslate(copy.left, copy.top);
        this.pageDisplayMatrix = matrix;
    }

    @NotNull
    public final String cacheKey() {
        if (this.cacheKey.length() == 0) {
            this.cacheKey = generateCacheKey();
        }
        return this.cacheKey;
    }

    @NotNull
    public final Matrix computeRenderContentMatrix(@NotNull RectF dirtySliceRectFInPage, @NotNull SliceInfo contentSlice) {
        Intrinsics.checkNotNullParameter(dirtySliceRectFInPage, "dirtySliceRectFInPage");
        Intrinsics.checkNotNullParameter(contentSlice, "contentSlice");
        return !this.isHighQuality ? pageNormalMatrix(dirtySliceRectFInPage, contentSlice) : pageHighQualityMatrix(dirtySliceRectFInPage, contentSlice);
    }

    public final void copyDisplayData(@NotNull SliceInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.boxInfo.setBox(RectFKt.copy(info.boxInfo.getBox()));
        this.pageDisplayMatrix = MatrixKt.copy(info.pageDisplayMatrix);
    }

    @NotNull
    public final String generateCacheKey() {
        return this.type + '-' + this.dataPath + '-' + this.boxInfo.getId() + '-' + this.boxInfo.getActualScale() + '-' + this.sliceRectFInPage.toShortString();
    }

    @NotNull
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    @NotNull
    public final String getCacheKey() {
        return this.cacheKey;
    }

    @NotNull
    public final String getDataPath() {
        return this.dataPath;
    }

    @NotNull
    public final Matrix getPageDisplayMatrix() {
        return this.pageDisplayMatrix;
    }

    @NotNull
    public final RectF getPageRectF(@NotNull RectF dirtyPageDisplayRectF, float expandRightBottom) {
        Intrinsics.checkNotNullParameter(dirtyPageDisplayRectF, "dirtyPageDisplayRectF");
        if (dirtyPageDisplayRectF.isEmpty()) {
            return new RectF();
        }
        RectF sliceRectF = getSliceRectF(dirtyPageDisplayRectF);
        sliceRectF.offsetTo(FloatKt.floor(sliceRectF.left), FloatKt.floor(sliceRectF.top));
        RectF rectF = this.sliceRectFInPage;
        sliceRectF.offset(rectF.left, rectF.top);
        sliceRectF.right += expandRightBottom;
        sliceRectF.bottom += expandRightBottom;
        sliceRectF.intersect(this.sliceRectFInPage);
        return sliceRectF;
    }

    @NotNull
    public final SafeBitmap getSafeBitmap() {
        return this.safeBitmap;
    }

    @NotNull
    public final RectF getSliceRectF(@NotNull RectF pageDisplayRectF) {
        Intrinsics.checkNotNullParameter(pageDisplayRectF, "pageDisplayRectF");
        Matrix invertMatrix = MatrixKt.invertMatrix(this.pageDisplayMatrix);
        RectF copy = RectFKt.copy(pageDisplayRectF);
        invertMatrix.mapRect(copy);
        return copy;
    }

    @NotNull
    public final RectF getSliceRectFInPage() {
        return this.sliceRectFInPage;
    }

    @NotNull
    public final RectF getSliceRenderDisplayRectF() {
        RectF copy = RectFKt.copy(this.sliceRectFInPage);
        copy.offsetTo(-copy.left, -copy.top);
        return copy;
    }

    @NotNull
    public final State getState() {
        return this.state;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    @NotNull
    public final List<String> getVerifyIdList() {
        return this.verifyIdList;
    }

    public final boolean isCanDisplay() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.state.ordinal()];
        return i == 3 || i == 4;
    }

    public final boolean isCanDraw() {
        return WhenMappings.$EnumSwitchMapping$0[this.state.ordinal()] == 1;
    }

    public final boolean isContainPageDisplayRect(@NotNull RectF dirtyPageDisplayRectF) {
        Intrinsics.checkNotNullParameter(dirtyPageDisplayRectF, "dirtyPageDisplayRectF");
        return this.sliceRectFInPage.contains(getPageRectF$default(this, dirtyPageDisplayRectF, 0.0f, 2, null));
    }

    public final boolean isContainPageRectF(@NotNull RectF pageRectF) {
        Intrinsics.checkNotNullParameter(pageRectF, "pageRectF");
        return this.sliceRectFInPage.contains(pageRectF);
    }

    public final boolean isContent() {
        return WhenMappings.$EnumSwitchMapping$1[this.type.ordinal()] == 1;
    }

    public final boolean isContentNote() {
        return WhenMappings.$EnumSwitchMapping$1[this.type.ordinal()] == 3;
    }

    /* renamed from: isHighQuality, reason: from getter */
    public final boolean getIsHighQuality() {
        return this.isHighQuality;
    }

    public final boolean isNote() {
        int i = WhenMappings.$EnumSwitchMapping$1[this.type.ordinal()];
        return i == 2 || i == 3;
    }

    public final boolean isRendering() {
        return WhenMappings.$EnumSwitchMapping$0[this.state.ordinal()] == 2;
    }

    public final boolean isSameNotePageId(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return isNote() && Intrinsics.areEqual(pageId, this.boxInfo.getId());
    }

    public final boolean isSamePage(@NotNull SliceInfo another) {
        Intrinsics.checkNotNullParameter(another, "another");
        return this.type == another.type && Intrinsics.areEqual(this.dataPath, another.dataPath) && Intrinsics.areEqual(this.boxInfo.getId(), another.boxInfo.getId()) && isSameRectInPage(another);
    }

    @NotNull
    public final String lastVerifyId() {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) this.verifyIdList);
        String str = (String) lastOrNull;
        return str == null ? "" : str;
    }

    public final void setCacheKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.cacheKey = str;
    }

    public final void setHighQuality(boolean z) {
        this.isHighQuality = z;
    }

    public final void setPageDisplayMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.pageDisplayMatrix = matrix;
    }

    public final void setSafeBitmap(@NotNull SafeBitmap safeBitmap) {
        Intrinsics.checkNotNullParameter(safeBitmap, "<set-?>");
        this.safeBitmap = safeBitmap;
    }

    public final void setVerifyIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.verifyIdList = list;
    }

    @NotNull
    public final SliceInfo toScaleSliceInfo(@NotNull BoxInfo displayBoxInfo) {
        Intrinsics.checkNotNullParameter(displayBoxInfo, "displayBoxInfo");
        updateDisplayMatrix(displayBoxInfo.getActualScale() / this.boxInfo.getActualScale());
        return this;
    }

    @NotNull
    public final SliceBitmapUpdateResult updateBitmapDirtyRect(@NotNull SliceInfo r9, @Nullable RectF dirtyPageDisplayRect) {
        Intrinsics.checkNotNullParameter(r9, "new");
        SliceBitmapUpdateResult sliceBitmapUpdateResult = new SliceBitmapUpdateResult(this, false, dirtyPageDisplayRect != null ? RectFKt.copy(dirtyPageDisplayRect) : null, null, 8, null);
        Bitmap bitmap = r9.safeBitmap.getBitmap();
        if (!BitmapKt.isValid(bitmap)) {
            return sliceBitmapUpdateResult;
        }
        Bitmap bitmap2 = this.safeBitmap.getBitmap();
        if (!BitmapKt.isValid(bitmap2)) {
            return sliceBitmapUpdateResult;
        }
        Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        if (RectKt.isNullOrEmpty(dirtyPageDisplayRect)) {
            new Canvas(bitmap2).drawBitmap(bitmap, 0.0f, 0.0f, paint);
            sliceBitmapUpdateResult.setSuccess(true);
            return sliceBitmapUpdateResult;
        }
        RectF sliceRectF = getSliceRectF(dirtyPageDisplayRect);
        float max = Math.max(0.0f, FloatKt.floor(sliceRectF.left));
        float max2 = Math.max(0.0f, FloatKt.floor(sliceRectF.top));
        CanvasKt.drawBitmapFloorLeftTop(new Canvas(bitmap2), bitmap, max, max2, paint);
        RectF boundingRectF = BitmapKt.boundingRectF(bitmap);
        boundingRectF.offsetTo(max, max2);
        sliceBitmapUpdateResult.setDirtyBitmapRect(boundingRectF);
        sliceBitmapUpdateResult.setSuccess(true);
        return sliceBitmapUpdateResult;
    }

    public final void updateState(@NotNull State newState) {
        Intrinsics.checkNotNullParameter(newState, "newState");
        this.state = newState;
    }

    @Override // com.onyx.android.sdk.base.data.Copier
    @NotNull
    public SliceInfo copy() {
        SliceInfo sliceInfo = new SliceInfo();
        sliceInfo.type = this.type;
        sliceInfo.dataPath = this.dataPath;
        sliceInfo.boxInfo = this.boxInfo.copy();
        sliceInfo.sliceRectFInPage = RectFKt.copy(this.sliceRectFInPage);
        sliceInfo.state = this.state;
        sliceInfo.safeBitmap = SafeBitmap.INSTANCE.create(this.safeBitmap.getBitmap());
        sliceInfo.pageDisplayMatrix = MatrixKt.copy(this.pageDisplayMatrix);
        sliceInfo.verifyIdList = CollectionKt.copy(this.verifyIdList);
        sliceInfo.isHighQuality = this.isHighQuality;
        sliceInfo.cacheKey = this.cacheKey;
        return sliceInfo;
    }
}
