package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemNoteTabBinding;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0015\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b,\u0010-J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0012\u0010\u0011\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0007J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0007J\u0016\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0002J\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u0002H\u0002R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR*\u0010$\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u00198\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R*\u0010+\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00068\u0006@GX\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteTabBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "setSelectedItem", "", Transition.f10629M0, "selectedItem", "removeItem", "getSelectedItem", "binding", "l", "", "m", "r", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "value", "s", Constants.HASIDCALL_INDEX_SIG, "getShowGuideDivider", Constants.BOOLEAN_VALUE_SIG, "setShowGuideDivider", "(Z)V", "showGuideDivider", "t", "I", "getListWidth", "()I", "setListWidth", "(I)V", "listWidth", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteTabAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTabAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n256#2,2:140\n350#3,7:142\n350#3,7:149\n*S KotlinDebug\n*F\n+ 1 NoteTabAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter\n*L\n61#1:140,2\n77#1:142,7\n86#1:149,7\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteTabAdapter extends BaseQuickAdapter<NoteTabData, DataBindingHolder<ItemNoteTabBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public NoteTabData selectedItem;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean showGuideDivider;

    /* renamed from: t, reason: from kotlin metadata */
    public int listWidth;

    public NoteTabAdapter() {
        super(null, 1, null);
    }

    public final int getListWidth() {
        return this.listWidth;
    }

    @Nullable
    public final NoteTabData getSelectedItem() {
        return this.selectedItem;
    }

    public final boolean getShowGuideDivider() {
        return this.showGuideDivider;
    }

    /* renamed from: l */
    public final void m47647l(ItemNoteTabBinding binding, NoteTabData item) {
        Boolean encrypted = item.getEncrypted();
        Drawable drawable = null;
        if (encrypted != null && encrypted.booleanValue()) {
            drawable = m47648m(item) ? ThemeUtils.getThemeDrawable(C10651R.drawable.icon_tab_note_lock) : ThemeUtils.getThemeDrawable(C10651R.drawable.icon_tab_note_unlock);
        }
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        binding.ivEncryption.setImageDrawable(drawable);
    }

    /* renamed from: m */
    public final boolean m47648m(NoteTabData item) {
        AutoReLockNoteManager autoReLockNoteManager = AutoReLockNoteManager.INSTANCE;
        if (!autoReLockNoteManager.checkEnableAutoReLock()) {
            return false;
        }
        String uniqueId = item.getUniqueId();
        if (autoReLockNoteManager.isNoteReLocked(uniqueId)) {
            return true;
        }
        return Intrinsics.areEqual(item.getEncrypted(), Boolean.TRUE) && !autoReLockNoteManager.hasAutoReLockNoteTask(uniqueId);
    }

    public final void removeItem(final int position, @NotNull NoteTabData selectedItem) {
        Intrinsics.checkNotNullParameter(selectedItem, "selectedItem");
        NoteTabData selectedItem2 = getSelectedItem();
        NoteTabData noteTabData = (NoteTabData) AnyKt.getOrElseNull(getItem(position + 1), new Function0<NoteTabData>() { // from class: com.onyx.galaxy.note.editor.view.adapter.NoteTabAdapter$removeItem$nextItem$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final NoteTabData invoke() {
                return NoteTabAdapter.this.getItem(position - 1);
            }
        });
        removeAt(position);
        notifyItemRemoved(position);
        if (Intrinsics.areEqual(selectedItem2 != null ? selectedItem2.getUniqueId() : null, selectedItem.getUniqueId())) {
            setSelectedItem(noteTabData);
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void setListWidth(int i) {
        if (this.listWidth != i) {
            this.listWidth = i;
            notifyDataSetChanged();
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void setSelectedItem(@Nullable NoteTabData item) {
        this.selectedItem = item;
        Iterator<NoteTabData> it2 = getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            String uniqueId = it2.next().getUniqueId();
            NoteTabData noteTabData = this.selectedItem;
            if (Intrinsics.areEqual(uniqueId, noteTabData != null ? noteTabData.getUniqueId() : null)) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            getRecyclerView().scrollToPosition(i);
        }
        notifyDataSetChanged();
    }

    public final void setShowGuideDivider(boolean z) {
        this.showGuideDivider = z;
        notifyItemChanged(getItemCount() - 1);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemNoteTabBinding> holder, int position, @Nullable NoteTabData item) {
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(this.listWidth / getItems().size(), ResManager.INSTANCE.getDimens(C10651R.dimen.tab_item_min_width));
        holder.getBinding().getRoot().getLayoutParams().width = coerceAtLeast;
        holder.getBinding().setModel(item);
        View root = holder.getBinding().getRoot();
        NoteTabData noteTabData = this.selectedItem;
        root.setSelected(Intrinsics.areEqual(noteTabData != null ? noteTabData.getUniqueId() : null, item.getUniqueId()));
        TintTextView tintTextView = holder.getBinding().title;
        NoteTabData noteTabData2 = this.selectedItem;
        tintTextView.setSelected(Intrinsics.areEqual(noteTabData2 != null ? noteTabData2.getUniqueId() : null, item.getUniqueId()));
        TintImageView tintImageView = holder.getBinding().close;
        NoteTabData noteTabData3 = this.selectedItem;
        tintImageView.setSelected(Intrinsics.areEqual(noteTabData3 != null ? noteTabData3.getUniqueId() : null, item.getUniqueId()));
        ItemNoteTabBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        m47647l(binding, item);
        holder.getBinding().executePendingBindings();
        if (position == getItemCount() - 1 && this.showGuideDivider) {
            View guideDivider = holder.getBinding().guideDivider;
            Intrinsics.checkNotNullExpressionValue(guideDivider, "guideDivider");
            guideDivider.setVisibility(this.showGuideDivider ? 0 : 8);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemNoteTabBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemNoteTabBinding inflate = ItemNoteTabBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void setSelectedItem(@NotNull String itemId) {
        Object orNull;
        Intrinsics.checkNotNullParameter(itemId, "itemId");
        Iterator<NoteTabData> it2 = getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it2.next().getUniqueId(), itemId)) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            getRecyclerView().scrollToPosition(i);
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(getItems(), i);
        this.selectedItem = (NoteTabData) orNull;
        notifyDataSetChanged();
    }
}
