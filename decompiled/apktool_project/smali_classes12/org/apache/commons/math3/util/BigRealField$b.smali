.class public Lorg/apache/commons/math3/util/BigRealField$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/BigRealField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lorg/apache/commons/math3/util/BigRealField;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/util/BigRealField;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigRealField;-><init>(Lorg/apache/commons/math3/util/BigRealField$a;)V

    sput-object v0, Lorg/apache/commons/math3/util/BigRealField$b;->a:Lorg/apache/commons/math3/util/BigRealField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lorg/apache/commons/math3/util/BigRealField;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/util/BigRealField$b;->a:Lorg/apache/commons/math3/util/BigRealField;

    return-object v0
.end method
