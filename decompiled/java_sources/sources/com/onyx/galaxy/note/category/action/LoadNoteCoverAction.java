package com.onyx.galaxy.note.category.action;

import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.action.CheckFileExistAction;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.LoadNoteCoverAction;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "isPortrait", "p", C4921e.f26528e, "Landroid/widget/ImageView;", GoogleApiAvailabilityLight.f29016b, "", "q", "r", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Landroid/view/View;", C6999h.f39688c, "Landroid/view/View;", "itemView", "", "i", "I", "errorResId", "", "j", "Lkotlin/Lazy;", "getFilePath", "()Ljava/lang/String;", "filePath", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/view/View;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadNoteCoverAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteCoverAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteCoverAction\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,135:1\n277#2,2:136\n277#2,2:138\n277#2,2:140\n277#2,2:142\n277#2,2:144\n277#2,2:146\n*S KotlinDebug\n*F\n+ 1 LoadNoteCoverAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteCoverAction\n*L\n118#1:136,2\n119#1:138,2\n122#1:140,2\n123#1:142,2\n125#1:144,2\n126#1:146,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadNoteCoverAction extends RxBaseNoteAppAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final SyncNoteModel noteModel;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final View itemView;

    /* renamed from: i, reason: from kotlin metadata */
    public final int errorResId;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy filePath;

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteCoverAction$a */
    /* loaded from: classes9.dex */
    public static final class C10868a<T> implements Predicate {

        /* renamed from: e */
        public static final C10868a<T> f53816e = new C10868a<>();

        /* renamed from: a */
        public final boolean m42323a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m42323a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteCoverAction$b */
    /* loaded from: classes9.dex */
    public static final class C10869b<T, R> implements Function {
        public C10869b() {
        }

        @NotNull
        /* renamed from: a */
        public final Boolean m42324a(boolean z) {
            return Boolean.valueOf(LoadNoteCoverAction.this.m42319o());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42324a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteCoverAction$c */
    /* loaded from: classes9.dex */
    public static final class C10870c<T, R> implements Function {
        public C10870c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42325a(boolean z) {
            return LoadNoteCoverAction.this.m42320p(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42325a(((Boolean) obj).booleanValue());
        }
    }

    public /* synthetic */ LoadNoteCoverAction(SyncNoteModel syncNoteModel, View view, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : syncNoteModel, view, (i2 & 4) != 0 ? 0 : i);
    }

    /* renamed from: m */
    public static final void m42317m(LoadNoteCoverAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m42321q(true);
        this$0.m42322r(true);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = RxjavaKt.doOnNextIfFalse(new CheckFileExistAction(getFilePath()).build(), new Consumer() { // from class: com.sunia.HTREnginev2.yzi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LoadNoteCoverAction.m42317m(LoadNoteCoverAction.this, ((Boolean) obj).booleanValue());
            }
        }).filter(C10868a.f53816e).observeOn(Schedulers.m61350io()).map(new C10869b()).observeOn(getMainUIScheduler()).flatMap(new C10870c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final String getFilePath() {
        return (String) this.filePath.getValue();
    }

    /* renamed from: n */
    public final ImageView m42318n(boolean isPortrait) {
        ImageView imageView = !isPortrait ? (ImageView) this.itemView.findViewById(C10651R.id.iv_note_thumbnail_land) : null;
        return imageView == null ? (ImageView) this.itemView.findViewById(C10651R.id.iv_note_thumbnail) : imageView;
    }

    /* renamed from: o */
    public final boolean m42319o() {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(getFilePath(), options);
        return options.outHeight >= options.outWidth;
    }

    /* renamed from: p */
    public final Observable<Boolean> m42320p(boolean isPortrait) {
        m42321q(isPortrait);
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        ImageManager.FileKey defaultFileCacheKey = ImageManager.INSTANCE.getDefaultFileCacheKey(new File(getFilePath()));
        ImageView m42318n = m42318n(isPortrait);
        if (m42318n == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ((RequestBuilder) AnyKt.takeIf(Glide.with(m42318n).load(getFilePath()).signature(defaultFileCacheKey), new Function1<RequestBuilder<Drawable>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteCoverAction$load$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RequestBuilder<Drawable> it2) {
                int i;
                Intrinsics.checkNotNullParameter(it2, "it");
                i = LoadNoteCoverAction.this.errorResId;
                return Boolean.valueOf(i > 0);
            }
        }, new Function1<RequestBuilder<Drawable>, RequestBuilder<Drawable>>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteCoverAction$load$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RequestBuilder<Drawable> invoke(@NotNull RequestBuilder<Drawable> it2) {
                int i;
                Intrinsics.checkNotNullParameter(it2, "it");
                i = LoadNoteCoverAction.this.errorResId;
                return (RequestBuilder) it2.error(i);
            }
        })).listener(new RequestListener<Drawable>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteCoverAction$load$3
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(@Nullable GlideException e, @Nullable Object model, @Nullable Target<Drawable> target, boolean isFirstResource) {
                String filePath;
                PublishSubject<Boolean> publishSubject = create;
                Throwable th = e;
                if (e == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("load cover fail:");
                    filePath = this.getFilePath();
                    sb.append(filePath);
                    th = new Exception(sb.toString());
                }
                publishSubject.onError(th);
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(@Nullable Drawable resource, @Nullable Object model, @Nullable Target<Drawable> target, @Nullable DataSource dataSource, boolean isFirstResource) {
                RxjavaKt.done(create, Boolean.valueOf(resource != null));
                return false;
            }
        }).into(m42318n);
        Observable observeOn = create.observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        if (r0.hasEncryption() == true) goto L23;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42321q(boolean r5) {
        /*
            r4 = this;
            android.view.View r0 = r4.itemView
            int r1 = com.onyx.galaxy.note.C10651R.id.group_note_thumbnail
            android.view.View r0 = r0.findViewById(r1)
            r1 = 4
            r2 = 0
            if (r0 != 0) goto Ld
            goto L17
        Ld:
            r3 = r5 ^ 1
            if (r3 == 0) goto L13
            r3 = r1
            goto L14
        L13:
            r3 = r2
        L14:
            r0.setVisibility(r3)
        L17:
            android.view.View r0 = r4.itemView
            int r3 = com.onyx.galaxy.note.C10651R.id.group_note_thumbnail_land
            android.view.View r0 = r0.findViewById(r3)
            if (r0 != 0) goto L22
            goto L2a
        L22:
            if (r5 == 0) goto L26
            r3 = r1
            goto L27
        L26:
            r3 = r2
        L27:
            r0.setVisibility(r3)
        L2a:
            com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel r0 = r4.noteModel
            if (r0 == 0) goto L36
            boolean r0 = r0.hasEncryption()
            r3 = 1
            if (r0 != r3) goto L36
            goto L37
        L36:
            r3 = r2
        L37:
            if (r3 == 0) goto L61
            android.view.View r0 = r4.itemView
            int r3 = com.onyx.galaxy.note.C10651R.id.iv_note_lock_thumbnail
            android.view.View r0 = r0.findViewById(r3)
            if (r0 != 0) goto L44
            goto L4e
        L44:
            r3 = r5 ^ 1
            if (r3 == 0) goto L4a
            r3 = r1
            goto L4b
        L4a:
            r3 = r2
        L4b:
            r0.setVisibility(r3)
        L4e:
            android.view.View r4 = r4.itemView
            int r0 = com.onyx.galaxy.note.C10651R.id.iv_note_lock_thumbnail_land
            android.view.View r4 = r4.findViewById(r0)
            if (r4 != 0) goto L59
            goto L7d
        L59:
            if (r5 == 0) goto L5c
            goto L5d
        L5c:
            r1 = r2
        L5d:
            r4.setVisibility(r1)
            goto L7d
        L61:
            android.view.View r5 = r4.itemView
            int r0 = com.onyx.galaxy.note.C10651R.id.iv_note_lock_thumbnail
            android.view.View r5 = r5.findViewById(r0)
            if (r5 != 0) goto L6c
            goto L6f
        L6c:
            r5.setVisibility(r1)
        L6f:
            android.view.View r4 = r4.itemView
            int r5 = com.onyx.galaxy.note.C10651R.id.iv_note_lock_thumbnail_land
            android.view.View r4 = r4.findViewById(r5)
            if (r4 != 0) goto L7a
            goto L7d
        L7a:
            r4.setVisibility(r1)
        L7d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.action.LoadNoteCoverAction.m42321q(boolean):void");
    }

    /* renamed from: r */
    public final void m42322r(boolean isPortrait) {
        ImageView m42318n;
        if (this.errorResId <= 0 || (m42318n = m42318n(isPortrait)) == null) {
            return;
        }
        m42318n.setImageResource(this.errorResId);
    }

    public LoadNoteCoverAction(@Nullable SyncNoteModel syncNoteModel, @NotNull View itemView, int i) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.noteModel = syncNoteModel;
        this.itemView = itemView;
        this.errorResId = i;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteCoverAction$filePath$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                SyncNoteModel syncNoteModel2;
                String str;
                ThumbnailPaths thumbnailPaths = ThumbnailPaths.INSTANCE;
                syncNoteModel2 = LoadNoteCoverAction.this.noteModel;
                if (syncNoteModel2 == null || (str = syncNoteModel2.getUniqueId()) == null) {
                    str = "";
                }
                return thumbnailPaths.appThumbnailPath(str).toAbsolutePath().toString();
            }
        });
        this.filePath = lazy;
    }
}
