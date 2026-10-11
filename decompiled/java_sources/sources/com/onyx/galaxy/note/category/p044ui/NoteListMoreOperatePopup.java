package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.BasePopWindow;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.p044ui.NoteListMoreOperatePopup;
import com.onyx.galaxy.note.databinding.PopupNoteListMoreOperateBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;", "Lcom/onyx/android/sdk/ui/BasePopWindow;", "Landroid/view/View;", "view", "", "setContentView", "i", "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;", "l", "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;", "operateContext", "Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;", "m", "Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;)V", "MoreOperateCallback", "NoteListMoreOperateContext", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteListMoreOperatePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListMoreOperatePopup.kt\ncom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,109:1\n256#2,2:110\n256#2,2:112\n256#2,2:114\n256#2,2:116\n*S KotlinDebug\n*F\n+ 1 NoteListMoreOperatePopup.kt\ncom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup\n*L\n86#1:110,2\n87#1:112,2\n88#1:114,2\n89#1:116,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteListMoreOperatePopup extends BasePopWindow {

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final NoteListMoreOperateContext operateContext;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final PopupNoteListMoreOperateBinding binding;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0003H&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;", "", "onCloudSync", "", "onMultiSelect", "onSort", "view", "Landroid/view/View;", "onToggleDisplay", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface MoreOperateCallback {
        void onCloudSync();

        void onMultiSelect();

        void onSort(@NotNull View view);

        void onToggleDisplay();
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010\u001c\u001a\u00020\u0017¢\u0006\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;", "", "", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isShowSync", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "b", "isShowSort", "c", "isGird", "", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getSortName", "()Ljava/lang/String;", "sortName", "", "e", "I", "getSortIconId", "()I", "sortIconId", "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;", C6997f.f39671c, "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;", "getCallback", "()Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;", "callback", Constants.CONSTRUCTOR_NAME, "(ZZZLjava/lang/String;ILcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class NoteListMoreOperateContext {

        /* renamed from: a, reason: from kotlin metadata */
        public final boolean isShowSync;

        /* renamed from: b, reason: from kotlin metadata */
        public final boolean isShowSort;

        /* renamed from: c, reason: from kotlin metadata */
        public final boolean isGird;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public final String sortName;

        /* renamed from: e, reason: from kotlin metadata */
        public final int sortIconId;

        /* renamed from: f, reason: from kotlin metadata */
        @NotNull
        public final MoreOperateCallback callback;

        public NoteListMoreOperateContext(boolean z, boolean z2, boolean z3, @NotNull String sortName, int i, @NotNull MoreOperateCallback callback) {
            Intrinsics.checkNotNullParameter(sortName, "sortName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.isShowSync = z;
            this.isShowSort = z2;
            this.isGird = z3;
            this.sortName = sortName;
            this.sortIconId = i;
            this.callback = callback;
        }

        @NotNull
        public final MoreOperateCallback getCallback() {
            return this.callback;
        }

        public final int getSortIconId() {
            return this.sortIconId;
        }

        @NotNull
        public final String getSortName() {
            return this.sortName;
        }

        /* renamed from: isGird, reason: from getter */
        public final boolean getIsGird() {
            return this.isGird;
        }

        /* renamed from: isShowSort, reason: from getter */
        public final boolean getIsShowSort() {
            return this.isShowSort;
        }

        /* renamed from: isShowSync, reason: from getter */
        public final boolean getIsShowSync() {
            return this.isShowSync;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteListMoreOperatePopup(@NotNull Context context, @NotNull NoteListMoreOperateContext operateContext) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(operateContext, "operateContext");
        this.context = context;
        this.operateContext = operateContext;
        PopupNoteListMoreOperateBinding inflate = PopupNoteListMoreOperateBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43443i();
    }

    /* renamed from: j */
    public static final void m43439j(NoteListMoreOperatePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.operateContext.getCallback().onToggleDisplay();
        this$0.dismiss();
    }

    /* renamed from: k */
    public static final void m43440k(NoteListMoreOperatePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.operateContext.getCallback().onMultiSelect();
        this$0.dismiss();
    }

    /* renamed from: l */
    public static final void m43441l(NoteListMoreOperatePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MoreOperateCallback callback = this$0.operateContext.getCallback();
        Intrinsics.checkNotNull(view);
        callback.onSort(view);
    }

    /* renamed from: m */
    public static final void m43442m(NoteListMoreOperatePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.operateContext.getCallback().onCloudSync();
        this$0.dismiss();
    }

    @NotNull
    public final PopupNoteListMoreOperateBinding getBinding() {
        return this.binding;
    }

    /* renamed from: i */
    public final void m43443i() {
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(this.operateContext.getIsGird() ? C10651R.drawable.ic_display_grid : C10651R.drawable.ic_display_linear);
        Drawable themeDrawable2 = ThemeUtils.getThemeDrawable(this.operateContext.getSortIconId());
        Drawable themeDrawable3 = ThemeUtils.getThemeDrawable(C10651R.drawable.ic_checked);
        Drawable themeDrawable4 = ThemeUtils.getThemeDrawable(C10651R.drawable.ic_cloud);
        int i = this.operateContext.getIsGird() ? C10651R.string.note_list_op_display_gird : C10651R.string.note_list_op_display_linear;
        themeDrawable.setBounds(0, 0, themeDrawable.getIntrinsicWidth(), themeDrawable.getIntrinsicHeight());
        themeDrawable2.setBounds(0, 0, themeDrawable2.getIntrinsicWidth(), themeDrawable2.getIntrinsicHeight());
        themeDrawable3.setBounds(0, 0, themeDrawable3.getIntrinsicWidth(), themeDrawable3.getIntrinsicHeight());
        themeDrawable4.setBounds(0, 0, themeDrawable4.getIntrinsicWidth(), themeDrawable4.getIntrinsicHeight());
        this.binding.tvDisplayType.setCompoundDrawables(themeDrawable, null, null, null);
        this.binding.tvSort.setCompoundDrawables(themeDrawable2, null, null, null);
        this.binding.tvMultiSelect.setCompoundDrawables(themeDrawable3, null, null, null);
        this.binding.tvCloudSync.setCompoundDrawables(themeDrawable4, null, null, null);
        TintView vDivideSort = this.binding.vDivideSort;
        Intrinsics.checkNotNullExpressionValue(vDivideSort, "vDivideSort");
        vDivideSort.setVisibility(this.operateContext.getIsShowSync() ? 0 : 8);
        TintTextView tvCloudSync = this.binding.tvCloudSync;
        Intrinsics.checkNotNullExpressionValue(tvCloudSync, "tvCloudSync");
        tvCloudSync.setVisibility(this.operateContext.getIsShowSync() ? 0 : 8);
        TintView vDividerSort = this.binding.vDividerSort;
        Intrinsics.checkNotNullExpressionValue(vDividerSort, "vDividerSort");
        vDividerSort.setVisibility(this.operateContext.getIsShowSort() ? 0 : 8);
        TintTextView tvSort = this.binding.tvSort;
        Intrinsics.checkNotNullExpressionValue(tvSort, "tvSort");
        tvSort.setVisibility(this.operateContext.getIsShowSort() ? 0 : 8);
        this.binding.tvSort.setText(this.operateContext.getSortName());
        this.binding.tvDisplayType.setText(ResManager.INSTANCE.getString(i));
        TintTextView tvDisplayType = this.binding.tvDisplayType;
        Intrinsics.checkNotNullExpressionValue(tvDisplayType, "tvDisplayType");
        ViewKt.click$default(tvDisplayType, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rxj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListMoreOperatePopup.m43439j(NoteListMoreOperatePopup.this, view);
            }
        }, 1, null);
        TintTextView tvMultiSelect = this.binding.tvMultiSelect;
        Intrinsics.checkNotNullExpressionValue(tvMultiSelect, "tvMultiSelect");
        ViewKt.click$default(tvMultiSelect, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sxj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListMoreOperatePopup.m43440k(NoteListMoreOperatePopup.this, view);
            }
        }, 1, null);
        TintTextView tvSort2 = this.binding.tvSort;
        Intrinsics.checkNotNullExpressionValue(tvSort2, "tvSort");
        ViewKt.click$default(tvSort2, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.txj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListMoreOperatePopup.m43441l(NoteListMoreOperatePopup.this, view);
            }
        }, 1, null);
        TintTextView tvCloudSync2 = this.binding.tvCloudSync;
        Intrinsics.checkNotNullExpressionValue(tvCloudSync2, "tvCloudSync");
        ViewKt.click$default(tvCloudSync2, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uxj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListMoreOperatePopup.m43442m(NoteListMoreOperatePopup.this, view);
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
}
