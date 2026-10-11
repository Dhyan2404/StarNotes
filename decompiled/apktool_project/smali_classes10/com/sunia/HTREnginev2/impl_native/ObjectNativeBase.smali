.class public Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field lHandler:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    return-void
.end method


# virtual methods
.method public getHandler()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    return-wide v0
.end method
