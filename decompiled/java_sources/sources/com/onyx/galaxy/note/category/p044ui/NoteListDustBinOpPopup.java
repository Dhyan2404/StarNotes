package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.BasePopWindow;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.p044ui.NoteListDustBinOpPopup;
import com.onyx.galaxy.note.databinding.PopupNoteListDustBinOpBinding;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012!\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00040\u0013\u0012!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00040\u0013¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R/\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00040\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R/\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00040\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0017\u0010!\u001a\u00020\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;", "Lcom/onyx/android/sdk/ui/BasePopWindow;", "Landroid/view/View;", "view", "", "setContentView", Constants.ELEMNAME_ANCHOR_STRING, "show", "Landroid/graphics/Point;", C6998g.f39679a, C6999h.f39688c, "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "l", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "syncNoteModel", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "noteModelBean", "m", "Lkotlin/jvm/functions/Function1;", "dustBinDeleteNote", GoogleApiAvailabilityLight.f29016b, "dustBinRestoreNote", "Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;", C4921e.f26528e, "Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteListDustBinOpPopup extends BasePopWindow {

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final NoteModelBean syncNoteModel;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Function1<NoteModelBean, Unit> dustBinDeleteNote;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Function1<NoteModelBean, Unit> dustBinRestoreNote;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final PopupNoteListDustBinOpBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NoteListDustBinOpPopup(@NotNull Context context, @NotNull NoteModelBean syncNoteModel, @NotNull Function1<? super NoteModelBean, Unit> dustBinDeleteNote, @NotNull Function1<? super NoteModelBean, Unit> dustBinRestoreNote) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(syncNoteModel, "syncNoteModel");
        Intrinsics.checkNotNullParameter(dustBinDeleteNote, "dustBinDeleteNote");
        Intrinsics.checkNotNullParameter(dustBinRestoreNote, "dustBinRestoreNote");
        this.context = context;
        this.syncNoteModel = syncNoteModel;
        this.dustBinDeleteNote = dustBinDeleteNote;
        this.dustBinRestoreNote = dustBinRestoreNote;
        PopupNoteListDustBinOpBinding inflate = PopupNoteListDustBinOpBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43275h();
    }

    /* renamed from: i */
    public static final void m43272i(NoteListDustBinOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dustBinDeleteNote.invoke(this$0.syncNoteModel);
        this$0.dismiss();
    }

    /* renamed from: j */
    public static final void m43273j(NoteListDustBinOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dustBinRestoreNote.invoke(this$0.syncNoteModel);
        this$0.dismiss();
    }

    /* renamed from: g */
    public final Point m43274g(View anchor) {
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

    @NotNull
    public final PopupNoteListDustBinOpBinding getBinding() {
        return this.binding;
    }

    /* renamed from: h */
    public final void m43275h() {
        this.binding.btnDelete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zwj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListDustBinOpPopup.m43272i(NoteListDustBinOpPopup.this, view);
            }
        });
        this.binding.btnRestore.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.axj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListDustBinOpPopup.m43273j(NoteListDustBinOpPopup.this, view);
            }
        });
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

    public final void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Point m43274g = m43274g(anchor);
        showAtLocation(anchor, 0, m43274g.x, m43274g.y);
    }
}
