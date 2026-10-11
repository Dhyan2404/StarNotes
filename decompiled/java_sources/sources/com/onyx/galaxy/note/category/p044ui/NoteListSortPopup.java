package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.BasePopWindow;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.p044ui.NoteListSortPopup;
import com.onyx.galaxy.note.databinding.PopupNoteListSortBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u00126\u0010\u001d\u001a2\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00040\u0016¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0014RD\u0010\u001d\u001a2\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00040\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0017\u0010#\u001a\u00020\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;", "Lcom/onyx/android/sdk/ui/BasePopWindow;", "Landroid/view/View;", "view", "", "setContentView", "u", "l", "Landroid/widget/TextView;", "textView", "v", "m", "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/SortBy;", "Lcom/onyx/android/sdk/base/data/SortBy;", "currSortBy", "Lcom/onyx/android/sdk/base/data/SortOrder;", "Lcom/onyx/android/sdk/base/data/SortOrder;", "currSortOrder", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "sortBy", "sortOrder", GoogleApiAvailabilityLight.f29016b, "Lkotlin/jvm/functions/Function2;", "onSort", "Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;", C4921e.f26528e, "Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;Lkotlin/jvm/functions/Function2;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteListSortPopup extends BasePopWindow {

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final SortBy currSortBy;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final SortOrder currSortOrder;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Function2<SortBy, SortOrder, Unit> onSort;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final PopupNoteListSortBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NoteListSortPopup(@NotNull Context context, @NotNull SortBy currSortBy, @NotNull SortOrder currSortOrder, @NotNull Function2<? super SortBy, ? super SortOrder, Unit> onSort) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currSortBy, "currSortBy");
        Intrinsics.checkNotNullParameter(currSortOrder, "currSortOrder");
        Intrinsics.checkNotNullParameter(onSort, "onSort");
        this.context = context;
        this.currSortBy = currSortBy;
        this.currSortOrder = currSortOrder;
        this.onSort = onSort;
        PopupNoteListSortBinding inflate = PopupNoteListSortBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43479u();
    }

    /* renamed from: n */
    public static final void m43470n(NoteListSortPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSort.invoke(SortBy.UpdateAt, SortOrder.Asc);
        this$0.dismiss();
    }

    /* renamed from: o */
    public static final void m43471o(NoteListSortPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSort.invoke(SortBy.UpdateAt, SortOrder.Desc);
        this$0.dismiss();
    }

    /* renamed from: p */
    public static final void m43472p(NoteListSortPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSort.invoke(SortBy.CreationTime, SortOrder.Asc);
        this$0.dismiss();
    }

    /* renamed from: q */
    public static final void m43473q(NoteListSortPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSort.invoke(SortBy.CreationTime, SortOrder.Desc);
        this$0.dismiss();
    }

    /* renamed from: r */
    public static final void m43474r(NoteListSortPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSort.invoke(SortBy.Name, SortOrder.Asc);
        this$0.dismiss();
    }

    /* renamed from: s */
    public static final void m43475s(NoteListSortPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSort.invoke(SortBy.Name, SortOrder.Desc);
        this$0.dismiss();
    }

    /* renamed from: t */
    public static final void m43476t(NoteListSortPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSort.invoke(SortBy.Manual, SortOrder.Asc);
        this$0.dismiss();
    }

    @NotNull
    public final PopupNoteListSortBinding getBinding() {
        return this.binding;
    }

    /* renamed from: l */
    public final void m43477l() {
        Pair m61535to = TuplesKt.m61535to(this.currSortBy, this.currSortOrder);
        SortBy sortBy = SortBy.UpdateAt;
        SortOrder sortOrder = SortOrder.Asc;
        if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy, sortOrder))) {
            TintTextView btnUpdateAsc = this.binding.btnUpdateAsc;
            Intrinsics.checkNotNullExpressionValue(btnUpdateAsc, "btnUpdateAsc");
            m43480v(btnUpdateAsc);
            return;
        }
        SortOrder sortOrder2 = SortOrder.Desc;
        if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy, sortOrder2))) {
            TintTextView btnUpdateDesc = this.binding.btnUpdateDesc;
            Intrinsics.checkNotNullExpressionValue(btnUpdateDesc, "btnUpdateDesc");
            m43480v(btnUpdateDesc);
            return;
        }
        SortBy sortBy2 = SortBy.CreationTime;
        if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy2, sortOrder))) {
            TintTextView btnCreateAsc = this.binding.btnCreateAsc;
            Intrinsics.checkNotNullExpressionValue(btnCreateAsc, "btnCreateAsc");
            m43480v(btnCreateAsc);
            return;
        }
        if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy2, sortOrder2))) {
            TintTextView btnCreateDesc = this.binding.btnCreateDesc;
            Intrinsics.checkNotNullExpressionValue(btnCreateDesc, "btnCreateDesc");
            m43480v(btnCreateDesc);
            return;
        }
        SortBy sortBy3 = SortBy.Name;
        if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy3, sortOrder))) {
            TintTextView btnNameAsc = this.binding.btnNameAsc;
            Intrinsics.checkNotNullExpressionValue(btnNameAsc, "btnNameAsc");
            m43480v(btnNameAsc);
        } else if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy3, sortOrder2))) {
            TintTextView btnNameDesc = this.binding.btnNameDesc;
            Intrinsics.checkNotNullExpressionValue(btnNameDesc, "btnNameDesc");
            m43480v(btnNameDesc);
        } else if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(SortBy.Manual, sortOrder))) {
            TintTextView btnCustom = this.binding.btnCustom;
            Intrinsics.checkNotNullExpressionValue(btnCustom, "btnCustom");
            m43480v(btnCustom);
        }
    }

    /* renamed from: m */
    public final void m43478m() {
        TintTextView btnUpdateAsc = this.binding.btnUpdateAsc;
        Intrinsics.checkNotNullExpressionValue(btnUpdateAsc, "btnUpdateAsc");
        ViewKt.click$default(btnUpdateAsc, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListSortPopup.m43470n(NoteListSortPopup.this, view);
            }
        }, 1, null);
        TintTextView btnUpdateDesc = this.binding.btnUpdateDesc;
        Intrinsics.checkNotNullExpressionValue(btnUpdateDesc, "btnUpdateDesc");
        ViewKt.click$default(btnUpdateDesc, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.eyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListSortPopup.m43471o(NoteListSortPopup.this, view);
            }
        }, 1, null);
        TintTextView btnCreateAsc = this.binding.btnCreateAsc;
        Intrinsics.checkNotNullExpressionValue(btnCreateAsc, "btnCreateAsc");
        ViewKt.click$default(btnCreateAsc, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListSortPopup.m43472p(NoteListSortPopup.this, view);
            }
        }, 1, null);
        TintTextView btnCreateDesc = this.binding.btnCreateDesc;
        Intrinsics.checkNotNullExpressionValue(btnCreateDesc, "btnCreateDesc");
        ViewKt.click$default(btnCreateDesc, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListSortPopup.m43473q(NoteListSortPopup.this, view);
            }
        }, 1, null);
        TintTextView btnNameAsc = this.binding.btnNameAsc;
        Intrinsics.checkNotNullExpressionValue(btnNameAsc, "btnNameAsc");
        ViewKt.click$default(btnNameAsc, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListSortPopup.m43474r(NoteListSortPopup.this, view);
            }
        }, 1, null);
        TintTextView btnNameDesc = this.binding.btnNameDesc;
        Intrinsics.checkNotNullExpressionValue(btnNameDesc, "btnNameDesc");
        ViewKt.click$default(btnNameDesc, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.iyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListSortPopup.m43475s(NoteListSortPopup.this, view);
            }
        }, 1, null);
        TintTextView btnCustom = this.binding.btnCustom;
        Intrinsics.checkNotNullExpressionValue(btnCustom, "btnCustom");
        ViewKt.click$default(btnCustom, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListSortPopup.m43476t(NoteListSortPopup.this, view);
            }
        }, 1, null);
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

    /* renamed from: u */
    public final void m43479u() {
        m43478m();
        m43477l();
    }

    /* renamed from: v */
    public final void m43480v(TextView textView) {
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.icon_sort_check);
        themeDrawable.setBounds(0, 0, themeDrawable.getIntrinsicWidth(), themeDrawable.getIntrinsicHeight());
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(textView.getCompoundDrawablesRelative()[0], textView.getCompoundDrawablesRelative()[1], themeDrawable, textView.getCompoundDrawablesRelative()[3]);
    }
}
