package com.onyx.galaxy.note.editor.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR \u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0006\"\u0004\b*\u0010\bR \u0010+\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001f\"\u0004\b-\u0010!R\u001a\u0010.\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u00103\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u00069"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/EditorConfig;", "Ljava/io/Serializable;", "()V", "aiLabEnable", "", "getAiLabEnable", Constants.BOOLEAN_VALUE_SIG, "setAiLabEnable", "(Z)V", "aiSearchFeatureEnabled", "getAiSearchFeatureEnabled", "setAiSearchFeatureEnabled", "enableBackgroundFtsIndex", "getEnableBackgroundFtsIndex", "setEnableBackgroundFtsIndex", "enableHwrSearch", "getEnableHwrSearch", "setEnableHwrSearch", "fontBeautifyEnable", "getFontBeautifyEnable", "setFontBeautifyEnable", "inkBeautifyFeatureEnabled", "getInkBeautifyFeatureEnabled", "setInkBeautifyFeatureEnabled", "inkBeautifyTypesetEnable", "getInkBeautifyTypesetEnable", "setInkBeautifyTypesetEnable", "languageList", "", "", "getLanguageList", "()Ljava/util/List;", "setLanguageList", "(Ljava/util/List;)V", "shapeToolConfig", "Lcom/onyx/galaxy/note/editor/data/ShapeToolConfig;", "getShapeToolConfig", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolConfig;", "setShapeToolConfig", "(Lcom/onyx/galaxy/note/editor/data/ShapeToolConfig;)V", "smartHwrFeatureEnabled", "getSmartHwrFeatureEnabled", "setSmartHwrFeatureEnabled", "tapeList", "getTapeList", "setTapeList", "userManualName", "getUserManualName", "()Ljava/lang/String;", "setUserManualName", "(Ljava/lang/String;)V", "webConfig", "Lcom/onyx/galaxy/note/editor/data/WebConfig;", "getWebConfig", "()Lcom/onyx/galaxy/note/editor/data/WebConfig;", "setWebConfig", "(Lcom/onyx/galaxy/note/editor/data/WebConfig;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class EditorConfig implements Serializable {
    private boolean aiLabEnable;
    private boolean enableBackgroundFtsIndex;
    private boolean fontBeautifyEnable;
    private boolean inkBeautifyTypesetEnable;

    @NotNull
    private ShapeToolConfig shapeToolConfig = new ShapeToolConfig();

    @NotNull
    private List<String> tapeList = new ArrayList();

    @NotNull
    private WebConfig webConfig = new WebConfig();
    private boolean enableHwrSearch = true;

    @NotNull
    private String userManualName = "";
    private boolean inkBeautifyFeatureEnabled = true;
    private boolean aiSearchFeatureEnabled = true;
    private boolean smartHwrFeatureEnabled = true;

    @NotNull
    private List<String> languageList = new ArrayList();

    public final boolean getAiLabEnable() {
        return this.aiLabEnable;
    }

    public final boolean getAiSearchFeatureEnabled() {
        return this.aiSearchFeatureEnabled;
    }

    public final boolean getEnableBackgroundFtsIndex() {
        return this.enableBackgroundFtsIndex;
    }

    public final boolean getEnableHwrSearch() {
        return this.enableHwrSearch;
    }

    public final boolean getFontBeautifyEnable() {
        return this.fontBeautifyEnable;
    }

    public final boolean getInkBeautifyFeatureEnabled() {
        return this.inkBeautifyFeatureEnabled;
    }

    public final boolean getInkBeautifyTypesetEnable() {
        return this.inkBeautifyTypesetEnable;
    }

    @NotNull
    public final List<String> getLanguageList() {
        return this.languageList;
    }

    @NotNull
    public final ShapeToolConfig getShapeToolConfig() {
        return this.shapeToolConfig;
    }

    public final boolean getSmartHwrFeatureEnabled() {
        return this.smartHwrFeatureEnabled;
    }

    @NotNull
    public final List<String> getTapeList() {
        return this.tapeList;
    }

    @NotNull
    public final String getUserManualName() {
        return this.userManualName;
    }

    @NotNull
    public final WebConfig getWebConfig() {
        return this.webConfig;
    }

    public final void setAiLabEnable(boolean z) {
        this.aiLabEnable = z;
    }

    public final void setAiSearchFeatureEnabled(boolean z) {
        this.aiSearchFeatureEnabled = z;
    }

    public final void setEnableBackgroundFtsIndex(boolean z) {
        this.enableBackgroundFtsIndex = z;
    }

    public final void setEnableHwrSearch(boolean z) {
        this.enableHwrSearch = z;
    }

    public final void setFontBeautifyEnable(boolean z) {
        this.fontBeautifyEnable = z;
    }

    public final void setInkBeautifyFeatureEnabled(boolean z) {
        this.inkBeautifyFeatureEnabled = z;
    }

    public final void setInkBeautifyTypesetEnable(boolean z) {
        this.inkBeautifyTypesetEnable = z;
    }

    public final void setLanguageList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.languageList = list;
    }

    public final void setShapeToolConfig(@NotNull ShapeToolConfig shapeToolConfig) {
        Intrinsics.checkNotNullParameter(shapeToolConfig, "<set-?>");
        this.shapeToolConfig = shapeToolConfig;
    }

    public final void setSmartHwrFeatureEnabled(boolean z) {
        this.smartHwrFeatureEnabled = z;
    }

    public final void setTapeList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tapeList = list;
    }

    public final void setUserManualName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userManualName = str;
    }

    public final void setWebConfig(@NotNull WebConfig webConfig) {
        Intrinsics.checkNotNullParameter(webConfig, "<set-?>");
        this.webConfig = webConfig;
    }
}
