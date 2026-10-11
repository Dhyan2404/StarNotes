.class public abstract Lcom/sunia/HTREnginev2/mae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x5


# instance fields
.field public a:[Lcom/sunia/HTREnginev2/hgk;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/mae;->b:I

    return-void
.end method

.method public static b(I)Lcom/sunia/HTREnginev2/mae;
    .locals 1

    const/4 v0, 0x5

    if-le p0, v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/avi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/avi;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/rum;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rum;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/hgk;
.end method

.method public abstract c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V
.end method
