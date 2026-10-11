.class public final Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R!\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;",
        "",
        "",
        "LIB_VERSION_SUNIA",
        "Ljava/lang/String;",
        "",
        "a",
        "Lkotlin/Lazy;",
        "getINTERNAL_LANG_LIST",
        "()Ljava/util/List;",
        "INTERNAL_LANG_LIST",
        "<init>",
        "()V",
        "sdk-sunia_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIB_VERSION_SUNIA:Ljava/lang/String; = "1.0"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;

    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant$INTERNAL_LANG_LIST$2;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant$INTERNAL_LANG_LIST$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;->a:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINTERNAL_LANG_LIST()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
