package com.caverock.androidsvg;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class SVGImageView extends ImageView {

    /* renamed from: g */
    public static Method f16031g;

    /* renamed from: e */
    public SVG f16032e;

    /* renamed from: f */
    public RenderOptions f16033f;

    /* renamed from: com.caverock.androidsvg.SVGImageView$b */
    /* loaded from: classes3.dex */
    public class AsyncTaskC2129b extends AsyncTask<Integer, Integer, SVG> {

        /* renamed from: a */
        public Context f16034a;

        /* renamed from: b */
        public int f16035b;

        public AsyncTaskC2129b(Context context, int i) {
            this.f16034a = context;
            this.f16035b = i;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SVG doInBackground(Integer... numArr) {
            try {
                return SVG.getFromResource(this.f16034a, this.f16035b);
            } catch (SVGParseException e) {
                Log.e("SVGImageView", String.format("Error loading resource 0x%x: %s", Integer.valueOf(this.f16035b), e.getMessage()));
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(SVG svg) {
            SVGImageView.this.f16032e = svg;
            SVGImageView.this.m9399c();
        }
    }

    /* renamed from: com.caverock.androidsvg.SVGImageView$c */
    /* loaded from: classes3.dex */
    public class AsyncTaskC2130c extends AsyncTask<InputStream, Integer, SVG> {
        public AsyncTaskC2130c() {
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SVG doInBackground(InputStream... inputStreamArr) {
            try {
                try {
                    SVG fromInputStream = SVG.getFromInputStream(inputStreamArr[0]);
                    try {
                        inputStreamArr[0].close();
                    } catch (IOException unused) {
                    }
                    return fromInputStream;
                } catch (SVGParseException e) {
                    Log.e("SVGImageView", "Parse error loading URI: " + e.getMessage());
                    try {
                        inputStreamArr[0].close();
                        return null;
                    } catch (IOException unused2) {
                        return null;
                    }
                }
            } catch (Throwable th) {
                try {
                    inputStreamArr[0].close();
                } catch (IOException unused3) {
                }
                throw th;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(SVG svg) {
            SVGImageView.this.f16032e = svg;
            SVGImageView.this.m9399c();
        }
    }

    static {
        try {
            f16031g = View.class.getMethod("setLayerType", Integer.TYPE, Paint.class);
        } catch (NoSuchMethodException unused) {
        }
    }

    public SVGImageView(Context context) {
        super(context);
        this.f16032e = null;
        this.f16033f = new RenderOptions();
    }

    private void setFromString(String str) {
        try {
            this.f16032e = SVG.getFromString(str);
            m9399c();
        } catch (SVGParseException unused) {
            Log.e("SVGImageView", "Could not find SVG at: " + str);
        }
    }

    /* renamed from: c */
    public final void m9399c() {
        SVG svg = this.f16032e;
        if (svg == null) {
            return;
        }
        Picture renderToPicture = svg.renderToPicture(this.f16033f);
        m9403g();
        setImageDrawable(new PictureDrawable(renderToPicture));
    }

    /* renamed from: d */
    public final void m9400d(AttributeSet attributeSet, int i) {
        if (isInEditMode()) {
            return;
        }
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C2072R.styleable.SVGImageView, i, 0);
        try {
            String string = obtainStyledAttributes.getString(C2072R.styleable.SVGImageView_css);
            if (string != null) {
                this.f16033f.css(string);
            }
            int resourceId = obtainStyledAttributes.getResourceId(C2072R.styleable.SVGImageView_svg, -1);
            if (resourceId != -1) {
                setImageResource(resourceId);
                return;
            }
            String string2 = obtainStyledAttributes.getString(C2072R.styleable.SVGImageView_svg);
            if (string2 != null) {
                if (m9402f(Uri.parse(string2))) {
                    return;
                }
                if (m9401e(string2)) {
                } else {
                    setFromString(string2);
                }
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: e */
    public final boolean m9401e(String str) {
        try {
            new AsyncTaskC2130c().execute(getContext().getAssets().open(str));
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    /* renamed from: f */
    public final boolean m9402f(Uri uri) {
        try {
            new AsyncTaskC2130c().execute(getContext().getContentResolver().openInputStream(uri));
            return true;
        } catch (FileNotFoundException unused) {
            return false;
        }
    }

    /* renamed from: g */
    public final void m9403g() {
        if (f16031g == null) {
            return;
        }
        try {
            f16031g.invoke(this, Integer.valueOf(View.class.getField("LAYER_TYPE_SOFTWARE").getInt(new View(getContext()))), null);
        } catch (Exception e) {
            Log.w("SVGImageView", "Unexpected failure calling setLayerType", e);
        }
    }

    public void setCSS(String str) {
        this.f16033f.css(str);
        m9399c();
    }

    public void setImageAsset(String str) {
        if (m9401e(str)) {
            return;
        }
        Log.e("SVGImageView", "File not found: " + str);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        new AsyncTaskC2129b(getContext(), i).execute(new Integer[0]);
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        if (m9402f(uri)) {
            return;
        }
        Log.e("SVGImageView", "File not found: " + uri);
    }

    public void setSVG(SVG svg) {
        if (svg != null) {
            this.f16032e = svg;
            m9399c();
            return;
        }
        throw new IllegalArgumentException("Null value passed to setSVG()");
    }

    public SVGImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f16032e = null;
        this.f16033f = new RenderOptions();
        m9400d(attributeSet, 0);
    }

    public void setSVG(SVG svg, String str) {
        if (svg != null) {
            this.f16032e = svg;
            this.f16033f.css(str);
            m9399c();
            return;
        }
        throw new IllegalArgumentException("Null value passed to setSVG()");
    }

    public SVGImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16032e = null;
        this.f16033f = new RenderOptions();
        m9400d(attributeSet, i);
    }
}
