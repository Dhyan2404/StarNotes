.class public Lcom/sunia/HTREnginev2/nnd;
.super Lcom/sunia/HTREnginev2/pnd;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/pnd;-><init>()V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/nnd$a;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nnd$a;-><init>(Lcom/sunia/HTREnginev2/nnd;)V

    sput-object v0, Lcom/sunia/HTREnginev2/fsl;->s:Lcom/sunia/HTREnginev2/fsl$a;

    return-void
.end method
