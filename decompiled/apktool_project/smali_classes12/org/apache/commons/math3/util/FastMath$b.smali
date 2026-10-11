.class public Lorg/apache/commons/math3/util/FastMath$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/FastMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:[D

.field public static final b:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sunia/HTREnginev2/c9g;->a()[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$b;->a:[D

    invoke-static {}, Lcom/sunia/HTREnginev2/c9g;->b()[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$b;->b:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()[D
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/util/FastMath$b;->a:[D

    return-object v0
.end method

.method public static synthetic b()[D
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/util/FastMath$b;->b:[D

    return-object v0
.end method
