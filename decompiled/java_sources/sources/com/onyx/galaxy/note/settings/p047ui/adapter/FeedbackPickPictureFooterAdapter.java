package com.onyx.galaxy.note.settings.p047ui.adapter;

import android.content.Context;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.QuickViewHolder;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0004J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0014¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/chad/library/adapter4/viewholder/QuickViewHolder;", "()V", "onBindViewHolder", "", "holder", "position", "", "item", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class FeedbackPickPictureFooterAdapter extends BaseQuickAdapter<String, QuickViewHolder> {

    /* renamed from: r */
    @NotNull
    public static final String f61587r = "FeedbackPickPictureFoot";

    public FeedbackPickPictureFooterAdapter() {
        super(null, 1, null);
        add(f61587r);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull QuickViewHolder holder, int position, @Nullable String item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public QuickViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new QuickViewHolder(C10651R.layout.item_feedback_picture_footer, parent);
    }
}
