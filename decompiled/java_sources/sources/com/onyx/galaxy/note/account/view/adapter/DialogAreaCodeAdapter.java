package com.onyx.galaxy.note.account.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.account.model.AreaCodeModel;
import com.onyx.galaxy.note.account.view.adapter.DialogAreaCodeAdapter;
import com.onyx.galaxy.note.databinding.ItemAreaCodeBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B2\u0012!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\t0\u0014\u0012\u0006\u0010\u001d\u001a\u00020\u0011¢\u0006\u0004\b\u001e\u0010\u001fJ(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007R/\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\t0\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/account/model/AreaCodeModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemAreaCodeBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "", "code", "updateAreaCode", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "model", "r", "Lkotlin/jvm/functions/Function1;", "selectFunc", "s", Constants.STRING_SIG, "currCode", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DialogAreaCodeAdapter extends BaseQuickAdapter<AreaCodeModel, DataBindingHolder<ItemAreaCodeBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Function1<AreaCodeModel, Unit> selectFunc;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public String currCode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DialogAreaCodeAdapter(@NotNull Function1<? super AreaCodeModel, Unit> selectFunc, @NotNull String currCode) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(selectFunc, "selectFunc");
        Intrinsics.checkNotNullParameter(currCode, "currCode");
        this.selectFunc = selectFunc;
        this.currCode = currCode;
    }

    /* renamed from: m */
    public static final void m41993m(DialogAreaCodeAdapter this$0, AreaCodeModel areaCodeModel, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectFunc.invoke(areaCodeModel);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void updateAreaCode(@NotNull String code) {
        Intrinsics.checkNotNullParameter(code, "code");
        this.currCode = code;
        notifyDataSetChanged();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemAreaCodeBinding> holder, int position, @Nullable final AreaCodeModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().setModel(item);
        if (position % 2 != 0) {
            holder.getBinding().vDivider.setVisibility(8);
        } else {
            holder.getBinding().vDivider.setVisibility(0);
        }
        Debug.INSTANCE.m32035d(DialogAreaCodeAdapter.class, "item.code:" + item.getCode() + ";currCode:" + this.currCode, new Object[0]);
        if (Intrinsics.areEqual(item.getCode(), this.currCode)) {
            holder.getBinding().btn.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_primary_color_01));
        } else {
            holder.getBinding().btn.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
        }
        holder.getBinding().btn.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.f4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogAreaCodeAdapter.m41993m(DialogAreaCodeAdapter.this, item, view);
            }
        });
        holder.getBinding().executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemAreaCodeBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemAreaCodeBinding inflate = ItemAreaCodeBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
