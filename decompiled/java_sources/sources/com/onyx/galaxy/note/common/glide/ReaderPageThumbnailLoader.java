package com.onyx.galaxy.note.common.glide;

import android.graphics.Bitmap;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.signature.ObjectKey;
import com.onyx.android.sdk.universal.docmanager.action.pdf.LoadReaderPageThumbnailAction;
import com.onyx.android.sdk.universal.editor.data.ReaderPageDataModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0010\u0011B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ.\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/glide/ReaderPageThumbnailLoader;", "Lcom/bumptech/glide/load/model/ModelLoader;", "Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;", "Landroid/graphics/Bitmap;", "model", "", "width", "height", "Lcom/bumptech/glide/load/Options;", "options", "Lcom/bumptech/glide/load/model/ModelLoader$LoadData;", "buildLoadData", "", "handles", Constants.CONSTRUCTOR_NAME, "()V", "Factory", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ReaderPageThumbnailLoader implements ModelLoader<ReaderPageDataModel, Bitmap> {

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/glide/ReaderPageThumbnailLoader$Factory;", "Lcom/bumptech/glide/load/model/ModelLoaderFactory;", "Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;", "Landroid/graphics/Bitmap;", "()V", PrivilegedApp.f6529f, "Lcom/bumptech/glide/load/model/ModelLoader;", "multiFactory", "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;", "teardown", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Factory implements ModelLoaderFactory<ReaderPageDataModel, Bitmap> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NotNull
        public ModelLoader<ReaderPageDataModel, Bitmap> build(@NotNull MultiModelLoaderFactory multiFactory) {
            Intrinsics.checkNotNullParameter(multiFactory, "multiFactory");
            return new ReaderPageThumbnailLoader();
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.glide.ReaderPageThumbnailLoader$a */
    /* loaded from: classes9.dex */
    public static final class C11621a implements DataFetcher<Bitmap> {

        /* renamed from: e */
        @NotNull
        public final ReaderPageDataModel f56050e;

        /* renamed from: f */
        @Nullable
        public volatile Disposable f56051f;

        /* renamed from: com.onyx.galaxy.note.common.glide.ReaderPageThumbnailLoader$a$a */
        /* loaded from: classes9.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ DataFetcher.DataCallback<? super Bitmap> f56052e;

            public a(DataFetcher.DataCallback<? super Bitmap> dataCallback) {
                this.f56052e = dataCallback;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull LoadReaderPageThumbnailAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f56052e.onDataReady(it2.getBitmap());
            }
        }

        /* renamed from: com.onyx.galaxy.note.common.glide.ReaderPageThumbnailLoader$a$b */
        /* loaded from: classes9.dex */
        public static final class b<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ DataFetcher.DataCallback<? super Bitmap> f56053e;

            public b(DataFetcher.DataCallback<? super Bitmap> dataCallback) {
                this.f56053e = dataCallback;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f56053e.onLoadFailed(new Exception(it2));
            }
        }

        public C11621a(@NotNull ReaderPageDataModel glideModel) {
            Intrinsics.checkNotNullParameter(glideModel, "glideModel");
            this.f56050e = glideModel;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
            Disposable disposable = this.f56051f;
            if (disposable != null) {
                disposable.dispose();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
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
            this.f56051f = new LoadReaderPageThumbnailAction(this.f56050e.getEditorBundle(), this.f56050e.getArgs()).build().doOnNext(new a(callback)).doOnError(new b(callback)).subscribe();
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(@NotNull ReaderPageDataModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    @NotNull
    public ModelLoader.LoadData<Bitmap> buildLoadData(@NotNull ReaderPageDataModel model, int width, int height, @NotNull Options options) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(options, "options");
        return new ModelLoader.LoadData<>(new ObjectKey(model), new C11621a(model));
    }
}
