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
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.TagCreateFrom;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBeanList;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.DeleteTagAction;
import com.onyx.galaxy.note.category.action.MoveToSelectTagAction;
import com.onyx.galaxy.note.category.p044ui.TagOpPopup;
import com.onyx.galaxy.note.category.view.dialog.CreateSubTagDialog;
import com.onyx.galaxy.note.category.view.dialog.EditTagDialog;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.PopupTagOpBinding;
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

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0010\u0010\u001c\u001a\f\u0012\u0004\u0012\u00020\u00180\u0017j\u0002`\u0019¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\b\u0010\b\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001e\u0010\u001c\u001a\f\u0012\u0004\u0012\u00020\u00180\u0017j\u0002`\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0017\u0010\"\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/TagOpPopup;", "Landroid/widget/PopupWindow;", "Landroid/view/View;", "view", "", "setContentView", Constants.ELEMNAME_ANCHOR_STRING, "show", "dismiss", "Landroid/graphics/Point;", C6999h.f39688c, "i", GoogleApiAvailabilityLight.f29016b, C6998g.f39679a, "e", C6997f.f39671c, "", "eventId", C4921e.f26528e, "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "b", "Lcom/onyx/android/sdk/base/data/TreeNode;", "node", "Lcom/onyx/galaxy/note/databinding/PopupTagOpBinding;", "c", "Lcom/onyx/galaxy/note/databinding/PopupTagOpBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupTagOpBinding;", "binding", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "d", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTagOpPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagOpPopup.kt\ncom/onyx/galaxy/note/category/ui/TagOpPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n256#2,2:172\n1549#3:174\n1620#3,3:175\n*S KotlinDebug\n*F\n+ 1 TagOpPopup.kt\ncom/onyx/galaxy/note/category/ui/TagOpPopup\n*L\n116#1:172,2\n152#1:174\n152#1:175,3\n*E\n"})
/* loaded from: classes9.dex */
public final class TagOpPopup extends PopupWindow {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteTagBean> node;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final PopupTagOpBinding binding;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TagOpPopup(@NotNull Context context, @NotNull TreeNode<NoteTagBean> node) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(node, "node");
        this.context = context;
        this.node = node;
        PopupTagOpBinding inflate = PopupTagOpBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.compositeDisposable = new CompositeDisposable();
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43882i();
    }

    /* renamed from: j */
    public static final void m43874j(TagOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43879f();
    }

    /* renamed from: k */
    public static final void m43875k(TagOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43878e();
    }

    /* renamed from: l */
    public static final void m43876l(TagOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43880g();
    }

    /* renamed from: m */
    public static final void m43877m(TagOpPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43883n();
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        this.compositeDisposable.clear();
    }

    /* renamed from: e */
    public final void m43878e() {
        m43884o(OnyxStatisticConstant.ID_TAG_OP_POPUP_CREATE_CLICK);
        new CreateSubTagDialog(this.context, this.node, TagCreateFrom.HOME_FUNC_SUB_TAG_CREATE).show();
        dismiss();
    }

    /* renamed from: f */
    public final void m43879f() {
        List mutableListOf;
        int collectionSizeOrDefault;
        String content = this.node.getData().getContent();
        List<TreeNode<NoteTagBean>> findChildrenNodes = this.node.findChildrenNodes();
        int size = findChildrenNodes.size();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(this.node.getData().getUniqueId());
        List<TreeNode<NoteTagBean>> list = findChildrenNodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTagBean) ((TreeNode) it2.next()).getData()).getUniqueId());
        }
        mutableListOf.addAll(arrayList);
        dismiss();
        Disposable subscribe = new DeleteTagAction(this.context, content, this.node.getData(), size, mutableListOf).create().subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: g */
    public final void m43880g() {
        m43884o(OnyxStatisticConstant.ID_TAG_OP_POPUP_EDIT_CLICK);
        new EditTagDialog(this.context, this.node).show();
        dismiss();
    }

    @NotNull
    public final PopupTagOpBinding getBinding() {
        return this.binding;
    }

    /* renamed from: h */
    public final Point m43881h(View anchor) {
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
    public final void m43882i() {
        this.binding.tvTitle.setText(this.node.getData().getContent());
        this.binding.btnDeleteTag.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x8n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TagOpPopup.m43874j(TagOpPopup.this, view);
            }
        });
        this.binding.btnCreateSubTag.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y8n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TagOpPopup.m43875k(TagOpPopup.this, view);
            }
        });
        this.binding.btnEdtTag.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.z8n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TagOpPopup.m43876l(TagOpPopup.this, view);
            }
        });
        this.binding.btnMoveTag.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.a9n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TagOpPopup.m43877m(TagOpPopup.this, view);
            }
        });
        Group groupCreateSubTag = this.binding.groupCreateSubTag;
        Intrinsics.checkNotNullExpressionValue(groupCreateSubTag, "groupCreateSubTag");
        groupCreateSubTag.setVisibility(this.node.levelToRoot() < 6 ? 0 : 8);
    }

    /* renamed from: n */
    public final void m43883n() {
        List<String> listOf;
        NoteTagBeanList noteTagBeanList = new NoteTagBeanList();
        noteTagBeanList.add(this.node.getData());
        ManageTagContext manageTagContext = new ManageTagContext();
        manageTagContext.setOldParentId(this.node.getData().getParentId());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.node.getData().getUniqueId());
        manageTagContext.setOpTagIds(listOf);
        manageTagContext.setMoveTagList(noteTagBeanList);
        RxBaseAction.execute$default(new MoveToSelectTagAction(manageTagContext).setActivityContext(this.context), null, null, null, 7, null);
        m43884o(OnyxStatisticConstant.ID_TAG_OP_POPUP_MOVE_CLICK);
        dismiss();
    }

    /* renamed from: o */
    public final void m43884o(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TAG_ID, this.node.getData().getUniqueId()));
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
        m43884o(OnyxStatisticConstant.ID_TAG_OP_POPUP_VIEW);
    }

    public final void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Point m43881h = m43881h(anchor);
        showAtLocation(anchor, 0, m43881h.x, m43881h.y);
    }
}
