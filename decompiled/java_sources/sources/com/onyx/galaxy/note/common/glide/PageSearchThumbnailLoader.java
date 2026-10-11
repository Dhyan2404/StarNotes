package com.onyx.galaxy.note.common.glide;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.signature.ObjectKey;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RetryWithDelay;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.shape.ExcerptAttr;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.util.PageThumbnailLruCache;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 \u00102\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003\u0010\u0011\u0012B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ.\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;", "Lcom/bumptech/glide/load/model/ModelLoader;", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "Landroid/graphics/Bitmap;", "model", "", "width", "height", "Lcom/bumptech/glide/load/Options;", "options", "Lcom/bumptech/glide/load/model/ModelLoader$LoadData;", "buildLoadData", "", "handles", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "Factory", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PageSearchThumbnailLoader implements ModelLoader<NoteSearchBean, Bitmap> {

    /* renamed from: a */
    @NotNull
    public static final Paint f56036a = ExcerptAttr.INSTANCE.createFillPaint(true, ResManager.INSTANCE.getColor(C7996R.color.theme_text_color_highlight_01));

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$Factory;", "Lcom/bumptech/glide/load/model/ModelLoaderFactory;", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "Landroid/graphics/Bitmap;", "()V", PrivilegedApp.f6529f, "Lcom/bumptech/glide/load/model/ModelLoader;", "multiFactory", "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;", "teardown", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Factory implements ModelLoaderFactory<NoteSearchBean, Bitmap> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NotNull
        public ModelLoader<NoteSearchBean, Bitmap> build(@NotNull MultiModelLoaderFactory multiFactory) {
            Intrinsics.checkNotNullParameter(multiFactory, "multiFactory");
            return new PageSearchThumbnailLoader();
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    @SourceDebugExtension({"SMAP\nPageSearchThumbnailLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageSearchThumbnailLoader.kt\ncom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$PageThumbnailFetcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1855#2:137\n1855#2,2:138\n1856#2:140\n*S KotlinDebug\n*F\n+ 1 PageSearchThumbnailLoader.kt\ncom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$PageThumbnailFetcher\n*L\n104#1:137\n105#1:138,2\n104#1:140\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.common.glide.PageSearchThumbnailLoader$a */
    /* loaded from: classes9.dex */
    public static final class C11619a implements DataFetcher<Bitmap> {

        /* renamed from: e */
        @NotNull
        public final NoteSearchBean f56037e;

        /* renamed from: f */
        @Nullable
        public volatile Disposable f56038f;

        /* renamed from: com.onyx.galaxy.note.common.glide.PageSearchThumbnailLoader$a$a */
        /* loaded from: classes9.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: f */
            public final /* synthetic */ NoteSearchBean f56040f;

            /* renamed from: g */
            public final /* synthetic */ Bitmap f56041g;

            public a(NoteSearchBean noteSearchBean, Bitmap bitmap) {
                this.f56040f = noteSearchBean;
                this.f56041g = bitmap;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Bitmap apply(@NotNull C11619a it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return C11619a.this.m45014e(this.f56040f, this.f56041g);
            }
        }

        /* renamed from: com.onyx.galaxy.note.common.glide.PageSearchThumbnailLoader$a$b */
        /* loaded from: classes9.dex */
        public static final class b<T, R> implements Function {
            public b() {
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Bitmap> apply(@NotNull C11619a it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return C11619a.this.m45016g();
            }
        }

        /* renamed from: com.onyx.galaxy.note.common.glide.PageSearchThumbnailLoader$a$c */
        /* loaded from: classes9.dex */
        public static final class c<T, R> implements Function {
            public c() {
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Bitmap> apply(@NotNull Bitmap it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                C11619a c11619a = C11619a.this;
                return c11619a.m45015f(c11619a.f56037e, it2);
            }
        }

        /* renamed from: com.onyx.galaxy.note.common.glide.PageSearchThumbnailLoader$a$d */
        /* loaded from: classes9.dex */
        public static final class d<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ DataFetcher.DataCallback<? super Bitmap> f56044e;

            public d(DataFetcher.DataCallback<? super Bitmap> dataCallback) {
                this.f56044e = dataCallback;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Bitmap it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f56044e.onDataReady(it2);
            }
        }

        /* renamed from: com.onyx.galaxy.note.common.glide.PageSearchThumbnailLoader$a$e */
        /* loaded from: classes9.dex */
        public static final class e<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ DataFetcher.DataCallback<? super Bitmap> f56045e;

            public e(DataFetcher.DataCallback<? super Bitmap> dataCallback) {
                this.f56045e = dataCallback;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f56045e.onLoadFailed(new Exception(it2));
            }
        }

        public C11619a(@NotNull NoteSearchBean glideModel) {
            Intrinsics.checkNotNullParameter(glideModel, "glideModel");
            this.f56037e = glideModel;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
            Disposable disposable = this.f56038f;
            if (disposable != null) {
                disposable.dispose();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
        }

        /* renamed from: e */
        public final Bitmap m45014e(NoteSearchBean noteSearchBean, Bitmap bitmap) {
            float f = noteSearchBean.getPageOriginRect().left - noteSearchBean.getPageDisplayRect().left;
            float f2 = noteSearchBean.getPageOriginRect().top - noteSearchBean.getPageDisplayRect().top;
            Bitmap createScaledBitmap = BitmapKt.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight());
            Canvas canvas = new Canvas(createScaledBitmap);
            float width = bitmap.getWidth() / noteSearchBean.getPageDisplayRect().width();
            List<ReaderSelection> selections = noteSearchBean.getSelections();
            if (selections != null) {
                Iterator<T> it2 = selections.iterator();
                while (it2.hasNext()) {
                    Iterator<T> it3 = ((ReaderSelection) it2.next()).rectangles().iterator();
                    while (it3.hasNext()) {
                        RectF copy = RectFKt.copy((RectF) it3.next());
                        NoteSearchBean.contentMapToPageRect$default(noteSearchBean, copy, false, 2, null);
                        RectFKt.scaleRect(copy, width);
                        canvas.drawRect(copy, PageSearchThumbnailLoader.f56036a);
                    }
                }
            }
            Matrix matrix = new Matrix();
            matrix.postTranslate(f, f2);
            matrix.postScale(width, width);
            canvas.drawPath(PathKt.concatTransform(PathKt.getUnionRegionPath(noteSearchBean.getSelectionRegions()), matrix), PageSearchThumbnailLoader.f56036a);
            return createScaledBitmap;
        }

        /* renamed from: f */
        public final Observable<Bitmap> m45015f(NoteSearchBean noteSearchBean, Bitmap bitmap) {
            if (noteSearchBean.hasSelections()) {
                Observable<Bitmap> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new a(noteSearchBean, bitmap));
                Intrinsics.checkNotNullExpressionValue(map, "map(...)");
                return map;
            }
            Observable<Bitmap> just = Observable.just(bitmap);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }

        /* renamed from: g */
        public final Observable<Bitmap> m45016g() {
            PageDataModel pageDataModel = NoteSearchBean.INSTANCE.toPageDataModel(this.f56037e);
            return PageThumbnailLruCache.INSTANCE.getOrCreate(pageDataModel.toObjectCacheKey(), pageDataModel);
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NotNull
        public Class<Bitmap> getDataClass() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NotNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NotNull Priority priority, @NotNull DataFetcher.DataCallback<? super Bitmap> callback) {
            Intrinsics.checkNotNullParameter(priority, "priority");
            Intrinsics.checkNotNullParameter(callback, "callback");
            int i = 0;
            this.f56038f = Observable.just(this).observeOn(Schedulers.m61350io()).flatMap(new b()).retryWhen(new RetryWithDelay(i, i, 3, null)).flatMap(new c()).doOnNext(new d(callback)).doOnError(new e(callback)).subscribe();
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(@NotNull NoteSearchBean model) {
        Intrinsics.checkNotNullParameter(model, "model");
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    @NotNull
    public ModelLoader.LoadData<Bitmap> buildLoadData(@NotNull NoteSearchBean model, int width, int height, @NotNull Options options) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(options, "options");
        return new ModelLoader.LoadData<>(new ObjectKey(NoteSearchBean.Companion.toObjectCacheKey$default(NoteSearchBean.INSTANCE, model, null, 1, null)), new C11619a(model));
    }
}
