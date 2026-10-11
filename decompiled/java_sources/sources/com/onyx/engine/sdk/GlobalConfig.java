package com.onyx.engine.sdk;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.engine.sdk.GlobalConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes8.dex */
public class GlobalConfig {
    public static final int STYLE_ALL = 4;
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_BOLD_ITALIC = 3;
    public static final int STYLE_ITALIC = 2;
    public static final int STYLE_NORMAL = 0;
    private String cachePath;
    private String language;
    private String resourcePath;
    private Map<String, List<String>> defaultFonts = new HashMap();
    private List<String> fontDirs = new ArrayList();
    private List<MediaConfig> mediaConfigs = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$addDefaultFont$0(String str) {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$addDefaultFont$1(String str) {
        return new ArrayList();
    }

    public GlobalConfig addDefaultFont(int i, List<String> list) {
        this.defaultFonts.computeIfAbsent(String.valueOf(i), new Function() { // from class: com.sunia.HTREnginev2.v3h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List lambda$addDefaultFont$0;
                lambda$addDefaultFont$0 = GlobalConfig.lambda$addDefaultFont$0((String) obj);
                return lambda$addDefaultFont$0;
            }
        }).addAll(list);
        return this;
    }

    public GlobalConfig addFontDir(String str) {
        this.fontDirs.add(str);
        return this;
    }

    public GlobalConfig addMediaConfig(MediaConfig mediaConfig) {
        Utils.safelyAdd(this.mediaConfigs, mediaConfig);
        return this;
    }

    public String getCachePath() {
        return this.cachePath;
    }

    public Map<String, List<String>> getDefaultFonts() {
        return this.defaultFonts;
    }

    public List<String> getFontDirs() {
        return this.fontDirs;
    }

    public String getLanguage() {
        return this.language;
    }

    public List<MediaConfig> getMediaConfigs() {
        return this.mediaConfigs;
    }

    public String getResourcePath() {
        return this.resourcePath;
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isSetDefaultFonts() {
        Map<String, List<String>> map = this.defaultFonts;
        return (map == null || map.isEmpty()) ? false : true;
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isSetResourcePath() {
        String str = this.resourcePath;
        return (str == null || str.isEmpty()) ? false : true;
    }

    public GlobalConfig setCachePath(String str) {
        this.cachePath = str;
        return this;
    }

    public GlobalConfig setDefaultFont(int i, List<String> list) {
        this.defaultFonts.put(String.valueOf(i), list);
        return this;
    }

    public GlobalConfig setDefaultFonts(Map<String, List<String>> map) {
        this.defaultFonts = map;
        return this;
    }

    public GlobalConfig setFontDirs(List<String> list) {
        this.fontDirs = list;
        return this;
    }

    public GlobalConfig setLanguage(String str) {
        this.language = str;
        return this;
    }

    public GlobalConfig setMediaConfigs(List<MediaConfig> list) {
        this.mediaConfigs = list;
        return this;
    }

    public GlobalConfig setResourcePath(String str) {
        this.resourcePath = str;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }

    public GlobalConfig addDefaultFont(int i, String str) {
        this.defaultFonts.computeIfAbsent(String.valueOf(i), new Function() { // from class: com.sunia.HTREnginev2.w3h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List lambda$addDefaultFont$1;
                lambda$addDefaultFont$1 = GlobalConfig.lambda$addDefaultFont$1((String) obj);
                return lambda$addDefaultFont$1;
            }
        }).add(str);
        return this;
    }
}
