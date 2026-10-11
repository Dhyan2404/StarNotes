.class public Lnet/sf/saxon/expr/Component$M;
.super Lnet/sf/saxon/expr/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "M"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/Component;-><init>(Lnet/sf/saxon/expr/Component$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getActor()Lnet/sf/saxon/expr/instruct/Actor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object p0

    return-object p0
.end method

.method public getActor()Lnet/sf/saxon/trans/Mode;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/Mode;

    return-object p0
.end method

.method public setActor(Lnet/sf/saxon/trans/Mode;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/Component;->actor:Lnet/sf/saxon/expr/instruct/Actor;

    return-void
.end method
