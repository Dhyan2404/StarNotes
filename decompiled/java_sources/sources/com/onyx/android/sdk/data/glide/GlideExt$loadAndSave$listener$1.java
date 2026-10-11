package com.onyx.android.sdk.data.glide;

import android.widget.ImageView;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.glide.GlideExt$loadAndSave$listener$1;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J0\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016J6\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016¨\u0006\u0010"}, m61528d2 = {"com/onyx/android/sdk/data/glide/GlideExt$loadAndSave$listener$1", "Lcom/bumptech/glide/request/RequestListener;", "Ljava/io/File;", "onLoadFailed", "", "e", "Lcom/bumptech/glide/load/engine/GlideException;", "model", "", "target", "Lcom/bumptech/glide/request/target/Target;", "isFirstResource", "onResourceReady", Constant.SRC_TAG, "dataSource", "Lcom/bumptech/glide/load/DataSource;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GlideExt$loadAndSave$listener$1 implements RequestListener<File> {
    final /* synthetic */ String $file;
    final /* synthetic */ Function0<Unit> $onSuccess;
    final /* synthetic */ ImageView $this_loadAndSave;

    public GlideExt$loadAndSave$listener$1(String str, ImageView imageView, Function0<Unit> function0) {
        this.$file = str;
        this.$this_loadAndSave = imageView;
        this.$onSuccess = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResourceReady$lambda$0(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // com.bumptech.glide.request.RequestListener
    public boolean onLoadFailed(@Nullable GlideException e, @NotNull Object model, @NotNull Target<File> target, boolean isFirstResource) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(target, "target");
        return false;
    }

    @Override // com.bumptech.glide.request.RequestListener
    public boolean onResourceReady(@NotNull File src, @NotNull Object model, @NotNull Target<File> target, @NotNull DataSource dataSource, boolean isFirstResource) {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        FileUtils.copyFile(src, new File(this.$file));
        ImageView imageView = this.$this_loadAndSave;
        final Function0<Unit> function0 = this.$onSuccess;
        imageView.post(new Runnable() { // from class: com.sunia.HTREnginev2.u3h
            @Override // java.lang.Runnable
            public final void run() {
                GlideExt$loadAndSave$listener$1.onResourceReady$lambda$0(Function0.this);
            }
        });
        return false;
    }
}
