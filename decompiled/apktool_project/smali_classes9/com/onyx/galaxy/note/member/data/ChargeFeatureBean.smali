.class public final Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR*\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;",
        "",
        "",
        "Lcom/onyx/galaxy/note/member/data/Feature;",
        "a",
        "Ljava/util/List;",
        "getFeatures",
        "()Ljava/util/List;",
        "setFeatures",
        "(Ljava/util/List;)V",
        "features",
        "Lcom/onyx/galaxy/note/member/data/ChargeGuide;",
        "b",
        "Lcom/onyx/galaxy/note/member/data/ChargeGuide;",
        "getGuide",
        "()Lcom/onyx/galaxy/note/member/data/ChargeGuide;",
        "setGuide",
        "(Lcom/onyx/galaxy/note/member/data/ChargeGuide;)V",
        "guide",
        "Lcom/onyx/galaxy/note/member/data/ChargeProduct;",
        "c",
        "Lcom/onyx/galaxy/note/member/data/ChargeProduct;",
        "getProduct",
        "()Lcom/onyx/galaxy/note/member/data/ChargeProduct;",
        "setProduct",
        "(Lcom/onyx/galaxy/note/member/data/ChargeProduct;)V",
        "product",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/member/data/Feature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/onyx/galaxy/note/member/data/ChargeGuide;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/galaxy/note/member/data/ChargeProduct;
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
.method public final getFeatures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/member/data/Feature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getGuide()Lcom/onyx/galaxy/note/member/data/ChargeGuide;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->b:Lcom/onyx/galaxy/note/member/data/ChargeGuide;

    return-object p0
.end method

.method public final getProduct()Lcom/onyx/galaxy/note/member/data/ChargeProduct;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->c:Lcom/onyx/galaxy/note/member/data/ChargeProduct;

    return-object p0
.end method

.method public final setFeatures(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/member/data/Feature;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->a:Ljava/util/List;

    return-void
.end method

.method public final setGuide(Lcom/onyx/galaxy/note/member/data/ChargeGuide;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/member/data/ChargeGuide;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->b:Lcom/onyx/galaxy/note/member/data/ChargeGuide;

    return-void
.end method

.method public final setProduct(Lcom/onyx/galaxy/note/member/data/ChargeProduct;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/member/data/ChargeProduct;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->c:Lcom/onyx/galaxy/note/member/data/ChargeProduct;

    return-void
.end method
