.class public Lorg/apache/commons/math3/util/FastMath$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/FastMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final a:[[D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sunia/HTREnginev2/c9g;->e()[[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$e;->a:[[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()[[D
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/util/FastMath$e;->a:[[D

    return-object v0
.end method
