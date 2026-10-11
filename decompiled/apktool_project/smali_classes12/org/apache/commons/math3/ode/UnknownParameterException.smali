.class public Lorg/apache/commons/math3/ode/UnknownParameterException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1330546L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNKNOWN_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/UnknownParameterException;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/UnknownParameterException;->name:Ljava/lang/String;

    return-object p0
.end method
