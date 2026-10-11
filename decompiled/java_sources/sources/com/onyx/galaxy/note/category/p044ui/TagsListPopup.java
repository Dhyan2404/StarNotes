package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.p039ui.BasePopWindow;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.TagsListAdapter;
import com.onyx.galaxy.note.databinding.PopupTagsListBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/TagsListPopup;", "Lcom/onyx/android/sdk/ui/BasePopWindow;", "Landroid/view/View;", "view", "", "setContentView", "onPrepareShow", C6997f.f39671c, "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "", "", "l", "Ljava/util/List;", CouchFieldKey.KEY_TAG_ID_LIST, "Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;", "m", "Lkotlin/Lazy;", "e", "()Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TagsListPopup extends BasePopWindow {

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final List<String> tagIdList;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final TagsListAdapter adapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TagsListPopup(@NotNull Context context, @NotNull List<String> tagIdList) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tagIdList, "tagIdList");
        this.context = context;
        this.tagIdList = tagIdList;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupTagsListBinding>() { // from class: com.onyx.galaxy.note.category.ui.TagsListPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupTagsListBinding invoke() {
                Context context2;
                context2 = TagsListPopup.this.context;
                return PopupTagsListBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.adapter = new TagsListAdapter();
        View root = m43885e().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43886f();
    }

    /* renamed from: e */
    public final PopupTagsListBinding m43885e() {
        return (PopupTagsListBinding) this.binding.getValue();
    }

    /* renamed from: f */
    public final void m43886f() {
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(this.context);
        flexboxLayoutManager.setFlexDirection(0);
        m43885e().f57867rv.setLayoutManager(flexboxLayoutManager);
        this.adapter.submitList(this.tagIdList);
        m43885e().f57867rv.setAdapter(this.adapter);
    }

    @Override // com.onyx.android.sdk.p039ui.BasePopWindow
    public void onPrepareShow() {
        m43885e().bubbleLayout.setTriangleDirection(getIsForceShowAtUp() ? 4 : 2);
    }

    @Override // android.widget.PopupWindow
    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void setContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.setContentView(view);
        setWidth(-2);
        setHeight(-2);
        setOutsideTouchable(true);
        setBackgroundDrawable(new ColorDrawable(0));
        setAnimationStyle(C10651R.style.popupWindowAnimation);
    }
}
