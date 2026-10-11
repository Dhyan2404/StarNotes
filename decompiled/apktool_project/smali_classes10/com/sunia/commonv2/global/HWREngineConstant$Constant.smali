.class public interface abstract Lcom/sunia/commonv2/global/HWREngineConstant$Constant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/commonv2/global/HWREngineConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Constant"
.end annotation


# static fields
.field public static final ANDROID_DATA:Ljava/lang/String; = "Android/data"

.field public static final BLANK:Ljava/lang/String; = " "

.field public static final COMMA:Ljava/lang/String; = ","

.field public static final DECORATION_ARROW_HEAD:Ljava/lang/String; = "arrow-head"

.field public static final DECORATION_NONE:Ljava/lang/String; = "none"

.field public static final DRAW_NAI:Z = false

.field public static final EDGE:Ljava/lang/String; = "Edge"

.field public static final ENABLE_DOT_CONVERT_MULTIPLICATION:Ljava/lang/String; = "enableMathDotConvertMultiplication=false;"

.field public static final ENABLE_FORMULA_PARAMETER:Ljava/lang/String; = "formulaParameter=true;"

.field public static final ENABLE_MATH_COVERING:Ljava/lang/String; = "enableMathCoveringPosition=true;"

.field public static final GRAPH_MOVE:I = 0x0

.field public static final GRAPH_UP:I = 0x1

.field public static final GSON:Lcom/google/gson/Gson;

.field public static final INVALID_ID:I = -0x1

.field public static final KIND:Ljava/lang/String; = "kind"

.field public static final MERGE_PARAMS_STR:Ljava/lang/String; = "enableTextMergeWord=true;"

.field public static final NAI_NBI_TAG:Ljava/lang/String; = "nainbiTAG"

.field public static final NGRAM_PARAMS_STR:Ljava/lang/String; = "enableNgram=true;"

.field public static final NODE:Ljava/lang/String; = "Node"

.field public static final POST_PARAMS_STR:Ljava/lang/String; = "enablePostProcess=true;"

.field public static final RESULT_STOP:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RES_ID:Ljava/lang/String; = "resId"

.field public static final TYPE_MATH:I = 0x1

.field public static final TYPE_TEXT:I = 0x0

.field public static final UNDERLINE:Ljava/lang/String; = "_"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    return-void
.end method
