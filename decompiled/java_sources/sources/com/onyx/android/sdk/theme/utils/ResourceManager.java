package com.onyx.android.sdk.theme.utils;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* loaded from: classes8.dex */
public class ResourceManager {

    /* renamed from: c */
    public static final String f46830c = "drawable";

    /* renamed from: d */
    public static final String f46831d = "color";

    /* renamed from: e */
    public static ResourceManager f46832e;

    /* renamed from: a */
    public Resources f46833a;

    /* renamed from: b */
    public String f46834b;

    public static ResourceManager getInstance() {
        if (f46832e == null) {
            synchronized (ResourceManager.class) {
                if (f46832e == null) {
                    f46832e = new ResourceManager();
                }
            }
        }
        return f46832e;
    }

    public int getColor(String str) throws Resources.NotFoundException {
        Resources resources = this.f46833a;
        return resources.getColor(resources.getIdentifier(str, "color", this.f46834b));
    }

    public ColorStateList getColorStateList(String str) {
        try {
            Resources resources = this.f46833a;
            return resources.getColorStateList(resources.getIdentifier(str, "color", this.f46834b));
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Drawable getDrawableByName(String str) {
        try {
            Resources resources = this.f46833a;
            return resources.getDrawable(resources.getIdentifier(str, f46830c, this.f46834b));
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void setPluginResource(Resources resources, String str) {
        this.f46833a = resources;
        this.f46834b = str;
    }
}
