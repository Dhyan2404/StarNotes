package com.sunia.HTREnginev2;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.C0118R;
import androidx.appcompat.widget.SearchView;
import androidx.core.content.ContextCompat;
import androidx.cursoradapter.widget.ResourceCursorAdapter;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class r5n extends ResourceCursorAdapter implements View.OnClickListener {

    /* renamed from: J */
    public static final int f82751J = 2;

    /* renamed from: O */
    public static final int f82752O = -1;

    /* renamed from: v */
    public static final boolean f82753v = false;

    /* renamed from: w */
    public static final String f82754w = "SuggestionsAdapter";

    /* renamed from: x */
    public static final int f82755x = 50;

    /* renamed from: y */
    public static final int f82756y = 0;

    /* renamed from: z */
    public static final int f82757z = 1;

    /* renamed from: h */
    public final SearchView f82758h;

    /* renamed from: i */
    public final SearchableInfo f82759i;

    /* renamed from: j */
    public final Context f82760j;

    /* renamed from: k */
    public final WeakHashMap<String, Drawable.ConstantState> f82761k;

    /* renamed from: l */
    public final int f82762l;

    /* renamed from: m */
    public boolean f82763m;

    /* renamed from: n */
    public int f82764n;

    /* renamed from: o */
    public ColorStateList f82765o;

    /* renamed from: p */
    public int f82766p;

    /* renamed from: q */
    public int f82767q;

    /* renamed from: r */
    public int f82768r;

    /* renamed from: s */
    public int f82769s;

    /* renamed from: t */
    public int f82770t;

    /* renamed from: u */
    public int f82771u;

    /* renamed from: com.sunia.HTREnginev2.r5n$a */
    /* loaded from: classes3.dex */
    public static final class C14335a {

        /* renamed from: a */
        public final TextView f82772a;

        /* renamed from: b */
        public final TextView f82773b;

        /* renamed from: c */
        public final ImageView f82774c;

        /* renamed from: d */
        public final ImageView f82775d;

        /* renamed from: e */
        public final ImageView f82776e;

        public C14335a(View view) {
            this.f82772a = (TextView) view.findViewById(R.id.text1);
            this.f82773b = (TextView) view.findViewById(R.id.text2);
            this.f82774c = (ImageView) view.findViewById(R.id.icon1);
            this.f82775d = (ImageView) view.findViewById(R.id.icon2);
            this.f82776e = (ImageView) view.findViewById(C0118R.id.edit_query);
        }
    }

    public r5n(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), (Cursor) null, true);
        this.f82763m = false;
        this.f82764n = 1;
        this.f82766p = -1;
        this.f82767q = -1;
        this.f82768r = -1;
        this.f82769s = -1;
        this.f82770t = -1;
        this.f82771u = -1;
        this.f82758h = searchView;
        this.f82759i = searchableInfo;
        this.f82762l = searchView.getSuggestionCommitIconResId();
        this.f82760j = context;
        this.f82761k = weakHashMap;
    }

    /* renamed from: g */
    public static String m56890g(Cursor cursor, String str) {
        return m56891p(cursor, cursor.getColumnIndex(str));
    }

    /* renamed from: p */
    public static String m56891p(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e(f82754w, "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            return null;
        }
    }

    /* renamed from: b */
    public final Drawable m56892b(String str) {
        Drawable.ConstantState constantState = this.f82761k.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        C14335a c14335a = (C14335a) view.getTag();
        int i = this.f82771u;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (c14335a.f82772a != null) {
            m56907s(c14335a.f82772a, m56891p(cursor, this.f82766p));
        }
        if (c14335a.f82773b != null) {
            String m56891p = m56891p(cursor, this.f82768r);
            CharSequence m56894d = m56891p != null ? m56894d(m56891p) : m56891p(cursor, this.f82767q);
            if (TextUtils.isEmpty(m56894d)) {
                TextView textView = c14335a.f82772a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    c14335a.f82772a.setMaxLines(2);
                }
            } else {
                TextView textView2 = c14335a.f82772a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    c14335a.f82772a.setMaxLines(1);
                }
            }
            m56907s(c14335a.f82773b, m56894d);
        }
        ImageView imageView = c14335a.f82774c;
        if (imageView != null) {
            m56906r(imageView, m56901l(cursor), 4);
        }
        ImageView imageView2 = c14335a.f82775d;
        if (imageView2 != null) {
            m56906r(imageView2, m56902m(cursor), 8);
        }
        int i3 = this.f82764n;
        if (i3 != 2 && (i3 != 1 || (i2 & 1) == 0)) {
            c14335a.f82776e.setVisibility(8);
            return;
        }
        c14335a.f82776e.setVisibility(0);
        c14335a.f82776e.setTag(c14335a.f82772a.getText());
        c14335a.f82776e.setOnClickListener(this);
    }

    /* renamed from: c */
    public void m56893c() {
        changeCursor(null);
        this.f82763m = true;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.C0940a.a
    public void changeCursor(Cursor cursor) {
        if (this.f82763m) {
            Log.w(f82754w, "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.changeCursor(cursor);
            if (cursor != null) {
                this.f82766p = cursor.getColumnIndex("suggest_text_1");
                this.f82767q = cursor.getColumnIndex("suggest_text_2");
                this.f82768r = cursor.getColumnIndex("suggest_text_2_url");
                this.f82769s = cursor.getColumnIndex("suggest_icon_1");
                this.f82770t = cursor.getColumnIndex("suggest_icon_2");
                this.f82771u = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e(f82754w, "error changing cursor and caching columns", e);
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.C0940a.a
    public CharSequence convertToString(Cursor cursor) {
        String m56890g;
        String m56890g2;
        if (cursor == null) {
            return null;
        }
        String m56890g3 = m56890g(cursor, "suggest_intent_query");
        if (m56890g3 != null) {
            return m56890g3;
        }
        if (this.f82759i.shouldRewriteQueryFromData() && (m56890g2 = m56890g(cursor, "suggest_intent_data")) != null) {
            return m56890g2;
        }
        if (!this.f82759i.shouldRewriteQueryFromText() || (m56890g = m56890g(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return m56890g;
    }

    /* renamed from: d */
    public final CharSequence m56894d(CharSequence charSequence) {
        if (this.f82765o == null) {
            TypedValue typedValue = new TypedValue();
            this.f82760j.getTheme().resolveAttribute(C0118R.attr.textColorSearchUrl, typedValue, true);
            this.f82765o = this.f82760j.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f82765o, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    /* renamed from: e */
    public final Drawable m56895e(ComponentName componentName) {
        PackageManager packageManager = this.f82760j.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w(f82754w, "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(f82754w, e.toString());
            return null;
        }
    }

    /* renamed from: f */
    public final Drawable m56896f(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        if (!this.f82761k.containsKey(flattenToShortString)) {
            Drawable m56895e = m56895e(componentName);
            this.f82761k.put(flattenToShortString, m56895e != null ? m56895e.getConstantState() : null);
            return m56895e;
        }
        Drawable.ConstantState constantState = this.f82761k.get(flattenToShortString);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable(this.f82760j.getResources());
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w(f82754w, "Search suggestions cursor threw exception.", e);
            View newDropDownView = this.newDropDownView(this.f82760j, this.getCursor(), viewGroup);
            if (newDropDownView != null) {
                ((C14335a) newDropDownView.getTag()).f82772a.setText(e.toString());
            }
            return newDropDownView;
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w(f82754w, "Search suggestions cursor threw exception.", e);
            View newView = this.newView(this.f82760j, this.getCursor(), viewGroup);
            if (newView != null) {
                ((C14335a) newView.getTag()).f82772a.setText(e.toString());
            }
            return newView;
        }
    }

    /* renamed from: h */
    public final Drawable m56897h() {
        Drawable m56896f = m56896f(this.f82759i.getSearchActivity());
        return m56896f != null ? m56896f : this.f82760j.getPackageManager().getDefaultActivityIcon();
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    /* renamed from: i */
    public final Drawable m56898i(Uri uri) {
        try {
            if (DefaultDataSource.f28026s.equals(uri.getScheme())) {
                try {
                    return m56899j(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream openInputStream = this.f82760j.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            try {
                return Drawable.createFromStream(openInputStream, null);
            } finally {
                try {
                    openInputStream.close();
                } catch (IOException e) {
                    Log.e(f82754w, "Error closing icon stream for " + uri, e);
                }
            }
        } catch (FileNotFoundException e2) {
            Log.w(f82754w, "Icon not found: " + uri + ", " + e2.getMessage());
            return null;
        }
        Log.w(f82754w, "Icon not found: " + uri + ", " + e2.getMessage());
        return null;
    }

    /* renamed from: j */
    public Drawable m56899j(Uri uri) throws FileNotFoundException {
        int parseInt;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f82760j.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    parseInt = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (parseInt != 0) {
                return resourcesForApplication.getDrawable(parseInt);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    /* renamed from: k */
    public final Drawable m56900k(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(str);
            String str2 = "android.resource://" + this.f82760j.getPackageName() + "/" + parseInt;
            Drawable m56892b = m56892b(str2);
            if (m56892b != null) {
                return m56892b;
            }
            Drawable drawable = ContextCompat.getDrawable(this.f82760j, parseInt);
            m56908t(str2, drawable);
            return drawable;
        } catch (Resources.NotFoundException unused) {
            Log.w(f82754w, "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable m56892b2 = m56892b(str);
            if (m56892b2 != null) {
                return m56892b2;
            }
            Drawable m56898i = m56898i(Uri.parse(str));
            m56908t(str, m56898i);
            return m56898i;
        }
    }

    /* renamed from: l */
    public final Drawable m56901l(Cursor cursor) {
        int i = this.f82769s;
        if (i == -1) {
            return null;
        }
        Drawable m56900k = m56900k(cursor.getString(i));
        return m56900k != null ? m56900k : m56897h();
    }

    /* renamed from: m */
    public final Drawable m56902m(Cursor cursor) {
        int i = this.f82770t;
        if (i == -1) {
            return null;
        }
        return m56900k(cursor.getString(i));
    }

    /* renamed from: n */
    public int m56903n() {
        return this.f82764n;
    }

    @Override // androidx.cursoradapter.widget.ResourceCursorAdapter, androidx.cursoradapter.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View newView = super.newView(context, cursor, viewGroup);
        newView.setTag(new C14335a(newView));
        ((ImageView) newView.findViewById(C0118R.id.edit_query)).setImageResource(this.f82762l);
        return newView;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m56909u(getCursor());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m56909u(getCursor());
    }

    /* renamed from: o */
    public Cursor m56904o(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.f82760j.getContentResolver().query(fragment.build(), null, suggestSelection, strArr2, null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f82758h.onQueryRefine((CharSequence) tag);
        }
    }

    /* renamed from: q */
    public void m56905q(int i) {
        this.f82764n = i;
    }

    /* renamed from: r */
    public final void m56906r(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.C0940a.a
    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f82758h.getVisibility() == 0 && this.f82758h.getWindowVisibility() == 0) {
            try {
                Cursor m56904o = m56904o(this.f82759i, charSequence2, 50);
                if (m56904o != null) {
                    m56904o.getCount();
                    return m56904o;
                }
            } catch (RuntimeException e) {
                Log.w(f82754w, "Search suggestions query threw an exception.", e);
            }
        }
        return null;
    }

    /* renamed from: s */
    public final void m56907s(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    /* renamed from: t */
    public final void m56908t(String str, Drawable drawable) {
        if (drawable != null) {
            this.f82761k.put(str, drawable.getConstantState());
        }
    }

    /* renamed from: u */
    public final void m56909u(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }
}
