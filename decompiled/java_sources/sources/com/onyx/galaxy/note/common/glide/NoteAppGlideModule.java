package com.onyx.galaxy.note.common.glide;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.Registry;
import com.bumptech.glide.annotation.GlideModule;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.module.AppGlideModule;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.editor.data.ReaderPageDataModel;
import com.onyx.galaxy.note.common.glide.ExcerptThumbnailLoader;
import com.onyx.galaxy.note.common.glide.PageSearchThumbnailLoader;
import com.onyx.galaxy.note.common.glide.PageThumbnailLoader;
import com.onyx.galaxy.note.common.glide.ReaderPageThumbnailLoader;
import com.onyx.galaxy.note.editor.data.ExcerptDataModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@GlideModule
@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/glide/NoteAppGlideModule;", "Lcom/bumptech/glide/module/AppGlideModule;", "()V", "applyOptions", "", "context", "Landroid/content/Context;", "builder", "Lcom/bumptech/glide/GlideBuilder;", "isManifestParsingEnabled", "", "registerComponents", "glide", "Lcom/bumptech/glide/Glide;", "registry", "Lcom/bumptech/glide/Registry;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteAppGlideModule extends AppGlideModule {
    @Override // com.bumptech.glide.module.AppGlideModule, com.sunia.HTREnginev2.InterfaceC13872id
    public void applyOptions(@NotNull Context context, @NotNull GlideBuilder builder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.setDiskCache(new InternalCacheDiskCacheFactory(context, 1073741824L));
        super.applyOptions(context, builder);
    }

    @Override // com.bumptech.glide.module.AppGlideModule
    public boolean isManifestParsingEnabled() {
        return false;
    }

    @Override // com.bumptech.glide.module.LibraryGlideModule, com.sunia.HTREnginev2.ojl
    public void registerComponents(@NotNull Context context, @NotNull Glide glide, @NotNull Registry registry) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(glide, "glide");
        Intrinsics.checkNotNullParameter(registry, "registry");
        registry.append(PageDataModel.class, Bitmap.class, new PageThumbnailLoader.Factory());
        registry.append(ReaderPageDataModel.class, Bitmap.class, new ReaderPageThumbnailLoader.Factory());
        registry.append(ExcerptDataModel.class, Bitmap.class, new ExcerptThumbnailLoader.Factory());
        registry.append(NoteSearchBean.class, Bitmap.class, new PageSearchThumbnailLoader.Factory());
    }
}
