package com.onyx.galaxy.note.category.view.drag;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.PopupWindow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TimeGuard;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.LongKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.common.drag.DragAndDropUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.p044ui.TagOpPopup;
import com.onyx.galaxy.note.category.view.drag.NoteTagTreeTouchListener;
import com.onyx.galaxy.note.databinding.ItemTagShadowViewLayoutBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0010\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\r0\fj\u0002`\u000e\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u000e\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001b¢\u0006\u0004\b9\u0010:J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\n\u001a\u00020\bH\u0002J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\u0011\u001a\u00020\u00102\u0010\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\r0\fj\u0002`\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001e\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\r0\fj\u0002`\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0019R\u001c\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00100\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010\"R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u0006;"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;", "Landroid/view/View$OnTouchListener;", "Landroid/view/View;", "itemView", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouch", "", "b", C6997f.f39671c, C6998g.f39679a, "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "treeNode", "Landroidx/constraintlayout/widget/ConstraintLayout;", "c", "d", "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;", "Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;", "shadowView", "Lkotlin/Function0;", "", C6999h.f39688c, "Lkotlin/jvm/functions/Function0;", "getSelectedId", "", "i", "I", "dragThreshold", "", "j", "J", "longClickTime", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "performDrag", "Landroid/graphics/PointF;", "l", "Landroid/graphics/PointF;", "downPoint", "m", "longPressTimerKey", "Landroid/widget/PopupWindow;", GoogleApiAvailabilityLight.f29016b, "Landroid/widget/PopupWindow;", "popup", "Lcom/onyx/android/sdk/base/data/TimeGuard;", C4921e.f26528e, "Lcom/onyx/android/sdk/base/data/TimeGuard;", "timeGuard", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteTagTreeTouchListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagTreeTouchListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,162:1\n1#2:163\n256#3,2:164\n256#3,2:166\n256#3,2:168\n*S KotlinDebug\n*F\n+ 1 NoteTagTreeTouchListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener\n*L\n135#1:164,2\n152#1:166,2\n157#1:168,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteTagTreeTouchListener implements View.OnTouchListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteTagBean> treeNode;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ItemTagShadowViewLayoutBinding shadowView;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Function0<String> getSelectedId;

    /* renamed from: i, reason: from kotlin metadata */
    public final int dragThreshold;

    /* renamed from: j, reason: from kotlin metadata */
    public final long longClickTime;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean performDrag;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public PointF downPoint;

    /* renamed from: m, reason: from kotlin metadata */
    public int longPressTimerKey;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public PopupWindow popup;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final TimeGuard timeGuard;

    public NoteTagTreeTouchListener(@NotNull Context context, @NotNull TreeNode<NoteTagBean> treeNode, @NotNull ItemTagShadowViewLayoutBinding shadowView, @NotNull Function0<String> getSelectedId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(treeNode, "treeNode");
        Intrinsics.checkNotNullParameter(shadowView, "shadowView");
        Intrinsics.checkNotNullParameter(getSelectedId, "getSelectedId");
        this.context = context;
        this.treeNode = treeNode;
        this.shadowView = shadowView;
        this.getSelectedId = getSelectedId;
        this.dragThreshold = ResManager.INSTANCE.getMinDragThreshold();
        long longPressTimeout = ViewConfiguration.getLongPressTimeout();
        this.longClickTime = longPressTimeout;
        this.longPressTimerKey = -1;
        this.timeGuard = new TimeGuard(longPressTimeout, 0L, 2, null);
    }

    /* renamed from: e */
    public static final void m44655e(View view, int i, View view2) {
        view.setBackgroundResource(i);
        Intrinsics.checkNotNull(view2);
        view2.setVisibility(8);
    }

    /* renamed from: b */
    public final void m44656b() {
        RxTimerUtil.INSTANCE.cancel(this.longPressTimerKey);
        this.longPressTimerKey = -1;
        PopupWindow popupWindow = this.popup;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        this.popup = null;
    }

    /* renamed from: c */
    public final ConstraintLayout m44657c(TreeNode<NoteTagBean> treeNode) {
        this.shadowView.ivTreeExpand.setImageDrawable(treeNode.getExpand() ? ContextCompat.getDrawable(this.context, C10651R.drawable.ic_arrow_down) : ContextCompat.getDrawable(this.context, C10651R.drawable.ic_arrow_right));
        this.shadowView.tvItemName.setText(treeNode.getData().getContent());
        this.shadowView.tvTotalCount.setText(LongKt.formatReadableValue(Long.valueOf(treeNode.getChildCount()), 99L));
        TintImageView ivTreeExpand = this.shadowView.ivTreeExpand;
        Intrinsics.checkNotNullExpressionValue(ivTreeExpand, "ivTreeExpand");
        ivTreeExpand.setVisibility(treeNode.getChildCount() > 0 ? 0 : 8);
        ConstraintLayout root = this.shadowView.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    /* renamed from: d */
    public final void m44658d(View itemView) {
        Object tag = itemView.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTagNodeKt.NoteTagNode }");
        TreeNode treeNode = (TreeNode) tag;
        TagOpPopup tagOpPopup = new TagOpPopup(this.context, treeNode);
        final View findViewById = itemView.findViewById(C10651R.id.fl_root);
        final View findViewById2 = itemView.findViewById(C10651R.id.v_op);
        final int i = Intrinsics.areEqual(this.getSelectedId.invoke(), ((NoteTagBean) treeNode.getData()).getUniqueId()) ? C7996R.drawable.select_colors_gradient_bg_no_radius : C10651R.color.transparent;
        Intrinsics.checkNotNull(findViewById2);
        findViewById2.setVisibility(0);
        findViewById.setBackgroundColor(this.context.getColor(C10651R.color.transparent));
        tagOpPopup.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.a3k
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                NoteTagTreeTouchListener.m44655e(findViewById, i, findViewById2);
            }
        });
        tagOpPopup.show(itemView);
        this.popup = tagOpPopup;
    }

    /* renamed from: f */
    public final void m44659f() {
        this.downPoint = null;
        this.performDrag = false;
    }

    /* renamed from: g */
    public final void m44660g(View itemView) {
        ViewCompat.startDragAndDrop(itemView, DragAndDropUtils.INSTANCE.createCustomClipData(NoteTagTreeDragListener.TAG), new View.DragShadowBuilder(m44657c(this.treeNode)), this.treeNode, 512);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(@NotNull final View itemView, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 0) {
            this.downPoint = new PointF(event.getRawX(), event.getRawY());
            TimeGuard.resetStartTime$default(this.timeGuard, 0L, 1, null);
            this.performDrag = false;
            this.longPressTimerKey = RxTimerUtil.INSTANCE.timer(this.longClickTime, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteTagTreeTouchListener$onTouch$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                    invoke(l.longValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(long j) {
                    NoteTagTreeTouchListener.this.m44658d(itemView);
                }
            });
        } else if (action == 1) {
            if (!this.performDrag && !this.timeGuard.check()) {
                m44656b();
                itemView.performClick();
            }
            m44659f();
        } else if (action == 2) {
            PointF pointF = this.downPoint;
            if (pointF != null) {
                float abs = Math.abs(event.getRawX() - pointF.x);
                float abs2 = Math.abs(event.getRawY() - pointF.y);
                if (!this.performDrag && Math.max(abs, abs2) > this.dragThreshold && this.timeGuard.check()) {
                    m44656b();
                    this.performDrag = true;
                    m44660g(itemView);
                }
            }
        } else if (action == 3) {
            m44659f();
            m44656b();
        }
        return true;
    }
}
