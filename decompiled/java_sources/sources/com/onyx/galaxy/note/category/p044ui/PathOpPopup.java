package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.PathEntry;
import com.onyx.galaxy.note.category.p044ui.PathOpPopup;
import com.onyx.galaxy.note.category.view.adapter.PathPopupAdapter;
import com.onyx.galaxy.note.databinding.PopupPathOpBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001BZ\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010\"\u001a\u00020 \u0012\b\u0010$\u001a\u0004\u0018\u00010#\u0012!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0004\b%\u0010&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\rR/\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00040\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0017\u0010\u001b\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/PathOpPopup;", "Landroid/widget/PopupWindow;", "Landroid/view/View;", "view", "", "setContentView", "b", "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "", "Lcom/onyx/galaxy/note/category/data/PathEntry;", "Ljava/util/List;", "paths", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "path", "c", "Lkotlin/jvm/functions/Function1;", "onSelectPath", "Lcom/onyx/galaxy/note/databinding/PopupPathOpBinding;", "d", "Lcom/onyx/galaxy/note/databinding/PopupPathOpBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupPathOpBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;", "e", "Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;", "adapter", "", "iconRes", "iconBottomRes", "", "currId", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PathOpPopup extends PopupWindow {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<PathEntry> paths;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Function1<PathEntry, Unit> onSelectPath;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final PopupPathOpBinding binding;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final PathPopupAdapter adapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PathOpPopup(@NotNull Context context, @NotNull List<PathEntry> paths, int i, int i2, @Nullable String str, @NotNull Function1<? super PathEntry, Unit> onSelectPath) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(paths, "paths");
        Intrinsics.checkNotNullParameter(onSelectPath, "onSelectPath");
        this.context = context;
        this.paths = paths;
        this.onSelectPath = onSelectPath;
        PopupPathOpBinding inflate = PopupPathOpBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.adapter = new PathPopupAdapter(i, i2, str);
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43793b();
    }

    /* renamed from: c */
    public static final void m43792c(PathOpPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.onSelectPath.invoke(this$0.adapter.getItems().get(i));
        this$0.dismiss();
    }

    /* renamed from: b */
    public final void m43793b() {
        this.adapter.submitList(this.paths);
        this.binding.f57762rv.setAdapter(this.adapter);
        this.adapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.izk
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                PathOpPopup.m43792c(PathOpPopup.this, baseQuickAdapter, view, i);
            }
        });
    }

    @NotNull
    public final PopupPathOpBinding getBinding() {
        return this.binding;
    }

    @Override // android.widget.PopupWindow
    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void setContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.setContentView(view);
        setWidth(-2);
        setHeight(-2);
        setOutsideTouchable(true);
        setBackgroundDrawable(this.context.getResources().getDrawable(C10651R.drawable.popup_shadow_bg, null));
        setAnimationStyle(C10651R.style.popupWindowAnimation);
    }
}
