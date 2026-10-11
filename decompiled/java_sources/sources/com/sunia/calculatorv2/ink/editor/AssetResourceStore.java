package com.sunia.calculatorv2.ink.editor;

import android.app.Application;
import android.content.Context;
import com.sunia.commonv2.util.HWRCommonUtil;
import java.io.InputStream;

/* loaded from: classes10.dex */
public class AssetResourceStore implements ResourceStore {
    private final Application application;
    private final String basePath;

    public AssetResourceStore(Context context, String str) {
        this.application = (Application) HWRCommonUtil.getApplicationContent(context);
        this.basePath = str;
    }

    private String getFullPath(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        str2 = "";
        if (!this.basePath.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.basePath);
            sb2.append(this.basePath.endsWith("/") ? "" : "/");
            str2 = sb2.toString();
        }
        sb.append(str2);
        sb.append(str);
        return sb.toString();
    }

    @Override // com.sunia.calculatorv2.ink.editor.ResourceStore
    public String[] list() {
        return this.application.getAssets().list(this.basePath);
    }

    @Override // com.sunia.calculatorv2.ink.editor.ResourceStore
    public InputStream open(String str) {
        return this.application.getAssets().open(getFullPath(str));
    }
}
