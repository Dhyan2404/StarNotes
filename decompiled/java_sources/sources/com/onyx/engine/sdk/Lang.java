package com.onyx.engine.sdk;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;

/* loaded from: classes8.dex */
public enum Lang {
    ZH("zh-"),
    CN(com.trans.android.font.Lang.f93893CN),
    ZH_TW("zh-TW"),
    ZH_HK("zh-HK"),
    ZH_SG("zh-sg"),
    JA(OcrValues.LANG_JAPANESE),
    EN("en"),
    TH("th");

    String value;

    Lang(String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }
}
