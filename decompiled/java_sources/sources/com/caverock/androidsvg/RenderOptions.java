package com.caverock.androidsvg;

import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.SVG;

/* loaded from: classes3.dex */
public class RenderOptions {

    /* renamed from: a */
    public CSSParser.C2069n f15787a;

    /* renamed from: b */
    public PreserveAspectRatio f15788b;

    /* renamed from: c */
    public String f15789c;

    /* renamed from: d */
    public SVG.C2076b f15790d;

    /* renamed from: e */
    public String f15791e;

    /* renamed from: f */
    public SVG.C2076b f15792f;

    public RenderOptions() {
        this.f15787a = null;
        this.f15788b = null;
        this.f15789c = null;
        this.f15790d = null;
        this.f15791e = null;
        this.f15792f = null;
    }

    public static RenderOptions create() {
        return new RenderOptions();
    }

    public RenderOptions css(String str) {
        this.f15787a = new CSSParser(CSSParser.Source.RenderOptions).m9306d(str);
        return this;
    }

    public boolean hasCss() {
        CSSParser.C2069n c2069n = this.f15787a;
        return c2069n != null && c2069n.m9334f() > 0;
    }

    public boolean hasPreserveAspectRatio() {
        return this.f15788b != null;
    }

    public boolean hasTarget() {
        return this.f15789c != null;
    }

    public boolean hasView() {
        return this.f15791e != null;
    }

    public boolean hasViewBox() {
        return this.f15790d != null;
    }

    public boolean hasViewPort() {
        return this.f15792f != null;
    }

    public RenderOptions preserveAspectRatio(PreserveAspectRatio preserveAspectRatio) {
        this.f15788b = preserveAspectRatio;
        return this;
    }

    public RenderOptions target(String str) {
        this.f15789c = str;
        return this;
    }

    public RenderOptions view(String str) {
        this.f15791e = str;
        return this;
    }

    public RenderOptions viewBox(float f, float f2, float f3, float f4) {
        this.f15790d = new SVG.C2076b(f, f2, f3, f4);
        return this;
    }

    public RenderOptions viewPort(float f, float f2, float f3, float f4) {
        this.f15792f = new SVG.C2076b(f, f2, f3, f4);
        return this;
    }

    public RenderOptions(RenderOptions renderOptions) {
        this.f15787a = null;
        this.f15788b = null;
        this.f15789c = null;
        this.f15790d = null;
        this.f15791e = null;
        this.f15792f = null;
        if (renderOptions == null) {
            return;
        }
        this.f15787a = renderOptions.f15787a;
        this.f15788b = renderOptions.f15788b;
        this.f15790d = renderOptions.f15790d;
        this.f15791e = renderOptions.f15791e;
        this.f15792f = renderOptions.f15792f;
    }
}
