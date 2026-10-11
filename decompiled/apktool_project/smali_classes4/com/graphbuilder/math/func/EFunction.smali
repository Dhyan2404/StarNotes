.class public Lcom/graphbuilder/math/func/EFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphbuilder/math/func/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptNumParam(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public of([DI)D
    .locals 0

    const-wide p0, 0x4005bf0a8b145769L    # Math.E

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "e()"

    return-object p0
.end method
