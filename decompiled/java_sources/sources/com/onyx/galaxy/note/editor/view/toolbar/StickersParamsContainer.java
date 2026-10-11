package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.replicator.sticker.action.LoadRecentUsageAction;
import com.onyx.android.sdk.replicator.sticker.action.LoadStickerImageAction;
import com.onyx.android.sdk.replicator.sticker.action.SaveRecentUsageAction;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagesEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.databinding.LayoutStickerParamsContainerBinding;
import com.onyx.galaxy.note.editor.view.adapter.StickerImageAdapter;
import com.onyx.galaxy.note.editor.view.toolbar.StickersParamsContainer;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$B\u001d\b\u0016\u0012\u0006\u0010\"\u001a\u00020!\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%¢\u0006\u0004\b#\u0010'B%\b\u0016\u0012\u0006\u0010\"\u001a\u00020!\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\u0006\u0010(\u001a\u00020\u0007¢\u0006\u0004\b#\u0010)J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\b\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0012\u0010\u0013\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\u0016\u0010\u0017\u001a\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0015H\u0002R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010\u001dR\u0016\u0010 \u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u001f¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;", "Landroid/widget/FrameLayout;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "setEditorBundle", "onFinishInflate", "", "visibility", "setVisibility", "", "rotation", "setOrientationChanged", "b", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "item", "e", "", "imagePath", C6998g.f39679a, "d", "", "list", C6997f.f39671c, "Lcom/onyx/galaxy/note/databinding/LayoutStickerParamsContainerBinding;", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutStickerParamsContainerBinding;", "binding", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/galaxy/note/editor/view/adapter/StickerImageAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/StickerImageAdapter;", "adapter", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StickersParamsContainer extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    public StickerImageAdapter adapter;

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.StickersParamsContainer$a */
    /* loaded from: classes9.dex */
    public static final class C12547a<T> implements Consumer {
        public C12547a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<StickerModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickersParamsContainer.this.m50262f(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.StickersParamsContainer$b */
    /* loaded from: classes9.dex */
    public static final class C12548b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ StickerModel f61001f;

        public C12548b(StickerModel stickerModel) {
            this.f61001f = stickerModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickersParamsContainer.this.m50263g(it2);
            RxBaseAction.execute$default(new SaveRecentUsageAction(this.f61001f), null, null, null, 7, null);
            StickersParamsContainer.this.m50260d();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StickersParamsContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: c */
    public static final void m50258c(StickersParamsContainer this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        StickerImageAdapter stickerImageAdapter = this$0.adapter;
        if (stickerImageAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            stickerImageAdapter = null;
        }
        StickerModel item = stickerImageAdapter.getItem(i);
        if (item == null) {
            return;
        }
        this$0.m50261e(item);
    }

    private final LayoutStickerParamsContainerBinding getBinding() {
        return (LayoutStickerParamsContainerBinding) this.binding.getValue();
    }

    /* renamed from: b */
    public final void m50259b() {
        StickerImageAdapter stickerImageAdapter = new StickerImageAdapter();
        this.adapter = stickerImageAdapter;
        stickerImageAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.xzm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                StickersParamsContainer.m50258c(StickersParamsContainer.this, baseQuickAdapter, view, i);
            }
        });
        getBinding().listview.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        RecyclerView recyclerView = getBinding().listview;
        StickerImageAdapter stickerImageAdapter2 = this.adapter;
        if (stickerImageAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            stickerImageAdapter2 = null;
        }
        recyclerView.setAdapter(stickerImageAdapter2);
    }

    /* renamed from: d */
    public final void m50260d() {
        new LoadRecentUsageAction().build().doOnNext(new C12547a()).subscribe();
    }

    /* renamed from: e */
    public final void m50261e(StickerModel item) {
        new LoadStickerImageAction(item).build().doOnNext(new C12548b(item)).subscribe();
    }

    /* renamed from: f */
    public final void m50262f(List<StickerModel> list) {
        StickerImageAdapter stickerImageAdapter = this.adapter;
        if (stickerImageAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            stickerImageAdapter = null;
        }
        stickerImageAdapter.submitList(list);
    }

    /* renamed from: g */
    public final void m50263g(String imagePath) {
        List listOf;
        if (imagePath == null) {
            return;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Uri.fromFile(new File(imagePath)));
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new InsertImagesEvent(listOf));
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        m50260d();
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setOrientationChanged(float rotation) {
        StickerImageAdapter stickerImageAdapter = this.adapter;
        if (stickerImageAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            stickerImageAdapter = null;
        }
        stickerImageAdapter.setOrientationChanged(rotation);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility == 0) {
            m50260d();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StickersParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ StickersParamsContainer(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StickersParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutStickerParamsContainerBinding>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.StickersParamsContainer$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutStickerParamsContainerBinding invoke() {
                return LayoutStickerParamsContainerBinding.inflate(LayoutInflater.from(StickersParamsContainer.this.getContext()), StickersParamsContainer.this, true);
            }
        });
        this.binding = lazy;
        m50259b();
    }

    public /* synthetic */ StickersParamsContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
