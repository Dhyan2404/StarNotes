package com.onyx.galaxy.note.category.action;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.universal.editor.EditorBundleWrapper;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.LoadPageSearchThumbnailAction;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001a¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Landroid/widget/ImageView;", "imageView", "isPortrait", "", "r", "m", "p", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;", "editorBundleWrapper", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "noteSearchBean", "Landroid/view/View;", "i", "Landroid/view/View;", "itemView", "", "j", "I", "errorResId", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/view/View;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadPageSearchThumbnailAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadPageSearchThumbnailAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,140:1\n277#2,2:141\n277#2,2:143\n277#2,2:145\n277#2,2:147\n277#2,2:149\n277#2,2:151\n*S KotlinDebug\n*F\n+ 1 LoadPageSearchThumbnailAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction\n*L\n123#1:141,2\n124#1:143,2\n127#1:145,2\n128#1:147,2\n130#1:149,2\n131#1:151,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadPageSearchThumbnailAction extends RxBaseNoteAppAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleWrapper editorBundleWrapper;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteSearchBean noteSearchBean;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final View itemView;

    /* renamed from: j, reason: from kotlin metadata */
    public final int errorResId;

    /* renamed from: com.onyx.galaxy.note.category.action.LoadPageSearchThumbnailAction$a */
    /* loaded from: classes9.dex */
    public static final class C10889a<T, R> implements Function {
        public C10889a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull LoadPageSearchThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadPageSearchThumbnailAction.this.m42369n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadPageSearchThumbnailAction$b */
    /* loaded from: classes9.dex */
    public static final class C10890b<T> implements Consumer {
        public C10890b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadPageSearchThumbnailAction.this.m42370p(true);
            LoadPageSearchThumbnailAction.this.m42371q(true);
        }
    }

    public /* synthetic */ LoadPageSearchThumbnailAction(EditorBundleWrapper editorBundleWrapper, NoteSearchBean noteSearchBean, View view, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundleWrapper, noteSearchBean, view, (i2 & 8) != 0 ? 0 : i);
    }

    /* renamed from: o */
    public static final void m42367o(final LoadPageSearchThumbnailAction this$0, ImageView imageView, final PublishSubject subject, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(imageView, "$imageView");
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.noteSearchBean.setEditorBundle(this$0.editorBundleWrapper.getEditorBundle());
        ((RequestBuilder) AnyKt.takeIf(Glide.with(imageView).load((Object) this$0.noteSearchBean).diskCacheStrategy(DiskCacheStrategy.NONE), new Function1<RequestBuilder<Drawable>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.LoadPageSearchThumbnailAction$load$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RequestBuilder<Drawable> it3) {
                int i;
                Intrinsics.checkNotNullParameter(it3, "it");
                i = LoadPageSearchThumbnailAction.this.errorResId;
                return Boolean.valueOf(i > 0);
            }
        }, new Function1<RequestBuilder<Drawable>, RequestBuilder<Drawable>>() { // from class: com.onyx.galaxy.note.category.action.LoadPageSearchThumbnailAction$load$1$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RequestBuilder<Drawable> invoke(@NotNull RequestBuilder<Drawable> it3) {
                int i;
                Intrinsics.checkNotNullParameter(it3, "it");
                i = LoadPageSearchThumbnailAction.this.errorResId;
                return (RequestBuilder) it3.error(i);
            }
        })).listener(new RequestListener<Drawable>() { // from class: com.onyx.galaxy.note.category.action.LoadPageSearchThumbnailAction$load$1$3
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(@Nullable GlideException e, @Nullable Object model, @Nullable Target<Drawable> target, boolean isFirstResource) {
                NoteSearchBean noteSearchBean;
                PublishSubject<Boolean> publishSubject = subject;
                Throwable th = e;
                if (e == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("load page thumbnail fail:");
                    NoteSearchBean.Companion companion = NoteSearchBean.INSTANCE;
                    noteSearchBean = this$0.noteSearchBean;
                    sb.append(companion.getPageThumbPath(noteSearchBean));
                    th = new Exception(sb.toString());
                }
                publishSubject.onError(th);
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(@Nullable Drawable resource, @Nullable Object model, @Nullable Target<Drawable> target, @Nullable DataSource dataSource, boolean isFirstResource) {
                RxjavaKt.done(subject, Boolean.valueOf(resource != null));
                return false;
            }
        }).into(imageView);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doOnError = Observable.just(this).flatMap(new C10889a()).observeOn(getMainUIScheduler()).doOnError(new C10890b());
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    /* renamed from: m */
    public final ImageView m42368m(boolean isPortrait) {
        ImageView imageView = !isPortrait ? (ImageView) this.itemView.findViewById(C10651R.id.iv_note_thumbnail_land) : null;
        return imageView == null ? (ImageView) this.itemView.findViewById(C10651R.id.iv_note_thumbnail) : imageView;
    }

    /* renamed from: n */
    public final Observable<Boolean> m42369n() {
        boolean z = !RectKt.isLandscape(this.noteSearchBean.getPageDisplayRect());
        m42370p(z);
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final ImageView m42368m = m42368m(z);
        if (m42368m == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        m42372r(m42368m, z);
        this.editorBundleWrapper.open(this.noteSearchBean, new Consumer() { // from class: com.sunia.HTREnginev2.b0j
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LoadPageSearchThumbnailAction.m42367o(LoadPageSearchThumbnailAction.this, m42368m, create, obj);
            }
        });
        Observable observeOn = create.observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: p */
    public final void m42370p(boolean isPortrait) {
        View findViewById = this.itemView.findViewById(C10651R.id.group_note_thumbnail);
        if (findViewById != null) {
            findViewById.setVisibility(isPortrait ^ true ? 4 : 0);
        }
        View findViewById2 = this.itemView.findViewById(C10651R.id.group_note_thumbnail_land);
        if (findViewById2 != null) {
            findViewById2.setVisibility(isPortrait ? 4 : 0);
        }
        if (this.noteSearchBean.getNoteModel().hasEncryption()) {
            View findViewById3 = this.itemView.findViewById(C10651R.id.iv_note_lock_thumbnail);
            if (findViewById3 != null) {
                findViewById3.setVisibility(isPortrait ^ true ? 4 : 0);
            }
            View findViewById4 = this.itemView.findViewById(C10651R.id.iv_note_lock_thumbnail_land);
            if (findViewById4 == null) {
                return;
            }
            findViewById4.setVisibility(isPortrait ? 4 : 0);
            return;
        }
        View findViewById5 = this.itemView.findViewById(C10651R.id.iv_note_lock_thumbnail);
        if (findViewById5 != null) {
            findViewById5.setVisibility(4);
        }
        View findViewById6 = this.itemView.findViewById(C10651R.id.iv_note_lock_thumbnail_land);
        if (findViewById6 == null) {
            return;
        }
        findViewById6.setVisibility(4);
    }

    /* renamed from: q */
    public final void m42371q(boolean isPortrait) {
        ImageView m42368m;
        if (this.errorResId <= 0 || (m42368m = m42368m(isPortrait)) == null) {
            return;
        }
        m42368m.setImageResource(this.errorResId);
    }

    /* renamed from: r */
    public final void m42372r(ImageView imageView, boolean isPortrait) {
        float dimension = isPortrait ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_110) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_124);
        float dimension2 = isPortrait ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_138) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_100);
        RectF copy = RectFKt.copy(this.noteSearchBean.getPageDisplayRect());
        RectFKt.scaleToHeight(copy, new RectF(0.0f, 0.0f, dimension, dimension2));
        ViewKt.setLayoutParams(imageView, (int) copy.width(), (int) copy.height());
    }

    public LoadPageSearchThumbnailAction(@NotNull EditorBundleWrapper editorBundleWrapper, @NotNull NoteSearchBean noteSearchBean, @NotNull View itemView, int i) {
        Intrinsics.checkNotNullParameter(editorBundleWrapper, "editorBundleWrapper");
        Intrinsics.checkNotNullParameter(noteSearchBean, "noteSearchBean");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.editorBundleWrapper = editorBundleWrapper;
        this.noteSearchBean = noteSearchBean;
        this.itemView = itemView;
        this.errorResId = i;
    }
}
