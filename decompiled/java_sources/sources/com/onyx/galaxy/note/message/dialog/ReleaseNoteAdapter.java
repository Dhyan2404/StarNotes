package com.onyx.galaxy.note.message.dialog;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0014¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter$VH;", "()V", "onBindViewHolder", "", "holder", "position", "", "item", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ReleaseNoteAdapter extends BaseQuickAdapter<String, C12626VH> {

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/widget/ImageView;", "H", "Landroid/widget/ImageView;", "getImage", "()Landroid/widget/ImageView;", "image", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter;Landroid/widget/ImageView;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.message.dialog.ReleaseNoteAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C12626VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ImageView image;

        /* renamed from: I */
        public final /* synthetic */ ReleaseNoteAdapter f61383I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12626VH(@NotNull ReleaseNoteAdapter releaseNoteAdapter, ImageView image) {
            super(image);
            Intrinsics.checkNotNullParameter(image, "image");
            this.f61383I = releaseNoteAdapter;
            this.image = image;
        }

        @NotNull
        public final ImageView getImage() {
            return this.image;
        }
    }

    public ReleaseNoteAdapter() {
        super(null, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C12626VH holder, int position, @Nullable String item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        GlideExt.load$default(GlideExt.INSTANCE, holder.getImage(), item, null, 2, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C12626VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        ViewKt.setLayoutParams(imageView, -1, -1);
        return new C12626VH(this, imageView);
    }
}
