.class public Lcom/graphbuilder/math/PascalsTriangle$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/math/PascalsTriangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[[D


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [[D

    new-array v0, v0, [D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    aput-object v0, v1, v4

    .line 2
    iput-object v1, p0, Lcom/graphbuilder/math/PascalsTriangle$b;->a:[[D

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphbuilder/math/PascalsTriangle$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/graphbuilder/math/PascalsTriangle$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphbuilder/math/PascalsTriangle$b;)[[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/math/PascalsTriangle$b;->a:[[D

    return-object p0
.end method

.method public static synthetic b(Lcom/graphbuilder/math/PascalsTriangle$b;[[D)[[D
    .locals 0

    iput-object p1, p0, Lcom/graphbuilder/math/PascalsTriangle$b;->a:[[D

    return-object p1
.end method
