package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import androidx.constraintlayout.widget.Group;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.FolderCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.DeleteFolderAction;
import com.onyx.galaxy.note.category.action.MoveToSelectFolderAction;
import com.onyx.galaxy.note.category.p044ui.FolderOpPopup;
import com.onyx.galaxy.note.category.view.dialog.CreateSubFolderDialog;
import com.onyx.galaxy.note.category.view.dialog.EditFolderDialog;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.PopupFolderOpBinding;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 )2\u00020\u0001:\u0001)B!\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0010\u0010\u001c\u001a\f\u0012\u0004\u0012\u00020\u00180\u0017j\u0002`\u0019¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\b\u0010\b\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001e\u0010\u001c\u001a\f\u0012\u0004\u0012\u00020\u00180\u0017j\u0002`\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0017\u0010\"\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/FolderOpPopup;", "Landroid/widget/PopupWindow;", "Landroid/view/View;", "view", "", "setContentView", Constants.ELEMNAME_ANCHOR_STRING, "show", "dismiss", "Landroid/graphics/Point;", C6999h.f39688c, "i", GoogleApiAvailabilityLight.f29016b, C6998g.f39679a, "e", C6997f.f39671c, "", "eventId", C4921e.f26528e, "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "b", "Lcom/onyx/android/sdk/base/data/TreeNode;", "node", "Lcom/onyx/galaxy/note/databinding/PopupFolderOpBinding;", "c", "Lcom/onyx/galaxy/note/databinding/PopupFolderOpBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupFolderOpBinding;", "binding", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "d", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFolderOpPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderOpPopup.kt\ncom/onyx/galaxy/note/category/ui/FolderOpPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n256#2,2:176\n1549#3:178\n1620#3,3:179\n*S KotlinDebug\n*F\n+ 1 FolderOpPopup.kt\ncom/onyx/galaxy/note/category/ui/FolderOpPopup\n*L\n119#1:176,2\n159#1:178\n159#1:179,3\n*E\n"})
/* loaded from: classes9.dex */
public final class FolderOpPopup extends PopupWindow {

    @NotNull
    public static final String TAG = "FolderOpPopup";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteModelBean> node;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final PopupFolderOpBinding binding;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FolderOpPopup(@NotNull Context context, @NotNull TreeNode<NoteModelBean> node) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(node, "node");
        this.context = context;
        this.node = node;
        PopupFolderOpBinding inflate = PopupFolderOpBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.compositeDisposable = new CompositeDisposable();
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43077i();
    }

    /* renamed from: j */
    public static final void m43069j(FolderOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43074f();
    }

    /* renamed from: k */
    public static final void m43070k(FolderOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43073e();
    }

    /* renamed from: l */
    public static final void m43071l(FolderOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43075g();
    }

    /* renamed from: m */
    public static final void m43072m(FolderOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43078n();
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        this.compositeDisposable.clear();
    }

    /* renamed from: e */
    public final void m43073e() {
        m43079o(OnyxStatisticConstant.ID_FOLDER_OP_POPUP_CREATE_CLICK);
        new CreateSubFolderDialog(this.context, this.node, FolderCreateFrom.HOME_FUNC_SUB_FOLDER_CREATE).show();
        dismiss();
    }

    /* renamed from: f */
    public final void m43074f() {
        List mutableListOf;
        int collectionSizeOrDefault;
        dismiss();
        String title = this.node.getData().getTitle();
        Intrinsics.checkNotNull(title);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(this.node.getData().getUniqueId());
        List<TreeNode<NoteModelBean>> findChildrenNodes = this.node.findChildrenNodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = findChildrenNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteModelBean) ((TreeNode) it2.next()).getData()).getUniqueId());
        }
        mutableListOf.addAll(arrayList);
        Disposable subscribe = new DeleteFolderAction(this.context, title, mutableListOf).create().subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: g */
    public final void m43075g() {
        m43079o(OnyxStatisticConstant.ID_FOLDER_OP_POPUP_EDIT_CLICK);
        new EditFolderDialog(this.context, this.node, TAG).show();
        dismiss();
    }

    @NotNull
    public final PopupFolderOpBinding getBinding() {
        return this.binding;
    }

    /* renamed from: h */
    public final Point m43076h(View anchor) {
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
        if (ViewExtKt.isLayoutDirectionRtl(anchor)) {
            point.x = rect.right - ((int) (measureSize$default.getWidth() + dimension));
        } else {
            point.x = rect.left - ((int) (measureSize$default.getWidth() + dimension));
        }
        return point;
    }

    /* renamed from: i */
    public final void m43077i() {
        this.binding.tvFolderTitle.setText(this.node.getData().getTitle());
        this.binding.btnDeleteFolder.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tog
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FolderOpPopup.m43069j(FolderOpPopup.this, view);
            }
        });
        this.binding.btnCreateSubFolder.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uog
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FolderOpPopup.m43070k(FolderOpPopup.this, view);
            }
        });
        this.binding.btnEdtFolder.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vog
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FolderOpPopup.m43071l(FolderOpPopup.this, view);
            }
        });
        this.binding.btnMoveFolder.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wog
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FolderOpPopup.m43072m(FolderOpPopup.this, view);
            }
        });
        Group groupCreateSubFolder = this.binding.groupCreateSubFolder;
        Intrinsics.checkNotNullExpressionValue(groupCreateSubFolder, "groupCreateSubFolder");
        groupCreateSubFolder.setVisibility(this.node.levelToRoot() < 6 ? 0 : 8);
    }

    /* renamed from: n */
    public final void m43078n() {
        List<String> listOf;
        NoteModelBean data = this.node.getData();
        NoteModelBeanList noteModelBeanList = new NoteModelBeanList();
        noteModelBeanList.add(this.node.getData());
        ManageFolderContext manageFolderContext = new ManageFolderContext();
        manageFolderContext.setOldParentId(data.getParentUniqueId());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(data.getUniqueId());
        manageFolderContext.setOpNoteIds(listOf);
        manageFolderContext.setMoveNoteList(noteModelBeanList);
        m43079o(OnyxStatisticConstant.ID_FOLDER_OP_POPUP_MOVE_CLICK);
        RxBaseAction.execute$default(new MoveToSelectFolderAction(manageFolderContext, TAG).setActivityContext(this.context), null, null, null, 7, null);
        dismiss();
    }

    /* renamed from: o */
    public final void m43079o(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_FOLDER_ID, this.node.getData().getUniqueId()));
        statisticsBundle.reportEvent(eventId, mapOf);
    }

    @Override // android.widget.PopupWindow
    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void setContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.setContentView(view);
        setWidth(-2);
        setHeight(-2);
        setOutsideTouchable(true);
        setFocusable(true);
        setBackgroundDrawable(this.context.getResources().getDrawable(C10651R.drawable.popup_shadow_bg, null));
        setAnimationStyle(C10651R.style.popupWindowAnimation);
    }

    public final void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Point m43076h = m43076h(anchor);
        showAtLocation(anchor, 0, m43076h.x, m43076h.y);
    }
}
