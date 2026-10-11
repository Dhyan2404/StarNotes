package com.onyx.galaxy.note.editor.view.popup;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.p039ui.BasePopWindow;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.databinding.ItemContextMenuBinding;
import com.onyx.galaxy.note.databinding.PopupContextMenuBinding;
import com.onyx.galaxy.note.editor.view.adapter.BaseSelectableQuickAdapter;
import com.onyx.galaxy.note.editor.view.popup.ContextMenuPopup;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001!Bc\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t\u0012!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00020\r\u0012'\b\u0002\u0010\u0016\u001a!\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\r¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0003R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR/\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R3\u0010\u0016\u001a!\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u00060\u001bR\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;", "Lcom/onyx/android/sdk/ui/BasePopWindow;", "", C6997f.f39671c, C6999h.f39688c, "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "", "l", "I", "menuResId", "Lkotlin/Function1;", "Landroid/view/MenuItem;", "Lkotlin/ParameterName;", "name", "menuItem", "m", "Lkotlin/jvm/functions/Function1;", "onClick", GoogleApiAvailabilityLight.f29016b, "inflateConsumer", "Lcom/onyx/galaxy/note/databinding/PopupContextMenuBinding;", C4921e.f26528e, "Lcom/onyx/galaxy/note/databinding/PopupContextMenuBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup$MenuAdapter;", "p", "Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup$MenuAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "MenuAdapter", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nContextMenuPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextMenuPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup\n+ 2 Menu.kt\nandroidx/core/view/MenuKt\n*L\n1#1,107:1\n56#2,4:108\n*S KotlinDebug\n*F\n+ 1 ContextMenuPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup\n*L\n68#1:108,4\n*E\n"})
/* loaded from: classes9.dex */
public final class ContextMenuPopup extends BasePopWindow {

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    public final int menuResId;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Function1<MenuItem, Unit> onClick;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public final Function1<MenuItem, MenuItem> inflateConsumer;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final PopupContextMenuBinding binding;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final MenuAdapter adapter;

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0005J(\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\nH\u0014¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup$MenuAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;", "Landroid/view/MenuItem;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemContextMenuBinding;", "(Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;)V", "onBindViewHolder", "", "holder", "position", "", "item", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public final class MenuAdapter extends BaseSelectableQuickAdapter<MenuItem, DataBindingHolder<ItemContextMenuBinding>> {
        public MenuAdapter() {
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter
        public void onBindViewHolder(@NotNull DataBindingHolder<ItemContextMenuBinding> holder, int position, @Nullable MenuItem item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (item == null) {
                return;
            }
            holder.getBinding().setModel(item);
            holder.getBinding().executePendingBindings();
            CharSequence titleCondensed = item.getTitleCondensed();
            if (titleCondensed == null || !Intrinsics.areEqual(titleCondensed.toString(), ResManager.INSTANCE.getString(C10651R.string.warning))) {
                return;
            }
            holder.getBinding().show.setTextColor(ThemeUtils.getThemeColorStateList(getContext(), C10651R.color.selector_color_red_gray));
            holder.getBinding().itemContainer.setBackgroundResource(C10651R.drawable.theme_ripple_bg_no_radius_error);
            holder.getBinding().ivIcon.setImageTintList(C10651R.color.selector_color_red_gray);
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter
        @NotNull
        public DataBindingHolder<ItemContextMenuBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            ItemContextMenuBinding inflate = ItemContextMenuBinding.inflate(LayoutInflater.from(context), parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
            return new DataBindingHolder<>(inflate);
        }
    }

    public /* synthetic */ ContextMenuPopup(Context context, int i, Function1 function1, Function1 function12, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, i, function1, (i2 & 8) != 0 ? null : function12);
    }

    /* renamed from: g */
    public static final void m48610g(ContextMenuPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        MenuItem item = this$0.adapter.getItem(i);
        if (item != null && item.isEnabled()) {
            this$0.onClick.invoke(item);
            this$0.dismiss();
        }
    }

    /* renamed from: f */
    public final void m48611f() {
        setContentView(this.binding.getRoot());
        PopupWindowKt.setDefaultAttribute(this);
        setFocusable(false);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this.adapter, C10651R.id.item_container, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.xbe
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ContextMenuPopup.m48610g(ContextMenuPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        this.binding.recyclerView.setLayoutManager(new LinearLayoutManager(this.context, 1, false));
        this.binding.recyclerView.setAdapter(this.adapter);
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: h */
    public final void m48612h() {
        MenuItem invoke;
        ArrayList arrayList = new ArrayList();
        MenuBuilder menuBuilder = new MenuBuilder(this.context);
        new MenuInflater(this.context).inflate(this.menuResId, menuBuilder);
        int size = menuBuilder.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menuBuilder.getItem(i);
            Function1<MenuItem, MenuItem> function1 = this.inflateConsumer;
            if (function1 != null && (invoke = function1.invoke(item)) != null) {
                item = invoke;
            }
            CollectionKt.safeAdd(arrayList, item);
        }
        this.adapter.submitList(arrayList);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContextMenuPopup(@NotNull Context context, int i, @NotNull Function1<? super MenuItem, Unit> onClick, @Nullable Function1<? super MenuItem, ? extends MenuItem> function1) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        this.context = context;
        this.menuResId = i;
        this.onClick = onClick;
        this.inflateConsumer = function1;
        PopupContextMenuBinding inflate = PopupContextMenuBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.adapter = new MenuAdapter();
        m48611f();
        m48612h();
    }
}
