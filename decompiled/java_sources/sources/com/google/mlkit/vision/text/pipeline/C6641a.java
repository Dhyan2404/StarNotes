package com.google.mlkit.vision.text.pipeline;

import com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions;
import com.sunia.HTREnginev2.sdp;

/* renamed from: com.google.mlkit.vision.text.pipeline.a */
/* loaded from: classes6.dex */
public final class C6641a extends VkpTextRecognizerOptions.Builder {

    /* renamed from: a */
    public String f36851a;

    /* renamed from: b */
    public String f36852b;

    /* renamed from: c */
    public String f36853c;

    /* renamed from: d */
    public boolean f36854d;

    /* renamed from: e */
    public byte f36855e;

    @Override // com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions.Builder
    /* renamed from: a */
    public final VkpTextRecognizerOptions.Builder mo28595a(String str) {
        if (str == null) {
            throw new NullPointerException("Null configLabel");
        }
        this.f36851a = str;
        return this;
    }

    @Override // com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions.Builder
    public final VkpTextRecognizerOptions build() {
        String str;
        String str2;
        String str3;
        if (this.f36855e == 1 && (str = this.f36851a) != null && (str2 = this.f36852b) != null && (str3 = this.f36853c) != null) {
            return new sdp(str, str2, str3, this.f36854d, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f36851a == null) {
            sb.append(" configLabel");
        }
        if (this.f36852b == null) {
            sb.append(" modelDir");
        }
        if (this.f36853c == null) {
            sb.append(" languageHint");
        }
        if (this.f36855e == 0) {
            sb.append(" enableLowLatencyInBackground");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override // com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions.Builder
    public final VkpTextRecognizerOptions.Builder setEnableLowLatencyInBackground(boolean z) {
        this.f36854d = z;
        this.f36855e = (byte) 1;
        return this;
    }

    @Override // com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions.Builder
    public final VkpTextRecognizerOptions.Builder setLanguageHint(String str) {
        if (str == null) {
            throw new NullPointerException("Null languageHint");
        }
        this.f36853c = str;
        return this;
    }

    @Override // com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions.Builder
    public final VkpTextRecognizerOptions.Builder setModelDir(String str) {
        if (str == null) {
            throw new NullPointerException("Null modelDir");
        }
        this.f36852b = str;
        return this;
    }
}
