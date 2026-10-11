package com.onyx.android.sdk.filepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.filepicker.FilePickerAdapter;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0015\u0016B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u001c\u0010\u0007\u001a\u00020\u00052\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\nH\u0016R$\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;", "Lkotlin/Function1;", "", "callback", "setCallBack", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "onBindViewHolder", C6997f.f39671c, "Lkotlin/jvm/functions/Function1;", "itemCallback", Constants.CONSTRUCTOR_NAME, "()V", "FilePickerDiffCallback", "FilePickerHolder", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFilePickerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePickerAdapter.kt\ncom/onyx/android/sdk/filepicker/FilePickerAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,75:1\n262#2,2:76\n*S KotlinDebug\n*F\n+ 1 FilePickerAdapter.kt\ncom/onyx/android/sdk/filepicker/FilePickerAdapter\n*L\n33#1:76,2\n*E\n"})
/* loaded from: classes7.dex */
public final class FilePickerAdapter extends ListAdapter<DocumentBean, FilePickerHolder> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Function1<? super DocumentBean, Unit> itemCallback;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerDiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "()V", "areContentsTheSame", "", "oldItem", "newItem", "areItemsTheSame", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FilePickerDiffCallback extends DiffUtil.ItemCallback<DocumentBean> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(@NotNull DocumentBean oldItem, @NotNull DocumentBean newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(@NotNull DocumentBean oldItem, @NotNull DocumentBean newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getPath(), newItem.getPath());
        }
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/widget/TextView;", "H", "Landroid/widget/TextView;", "getTvTitle", "()Landroid/widget/TextView;", "tvTitle", "I", "getTvSize", "tvSize", "J", "getTvTime", "tvTime", "Landroid/widget/CheckBox;", "K", "Landroid/widget/CheckBox;", "getCheckView", "()Landroid/widget/CheckBox;", "checkView", "Landroid/widget/ImageView;", "L", "Landroid/widget/ImageView;", "getIvFileIcon", "()Landroid/widget/ImageView;", "setIvFileIcon", "(Landroid/widget/ImageView;)V", "ivFileIcon", "Landroid/view/View;", "itemView", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class FilePickerHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final TextView tvTitle;

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public final TextView tvSize;

        /* renamed from: J, reason: from kotlin metadata */
        @NotNull
        public final TextView tvTime;

        /* renamed from: K, reason: from kotlin metadata */
        @NotNull
        public final CheckBox checkView;

        /* renamed from: L, reason: from kotlin metadata */
        @NotNull
        public ImageView ivFileIcon;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilePickerHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            View findViewById = itemView.findViewById(C7453R.id.tv_file_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.tvTitle = (TextView) findViewById;
            View findViewById2 = itemView.findViewById(C7453R.id.tv_size);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
            this.tvSize = (TextView) findViewById2;
            View findViewById3 = itemView.findViewById(C7453R.id.tv_time);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
            this.tvTime = (TextView) findViewById3;
            View findViewById4 = itemView.findViewById(C7453R.id.file_check);
            Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(...)");
            this.checkView = (CheckBox) findViewById4;
            View findViewById5 = itemView.findViewById(C7453R.id.iv_file_icon);
            Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(...)");
            this.ivFileIcon = (ImageView) findViewById5;
        }

        @NotNull
        public final CheckBox getCheckView() {
            return this.checkView;
        }

        @NotNull
        public final ImageView getIvFileIcon() {
            return this.ivFileIcon;
        }

        @NotNull
        public final TextView getTvSize() {
            return this.tvSize;
        }

        @NotNull
        public final TextView getTvTime() {
            return this.tvTime;
        }

        @NotNull
        public final TextView getTvTitle() {
            return this.tvTitle;
        }

        public final void setIvFileIcon(@NotNull ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.ivFileIcon = imageView;
        }
    }

    public FilePickerAdapter() {
        super(new FilePickerDiffCallback());
    }

    /* renamed from: c */
    public static final void m33069c(FilePickerAdapter this$0, DocumentBean documentBean, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<? super DocumentBean, Unit> function1 = this$0.itemCallback;
        if (function1 != null) {
            Intrinsics.checkNotNull(documentBean);
            function1.invoke(documentBean);
        }
    }

    public final void setCallBack(@Nullable Function1<? super DocumentBean, Unit> callback) {
        this.itemCallback = callback;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull FilePickerHolder holder, int position) {
        Long longOrNull;
        Long longOrNull2;
        Integer drawableRes;
        Intrinsics.checkNotNullParameter(holder, "holder");
        final DocumentBean item = getItem(position);
        CheckBox checkView = holder.getCheckView();
        PickerManager pickerManager = PickerManager.INSTANCE;
        checkView.setVisibility(pickerManager.getMultiEnable() ? 0 : 8);
        holder.getCheckView().setChecked(CollectionKt.contains(pickerManager.getSelectFile(), new Function1<DocumentBean, Boolean>() { // from class: com.onyx.android.sdk.filepicker.FilePickerAdapter$onBindViewHolder$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DocumentBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getPath(), DocumentBean.this.getPath()));
            }
        }));
        holder.getTvTitle().setText(item.getName());
        String time = item.getTime();
        longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(item.getTime());
        if (longOrNull != null) {
            long longValue = longOrNull.longValue();
            DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
            time = dateTimeUtil.format(longValue * ResManager.INSTANCE.getInteger(C7453R.integer.time_milliseconds), dateTimeUtil.getDATE_FORMAT_YYYYMMDD_3());
        }
        holder.getTvTime().setText(time);
        String size = item.getSize();
        longOrNull2 = StringsKt__StringNumberConversionsKt.toLongOrNull(item.getSize());
        if (longOrNull2 != null) {
            size = FileUtils.INSTANCE.getFileSize(longOrNull2.longValue());
        }
        holder.getTvSize().setText(size);
        DocumentType documentType = item.getDocumentType();
        if (documentType != null && (drawableRes = documentType.getDrawableRes()) != null) {
            holder.getIvFileIcon().setImageResource(drawableRes.intValue());
        }
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ihg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilePickerAdapter.m33069c(FilePickerAdapter.this, item, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public FilePickerHolder onCreateViewHolder(@NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(C7453R.layout.item_file_pciker, parent, false);
        Intrinsics.checkNotNull(inflate);
        return new FilePickerHolder(inflate);
    }
}
