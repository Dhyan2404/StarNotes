.class public final Lcom/graphbuilder/curve/CardinalSpline$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/curve/CardinalSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/graphbuilder/curve/CardinalSpline$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/graphbuilder/curve/CardinalSpline$b;
    .locals 1

    new-instance p0, Lcom/graphbuilder/curve/CardinalSpline$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/graphbuilder/curve/CardinalSpline$b;-><init>(Lcom/graphbuilder/curve/CardinalSpline$a;)V

    return-object p0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/graphbuilder/curve/CardinalSpline$a;->a()Lcom/graphbuilder/curve/CardinalSpline$b;

    move-result-object p0

    return-object p0
.end method
