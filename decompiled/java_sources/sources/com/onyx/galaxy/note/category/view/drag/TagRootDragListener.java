package com.onyx.galaxy.note.category.view.drag;

import android.annotation.SuppressLint;
import android.content.ClipDescription;
import android.view.DragEvent;
import android.view.View;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.MoveTagAction;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001a\u0010\r\u001a\u00020\f2\u0010\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\nH\u0003J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/drag/TagRootDragListener;", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "itemView", "Landroid/view/DragEvent;", "e", "", "onDrag", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "originModel", "", "b", "a", "c", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTagRootDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagRootDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/TagRootDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,90:1\n256#2,2:91\n256#2,2:93\n*S KotlinDebug\n*F\n+ 1 TagRootDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/TagRootDragListener\n*L\n82#1:91,2\n87#1:93,2\n*E\n"})
/* loaded from: classes9.dex */
public final class TagRootDragListener implements View.OnDragListener {

    /* renamed from: com.onyx.galaxy.note.category.view.drag.TagRootDragListener$a */
    /* loaded from: classes9.dex */
    public static final class C11469a<T> implements Consumer {

        /* renamed from: e */
        public static final C11469a<T> f55658e = new C11469a<>();

        /* renamed from: a */
        public final void m44664a(boolean z) {
            if (z) {
                return;
            }
            ToastUtils.INSTANCE.show(C10651R.string.move_tag_conflicted, true);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44664a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: a */
    public final void m44661a(View itemView) {
        View findViewById = itemView.findViewById(C10651R.id.v_drag_in);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        findViewById.setVisibility(0);
        itemView.invalidate();
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: b */
    public final void m44662b(TreeNode<NoteTagBean> originModel) {
        List mutableListOf;
        if (originModel.getData().getParentId() == null) {
            return;
        }
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(originModel.getData());
        new MoveTagAction(mutableListOf, NoteTreeBundle.INSTANCE.getTagRootNote()).build().subscribe(C11469a.f55658e);
    }

    /* renamed from: c */
    public final void m44663c(View itemView) {
        View findViewById = itemView.findViewById(C10651R.id.v_drag_in);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        findViewById.setVisibility(8);
        itemView.invalidate();
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(@NotNull View itemView, @NotNull DragEvent e) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(e, "e");
        if (e.getAction() == 4) {
            m44663c(itemView);
            return false;
        }
        ClipDescription clipDescription = e.getClipDescription();
        boolean areEqual = Intrinsics.areEqual(clipDescription != null ? clipDescription.getLabel() : null, NoteTagTreeDragListener.TAG);
        int action = e.getAction();
        if (action == 1) {
            return areEqual;
        }
        if (action != 2) {
            if (action != 3) {
                if (action == 5) {
                    m44661a(itemView);
                    return true;
                }
                if (action != 6) {
                    return false;
                }
                m44663c(itemView);
                return true;
            }
            Object localState = e.getLocalState();
            Intrinsics.checkNotNull(localState, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTagNodeKt.NoteTagNode }");
            m44662b((TreeNode) localState);
        }
        return true;
    }
}
