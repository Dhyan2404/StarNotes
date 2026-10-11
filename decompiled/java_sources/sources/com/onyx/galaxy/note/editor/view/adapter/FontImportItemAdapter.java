package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.fonts.LoadFontTypefaceAction;
import com.onyx.galaxy.note.databinding.ItemFontImportBinding;
import com.onyx.galaxy.note.editor.event.TextFontItemSelectEvent;
import com.onyx.galaxy.note.editor.view.adapter.FontImportItemAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0015\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0018J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0015J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u001e\u0010\u0011\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/FontImportItemAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFontImportBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "", "r", "Ljava/util/List;", "selectListData", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FontImportItemAdapter extends BaseQuickAdapter<String, DataBindingHolder<ItemFontImportBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final List<String> selectListData;

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.FontImportItemAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12267a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ DataBindingHolder<ItemFontImportBinding> f59530e;

        public C12267a(DataBindingHolder<ItemFontImportBinding> dataBindingHolder) {
            this.f59530e = dataBindingHolder;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadFontTypefaceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f59530e.getBinding().tvTitle.setTypeface(it2.getTypeface());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FontImportItemAdapter(@NotNull List<String> selectListData) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(selectListData, "selectListData");
        this.selectListData = selectListData;
    }

    /* renamed from: m */
    public static final void m47577m(FontImportItemAdapter this$0, String str, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47578n(str);
    }

    /* renamed from: n */
    public final void m47578n(String item) {
        CollectionKt.toggle(this.selectListData, item);
        notifyItemChanged(getItems().indexOf(item));
        GlobalBundle.INSTANCE.postEvent(new TextFontItemSelectEvent());
    }

    /* renamed from: o */
    public final void m47579o(DataBindingHolder<ItemFontImportBinding> holder, String item) {
        new LoadFontTypefaceAction(item).build().doOnNext(new C12267a(holder)).subscribe();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @SuppressLint({"SetTextI18n", "NotifyDataSetChanged"})
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemFontImportBinding> holder, int position, @Nullable final String item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        File file = new File(item);
        holder.getBinding().tvTitle.setText(file.getName());
        holder.getBinding().tvSize.setText(FileUtils.INSTANCE.getFileSize(file.length()));
        TintTextView tintTextView = holder.getBinding().tvTime;
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        tintTextView.setText(dateTimeUtil.format(file.lastModified(), dateTimeUtil.getDATE_FORMAT_YYYYMMDD_2()));
        m47579o(holder, item);
        holder.getBinding().icCheck.setChecked(this.selectListData.contains(item));
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nrg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FontImportItemAdapter.m47577m(FontImportItemAdapter.this, item, view);
            }
        });
        holder.getBinding().executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemFontImportBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemFontImportBinding inflate = ItemFontImportBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
