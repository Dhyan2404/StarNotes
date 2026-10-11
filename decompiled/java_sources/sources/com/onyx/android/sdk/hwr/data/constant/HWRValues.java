package com.onyx.android.sdk.hwr.data.constant;

import android.os.Environment;
import com.caverock.androidsvg.SVG;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import org.jetbrains.annotations.NotNull;
import org.scribe.oauth.OAuth20ServiceImpl;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u001e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bB\u0010CR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0004R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0004R\u0014\u0010\u0019\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0004R\u0014\u0010\u001a\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0004R\u0014\u0010\u001b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0004R\u0014\u0010\u001c\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0004R\u0014\u0010\u001d\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0004R\u0014\u0010\u001e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0004R\u0014\u0010\u001f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0004R\u0014\u0010!\u001a\u00020 8\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010#\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u0004R\u0014\u0010$\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u0004R\u0014\u0010%\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\u0004R\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020&8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001a\u0010/\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b,\u0010\u0004\u001a\u0004\b-\u0010.R\u001a\u00102\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b0\u0010\u0004\u001a\u0004\b1\u0010.R\u0017\u00105\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b3\u0010\u0004\u001a\u0004\b4\u0010.R\u0017\u00108\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b6\u0010\u0004\u001a\u0004\b7\u0010.R\u001a\u0010;\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b9\u0010\u0004\u001a\u0004\b:\u0010.R\u001a\u0010>\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b<\u0010\u0004\u001a\u0004\b=\u0010.R\u0017\u0010A\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b?\u0010\u0004\u001a\u0004\b@\u0010.¨\u0006D"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/constant/HWRValues;", "", "", "MODULE_TAG", Constants.STRING_SIG, "ENGINE_MS", "ENGINE_ML", "ENGINE_SUNIA", "PART_TYPE_TEXT", "PART_TYPE_GESTURE", "PART_TYPE_SHAPE", "PART_TYPE_DRAW", "PART_TYPE_EMOJI", "PART_TYPE_DIAGRAM", "PART_TYPE_MATH", "PART_TYPE_DOCUMENT", "PART_TYPE_RAW", "PART_TYPE_MIXED", "DIAGRAM_TYPE_TEXT", "DIAGRAM_TYPE_NODE", "DIAGRAM_TYPE_EDGE", "DIAGRAM_KIND_POLYGON", "DIAGRAM_KIND_POLYEDGE", "DIAGRAM_KIND_PARALLELOGRAM", "DIAGRAM_KIND_RHOMBUS", "DIAGRAM_KIND_CIRCLE", "DIAGRAM_KIND_ELLIPSE", "DIAGRAM_KIND_LINE", "DIAGRAM_KIND_RECTANGLE", "DIAGRAM_KIND_TRIANGLE", "DIAGRAM_KIND_ARC", "DIAGRAM_KIND_SQUARE", "", "MAX_CANDIDATE_SIZE", "I", "PATH_MLKIT_RES_PREFIX", "VERSION_LIB_MS", "VERSION_LIB_ML", "", "a", "Ljava/util/List;", "getMS_OLD_VERSION_LIST", "()Ljava/util/List;", "MS_OLD_VERSION_LIST", "b", "getNOTE_RESOURCE_DIR_NAME", "()Ljava/lang/String;", "NOTE_RESOURCE_DIR_NAME", "c", "getMY_SCRIPT_DEFAULT_PACKAGE_FILE_NAME", "MY_SCRIPT_DEFAULT_PACKAGE_FILE_NAME", "d", "getMY_SCRIPT_RESOURCE_DIR_PATH", "MY_SCRIPT_RESOURCE_DIR_PATH", "e", "getADDITIONAL_RESOURCE_DIR", "ADDITIONAL_RESOURCE_DIR", C6997f.f39671c, "getADDITIONAL_RES_NAME", "ADDITIONAL_RES_NAME", C6998g.f39679a, "getADDITIONAL_LEX_NAME", "ADDITIONAL_LEX_NAME", C6999h.f39688c, "getMYSCRIPT_RESOURCE_RAW_DIR", "MYSCRIPT_RESOURCE_RAW_DIR", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRValues {

    @NotNull
    public static final String DIAGRAM_KIND_ARC = "arc";

    @NotNull
    public static final String DIAGRAM_KIND_CIRCLE = "circle";

    @NotNull
    public static final String DIAGRAM_KIND_ELLIPSE = "ELLIPSE";

    @NotNull
    public static final String DIAGRAM_KIND_LINE = "line";

    @NotNull
    public static final String DIAGRAM_KIND_PARALLELOGRAM = "parallelogram";

    @NotNull
    public static final String DIAGRAM_KIND_POLYEDGE = "polyedge";

    @NotNull
    public static final String DIAGRAM_KIND_POLYGON = "polygon";

    @NotNull
    public static final String DIAGRAM_KIND_RECTANGLE = "RECTANGLE";

    @NotNull
    public static final String DIAGRAM_KIND_RHOMBUS = "rhombus";

    @NotNull
    public static final String DIAGRAM_KIND_SQUARE = "square";

    @NotNull
    public static final String DIAGRAM_KIND_TRIANGLE = "triangle";

    @NotNull
    public static final String DIAGRAM_TYPE_EDGE = "Edge";

    @NotNull
    public static final String DIAGRAM_TYPE_NODE = "Node";

    @NotNull
    public static final String DIAGRAM_TYPE_TEXT = "Text";

    @NotNull
    public static final String ENGINE_ML = "GoogleML";

    @NotNull
    public static final String ENGINE_MS = "MyScript";

    @NotNull
    public static final String ENGINE_SUNIA = "SuNia";

    @NotNull
    public static final HWRValues INSTANCE = new HWRValues();
    public static final int MAX_CANDIDATE_SIZE = 10;

    @NotNull
    public static final String MODULE_TAG = "HwrLog";

    @NotNull
    public static final String PART_TYPE_DIAGRAM = "Diagram";

    @NotNull
    public static final String PART_TYPE_DOCUMENT = "Text Document";

    @NotNull
    public static final String PART_TYPE_DRAW = "Drawing";

    @NotNull
    public static final String PART_TYPE_EMOJI = "Emoji";

    @NotNull
    public static final String PART_TYPE_GESTURE = "Gesture";

    @NotNull
    public static final String PART_TYPE_MATH = "Math";

    @NotNull
    public static final String PART_TYPE_MIXED = "Mixed";

    @NotNull
    public static final String PART_TYPE_RAW = "Raw Content";

    @NotNull
    public static final String PART_TYPE_SHAPE = "Shape";

    @NotNull
    public static final String PART_TYPE_TEXT = "Text";

    @NotNull
    public static final String PATH_MLKIT_RES_PREFIX = "mlkit/mlkit_model_";

    @NotNull
    public static final String VERSION_LIB_ML = "18.1.0";

    @NotNull
    public static final String VERSION_LIB_MS = "2.1";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final List<String> MS_OLD_VERSION_LIST;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String NOTE_RESOURCE_DIR_NAME;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String MY_SCRIPT_DEFAULT_PACKAGE_FILE_NAME;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String MY_SCRIPT_RESOURCE_DIR_PATH;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String ADDITIONAL_RESOURCE_DIR;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final String ADDITIONAL_RES_NAME;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final String ADDITIONAL_LEX_NAME;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final String MYSCRIPT_RESOURCE_RAW_DIR;

    static {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{SVG.f15818g, "1.5", OAuth20ServiceImpl.f115984c});
        MS_OLD_VERSION_LIST = listOf;
        NOTE_RESOURCE_DIR_NAME = ".noteResource";
        MY_SCRIPT_DEFAULT_PACKAGE_FILE_NAME = "MyScript.iink";
        String str = Environment.getExternalStorageDirectory().getPath() + File.separator + ".noteResource";
        MY_SCRIPT_RESOURCE_DIR_PATH = str;
        ADDITIONAL_RESOURCE_DIR = str + "/additional_res";
        ADDITIONAL_RES_NAME = "additionalWords.res";
        ADDITIONAL_LEX_NAME = "additionalWords.lex";
        MYSCRIPT_RESOURCE_RAW_DIR = Environment.getExternalStorageDirectory().getPath() + "/resources/";
    }

    @NotNull
    public final String getADDITIONAL_LEX_NAME() {
        return ADDITIONAL_LEX_NAME;
    }

    @NotNull
    public final String getADDITIONAL_RESOURCE_DIR() {
        return ADDITIONAL_RESOURCE_DIR;
    }

    @NotNull
    public final String getADDITIONAL_RES_NAME() {
        return ADDITIONAL_RES_NAME;
    }

    @NotNull
    public final List<String> getMS_OLD_VERSION_LIST() {
        return MS_OLD_VERSION_LIST;
    }

    @NotNull
    public final String getMYSCRIPT_RESOURCE_RAW_DIR() {
        return MYSCRIPT_RESOURCE_RAW_DIR;
    }

    @NotNull
    public final String getMY_SCRIPT_DEFAULT_PACKAGE_FILE_NAME() {
        return MY_SCRIPT_DEFAULT_PACKAGE_FILE_NAME;
    }

    @NotNull
    public final String getMY_SCRIPT_RESOURCE_DIR_PATH() {
        return MY_SCRIPT_RESOURCE_DIR_PATH;
    }

    @NotNull
    public final String getNOTE_RESOURCE_DIR_NAME() {
        return NOTE_RESOURCE_DIR_NAME;
    }
}
