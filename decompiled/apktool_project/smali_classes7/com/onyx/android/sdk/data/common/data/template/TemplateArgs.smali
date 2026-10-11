.class public final Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;",
        "",
        "()V",
        "spaceArgs",
        "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
        "getSpaceArgs",
        "()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
        "setSpaceArgs",
        "(Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private spaceArgs:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->spaceArgs:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    return-object p0
.end method

.method public final setSpaceArgs(Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->spaceArgs:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    return-void
.end method
