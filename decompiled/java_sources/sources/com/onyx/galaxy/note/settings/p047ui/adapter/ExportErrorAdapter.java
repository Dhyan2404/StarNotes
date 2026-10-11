package com.onyx.galaxy.note.settings.p047ui.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.common.data.ErrorCode;
import com.onyx.android.sdk.data.utils.ThrowableUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ExportErrorItemBinding;
import com.onyx.galaxy.note.settings.p047ui.adapter.ExportErrorAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0019\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u001eJ(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0015J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0012\u0010\u0013\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001c\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ExportErrorItemBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Lcom/onyx/android/sdk/data/common/data/ErrorCode;", "errorCode", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "s", "I", "titleSuffixResId", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class ExportErrorAdapter extends BaseQuickAdapter<NoteExportArgs, DataBindingHolder<ExportErrorItemBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: s, reason: from kotlin metadata */
    public final int titleSuffixResId;

    public /* synthetic */ ExportErrorAdapter(EditorBundle editorBundle, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i2 & 2) != 0 ? C10651R.string.export_fail : i);
    }

    /* renamed from: m */
    public static final void m50745m(ExportErrorAdapter this$0, ErrorCode errorCode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50746n(errorCode);
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: n */
    public final void m50746n(ErrorCode errorCode) {
        if (errorCode != null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) errorCode.getErrorMessage(), false, 2, (Object) null);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @SuppressLint({"SetTextI18n"})
    public void onBindViewHolder(@NotNull DataBindingHolder<ExportErrorItemBinding> holder, int position, @Nullable NoteExportArgs item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        TintTextView tintTextView = holder.getBinding().tvTitle;
        StringBuilder sb = new StringBuilder();
        sb.append((char) 12298);
        sb.append(item.getNoteModel().getTitle());
        sb.append((char) 12299);
        ResManager resManager = ResManager.INSTANCE;
        sb.append(resManager.getString(this.titleSuffixResId));
        tintTextView.setText(sb.toString());
        Throwable throwable = item.getNoteProgressInfo().getThrowable();
        final ErrorCode errorCode = throwable != null ? ThrowableUtils.INSTANCE.getErrorCode(throwable) : null;
        TintTextView tintTextView2 = holder.getBinding().tvError;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(resManager.getString(C10651R.string.error_code));
        sb2.append(':');
        sb2.append(errorCode != null ? errorCode.getCode() : null);
        tintTextView2.setText(sb2.toString());
        holder.getBinding().executePendingBindings();
        holder.getBinding().tvError.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.d2g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExportErrorAdapter.m50745m(ExportErrorAdapter.this, errorCode, view);
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ExportErrorItemBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ExportErrorItemBinding inflate = ExportErrorItemBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportErrorAdapter(@NotNull EditorBundle editorBundle, int i) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.titleSuffixResId = i;
    }
}
