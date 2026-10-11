.class public final Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getPriceTypeId",
        "()Ljava/lang/String;",
        "setPriceTypeId",
        "(Ljava/lang/String;)V",
        "priceTypeId",
        "Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;",
        "b",
        "Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;",
        "getData",
        "()Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;",
        "setData",
        "(Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;)V",
        "data",
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
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "id"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "data"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getData()Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;->b:Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;

    return-object p0
.end method

.method public final getPriceTypeId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setData(Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;->b:Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;

    return-void
.end method

.method public final setPriceTypeId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;->a:Ljava/lang/String;

    return-void
.end method
