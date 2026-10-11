package com.onyx.android.sdk.matisse.internal.p030ui.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CursorAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.ListPopupWindow;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.internal.entity.Album;
import com.onyx.android.sdk.matisse.internal.utils.Platform;

/* loaded from: classes7.dex */
public class AlbumsSpinner {

    /* renamed from: e */
    public static final int f42785e = 6;

    /* renamed from: a */
    public CursorAdapter f42786a;

    /* renamed from: b */
    public TextView f42787b;

    /* renamed from: c */
    public ListPopupWindow f42788c;

    /* renamed from: d */
    public AdapterView.OnItemSelectedListener f42789d;

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.widget.AlbumsSpinner$a */
    /* loaded from: classes7.dex */
    public class C7469a implements AdapterView.OnItemClickListener {
        public C7469a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AlbumsSpinner.this.m33452e(adapterView.getContext(), i);
            if (AlbumsSpinner.this.f42789d != null) {
                AlbumsSpinner.this.f42789d.onItemSelected(adapterView, view, i, j);
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.widget.AlbumsSpinner$b */
    /* loaded from: classes7.dex */
    public class ViewOnClickListenerC7470b implements View.OnClickListener {
        public ViewOnClickListenerC7470b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int dimensionPixelSize = view.getResources().getDimensionPixelSize(C7453R.dimen.album_item_height);
            AlbumsSpinner.this.f42788c.setHeight(AlbumsSpinner.this.f42786a.getCount() > 6 ? dimensionPixelSize * 6 : dimensionPixelSize * AlbumsSpinner.this.f42786a.getCount());
            AlbumsSpinner.this.f42788c.show();
        }
    }

    public AlbumsSpinner(@NonNull Context context) {
        ListPopupWindow listPopupWindow = new ListPopupWindow(context, null, C7453R.attr.listPopupWindowStyle);
        this.f42788c = listPopupWindow;
        listPopupWindow.setModal(true);
        float f = context.getResources().getDisplayMetrics().density;
        this.f42788c.setContentWidth((int) (216.0f * f));
        this.f42788c.setHorizontalOffset((int) (16.0f * f));
        this.f42788c.setVerticalOffset((int) (f * (-48.0f)));
        this.f42788c.setOnItemClickListener(new C7469a());
    }

    /* renamed from: e */
    public final void m33452e(Context context, int i) {
        this.f42788c.dismiss();
        Cursor cursor = this.f42786a.getCursor();
        cursor.moveToPosition(i);
        String displayName = Album.valueOf(cursor).getDisplayName(context);
        if (this.f42787b.getVisibility() == 0) {
            this.f42787b.setText(displayName);
            return;
        }
        if (!Platform.hasICS()) {
            this.f42787b.setVisibility(0);
            this.f42787b.setText(displayName);
        } else {
            this.f42787b.setAlpha(0.0f);
            this.f42787b.setVisibility(0);
            this.f42787b.setText(displayName);
            this.f42787b.animate().alpha(1.0f).setDuration(context.getResources().getInteger(R.integer.config_longAnimTime)).start();
        }
    }

    public void setAdapter(CursorAdapter cursorAdapter) {
        this.f42788c.setAdapter(cursorAdapter);
        this.f42786a = cursorAdapter;
    }

    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f42789d = onItemSelectedListener;
    }

    public void setPopupAnchorView(View view) {
        this.f42788c.setAnchorView(view);
    }

    public void setSelectedTextView(TextView textView) {
        this.f42787b = textView;
        Drawable drawable = textView.getCompoundDrawables()[2];
        TypedArray obtainStyledAttributes = this.f42787b.getContext().getTheme().obtainStyledAttributes(new int[]{C7453R.attr.album_element_color});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        drawable.setColorFilter(color, PorterDuff.Mode.SRC_IN);
        this.f42787b.setVisibility(8);
        this.f42787b.setOnClickListener(new ViewOnClickListenerC7470b());
        TextView textView2 = this.f42787b;
        textView2.setOnTouchListener(this.f42788c.createDragToOpenListener(textView2));
    }

    public void setSelection(Context context, int i) {
        this.f42788c.setSelection(i);
        m33452e(context, i);
    }
}
