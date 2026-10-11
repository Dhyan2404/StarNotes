package com.onyx.galaxy.note.editor.menu;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.editor.menu.BasePagedMenuAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0014\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010$\u001a\u00020!¢\u0006\u0004\b;\u0010<J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u0007H&J\u0018\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0003H&J\b\u0010\u0016\u001a\u00020\u0005H\u0002J\b\u0010\u0017\u001a\u00020\u0005H\u0002J\u0016\u0010\u001a\u001a\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u0018H\u0002J\u0016\u0010\u001b\u001a\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u0018H\u0002J\u0018\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u001e\u001a\u00020\u0010H\u0002J\b\u0010\u001f\u001a\u00020\u0010H\u0002J\u0016\u0010 \u001a\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u0018H\u0002R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001d\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030\u00188\u0006¢\u0006\f\n\u0004\b\u001a\u0010%\u001a\u0004\b&\u0010'R$\u0010/\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0016\u00101\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u00100R\u0016\u00102\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u00100R\u0016\u00103\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u00100R\u0016\u00104\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u00100R\u0016\u00105\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u00100R\u0014\u00107\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00100R\u0014\u00108\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u00100R\u0014\u0010:\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u00100¨\u0006="}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;", "", "", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "types", "", "setMenus", "", "max", "setMaxWidth", "release", "getContentWidth", "getContentHeight", "getItemHeight", "", "isPageUp", "Landroid/view/View;", "createPageButtonView", FirebaseAnalytics.Param.INDEX, "createDividerView", "menu", "createMenuView", C6998g.f39679a, C6997f.f39671c, "", "views", "b", "c", "view", C6999h.f39688c, "e", "d", "j", "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "Ljava/util/List;", "getMenus", "()Ljava/util/List;", "menus", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;", "getCallback", "()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;", "setCallback", "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;)V", "callback", "I", "startIndex", "endIndex", "contentWidth", "contentHeight", "maxWidth", "i", "height", Constant.PADDING_TAG, C4921e.f26537n, "pageButtonWidth", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBasePagedMenuAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePagedMenuAdapter.kt\ncom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1855#2,2:189\n*S KotlinDebug\n*F\n+ 1 BasePagedMenuAdapter.kt\ncom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter\n*L\n112#1:189,2\n*E\n"})
/* loaded from: classes9.dex */
public abstract class BasePagedMenuAdapter {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<SelectionMenuType> menus;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public SelectionMenuCallback callback;

    /* renamed from: d, reason: from kotlin metadata */
    public int startIndex;

    /* renamed from: e, reason: from kotlin metadata */
    public int endIndex;

    /* renamed from: f, reason: from kotlin metadata */
    public int contentWidth;

    /* renamed from: g, reason: from kotlin metadata */
    public int contentHeight;

    /* renamed from: h, reason: from kotlin metadata */
    public int maxWidth;

    /* renamed from: i, reason: from kotlin metadata */
    public final int height;

    /* renamed from: j, reason: from kotlin metadata */
    public final int padding;

    /* renamed from: k, reason: from kotlin metadata */
    public final int pageButtonWidth;

    public BasePagedMenuAdapter(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.menus = new ArrayList();
        this.startIndex = -1;
        ResManager resManager = ResManager.INSTANCE;
        this.contentHeight = resManager.getDimens(C7384R.dimen.dp_76);
        this.maxWidth = resManager.getDimens(C7384R.dimen.dp_400);
        this.height = resManager.getDimens(C7384R.dimen.dp_40);
        this.padding = resManager.getDimens(C7384R.dimen.dp_16);
        this.pageButtonWidth = resManager.getDimens(C7384R.dimen.dp_24);
    }

    /* renamed from: i */
    public static final void m46356i(boolean z, BasePagedMenuAdapter this$0, View view, View view2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "$view");
        if (z) {
            SelectionMenuCallback selectionMenuCallback = this$0.callback;
            if (selectionMenuCallback != null) {
                selectionMenuCallback.onMenuClick(SelectionMenuType.LAST_PAGE, view);
            }
            this$0.m46362g();
            return;
        }
        SelectionMenuCallback selectionMenuCallback2 = this$0.callback;
        if (selectionMenuCallback2 != null) {
            selectionMenuCallback2.onMenuClick(SelectionMenuType.NEXT_PAGE, view);
        }
        this$0.m46361f();
    }

    /* renamed from: b */
    public final void m46357b(List<View> views) {
        m46358c(views);
        m46364j(views);
        Iterator<T> it2 = views.iterator();
        while (it2.hasNext()) {
            this.contentWidth += ((View) it2.next()).getLayoutParams().width;
        }
        SelectionMenuCallback selectionMenuCallback = this.callback;
        if (selectionMenuCallback != null) {
            selectionMenuCallback.onMenuUpdated(views);
        }
    }

    /* renamed from: c */
    public final void m46358c(List<View> views) {
        if (this.startIndex > 0) {
            views.add(0, m46360e());
            View createDividerView = createDividerView(this.startIndex);
            if (createDividerView != null) {
                views.add(1, createDividerView);
            }
        }
        if (this.endIndex < this.menus.size()) {
            View createDividerView2 = createDividerView(this.endIndex);
            if (createDividerView2 != null) {
                views.add(createDividerView2);
            }
            views.add(m46359d());
        }
    }

    @Nullable
    public abstract View createDividerView(int index);

    @NotNull
    public abstract View createMenuView(int index, @NotNull SelectionMenuType menu);

    @NotNull
    public View createPageButtonView(boolean isPageUp) {
        ImageView imageView = new ImageView(this.context);
        imageView.setClickable(true);
        imageView.setBackground(ThemeUtils.getThemeDrawable(C10651R.drawable.ripple_white));
        int i = this.padding;
        imageView.setPadding(i, 0, i, 0);
        ViewKt.setLayoutParams(imageView, this.pageButtonWidth + (this.padding * 2), this.height);
        if (isPageUp) {
            imageView.setImageResource(C10651R.drawable.icon_last);
        } else {
            imageView.setImageResource(C10651R.drawable.icon_next);
        }
        return imageView;
    }

    /* renamed from: d */
    public final View m46359d() {
        View createPageButtonView = createPageButtonView(false);
        m46363h(createPageButtonView, false);
        return createPageButtonView;
    }

    /* renamed from: e */
    public final View m46360e() {
        View createPageButtonView = createPageButtonView(true);
        m46363h(createPageButtonView, true);
        return createPageButtonView;
    }

    /* renamed from: f */
    public final void m46361f() {
        View createDividerView;
        this.startIndex = this.endIndex;
        this.endIndex = this.menus.size();
        int i = 0;
        this.contentWidth = 0;
        ArrayList arrayList = new ArrayList();
        int i2 = this.startIndex;
        int size = this.menus.size();
        while (true) {
            if (i2 >= size) {
                break;
            }
            View createMenuView = createMenuView(i2, this.menus.get(i2));
            i += createMenuView.getLayoutParams().width;
            if (i > this.maxWidth) {
                this.endIndex = i2;
                break;
            }
            if (i2 != 0 && (createDividerView = createDividerView(i2)) != null) {
                arrayList.add(createDividerView);
            }
            arrayList.add(createMenuView);
            i2++;
        }
        m46357b(arrayList);
    }

    /* renamed from: g */
    public final void m46362g() {
        View createDividerView;
        int i = this.startIndex;
        this.endIndex = i;
        this.startIndex = i - 1;
        this.contentWidth = 0;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (int i3 = this.startIndex; -1 < i3; i3--) {
            View createMenuView = createMenuView(i3, this.menus.get(i3));
            i2 += createMenuView.getLayoutParams().width;
            if (i2 > this.maxWidth) {
                break;
            }
            arrayList.add(0, createMenuView);
            if (i3 != this.endIndex && (createDividerView = createDividerView(i3)) != null) {
                arrayList.add(1, createDividerView);
            }
            this.startIndex = i3;
        }
        m46357b(arrayList);
    }

    @Nullable
    public final SelectionMenuCallback getCallback() {
        return this.callback;
    }

    public final int getContentHeight() {
        return this.contentHeight;
    }

    public final int getContentWidth() {
        return this.contentWidth;
    }

    /* renamed from: getItemHeight, reason: from getter */
    public final int getHeight() {
        return this.height;
    }

    @NotNull
    public final List<SelectionMenuType> getMenus() {
        return this.menus;
    }

    /* renamed from: h */
    public final void m46363h(final View view, final boolean isPageUp) {
        view.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.un
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BasePagedMenuAdapter.m46356i(isPageUp, this, view, view2);
            }
        });
    }

    /* renamed from: j */
    public final void m46364j(List<View> views) {
        Object first;
        Object last;
        if (views.isEmpty()) {
            return;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) views);
        View view = (View) first;
        view.setBackground(ThemeUtils.getThemeDrawable(C10651R.drawable.ripple_white_left_corner));
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) views);
        ((View) last).setBackground(ThemeUtils.getThemeDrawable(C10651R.drawable.ripple_white_right_corner));
        if (views.size() == 1) {
            view.setBackground(ThemeUtils.getThemeDrawable(C10651R.drawable.ripple_white_corner));
        }
    }

    public final void release() {
        this.menus.clear();
        this.callback = null;
    }

    public final void setCallback(@Nullable SelectionMenuCallback selectionMenuCallback) {
        this.callback = selectionMenuCallback;
    }

    public final void setMaxWidth(int max) {
        this.maxWidth = max;
    }

    public final void setMenus(@NotNull List<? extends SelectionMenuType> types) {
        Intrinsics.checkNotNullParameter(types, "types");
        CollectionKt.reset(this.menus, types);
        this.startIndex = -1;
        this.endIndex = 0;
        m46361f();
    }
}
