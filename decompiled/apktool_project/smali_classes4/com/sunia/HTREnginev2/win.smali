.class public abstract Lcom/sunia/HTREnginev2/win;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/sunia/HTREnginev2/win;


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/win;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/ysm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/HTREnginev2/ysm;-><init>(Lcom/sunia/HTREnginev2/win;II)V

    sput-object v0, Lcom/sunia/HTREnginev2/win;->b:Lcom/sunia/HTREnginev2/win;

    return-void
.end method

.method public constructor <init>(Lcom/sunia/HTREnginev2/win;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/win;->a:Lcom/sunia/HTREnginev2/win;

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/sunia/HTREnginev2/win;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ysm;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/ysm;-><init>(Lcom/sunia/HTREnginev2/win;II)V

    return-object v0
.end method

.method public final b(II)Lcom/sunia/HTREnginev2/win;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/vq;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/vq;-><init>(Lcom/sunia/HTREnginev2/win;II)V

    return-object v0
.end method

.method public abstract c(Lcom/google/zxing/common/BitArray;[B)V
.end method

.method public final d()Lcom/sunia/HTREnginev2/win;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/win;->a:Lcom/sunia/HTREnginev2/win;

    return-object p0
.end method
