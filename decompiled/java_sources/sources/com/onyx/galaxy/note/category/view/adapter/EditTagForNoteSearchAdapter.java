package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.galaxy.note.category.view.adapter.EditTagForNoteSearchAdapter;
import com.onyx.galaxy.note.common.data.EditTagForNoteContext;
import com.onyx.galaxy.note.databinding.ItemEditTagForNoteSearchBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u001bB\u001d\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0015¢\u0006\u0004\b\u0019\u0010\u001aJ$\u0010\n\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J&\u0010\u000f\u001a\u00020\u000e2\n\u0010\u000b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\f\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0002H\u0003R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "m", "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "r", "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "editTagForNoteContext", "Lkotlin/Function0;", "s", "Lkotlin/jvm/functions/Function0;", "onUpdateSelectId", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lkotlin/jvm/functions/Function0;)V", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EditTagForNoteSearchAdapter extends BaseQuickAdapter<NoteTagBean, C11383VH> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditTagForNoteContext editTagForNoteContext;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> onUpdateSelectId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditTagForNoteSearchAdapter(@NotNull EditTagForNoteContext editTagForNoteContext, @NotNull Function0<Unit> onUpdateSelectId) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(editTagForNoteContext, "editTagForNoteContext");
        Intrinsics.checkNotNullParameter(onUpdateSelectId, "onUpdateSelectId");
        this.editTagForNoteContext = editTagForNoteContext;
        this.onUpdateSelectId = onUpdateSelectId;
    }

    /* renamed from: n */
    public static final void m43988n(EditTagForNoteSearchAdapter this$0, NoteTagBean noteTagBean, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43989m(noteTagBean);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: m */
    public final void m43989m(NoteTagBean item) {
        String uniqueId = item.getUniqueId();
        List<String> selectTagIds = this.editTagForNoteContext.getSelectTagIds();
        if (selectTagIds.contains(uniqueId)) {
            selectTagIds.remove(uniqueId);
        } else {
            selectTagIds.add(uniqueId);
        }
        notifyDataSetChanged();
        this.onUpdateSelectId.invoke();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11383VH holder, int position, @Nullable final NoteTagBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNull(item);
        String uniqueId = item.getUniqueId();
        ItemEditTagForNoteSearchBinding binding = holder.getBinding();
        binding.tvItemName.setText(item.getContent());
        binding.ivNoteTreeBottom.setImageTintList(item.getIconColorStateList());
        binding.cbSel.setChecked(this.editTagForNoteContext.getSelectTagIds().contains(uniqueId));
        binding.clsContent.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bmf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTagForNoteSearchAdapter.m43988n(EditTagForNoteSearchAdapter.this, item, view);
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11383VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C11383VH(this, parent, null, 2, null);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteSearchBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteSearchBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteSearchBinding;", "binding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteSearchBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.EditTagForNoteSearchAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11383VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemEditTagForNoteSearchBinding binding;

        /* renamed from: I */
        public final /* synthetic */ EditTagForNoteSearchAdapter f55131I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11383VH(@NotNull EditTagForNoteSearchAdapter editTagForNoteSearchAdapter, @NotNull ViewGroup parent, ItemEditTagForNoteSearchBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55131I = editTagForNoteSearchAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemEditTagForNoteSearchBinding getBinding() {
            return this.binding;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C11383VH(com.onyx.galaxy.note.category.view.adapter.EditTagForNoteSearchAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemEditTagForNoteSearchBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemEditTagForNoteSearchBinding r3 = com.onyx.galaxy.note.databinding.ItemEditTagForNoteSearchBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.EditTagForNoteSearchAdapter.C11383VH.<init>(com.onyx.galaxy.note.category.view.adapter.EditTagForNoteSearchAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemEditTagForNoteSearchBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
