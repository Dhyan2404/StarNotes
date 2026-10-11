.class public Lcom/graphbuilder/curve/CatmullRomSpline$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/curve/CatmullRomSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [[D

    .line 2
    iput-object v0, p0, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a:[[D

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphbuilder/curve/CatmullRomSpline$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/graphbuilder/curve/CatmullRomSpline$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a:[[D

    return-object p0
.end method
