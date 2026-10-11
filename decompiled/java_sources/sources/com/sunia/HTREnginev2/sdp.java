package com.sunia.HTREnginev2;

import com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions;

/* loaded from: classes6.dex */
public final class sdp extends VkpTextRecognizerOptions {

    /* renamed from: a */
    public final String f84047a;

    /* renamed from: b */
    public final String f84048b;

    /* renamed from: c */
    public final String f84049c;

    /* renamed from: d */
    public final boolean f84050d;

    public /* synthetic */ sdp(String str, String str2, String str3, boolean z, com.google.mlkit.vision.text.pipeline.zbd zbdVar) {
        this.f84047a = str;
        this.f84048b = str2;
        this.f84049c = str3;
        this.f84050d = z;
    }

    @Override // com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions
    /* renamed from: a */
    public final String mo28591a() {
        return this.f84047a;
    }

    @Override // com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions
    /* renamed from: b */
    public final String mo28592b() {
        return this.f84049c;
    }

    @Override // com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions
    /* renamed from: c */
    public final String mo28593c() {
        return this.f84048b;
    }

    @Override // com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions
    /* renamed from: d */
    public final boolean mo28594d() {
        return this.f84050d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof VkpTextRecognizerOptions) {
            VkpTextRecognizerOptions vkpTextRecognizerOptions = (VkpTextRecognizerOptions) obj;
            if (this.f84047a.equals(vkpTextRecognizerOptions.mo28591a()) && this.f84048b.equals(vkpTextRecognizerOptions.mo28593c()) && this.f84049c.equals(vkpTextRecognizerOptions.mo28592b()) && this.f84050d == vkpTextRecognizerOptions.mo28594d()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (true != this.f84050d ? 1237 : 1231) ^ ((((((this.f84047a.hashCode() ^ 1000003) * 1000003) ^ this.f84048b.hashCode()) * 1000003) ^ this.f84049c.hashCode()) * 1000003);
    }

    public final String toString() {
        return "VkpTextRecognizerOptions{configLabel=" + this.f84047a + ", modelDir=" + this.f84048b + ", languageHint=" + this.f84049c + ", enableLowLatencyInBackground=" + this.f84050d + "}";
    }
}
