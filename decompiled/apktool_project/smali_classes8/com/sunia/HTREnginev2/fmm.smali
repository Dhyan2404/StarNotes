.class public final Lcom/sunia/HTREnginev2/fmm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/fmm;->a:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fmm;->a:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fmm;->a:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-void
.end method
