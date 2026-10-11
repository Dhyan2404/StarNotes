.class public final Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "selectedName",
        "",
        "b",
        "I",
        "selectedIntensity",
        "",
        "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;",
        "c",
        "Ljava/util/List;",
        "params",
        "<init>",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;->Companion:Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getParams$p(Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;->c:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSelectedIntensity$p(Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;->b:I

    return p0
.end method

.method public static final synthetic access$getSelectedName$p(Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;->a:Ljava/lang/String;

    return-object p0
.end method
