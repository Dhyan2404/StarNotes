package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.BasePopWindow;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NoteUIFeature;
import com.onyx.galaxy.note.category.p044ui.NoteListOpPopup;
import com.onyx.galaxy.note.databinding.PopupNoteListOpBinding;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u001fB#\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0018R\u0014\u0010\u001c\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u001b¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup;", "Lcom/onyx/android/sdk/ui/BasePopWindow;", "Landroid/view/View;", "view", "", "setContentView", Constants.ELEMNAME_ANCHOR_STRING, "show", "Landroid/graphics/Point;", "m", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "l", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "syncNoteModel", "Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup$NoteOperateListener;", "Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup$NoteOperateListener;", "noteOperateListener", "Lcom/onyx/galaxy/note/databinding/PopupNoteListOpBinding;", "Lcom/onyx/galaxy/note/databinding/PopupNoteListOpBinding;", "binding", "Lcom/onyx/galaxy/note/category/data/NoteUIFeature;", "Lcom/onyx/galaxy/note/category/data/NoteUIFeature;", "noteUIFeature", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup$NoteOperateListener;)V", "NoteOperateListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteListOpPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListOpPopup.kt\ncom/onyx/galaxy/note/category/ui/NoteListOpPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,159:1\n256#2,2:160\n256#2,2:162\n256#2,2:164\n256#2,2:166\n*S KotlinDebug\n*F\n+ 1 NoteListOpPopup.kt\ncom/onyx/galaxy/note/category/ui/NoteListOpPopup\n*L\n77#1:160,2\n78#1:162,2\n79#1:164,2\n142#1:166,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteListOpPopup extends BasePopWindow {

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final NoteModelBean syncNoteModel;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public final NoteOperateListener noteOperateListener;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final PopupNoteListOpBinding binding;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final NoteUIFeature noteUIFeature;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup$NoteOperateListener;", "", "addTagsToNote", "", "noteModelBean", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "changeNoteTemplate", "copyNote", "deleteNote", "editNote", "exportNote", "modifyNoteLock", "moveNote", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface NoteOperateListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void addTagsToNote(@NotNull NoteOperateListener noteOperateListener, @NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
            }

            public static void changeNoteTemplate(@NotNull NoteOperateListener noteOperateListener, @NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
            }

            public static void copyNote(@NotNull NoteOperateListener noteOperateListener, @NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
            }

            public static void deleteNote(@NotNull NoteOperateListener noteOperateListener, @NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
            }

            public static void editNote(@NotNull NoteOperateListener noteOperateListener, @NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
            }

            public static void exportNote(@NotNull NoteOperateListener noteOperateListener, @NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
            }

            public static void modifyNoteLock(@NotNull NoteOperateListener noteOperateListener, @NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
            }

            public static void moveNote(@NotNull NoteOperateListener noteOperateListener, @NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
            }
        }

        void addTagsToNote(@NotNull NoteModelBean noteModelBean);

        void changeNoteTemplate(@NotNull NoteModelBean noteModelBean);

        void copyNote(@NotNull NoteModelBean noteModelBean);

        void deleteNote(@NotNull NoteModelBean noteModelBean);

        void editNote(@NotNull NoteModelBean noteModelBean);

        void exportNote(@NotNull NoteModelBean noteModelBean);

        void modifyNoteLock(@NotNull NoteModelBean noteModelBean);

        void moveNote(@NotNull NoteModelBean noteModelBean);
    }

    public /* synthetic */ NoteListOpPopup(Context context, NoteModelBean noteModelBean, NoteOperateListener noteOperateListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, noteModelBean, (i & 4) != 0 ? null : noteOperateListener);
    }

    /* renamed from: p */
    public static final void m43452p(NoteListOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteOperateListener noteOperateListener = this$0.noteOperateListener;
        if (noteOperateListener != null) {
            noteOperateListener.editNote(this$0.syncNoteModel);
        }
        this$0.dismiss();
    }

    /* renamed from: q */
    public static final void m43453q(NoteListOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteOperateListener noteOperateListener = this$0.noteOperateListener;
        if (noteOperateListener != null) {
            noteOperateListener.copyNote(this$0.syncNoteModel);
        }
        this$0.dismiss();
    }

    /* renamed from: r */
    public static final void m43454r(NoteListOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteOperateListener noteOperateListener = this$0.noteOperateListener;
        if (noteOperateListener != null) {
            noteOperateListener.changeNoteTemplate(this$0.syncNoteModel);
        }
        this$0.dismiss();
    }

    /* renamed from: s */
    public static final void m43455s(NoteListOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteOperateListener noteOperateListener = this$0.noteOperateListener;
        if (noteOperateListener != null) {
            noteOperateListener.exportNote(this$0.syncNoteModel);
        }
        this$0.dismiss();
    }

    /* renamed from: t */
    public static final void m43456t(NoteListOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteOperateListener noteOperateListener = this$0.noteOperateListener;
        if (noteOperateListener != null) {
            noteOperateListener.addTagsToNote(this$0.syncNoteModel);
        }
        this$0.dismiss();
    }

    /* renamed from: u */
    public static final void m43457u(NoteListOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteOperateListener noteOperateListener = this$0.noteOperateListener;
        if (noteOperateListener != null) {
            noteOperateListener.moveNote(this$0.syncNoteModel);
        }
        this$0.dismiss();
    }

    /* renamed from: v */
    public static final void m43458v(NoteListOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteOperateListener noteOperateListener = this$0.noteOperateListener;
        if (noteOperateListener != null) {
            noteOperateListener.deleteNote(this$0.syncNoteModel);
        }
        this$0.dismiss();
    }

    /* renamed from: w */
    public static final void m43459w(NoteListOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteOperateListener noteOperateListener = this$0.noteOperateListener;
        if (noteOperateListener != null) {
            noteOperateListener.modifyNoteLock(this$0.syncNoteModel);
        }
        this$0.dismiss();
    }

    /* renamed from: m */
    public final Point m43460m(View anchor) {
        Point point = new Point(0, 0);
        int[] drawingPosition = ViewKt.getDrawingPosition(anchor);
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        anchor.getDrawingRect(new Rect());
        int i = drawingPosition[0];
        Rect rect = new Rect(i, drawingPosition[1], anchor.getMeasuredWidth() + i, drawingPosition[1] + anchor.getMeasuredHeight());
        float dimension = this.context.getResources().getDimension(C7384R.dimen.dp_20);
        point.y = rect.bottom;
        point.x = rect.left - ((int) (measureSize$default.getWidth() + dimension));
        return point;
    }

    /* renamed from: n */
    public final void m43461n() {
        String string;
        Drawable themeDrawable;
        LinearLayout llLock = this.binding.llLock;
        Intrinsics.checkNotNullExpressionValue(llLock, "llLock");
        llLock.setVisibility(this.noteUIFeature.supportLock() ? 0 : 8);
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7384R.dimen.dp_24);
        if (this.syncNoteModel.hasEncryption()) {
            string = resManager.getString(C10651R.string.popup_note_list_unlock);
            themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.icon_note_list_unlock);
            Intrinsics.checkNotNullExpressionValue(themeDrawable, "getThemeDrawable(...)");
        } else {
            string = resManager.getString(C10651R.string.popup_note_list_lock);
            themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.icon_note_list_lock);
            Intrinsics.checkNotNullExpressionValue(themeDrawable, "getThemeDrawable(...)");
        }
        themeDrawable.setTint(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
        themeDrawable.setBounds(0, 0, dimens, dimens);
        this.binding.btnLock.setCompoundDrawablesRelativeWithIntrinsicBounds(themeDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
        this.binding.btnLock.setText(string);
    }

    /* renamed from: o */
    public final void m43462o() {
        TintTextView btnEdit = this.binding.btnEdit;
        Intrinsics.checkNotNullExpressionValue(btnEdit, "btnEdit");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnEdit, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vxj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListOpPopup.m43452p(NoteListOpPopup.this, view);
            }
        }, 1, null);
        TintTextView btnCopy = this.binding.btnCopy;
        Intrinsics.checkNotNullExpressionValue(btnCopy, "btnCopy");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnCopy, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wxj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListOpPopup.m43453q(NoteListOpPopup.this, view);
            }
        }, 1, null);
        TintTextView btnChangeTemplate = this.binding.btnChangeTemplate;
        Intrinsics.checkNotNullExpressionValue(btnChangeTemplate, "btnChangeTemplate");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnChangeTemplate, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xxj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListOpPopup.m43454r(NoteListOpPopup.this, view);
            }
        }, 1, null);
        TintTextView btnExport = this.binding.btnExport;
        Intrinsics.checkNotNullExpressionValue(btnExport, "btnExport");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnExport, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yxj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListOpPopup.m43455s(NoteListOpPopup.this, view);
            }
        }, 1, null);
        TintTextView btnAddTags = this.binding.btnAddTags;
        Intrinsics.checkNotNullExpressionValue(btnAddTags, "btnAddTags");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnAddTags, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zxj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListOpPopup.m43456t(NoteListOpPopup.this, view);
            }
        }, 1, null);
        TintTextView btnMove = this.binding.btnMove;
        Intrinsics.checkNotNullExpressionValue(btnMove, "btnMove");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnMove, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ayj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListOpPopup.m43457u(NoteListOpPopup.this, view);
            }
        }, 1, null);
        TintTextView btnMoveTrash = this.binding.btnMoveTrash;
        Intrinsics.checkNotNullExpressionValue(btnMoveTrash, "btnMoveTrash");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnMoveTrash, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.byj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListOpPopup.m43458v(NoteListOpPopup.this, view);
            }
        }, 1, null);
        LinearLayout llLock = this.binding.llLock;
        Intrinsics.checkNotNullExpressionValue(llLock, "llLock");
        com.onyx.android.sdk.extension.ViewKt.click$default(llLock, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListOpPopup.m43459w(NoteListOpPopup.this, view);
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
        LinearLayout llExport = this.binding.llExport;
        Intrinsics.checkNotNullExpressionValue(llExport, "llExport");
        llExport.setVisibility(this.noteUIFeature.supportExport() ? 0 : 8);
        LinearLayout llAddTags = this.binding.llAddTags;
        Intrinsics.checkNotNullExpressionValue(llAddTags, "llAddTags");
        llAddTags.setVisibility(this.noteUIFeature.supportAddTags() ? 0 : 8);
        LinearLayout llChangeTemplate = this.binding.llChangeTemplate;
        Intrinsics.checkNotNullExpressionValue(llChangeTemplate, "llChangeTemplate");
        llChangeTemplate.setVisibility(this.noteUIFeature.supportChangeTemplate() ? 0 : 8);
        m43461n();
    }

    public final void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Point m43460m = m43460m(anchor);
        showAtLocation(anchor, 0, m43460m.x, m43460m.y);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteListOpPopup(@NotNull Context context, @NotNull NoteModelBean syncNoteModel, @Nullable NoteOperateListener noteOperateListener) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(syncNoteModel, "syncNoteModel");
        this.context = context;
        this.syncNoteModel = syncNoteModel;
        this.noteOperateListener = noteOperateListener;
        PopupNoteListOpBinding inflate = PopupNoteListOpBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.noteUIFeature = new NoteUIFeature(syncNoteModel);
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43462o();
    }
}
