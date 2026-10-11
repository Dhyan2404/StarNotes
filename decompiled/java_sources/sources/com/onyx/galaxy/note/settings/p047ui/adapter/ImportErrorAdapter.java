package com.onyx.galaxy.note.settings.p047ui.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.data.BackupErrorType;
import com.onyx.galaxy.note.settings.data.ImportResultBean;
import com.onyx.galaxy.note.settings.p047ui.adapter.ImportErrorAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001&B\u0007¢\u0006\u0004\b$\u0010%J\u001a\u0010\u0007\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004J\u0016\u0010\u000b\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0014J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0002H\u0007J\"\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\nH\u0014J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\u0002H\u0002R$\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u001aj\b\u0012\u0004\u0012\u00020\u0002`\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR$\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u001f0\u001aj\b\u0012\u0004\u0012\u00020\u001f`\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001dR$\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;", "Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;", "Lkotlin/Function1;", "", "callback", "setRetryCallback", "", FirebaseAnalytics.Param.ITEMS, "", "getItemCount", "importResultBean", "updateError", "holder", "position", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "", "m", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "r", "Ljava/util/ArrayList;", "errorList", "", "s", "retryList", "t", "Lkotlin/jvm/functions/Function1;", Constants.CONSTRUCTOR_NAME, "()V", "ErrorHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportErrorAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportErrorAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,104:1\n256#2,2:105\n256#2,2:107\n256#2,2:109\n256#2,2:111\n256#2,2:113\n256#2,2:115\n256#2,2:117\n*S KotlinDebug\n*F\n+ 1 ImportErrorAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter\n*L\n72#1:105,2\n77#1:107,2\n79#1:109,2\n80#1:111,2\n81#1:113,2\n85#1:115,2\n86#1:117,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ImportErrorAdapter extends BaseQuickAdapter<ImportResultBean, ErrorHolder> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<ImportResultBean> errorList;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<String> retryList;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public Function1<? super ImportResultBean, Unit> callback;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b \u0010!R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0013\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\n\u001a\u0004\b\u0012\u0010\fR\u0017\u0010\u0016\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0015\u0010\fR\u0017\u0010\u0019\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\n\u001a\u0004\b\u0018\u0010\fR\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "H", "Landroid/view/View;", "getItemView", "()Landroid/view/View;", "itemView", "Landroid/widget/TextView;", "I", "Landroid/widget/TextView;", "getErrorName", "()Landroid/widget/TextView;", "errorName", "J", "getErrorCodeDes", "errorCodeDes", "K", "getErrorCode", "errorCode", "L", "getTvRetry", "tvRetry", "M", "getTvCompleted", "tvCompleted", "Landroid/widget/ProgressBar;", "N", "Landroid/widget/ProgressBar;", "getProgress", "()Landroid/widget/ProgressBar;", "progress", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class ErrorHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final View itemView;

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public final TextView errorName;

        /* renamed from: J, reason: from kotlin metadata */
        @NotNull
        public final TextView errorCodeDes;

        /* renamed from: K, reason: from kotlin metadata */
        @NotNull
        public final TextView errorCode;

        /* renamed from: L, reason: from kotlin metadata */
        @NotNull
        public final TextView tvRetry;

        /* renamed from: M, reason: from kotlin metadata */
        @NotNull
        public final TextView tvCompleted;

        /* renamed from: N, reason: from kotlin metadata */
        @NotNull
        public final ProgressBar progress;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ErrorHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.itemView = itemView;
            View findViewById = itemView.findViewById(C10651R.id.tv_error_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.errorName = (TextView) findViewById;
            View findViewById2 = itemView.findViewById(C10651R.id.tv_error_code_des);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
            this.errorCodeDes = (TextView) findViewById2;
            View findViewById3 = itemView.findViewById(C10651R.id.tv_error_code);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
            this.errorCode = (TextView) findViewById3;
            View findViewById4 = itemView.findViewById(C10651R.id.tv_retry);
            Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(...)");
            this.tvRetry = (TextView) findViewById4;
            View findViewById5 = itemView.findViewById(C10651R.id.tv_completed);
            Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(...)");
            this.tvCompleted = (TextView) findViewById5;
            View findViewById6 = itemView.findViewById(C10651R.id.progress_retry);
            Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(...)");
            this.progress = (ProgressBar) findViewById6;
        }

        @NotNull
        public final TextView getErrorCode() {
            return this.errorCode;
        }

        @NotNull
        public final TextView getErrorCodeDes() {
            return this.errorCodeDes;
        }

        @NotNull
        public final TextView getErrorName() {
            return this.errorName;
        }

        @NotNull
        public final View getItemView() {
            return this.itemView;
        }

        @NotNull
        public final ProgressBar getProgress() {
            return this.progress;
        }

        @NotNull
        public final TextView getTvCompleted() {
            return this.tvCompleted;
        }

        @NotNull
        public final TextView getTvRetry() {
            return this.tvRetry;
        }
    }

    public ImportErrorAdapter() {
        super(null, 1, null);
        this.errorList = new ArrayList<>();
        this.retryList = new ArrayList<>();
    }

    /* renamed from: n */
    public static final void m50748n(ErrorHolder holder, ImportErrorAdapter this$0, ImportResultBean importResultBean, View view) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        holder.getTvRetry().setVisibility(8);
        holder.getProgress().setVisibility(0);
        this$0.retryList.add(importResultBean.getBackupName());
        Function1<? super ImportResultBean, Unit> function1 = this$0.callback;
        if (function1 != null) {
            function1.invoke(importResultBean);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public int getItemCount(@NotNull List<? extends ImportResultBean> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return this.errorList.size();
    }

    /* renamed from: m */
    public final boolean m50749m(ImportResultBean importResultBean) {
        Object obj;
        Iterator<T> it2 = this.errorList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((ImportResultBean) obj).getBackupName(), importResultBean.getBackupName())) {
                break;
            }
        }
        return ((ImportResultBean) obj) != null;
    }

    public final void setRetryCallback(@NotNull Function1<? super ImportResultBean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void updateError(@NotNull ImportResultBean importResultBean) {
        Object obj;
        Intrinsics.checkNotNullParameter(importResultBean, "importResultBean");
        if (!m50749m(importResultBean)) {
            if (importResultBean.getIsSuccess()) {
                return;
            }
            this.errorList.add(importResultBean);
            submitList(this.errorList);
            notifyDataSetChanged();
            return;
        }
        Iterator<T> it2 = this.errorList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (Intrinsics.areEqual(((ImportResultBean) obj).getBackupName(), importResultBean.getBackupName())) {
                    break;
                }
            }
        }
        ImportResultBean importResultBean2 = (ImportResultBean) obj;
        if (importResultBean2 != null) {
            importResultBean2.copy(importResultBean);
            if (this.retryList.contains(importResultBean.getBackupName())) {
                this.retryList.remove(importResultBean.getBackupName());
            }
            notifyDataSetChanged();
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull final ErrorHolder holder, int position, @Nullable final ImportResultBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item != null) {
            holder.getErrorName().setText(item.getBackupName());
            BackupErrorType errorType = item.getErrorType();
            if (errorType != null) {
                holder.getErrorCodeDes().setText(ResManager.INSTANCE.getString(errorType.getErrorDescription()));
                holder.getErrorCode().setVisibility(errorType.getCanRetry() ^ true ? 0 : 8);
                holder.getErrorCode().setText(errorType.getErrorCode());
                if (errorType.getCanRetry()) {
                    if (this.retryList.contains(item.getBackupName())) {
                        holder.getProgress().setVisibility(0);
                    } else {
                        holder.getProgress().setVisibility(8);
                        holder.getTvCompleted().setVisibility(item.getIsSuccess() ? 0 : 8);
                        holder.getTvRetry().setVisibility(item.getIsSuccess() ^ true ? 0 : 8);
                    }
                    holder.getTvRetry().setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qii
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ImportErrorAdapter.m50748n(ImportErrorAdapter.ErrorHolder.this, this, item, view);
                        }
                    });
                }
            }
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public ErrorHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_import_error_holder, parent, false);
        Intrinsics.checkNotNull(inflate);
        return new ErrorHolder(inflate);
    }
}
