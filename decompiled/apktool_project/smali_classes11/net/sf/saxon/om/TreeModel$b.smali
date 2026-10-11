.class public Lnet/sf/saxon/om/TreeModel$b;
.super Lnet/sf/saxon/om/TreeModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/om/TreeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/om/TreeModel;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/om/TreeModel$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/om/TreeModel$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "LinkedTree"

    return-object p0
.end method

.method public getSymbolicValue()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;
    .locals 0

    new-instance p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-object p0
.end method
