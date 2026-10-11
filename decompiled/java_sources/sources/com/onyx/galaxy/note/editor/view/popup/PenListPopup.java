package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PencilBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.ChangePenBoxEvent;
import com.onyx.android.sdk.universal.common.events.DeleteAllPenBoxEvent;
import com.onyx.android.sdk.universal.common.events.DeletePenBoxEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.ItemPenBoxBinding;
import com.onyx.galaxy.note.databinding.ItemPopupPenBoxPenBinding;
import com.onyx.galaxy.note.databinding.PopupPenListBinding;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.view.IShapeViewOpt;
import com.onyx.galaxy.note.editor.view.adapter.BaseSelectableQuickAdapter;
import com.onyx.galaxy.note.editor.view.popup.PenListPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u000256B'\u0012\u0006\u0010\u001f\u001a\u00020\u0018\u0012\u0006\u0010&\u001a\u00020\u0004\u0012\u0006\u0010\u0016\u001a\u00020\u0004\u0012\u0006\u00102\u001a\u000201¢\u0006\u0004\b3\u00104J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0012\u0010\f\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0014\u0010\u000f\u001a\u00020\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0002J\u0016\u0010\u0012\u001a\u00020\u00022\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\u000e\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0004R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010&\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010\u0016\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010!\u001a\u0004\b'\u0010#\"\u0004\b(\u0010%R\u0018\u0010+\u001a\u00060)R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b-\u0010/¨\u00067"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "v", "Landroid/view/View;", "view", "", "pos", "G", "F", "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;", "item", "E", "s", "penBox", "H", "", "penBoxList", "t", "K", "J", "L", Constants.ELEMNAME_ANCHOR_STRING, "showAlignByDockType", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "r", "Landroid/view/View;", "getRootView", "()Landroid/view/View;", "setRootView", "(Landroid/view/View;)V", "rootView", "getAnchor", "setAnchor", "Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;", "Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;", "penBoxAdapter", "Lcom/onyx/galaxy/note/databinding/PopupPenListBinding;", "u", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/PopupPenListBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "a", "b", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PenListPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public View rootView;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public View anchor;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final C12451b penBoxAdapter;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PenListPopup$a */
    /* loaded from: classes9.dex */
    public final class C12450a extends BaseQuickAdapter<PenArgs, DataBindingHolder<ItemPopupPenBoxPenBinding>> {
        public C12450a() {
            super(null, 1, null);
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter
        /* renamed from: l, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NotNull DataBindingHolder<ItemPopupPenBoxPenBinding> holder, int i, @Nullable PenArgs penArgs) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (penArgs == null) {
                return;
            }
            holder.getBinding().setModel(penArgs);
            PhysicalShapeIconView iconView = holder.getBinding().iconView;
            Intrinsics.checkNotNullExpressionValue(iconView, "iconView");
            IShapeViewOpt.DefaultImpls.setViewSelect$default(iconView, false, false, 2, null);
            holder.getBinding().executePendingBindings();
            holder.getBinding().value.setText(String.valueOf(FloatKt.keepFloat(PensizeConvertExtKt.sizeToValue(penArgs.getWidth()), 2)));
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter
        @NotNull
        public DataBindingHolder<ItemPopupPenBoxPenBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            ItemPopupPenBoxPenBinding inflate = ItemPopupPenBoxPenBinding.inflate(LayoutInflater.from(context), parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
            return new DataBindingHolder<>(inflate);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PenListPopup$b */
    /* loaded from: classes9.dex */
    public final class C12451b extends BaseSelectableQuickAdapter<PencilBox, DataBindingHolder<ItemPenBoxBinding>> {
        public C12451b() {
        }

        /* renamed from: o */
        public static final void m49319o(PenListPopup this$0, PencilBox pencilBox, BaseQuickAdapter baseQuickAdapter, View view, int i) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
            Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
            this$0.m49305E(pencilBox);
        }

        /* renamed from: p */
        public static final boolean m49320p(PenListPopup this$0, int i, BaseQuickAdapter baseQuickAdapter, View view, int i2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
            Intrinsics.checkNotNullParameter(view, "view");
            this$0.m49307G(view, i);
            return true;
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NotNull DataBindingHolder<ItemPenBoxBinding> holder, final int i, @Nullable final PencilBox pencilBox) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (pencilBox == null) {
                return;
            }
            String name = pencilBox.getName();
            if (name.length() == 0) {
                name = ResManager.INSTANCE.getString(C10651R.string.custom_pen_box);
            }
            C12450a c12450a = new C12450a();
            final PenListPopup penListPopup = PenListPopup.this;
            ItemClickUtilsKt.setOnDebouncedItemClick$default(c12450a, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.y1l
                @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
                public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    PenListPopup.C12451b.m49319o(PenListPopup.this, pencilBox, baseQuickAdapter, view, i2);
                }
            }, 1, null);
            final PenListPopup penListPopup2 = PenListPopup.this;
            c12450a.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.z1l
                @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
                public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    boolean m49320p;
                    m49320p = PenListPopup.C12451b.m49320p(PenListPopup.this, i, baseQuickAdapter, view, i2);
                    return m49320p;
                }
            });
            c12450a.submitList(pencilBox.getPenList());
            holder.getBinding().setModel(pencilBox);
            holder.getBinding().name.setText(name);
            holder.getBinding().penList.setLayoutManager(new LinearLayoutManager(PenListPopup.this.m49314u().getRoot().getContext(), 0, false));
            holder.getBinding().penList.setAdapter(c12450a);
            holder.getBinding().getRoot().setSelected(Intrinsics.areEqual(PencilBoxManager.INSTANCE.getPencilBox().getSelectedId(), pencilBox.getId()));
            ViewKt.setViewVisibleOrGone(holder.getBinding().ivSelect, getSelectionMode());
            holder.getBinding().ivSelect.setSelected(isItemSelected(pencilBox));
            ViewKt.setViewVisibleOrGone(holder.getBinding().vLine, i < getItemCount() - 1);
            holder.getBinding().executePendingBindings();
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter
        @NotNull
        public DataBindingHolder<ItemPenBoxBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            ItemPenBoxBinding inflate = ItemPenBoxBinding.inflate(LayoutInflater.from(context), parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
            return new DataBindingHolder<>(inflate);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PenListPopup(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.EditorBundle r3, @org.jetbrains.annotations.NotNull android.view.View r4, @org.jetbrains.annotations.NotNull android.view.View r5, @org.jetbrains.annotations.NotNull com.onyx.galaxy.note.editor.view.toolbar.DockType r6) {
        /*
            r2 = this;
            java.lang.String r0 = "editorBundle"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "rootView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "anchor"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "dockType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            android.content.Context r0 = r5.getContext()
            java.lang.String r1 = "getContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0, r6)
            r2.editorBundle = r3
            r2.rootView = r4
            r2.anchor = r5
            com.onyx.galaxy.note.editor.view.popup.PenListPopup$b r3 = new com.onyx.galaxy.note.editor.view.popup.PenListPopup$b
            r3.<init>()
            r2.penBoxAdapter = r3
            com.onyx.galaxy.note.editor.view.popup.PenListPopup$binding$2 r3 = new com.onyx.galaxy.note.editor.view.popup.PenListPopup$binding$2
            r3.<init>()
            kotlin.Lazy r3 = kotlin.LazyKt.lazy(r3)
            r2.binding = r3
            r2.m49315v()
            com.onyx.android.sdk.universal.editor.EditorBundle r3 = r2.editorBundle
            com.onyx.galaxy.note.editor.event.CreateOtherPopupEvent r4 = new com.onyx.galaxy.note.editor.event.CreateOtherPopupEvent
            r4.<init>(r2)
            com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.postEvent(r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.PenListPopup.<init>(com.onyx.android.sdk.universal.editor.EditorBundle, android.view.View, android.view.View, com.onyx.galaxy.note.editor.view.toolbar.DockType):void");
    }

    /* renamed from: A */
    public static final void m49288A(PenListPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49313t(this$0.penBoxAdapter.getSelectedItems());
    }

    /* renamed from: B */
    public static final void m49289B(PenListPopup this$0, View view) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this$0.penBoxAdapter.getSelectedItems());
        PencilBox pencilBox = (PencilBox) firstOrNull;
        if (pencilBox == null) {
            return;
        }
        this$0.m49308H(pencilBox);
    }

    /* renamed from: C */
    public static final void m49290C(PenListPopup this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m49305E((PencilBox) adapter.getItem(i));
    }

    /* renamed from: D */
    public static final boolean m49291D(PenListPopup this$0, BaseQuickAdapter baseQuickAdapter, View v, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(v, "v");
        this$0.m49307G(v, i);
        return true;
    }

    /* renamed from: I */
    public static /* synthetic */ void m49292I(PenListPopup penListPopup, PencilBox pencilBox, int i, Object obj) {
        if ((i & 1) != 0) {
            pencilBox = null;
        }
        penListPopup.m49308H(pencilBox);
    }

    /* renamed from: w */
    public static final void m49301w(PenListPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49310K();
    }

    /* renamed from: x */
    public static final void m49302x(PenListPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49309J();
    }

    /* renamed from: y */
    public static final void m49303y(PenListPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49310K();
    }

    /* renamed from: z */
    public static final void m49304z(PenListPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m49292I(this$0, null, 1, null);
    }

    /* renamed from: E */
    public final void m49305E(PencilBox item) {
        if (item == null) {
            return;
        }
        if (this.penBoxAdapter.getSelectionMode()) {
            this.penBoxAdapter.toggleSelectItem(item);
            m49311L();
            m49312s();
        } else {
            PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
            companion.updateSelectedBoxId(item.getId());
            companion.updateSelectedId(null, item.getId());
            this.penBoxAdapter.notifyDataSetChanged();
            EditorBundleKt.postEvent(this.editorBundle, new ChangePenBoxEvent());
            dismiss();
        }
    }

    /* renamed from: F */
    public final void m49306F() {
        this.penBoxAdapter.clearSelectedItems();
        this.penBoxAdapter.submitList(PencilBoxManager.INSTANCE.getPencilBoxList());
        this.penBoxAdapter.notifyDataSetChanged();
    }

    /* renamed from: G */
    public final void m49307G(View view, final int pos) {
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new ContextMenuPopup(context, C10651R.menu.penbox_action_menu, new Function1<MenuItem, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenListPopup$showPenBoxActionPopup$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull MenuItem it2) {
                PenListPopup.C12451b c12451b;
                List listOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                c12451b = PenListPopup.this.penBoxAdapter;
                PencilBox item = c12451b.getItem(pos);
                if (item == null) {
                    return;
                }
                int itemId = it2.getItemId();
                if (itemId == C10651R.id.delete) {
                    PenListPopup penListPopup = PenListPopup.this;
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(item);
                    penListPopup.m49313t(listOf);
                } else if (itemId == C10651R.id.rename) {
                    PenListPopup.this.m49308H(item);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MenuItem menuItem) {
                invoke2(menuItem);
                return Unit.INSTANCE;
            }
        }, null, 8, null).showDynamicPositionDropDown(view);
    }

    /* renamed from: H */
    public final void m49308H(PencilBox penBox) {
        ResManager resManager;
        int integer;
        if (penBox == null && PencilBoxManager.INSTANCE.getPenBoxCount() >= (integer = (resManager = ResManager.INSTANCE).getInteger(C10651R.integer.pen_box_max_count_limit))) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) resManager.getString(C10651R.string.pen_box_full_quantity_tip, Integer.valueOf(integer)), false, 2, (Object) null);
        } else {
            dismiss();
            BasePopupWindow.showToRoot$default(new PenCreateAndRenamePopup(this.editorBundle, this.rootView, this.anchor, getDockType(), penBox), this.rootView, this.anchor, null, 4, null);
        }
    }

    /* renamed from: J */
    public final void m49309J() {
        this.penBoxAdapter.toggleSelectAll();
        m49311L();
        m49312s();
    }

    /* renamed from: K */
    public final void m49310K() {
        this.penBoxAdapter.toggleSelectionMode();
        m49311L();
    }

    /* renamed from: L */
    public final void m49311L() {
        boolean selectionMode = this.penBoxAdapter.getSelectionMode();
        ViewKt.setViewVisibleOrGone(m49314u().batchActionView, selectionMode);
        ViewKt.setViewVisibleOrInvisible(m49314u().penBoxSelectAll, selectionMode);
        ViewKt.setViewVisibleOrInvisible(m49314u().penBoxFinish, selectionMode);
        ViewKt.setViewVisibleOrGone(m49314u().batch, !selectionMode);
        ViewKt.setViewVisibleOrGone(m49314u().createPenBox, !selectionMode);
        m49314u().deletePenBox.setEnabled(CollectionKt.getSize(this.penBoxAdapter.getSelectedItems()) > 0);
        m49314u().renamePenBox.setEnabled(CollectionKt.getSize(this.penBoxAdapter.getSelectedItems()) == 1);
    }

    @NotNull
    public final View getAnchor() {
        return this.anchor;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final View getRootView() {
        return this.rootView;
    }

    /* renamed from: s */
    public final void m49312s() {
        m49314u().penBoxSelectAll.setText(this.penBoxAdapter.isAllItemSelected() ? C10651R.string.check_out_all : C10651R.string.select_all);
    }

    public final void setAnchor(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.anchor = view;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void setRootView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.rootView = view;
    }

    public final void showAlignByDockType(@NotNull View anchor) {
        WindowLocation windowLocation;
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        View topContentView = Activity.INSTANCE.getTopContentView();
        int i = -((int) ResManager.INSTANCE.getDimension(C7384R.dimen.dp_10));
        int i2 = WhenMappings.$EnumSwitchMapping$0[getDockType().ordinal()];
        if (i2 == 1) {
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this, anchor, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_LEFT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.BOTTOM_LEFT, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : i, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : topContentView);
        } else if (i2 == 2) {
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this, anchor, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.BOTTOM_LEFT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_LEFT, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : i, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : topContentView);
        } else if (i2 == 3) {
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this, anchor, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_LEFT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_RIGHT, (r17 & 8) != 0 ? 0 : i, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : topContentView);
        } else {
            if (i2 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this, anchor, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_RIGHT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_LEFT, (r17 & 8) != 0 ? 0 : i, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : topContentView);
        }
        PopupLocator.INSTANCE.show(this, windowLocation, topContentView);
    }

    /* renamed from: t */
    public final void m49313t(final List<PencilBox> penBoxList) {
        Context context = m49314u().getRoot().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new CommonDialog.Builder(context).setTitle(C10651R.string.delete).setWarning(true).setMessage(C10651R.string.delete_pen_box_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenListPopup$deletePenBox$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String editTextStr) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editTextStr, "editTextStr");
                ArrayList arrayList = new ArrayList();
                Iterator<PencilBox> it2 = penBoxList.iterator();
                while (it2.hasNext()) {
                    arrayList.addAll(PencilBoxManager.Companion.getPenList$default(PencilBoxManager.INSTANCE, it2.next().getId(), null, null, 6, null));
                }
                PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
                List<PencilBox> list = penBoxList;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it3 = list.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(((PencilBox) it3.next()).getId());
                }
                companion.deletePencilBox(arrayList2);
                if (!PencilBoxManager.INSTANCE.hasPenBox()) {
                    EditorBundleKt.postEvent(this.getEditorBundle(), new DeleteAllPenBoxEvent());
                    this.dismiss();
                } else {
                    this.m49306F();
                    EditorBundleKt.postEvent(this.getEditorBundle(), new DeletePenBoxEvent(arrayList));
                    this.m49311L();
                }
            }
        }).create().show();
    }

    /* renamed from: u */
    public final PopupPenListBinding m49314u() {
        return (PopupPenListBinding) this.binding.getValue();
    }

    /* renamed from: v */
    public final void m49315v() {
        View root = m49314u().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(true);
        setFocusable(true);
        TintImageView batch = m49314u().batch;
        Intrinsics.checkNotNullExpressionValue(batch, "batch");
        com.onyx.android.sdk.extension.ViewKt.shortClick(batch, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.q1l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PenListPopup.m49301w(PenListPopup.this, view);
            }
        });
        TintTextView penBoxSelectAll = m49314u().penBoxSelectAll;
        Intrinsics.checkNotNullExpressionValue(penBoxSelectAll, "penBoxSelectAll");
        com.onyx.android.sdk.extension.ViewKt.shortClick(penBoxSelectAll, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r1l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PenListPopup.m49302x(PenListPopup.this, view);
            }
        });
        TintTextView penBoxFinish = m49314u().penBoxFinish;
        Intrinsics.checkNotNullExpressionValue(penBoxFinish, "penBoxFinish");
        com.onyx.android.sdk.extension.ViewKt.shortClick(penBoxFinish, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s1l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PenListPopup.m49303y(PenListPopup.this, view);
            }
        });
        TintImageView createPenBox = m49314u().createPenBox;
        Intrinsics.checkNotNullExpressionValue(createPenBox, "createPenBox");
        com.onyx.android.sdk.extension.ViewKt.shortClick(createPenBox, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t1l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PenListPopup.m49304z(PenListPopup.this, view);
            }
        });
        TintTextView deletePenBox = m49314u().deletePenBox;
        Intrinsics.checkNotNullExpressionValue(deletePenBox, "deletePenBox");
        com.onyx.android.sdk.extension.ViewKt.shortClick(deletePenBox, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u1l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PenListPopup.m49288A(PenListPopup.this, view);
            }
        });
        TintTextView renamePenBox = m49314u().renamePenBox;
        Intrinsics.checkNotNullExpressionValue(renamePenBox, "renamePenBox");
        com.onyx.android.sdk.extension.ViewKt.shortClick(renamePenBox, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v1l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PenListPopup.m49289B(PenListPopup.this, view);
            }
        });
        ItemClickUtilsKt.setOnDebouncedItemClick$default(this.penBoxAdapter, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.w1l
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                PenListPopup.m49290C(PenListPopup.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        this.penBoxAdapter.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.x1l
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m49291D;
                m49291D = PenListPopup.m49291D(PenListPopup.this, baseQuickAdapter, view, i);
                return m49291D;
            }
        });
        m49314u().penBoxList.setLayoutManager(new LinearLayoutManager(m49314u().getRoot().getContext()));
        m49314u().penBoxList.setAdapter(this.penBoxAdapter);
        m49306F();
    }
}
