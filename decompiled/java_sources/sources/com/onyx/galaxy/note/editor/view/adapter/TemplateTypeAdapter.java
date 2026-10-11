package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.galaxy.note.databinding.LayoutItemTextBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0011¢\u0006\u0004\b\u0019\u0010\u0017J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/TemplateTypeAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/LayoutItemTextBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "", "r", Constants.STRING_SIG, "getUniqueId", "()Ljava/lang/String;", "setUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_UNIQUE_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TemplateTypeAdapter extends BaseQuickAdapter<TemplateModel, DataBindingHolder<LayoutItemTextBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public String uniqueId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateTypeAdapter(@NotNull String uniqueId) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        this.uniqueId = uniqueId;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<LayoutItemTextBinding> holder, int position, @Nullable TemplateModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().title.setText(ResManager.INSTANCE.getStringSafely(item.getTitleResName(), item.getTitle()));
        holder.getBinding().content.setSelected(Intrinsics.areEqual(this.uniqueId, item.getUniqueId()));
        holder.getBinding().executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<LayoutItemTextBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutItemTextBinding inflate = LayoutItemTextBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
