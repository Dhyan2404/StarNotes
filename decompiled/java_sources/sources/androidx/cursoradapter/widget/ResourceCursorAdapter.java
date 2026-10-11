package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes3.dex */
public abstract class ResourceCursorAdapter extends CursorAdapter {

    /* renamed from: e */
    public int f6608e;

    /* renamed from: f */
    public int f6609f;

    /* renamed from: g */
    public LayoutInflater f6610g;

    @Deprecated
    public ResourceCursorAdapter(Context context, int i, Cursor cursor) {
        super(context, cursor);
        this.f6609f = i;
        this.f6608e = i;
        this.f6610g = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f6610g.inflate(this.f6609f, viewGroup, false);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f6610g.inflate(this.f6608e, viewGroup, false);
    }

    public void setDropDownViewResource(int i) {
        this.f6609f = i;
    }

    public void setViewResource(int i) {
        this.f6608e = i;
    }

    @Deprecated
    public ResourceCursorAdapter(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f6609f = i;
        this.f6608e = i;
        this.f6610g = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public ResourceCursorAdapter(Context context, int i, Cursor cursor, int i2) {
        super(context, cursor, i2);
        this.f6609f = i;
        this.f6608e = i;
        this.f6610g = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
