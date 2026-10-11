package com.sunia.commonv2.global;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/* loaded from: classes10.dex */
public interface HWREngineConstant {
    public static final int DEFAULT_LOG_LEVEL = 0;

    /* loaded from: classes10.dex */
    public interface Constant {
        public static final String ANDROID_DATA = "Android/data";
        public static final String BLANK = " ";
        public static final String COMMA = ",";
        public static final String DECORATION_ARROW_HEAD = "arrow-head";
        public static final String DECORATION_NONE = "none";
        public static final boolean DRAW_NAI = false;
        public static final String EDGE = "Edge";
        public static final String ENABLE_DOT_CONVERT_MULTIPLICATION = "enableMathDotConvertMultiplication=false;";
        public static final String ENABLE_FORMULA_PARAMETER = "formulaParameter=true;";
        public static final String ENABLE_MATH_COVERING = "enableMathCoveringPosition=true;";
        public static final int GRAPH_MOVE = 0;
        public static final int GRAPH_UP = 1;
        public static final Gson GSON = new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create();
        public static final int INVALID_ID = -1;
        public static final String KIND = "kind";
        public static final String MERGE_PARAMS_STR = "enableTextMergeWord=true;";
        public static final String NAI_NBI_TAG = "nainbiTAG";
        public static final String NGRAM_PARAMS_STR = "enableNgram=true;";
        public static final String NODE = "Node";
        public static final String POST_PARAMS_STR = "enablePostProcess=true;";
        public static final int RESULT_STOP = 2;
        public static final int RESULT_SUCCESS = 0;
        public static final String RES_ID = "resId";
        public static final int TYPE_MATH = 1;
        public static final int TYPE_TEXT = 0;
        public static final String UNDERLINE = "_";
    }

    /* loaded from: classes10.dex */
    public interface GraphProperty {
        public static final String GRAPH_FILL_COLOR = "GRAPH_FILL_COLOR";
        public static final String GRAPH_SHOW_MENU = "GRAPH_SHOW_MENU";
    }

    /* loaded from: classes10.dex */
    public interface IntentKey {
        public static final int INTENT_KEY_BASE = 10000;
        public static final int INTENT_KEY_CHOOSE_CAMERA = 10001;
        public static final int INTENT_KEY_CHOOSE_IMAGE = 10002;
    }
}
