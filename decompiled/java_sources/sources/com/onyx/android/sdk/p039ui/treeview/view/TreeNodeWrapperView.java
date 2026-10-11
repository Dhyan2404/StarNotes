package com.onyx.android.sdk.p039ui.treeview.view;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.onyx.android.sdk.uicommon.C8044R;

/* loaded from: classes8.dex */
public class TreeNodeWrapperView extends LinearLayout {

    /* renamed from: e */
    public LinearLayout f47231e;

    /* renamed from: f */
    public ViewGroup f47232f;

    /* renamed from: g */
    public final int f47233g;

    public TreeNodeWrapperView(Context context, int i) {
        super(context);
        this.f47233g = i;
        m36448a();
    }

    /* renamed from: a */
    public final void m36448a() {
        setOrientation(1);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.f47232f = relativeLayout;
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f47232f.setId(C8044R.id.node_header);
        LinearLayout linearLayout = new LinearLayout(new ContextThemeWrapper(getContext(), this.f47233g), null, this.f47233g);
        this.f47231e = linearLayout;
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f47231e.setId(C8044R.id.node_items);
        this.f47231e.setOrientation(1);
        this.f47231e.setVisibility(8);
        addView(this.f47232f);
        addView(this.f47231e);
    }

    public ViewGroup getNodeContainer() {
        return this.f47232f;
    }

    public void insertNodeView(View view) {
        this.f47232f.addView(view);
    }
}
