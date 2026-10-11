.class public Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "SourceFile"


# static fields
.field protected static final INTEGER_ZERO:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x67595d29f3bbad06L


# instance fields
.field private final argument:Ljava/lang/Number;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/exception/MathIllegalNumberException;->INTEGER_ZERO:Ljava/lang/Integer;

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 0

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/commons/math3/exception/MathIllegalNumberException;->argument:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getArgument()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/MathIllegalNumberException;->argument:Ljava/lang/Number;

    return-object p0
.end method
