package com.onyx.android.sdk.universal.editor.action.thumbnail;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 12\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00011B\u0015\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0004\b/\u00100J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\"\u0010\u000e\u001a\u00020\u00022\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\fH\u0002J\u001e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\tH\u0002J\u0016\u0010\u0014\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\tH\u0002J\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011H\u0002R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00070\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001b\u0010$\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001e\u001a\u0004\b#\u0010 R\u001b\u0010'\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u001e\u001a\u0004\b&\u0010 R\u001b\u0010*\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u001e\u001a\u0004\b)\u0010 R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b,\u0010-¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "u", "", "folderId", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "r", "Lkotlin/Pair;", "pair", "v", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Bitmap;", "bitmaps", "m", "l", "syncNoteModels", "q", "bitmap", "t", "e", "Ljava/util/List;", "folderIds", "", C6997f.f39671c, "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()I", "borderColor", C6998g.f39679a, C4921e.f26528e, "borderShadowColor", C6999h.f39688c, "p", "borderWith", "i", "s", TypedValues.CycleType.S_WAVE_OFFSET, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "j", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateFolderCoverAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateFolderCoverAction.kt\ncom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,235:1\n1855#2,2:236\n1864#2,3:238\n1864#2,3:241\n*S KotlinDebug\n*F\n+ 1 UpdateFolderCoverAction.kt\ncom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction\n*L\n92#1:236,2\n146#1:238,3\n162#1:241,3\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateFolderCoverAction extends RxBaseAction<Boolean> {

    /* renamed from: k */
    public static final int f51214k = 3;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<String> folderIds;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy borderColor;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy borderShadowColor;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy borderWith;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy offset;

    /* renamed from: j, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$a */
    /* loaded from: classes8.dex */
    public static final class C10269a<T, R> implements Function {

        /* renamed from: e */
        public static final C10269a<T, R> f51221e = new C10269a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull UpdateFolderCoverAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNoteProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$b */
    /* loaded from: classes8.dex */
    public static final class C10270b<T> implements Consumer {
        public C10270b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateFolderCoverAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$c */
    /* loaded from: classes8.dex */
    public static final class C10271c<T, R> implements Function {
        public C10271c() {
        }

        /* renamed from: a */
        public final void m40529a(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateFolderCoverAction.this.m40525u();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m40529a((NoteProvider) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$d */
    /* loaded from: classes8.dex */
    public static final class C10272d<T, R> implements Function {
        public C10272d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(UpdateFolderCoverAction.this.folderIds);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$e */
    /* loaded from: classes8.dex */
    public static final class C10273e<T, R> implements Function {
        public C10273e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Pair<String, List<SyncNoteModel>>> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.just(TuplesKt.m61535to(it2, UpdateFolderCoverAction.this.m40522r(it2)));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$f */
    /* loaded from: classes8.dex */
    public static final class C10274f<T, R> implements Function {
        public C10274f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Pair<String, ? extends List<? extends SyncNoteModel>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(UpdateFolderCoverAction.this.m40526v(it2));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$g */
    /* loaded from: classes8.dex */
    public static final class C10275g<T, R> implements Function {

        /* renamed from: e */
        public static final C10275g<T, R> f51227e = new C10275g<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m40533a(boolean z) {
            return Boolean.TRUE;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m40533a(((Boolean) obj).booleanValue());
        }
    }

    public UpdateFolderCoverAction(@NotNull List<String> folderIds) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(folderIds, "folderIds");
        this.folderIds = folderIds;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$borderColor$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getColor(C8045R.color.folder_thumbnail_border_color));
            }
        });
        this.borderColor = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$borderShadowColor$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getColor(C8045R.color.folder_thumbnail_border_shadow_color));
            }
        });
        this.borderShadowColor = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$borderWith$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getDimens(C8045R.dimen.folder_thumbnail_border_width));
            }
        });
        this.borderWith = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$offset$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getDimens(C8045R.dimen.folder_thumbnail_offset));
            }
        });
        this.offset = lazy4;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        if (this.folderIds.isEmpty()) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.just(this).flatMap(C10269a.f51221e).observeOn(KSyncBundle.INSTANCE.getObserveOn()).doOnNext(new C10270b()).map(new C10271c()).flatMap(new C10272d()).concatMap(new C10273e()).observeOn(Schedulers.m61350io()).map(new C10274f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<Boolean> map2 = RxjavaKt.takeLastOne(map).map(C10275g.f51227e);
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: l */
    public final Bitmap m40516l(List<Bitmap> bitmaps) {
        int dimens = ResManager.INSTANCE.getDimens(C8045R.dimen.folder_thumbnail_height);
        int i = 0;
        int i2 = 0;
        for (Object obj : bitmaps) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Bitmap bitmap = (Bitmap) obj;
            i = i2 != 0 ? Math.max(i, (i2 * m40523s()) + bitmap.getWidth()) : bitmap.getWidth();
            i2 = i3;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, dimens, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        return createBitmap;
    }

    /* renamed from: m */
    public final void m40517m(Canvas canvas, List<Bitmap> bitmaps) {
        int dimens;
        int i = 0;
        int i2 = 0;
        for (Object obj : bitmaps) {
            int i3 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Bitmap bitmap = (Bitmap) obj;
            if (BitmapKt.isPortrait(bitmap)) {
                dimens = 0;
            } else {
                ResManager resManager = ResManager.INSTANCE;
                dimens = resManager.getDimens(C8045R.dimen.folder_thumbnail_portrait_height) - resManager.getDimens(C8045R.dimen.folder_thumbnail_land_height);
            }
            canvas.drawBitmap(bitmap, i2, dimens, (Paint) null);
            i2 += m40523s();
            i = i3;
        }
    }

    /* renamed from: n */
    public final int m40518n() {
        return ((Number) this.borderColor.getValue()).intValue();
    }

    /* renamed from: o */
    public final int m40519o() {
        return ((Number) this.borderShadowColor.getValue()).intValue();
    }

    /* renamed from: p */
    public final int m40520p() {
        return ((Number) this.borderWith.getValue()).intValue();
    }

    /* renamed from: q */
    public final List<Bitmap> m40521q(List<? extends SyncNoteModel> syncNoteModels) {
        Sequence asSequence;
        Sequence map;
        Sequence mapNotNull;
        Sequence filter;
        Sequence map2;
        List mutableList;
        List<Bitmap> reversed;
        asSequence = CollectionsKt___CollectionsKt.asSequence(syncNoteModels);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<SyncNoteModel, String>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$getNoteThumbnails$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull SyncNoteModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ThumbnailPaths.INSTANCE.appThumbnailPath(it2.getUniqueId()).toAbsolutePath().toString();
            }
        });
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(map, new Function1<String, Bitmap>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$getNoteThumbnails$2
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Bitmap invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return BitmapUtils.INSTANCE.loadBitmapFromFile(it2);
            }
        });
        filter = SequencesKt___SequencesKt.filter(mapNotNull, new Function1<Bitmap, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$getNoteThumbnails$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Bitmap it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(BitmapKt.isValid(it2));
            }
        });
        map2 = SequencesKt___SequencesKt.map(filter, new Function1<Bitmap, Bitmap>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction$getNoteThumbnails$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Bitmap invoke(@NotNull Bitmap it2) {
                Bitmap m40524t;
                Intrinsics.checkNotNullParameter(it2, "it");
                m40524t = UpdateFolderCoverAction.this.m40524t(it2);
                return m40524t;
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map2);
        reversed = CollectionsKt___CollectionsKt.reversed(mutableList);
        return reversed;
    }

    /* renamed from: r */
    public final List<SyncNoteModel> m40522r(String folderId) {
        List<? extends Object> listOf;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(3);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("type", 1));
        cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, folderId));
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 1));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 4});
        cBQueryArgs.andWith(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ASSOCIATION, CouchFieldKey.KEY_ASSOCIATION_TYPE));
        cBQueryArgs.setVarargOrdering(couchUtils.getOrdering("updatedAt", false));
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        return NoteModelProviderKt.loadNoteList(noteProvider, cBQueryArgs);
    }

    /* renamed from: s */
    public final int m40523s() {
        return ((Number) this.offset.getValue()).intValue();
    }

    /* renamed from: t */
    public final Bitmap m40524t(Bitmap bitmap) {
        int dimens;
        int dimens2;
        ResManager resManager = ResManager.INSTANCE;
        int dimens3 = resManager.getDimens(C8045R.dimen.folder_thumbnail_shadow_offset);
        int i = dimens3 * 2;
        if (BitmapKt.getOrientation(bitmap).isPortrait()) {
            dimens = resManager.getDimens(C8045R.dimen.folder_thumbnail_portrait_width);
            dimens2 = resManager.getDimens(C8045R.dimen.folder_thumbnail_portrait_height);
        } else {
            dimens = resManager.getDimens(C8045R.dimen.folder_thumbnail_land_width);
            dimens2 = resManager.getDimens(C8045R.dimen.folder_thumbnail_land_height);
        }
        Bitmap createScaledBitmap = BitmapKt.createScaledBitmap(BitmapKt.centerCrop(bitmap, dimens, dimens2), dimens, dimens2);
        Bitmap createBitmap = Bitmap.createBitmap(dimens + i, dimens2 + i, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        float dimension = resManager.getDimension(C8045R.dimen.folder_thumbnail_corner_big);
        float dimension2 = resManager.getDimension(C8045R.dimen.folder_thumbnail_corner_small);
        float[] fArr = {dimension2, dimension2, dimension, dimension, dimension, dimension, dimension2, dimension2};
        Path path = new Path();
        float m40520p = m40520p() + i;
        RectF rectF = new RectF(m40520p, m40520p, createBitmap.getWidth() - m40520p, createBitmap.getHeight() - m40520p);
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setColor(-1);
        path.addRoundRect(rectF, fArr, Path.Direction.CW);
        canvas.drawPath(path, paint2);
        canvas.saveLayer(rectF, paint2);
        canvas.drawPath(path, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        float f = dimens3;
        canvas.drawBitmap(createScaledBitmap, f, f, paint);
        canvas.restore();
        Paint paint3 = new Paint(1);
        paint3.setColor(m40518n());
        paint3.setStrokeWidth(m40520p());
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setShadowLayer(f, 0.0f, 0.0f, m40519o());
        canvas.drawPath(path, paint3);
        return createBitmap;
    }

    /* renamed from: u */
    public final void m40525u() {
        NoteProvider noteProvider = this.noteProvider;
        NoteProvider noteProvider2 = null;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        List<SyncNoteModel> loadNoteList = NoteModelProviderKt.loadNoteList(noteProvider, this.folderIds);
        Iterator<T> it2 = loadNoteList.iterator();
        while (it2.hasNext()) {
            ((SyncNoteModel) it2.next()).forceUpdatedAt();
        }
        NoteProvider noteProvider3 = this.noteProvider;
        if (noteProvider3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
        } else {
            noteProvider2 = noteProvider3;
        }
        NoteModelProviderKt.saveNoteList(noteProvider2, loadNoteList);
    }

    /* renamed from: v */
    public final boolean m40526v(Pair<String, ? extends List<? extends SyncNoteModel>> pair) {
        Object first;
        String first2 = pair.getFirst();
        List<? extends SyncNoteModel> second = pair.getSecond();
        String obj = ThumbnailPaths.INSTANCE.appThumbnailPath(first2).toAbsolutePath().toString();
        if (second.isEmpty()) {
            FileUtils.INSTANCE.deleteFile(obj);
            return true;
        }
        List<Bitmap> m40521q = m40521q(second);
        if (m40521q.isEmpty()) {
            return true;
        }
        if (m40521q.size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) m40521q);
            return BitmapKt.save$default((Bitmap) first, obj, 0, 2, null);
        }
        Bitmap m40516l = m40516l(m40521q);
        m40517m(new Canvas(m40516l), m40521q);
        return BitmapKt.save$default(m40516l, obj, 0, 2, null);
    }
}
