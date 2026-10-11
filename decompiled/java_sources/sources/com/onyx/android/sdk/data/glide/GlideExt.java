package com.onyx.android.sdk.data.glide;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.data.common.path.PathManager;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00060\u00050\u00042\u0018\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00060\u0005J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u0007J\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u0007J:\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u000e\"\u0004\b\u0000\u0010\u000f*\b\u0012\u0004\u0012\u0002H\u000f0\u000e2\u001c\u0010\u0010\u001a\u0018\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0014J:\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u000e\"\u0004\b\u0000\u0010\u000f*\b\u0012\u0004\u0012\u0002H\u000f0\u000e2\u001c\u0010\u0010\u001a\u0018\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u00020\u00130\u0011j\b\u0012\u0004\u0012\u0002H\u000f`\u0014J>\u0010\u0016\u001a\u00020\u0013*\u00020\u00172\u0006\u0010\n\u001a\u00020\u00072*\b\u0002\u0010\u0018\u001a$\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u000e\u0012\u0004\u0012\u00020\u00130\u0011j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u000e`\u0014J.\u0010\u001a\u001a\u00020\u0013*\u00020\u00172\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0012\b\u0002\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\u00130\u001cj\u0002`\u001dJ:\u0010\u001e\u001a\u00020\u0013*\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u001e\b\u0002\u0010\u0018\u001a\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u000e\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u001f¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/data/glide/GlideExt;", "", "()V", "batchDownload", "Lio/reactivex/rxjava3/core/Observable;", "", "Lkotlin/Pair;", "", "uriFilePairs", "saveAsFile", "uri", "file", "saveAsPng", "doOnError", "Lcom/bumptech/glide/RequestBuilder;", "T", "callback", "Lkotlin/Function1;", "Lcom/bumptech/glide/load/engine/GlideException;", "", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "doOnNext", "load", "Landroid/widget/ImageView;", PrivilegedApp.f6529f, "Landroid/graphics/drawable/Drawable;", "loadAndSave", "onSuccess", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "loadOrFallback", "Lcom/onyx/android/sdk/data/glide/GlideRequestBuilder;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGlideExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlideExt.kt\ncom/onyx/android/sdk/data/glide/GlideExt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"})
/* loaded from: classes7.dex */
public final class GlideExt {

    @NotNull
    public static final GlideExt INSTANCE = new GlideExt();

    private GlideExt() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void load$default(GlideExt glideExt, ImageView imageView, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<RequestBuilder<Drawable>, Unit>() { // from class: com.onyx.android.sdk.data.glide.GlideExt$load$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull RequestBuilder<Drawable> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(RequestBuilder<Drawable> requestBuilder) {
                    invoke2(requestBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        glideExt.load(imageView, str, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void loadAndSave$default(GlideExt glideExt, ImageView imageView, String str, String str2, Function0 function0, int i, Object obj) {
        if ((i & 4) != 0) {
            function0 = new Function0<Unit>() { // from class: com.onyx.android.sdk.data.glide.GlideExt$loadAndSave$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        glideExt.loadAndSave(imageView, str, str2, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void loadOrFallback$default(GlideExt glideExt, ImageView imageView, String str, String str2, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = new Function1<RequestBuilder<Drawable>, Unit>() { // from class: com.onyx.android.sdk.data.glide.GlideExt$loadOrFallback$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull RequestBuilder<Drawable> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(RequestBuilder<Drawable> requestBuilder) {
                    invoke2(requestBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        glideExt.loadOrFallback(imageView, str, str2, function1);
    }

    public static /* synthetic */ Observable saveAsFile$default(GlideExt glideExt, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = PathManager.INSTANCE.getRandomCacheFile();
        }
        return glideExt.saveAsFile(str, str2);
    }

    public static /* synthetic */ Observable saveAsPng$default(GlideExt glideExt, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = PathManager.INSTANCE.getRandomCacheFile();
        }
        return glideExt.saveAsPng(str, str2);
    }

    @NotNull
    public final Observable<List<Pair<String, String>>> batchDownload(@NotNull List<Pair<String, String>> uriFilePairs) {
        Intrinsics.checkNotNullParameter(uriFilePairs, "uriFilePairs");
        if (uriFilePairs.isEmpty()) {
            Observable<List<Pair<String, String>>> just = Observable.just(uriFilePairs);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<List<Pair<String, String>>> buffer = Observable.fromIterable(uriFilePairs).observeOn(Schedulers.m61350io()).flatMap(new Function() { // from class: com.onyx.android.sdk.data.glide.GlideExt$batchDownload$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends Pair<String, String>> apply(@NotNull final Pair<String, String> pair) {
                Intrinsics.checkNotNullParameter(pair, "pair");
                return GlideExt.INSTANCE.saveAsFile(pair.getFirst(), pair.getSecond()).map(new Function() { // from class: com.onyx.android.sdk.data.glide.GlideExt$batchDownload$1.1
                    @Override // io.reactivex.rxjava3.functions.Function
                    @NotNull
                    public final Pair<String, String> apply(@NotNull String it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return pair;
                    }
                });
            }
        }).buffer(uriFilePairs.size());
        Intrinsics.checkNotNullExpressionValue(buffer, "buffer(...)");
        return buffer;
    }

    @NotNull
    public final <T> RequestBuilder<T> doOnError(@NotNull RequestBuilder<T> requestBuilder, @NotNull final Function1<? super GlideException, Unit> callback) {
        Intrinsics.checkNotNullParameter(requestBuilder, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        RequestBuilder<T> addListener = requestBuilder.addListener(new RequestListener<T>() { // from class: com.onyx.android.sdk.data.glide.GlideExt$doOnError$1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(@Nullable GlideException e, @Nullable Object model, @Nullable Target<T> target, boolean isFirstResource) {
                if (e == null) {
                    return false;
                }
                callback.invoke(e);
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(T resource, @Nullable Object model, @Nullable Target<T> target, @Nullable DataSource dataSource, boolean isFirstResource) {
                return false;
            }
        });
        Intrinsics.checkNotNullExpressionValue(addListener, "addListener(...)");
        return addListener;
    }

    @NotNull
    public final <T> RequestBuilder<T> doOnNext(@NotNull RequestBuilder<T> requestBuilder, @NotNull final Function1<? super T, Unit> callback) {
        Intrinsics.checkNotNullParameter(requestBuilder, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        RequestBuilder<T> addListener = requestBuilder.addListener(new RequestListener<T>() { // from class: com.onyx.android.sdk.data.glide.GlideExt$doOnNext$1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(@Nullable GlideException e, @Nullable Object model, @Nullable Target<T> target, boolean isFirstResource) {
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(T resource, @Nullable Object model, @Nullable Target<T> target, @Nullable DataSource dataSource, boolean isFirstResource) {
                callback.invoke(resource);
                return false;
            }
        });
        Intrinsics.checkNotNullExpressionValue(addListener, "addListener(...)");
        return addListener;
    }

    public final void load(@NotNull ImageView imageView, @NotNull String uri, @NotNull Function1<? super RequestBuilder<Drawable>, Unit> build) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(build, "build");
        RequestBuilder<Drawable> load = Glide.with(ResManager.INSTANCE.getAppContext()).load(uri);
        Intrinsics.checkNotNull(load);
        build.invoke(load);
        load.placeholder(imageView.getDrawable()).into(imageView);
    }

    public final void loadAndSave(@NotNull ImageView imageView, @NotNull String uri, @NotNull String file, @NotNull Function0<Unit> onSuccess) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Glide.with(imageView).asFile().load(uri).addListener(new GlideExt$loadAndSave$listener$1(file, imageView, onSuccess)).submit();
    }

    public final void loadOrFallback(@NotNull ImageView imageView, @NotNull String file, @NotNull String uri, @NotNull Function1<? super RequestBuilder<Drawable>, Unit> build) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(build, "build");
        if (FileUtils.INSTANCE.fileExist(file)) {
            load(imageView, file, build);
        } else {
            load(imageView, uri, build);
        }
    }

    @NotNull
    public final Observable<String> saveAsFile(@NotNull String uri, @NotNull final String file) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(file, "file");
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        if (uri.length() == 0) {
            RxjavaKt.done(create, "");
            return create;
        }
        if (FileUtils.INSTANCE.isFileExist(file)) {
            RxjavaKt.done(create, file);
            return create;
        }
        Glide.with(ResManager.INSTANCE.getAppContext()).asFile().load(uri).addListener(new RequestListener<File>() { // from class: com.onyx.android.sdk.data.glide.GlideExt$saveAsFile$listener$1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(@Nullable GlideException e, @NotNull Object model, @NotNull Target<File> target, boolean isFirstResource) {
                Intrinsics.checkNotNullParameter(model, "model");
                Intrinsics.checkNotNullParameter(target, "target");
                create.onError(OnyxException.INSTANCE.m31891of(ErrorType.DOWNLOAD_FAIL));
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(@NotNull File src, @NotNull Object model, @NotNull Target<File> target, @NotNull DataSource dataSource, boolean isFirstResource) {
                Intrinsics.checkNotNullParameter(src, "src");
                Intrinsics.checkNotNullParameter(model, "model");
                Intrinsics.checkNotNullParameter(target, "target");
                Intrinsics.checkNotNullParameter(dataSource, "dataSource");
                onyx.org.apache.commons.io.FileUtils.copyFile(src, new File(file));
                RxjavaKt.done(create, file);
                return false;
            }
        }).submit();
        return create;
    }

    @NotNull
    public final Observable<String> saveAsPng(@NotNull String uri, @NotNull final String file) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(file, "file");
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Glide.with(ResManager.INSTANCE.getAppContext()).load(uri).addListener(new RequestListener<Drawable>() { // from class: com.onyx.android.sdk.data.glide.GlideExt$saveAsPng$listener$1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(@Nullable GlideException e, @Nullable Object model, @Nullable Target<Drawable> target, boolean isFirstResource) {
                create.onError(OnyxException.INSTANCE.m31891of(ErrorType.DOWNLOAD_FAIL));
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(@NotNull Drawable drawable, @Nullable Object model, @Nullable Target<Drawable> target, @Nullable DataSource dataSource, boolean isFirstResource) {
                Intrinsics.checkNotNullParameter(drawable, "drawable");
                String randomCacheFile = PathManager.INSTANCE.getRandomCacheFile();
                FileUtils.INSTANCE.ensureFileExists(randomCacheFile);
                Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
                Canvas canvas = new Canvas(createBitmap);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
                FileOutputStream fileOutputStream = new FileOutputStream(randomCacheFile);
                try {
                    createBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    onyx.org.apache.commons.io.FileUtils.moveFile(new File(randomCacheFile), new File(file));
                    RxjavaKt.done(create, file);
                    return false;
                } finally {
                }
            }
        }).submit();
        return create;
    }
}
